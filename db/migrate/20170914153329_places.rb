class Places < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :open_weather_code

      t.timestamps
    end
  end
end
