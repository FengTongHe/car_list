class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :fuel
      t.integer :horsepower
      t.integer :cylilnder
      t.string :transmission
      t.string :driven_wheel
      t.integer :doors
      t.string :size
      t.integer :highway_mpg
      t.integer :city_mpg
      t.integer :popularity
      t.integer :msrp

      t.timestamps
    end
  end
end
