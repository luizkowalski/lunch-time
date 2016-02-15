class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :value, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
