class CreateWorkExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :work_experiences do |t|
      t.string :employee
      t.date :from
      t.date :to
      t.float :total_exp
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
