class Project < ApplicationRecord
  enum status: [:"Awaiting Approval", :Approved, :Rework, :Rejected]
  belongs_to :user
  has_one :chapter, through: :user
  validates :title, :description, presence: true
  has_many_attached :uploaded_files
  validates :title, length: { minimum: 8, too_short: "Title too short. Try and enter a descriptive title" }
  validates :title, length: { maximum: 30, too_long: "Title too long. %{count} characters is the maximum allowed"  }
end
