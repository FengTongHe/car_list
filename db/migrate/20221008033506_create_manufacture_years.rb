class CreateManufactureYears < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacture_years do |t|
      t.string :name
      t.string :year

      t.timestamps
    end
  end
end
