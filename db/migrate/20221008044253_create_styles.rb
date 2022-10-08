class CreateStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :styles do |t|
      t.string :name
      t.references :manufacture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
