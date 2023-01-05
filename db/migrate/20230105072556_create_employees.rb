class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :gender
      t.string :address
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
