class User < ApplicationRecord
  include ActiveModel::Validations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :chapters
  has_many :projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, authentication_keys: [:login]

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

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validate :validate_username

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
