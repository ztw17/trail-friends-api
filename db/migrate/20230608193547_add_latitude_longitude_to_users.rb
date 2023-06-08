class AddLatitudeLongitudeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :latitude, :decimal
    add_column :users, :longitude, :decimal
  end
end
