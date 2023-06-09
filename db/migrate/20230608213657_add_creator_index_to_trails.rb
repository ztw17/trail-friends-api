class AddCreatorIndexToTrails < ActiveRecord::Migration[7.0]
  def change
    add_index :trails, :creator_id, name: 'index_trails_on_creator_id'
  end
end
