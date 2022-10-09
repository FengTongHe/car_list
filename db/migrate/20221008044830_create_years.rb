class CreateYears < ActiveRecord::Migration[7.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.references :manufacture, null: false, foreign_key: true, index: true

      t.index %i[year manufacture_id], unique: true
      t.timestamps
    end
  end
end
