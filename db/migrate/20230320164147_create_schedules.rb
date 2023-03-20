class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :plant_id
      t.integer :user_id
      t.string :image_url
      t.datetime :watering_start_date

      t.timestamps
    end
  end
end
