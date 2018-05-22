class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  # belongs_to :chapter
  has_many :chapters
  has_many :projects

  validates :first_name, :second_name, :email, :username, :location, :country, :dob, :role, presence: true
  validates :first_name, :second_name, :location, :country, :role, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters or numbers, only letters" }
  validates :username, format: { with: /\A[a-z0-9A-Z]+\z/, message: "No special characters, only letters and numbers" }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :email, :username, uniqueness: true


  # after_create :welcome_send
  #
  # def welcome_send
  #   UserMailer.welcome_email(self).deliver
  # end
end
