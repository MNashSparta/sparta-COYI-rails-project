class User < ApplicationRecord
  include ActiveModel::Validations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :chapter
  has_many :projects
  has_many :challenges
  has_many :news
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable, authentication_keys: [:login]

  attr_writer :login

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  elsif conditions.has_key?(:username) || conditions.has_key?(:email)
    where(conditions.to_h).first
    end
  end

  validates :email, presence: :true, uniqueness: { case_sensitive: false }
  # validate :validate_username
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :first_name, :second_name, :email, :location, :country, presence: true
  validates :first_name, :second_name, :location, :country, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters or numbers, only letters" }

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  validate :password_complexity

  def password_complexity
   if password.present?
      if !password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\p{Punct})/)
        errors.add :password, "must include at least one lowercase letter, one uppercase letter, one number, and a special character"
      end
   end
  end

end
