class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.integer :rating, null: false
      t.date :date, null: false
      t.references :user

      t.timestamps
    end
  end
end
