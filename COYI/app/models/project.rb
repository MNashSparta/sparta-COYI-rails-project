class Project < ApplicationRecord
  enum current_status: { awaiting_approval: 0, approved: 1, rework: 2, rejected: 3 }
  belongs_to :user
  has_one :chapter, through: :user
end
