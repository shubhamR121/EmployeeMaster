class WorkExperience < ApplicationRecord
  belongs_to :employee

  validates :employee, :from, :to, :total_exp, presence: true
end
