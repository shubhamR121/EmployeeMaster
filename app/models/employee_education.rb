class EmployeeEducation < ApplicationRecord
  belongs_to :employee

  validates :school, :board_or_university, :qualification, presence: true
end
