class CreateFrogs < ActiveRecord::Migration[7.1]
  def change
    create_table :frogs do |t|
      t.string :species
      t.string :name
      t.integer :age
      t.string :color
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :gender

      t.timestamps
    end
  end
end
