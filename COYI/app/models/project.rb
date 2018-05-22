class Project < ApplicationRecord
  belongs_to :user
  has_one :chapter, through: :user
end
