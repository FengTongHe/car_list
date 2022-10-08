class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :fuel
      t.integer :horsepower
      t.integer :cylinder
      t.string :transmission
      t.string :driven_wheel
      t.integer :door
      t.string :size
      t.string :style
      t.integer :highway_mpg
      t.integer :city_mpg
      t.integer :popularity
      t.integer :msrp
      t.references :year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
