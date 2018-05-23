class Challenge < ApplicationRecord
  belongs_to :user

  validates_format_of :emailaddress,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :firstname, :with => /\A[a-zA-Z]+\z/
  validates_format_of :lastname, :with => /\A[a-zA-Z]+\z/
  validates :location, :format => { :with => /[0-9a-zA-Z' ']{5,}/}
  validates :organisation, :format => { :with => /[0-9a-zA-Z' ']{5,}/}
end
