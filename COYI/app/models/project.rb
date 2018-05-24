class Project < ApplicationRecord
  enum status: [:"Awaiting Approval", :Approved, :Rework, :Rejected]
  belongs_to :user
  has_one :chapter, through: :user
  validates :title, :description, presence: true
  has_many_attached :uploaded_files
end
