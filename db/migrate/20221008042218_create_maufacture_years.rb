class CreateMaufactureYears < ActiveRecord::Migration[7.0]
  def change
    create_table :maufacture_years do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
