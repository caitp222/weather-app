class Favorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, foreign_key: true
      t.integer :place_id, foreign_key: true

      t.timestamps
    end

    add_index :favorites, [:user_id, :place_id], unique: true

  end
end
