class Chapter < ApplicationRecord
  has_many :users
  has_many :projects, through: :user
end
