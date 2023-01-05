class CreateEmployeeEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_educations do |t|
      t.string :school
      t.string :board_or_university
      t.string :qualification
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
