class CreateModelCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :model_categories do |t|
      t.references :model, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
