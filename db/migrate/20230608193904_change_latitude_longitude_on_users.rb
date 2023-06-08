class ChangeLatitudeLongitudeOnUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :latitude, :decimal, precision: 10, scale: 6
    change_column :users, :longitude, :decimal, precision: 10, scale: 6
  end
end
