class MyResource < ApplicationRecord
  enum status: [:"Awaiting Approval", :Approved, :Rework, :Rejected]
  belongs_to :user
  has_one :chapter, through: :user
  validates :title, :description, presence: true
  has_one_attached :uploaded_file
end
