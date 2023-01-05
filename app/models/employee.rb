class Employee < ApplicationRecord


  has_many :employee_educations, dependent: :destroy
  has_many :work_experiences, dependent: :destroy

  accepts_nested_attributes_for :employee_educations, allow_destroy: true
  accepts_nested_attributes_for :work_experiences, allow_destroy: true

  validates :email, presence: true
  validates :contact, presence: true
end
