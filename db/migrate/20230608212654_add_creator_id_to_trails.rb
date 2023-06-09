class AddCreatorIdToTrails < ActiveRecord::Migration[7.0]
  def change
    add_column(:trails, :creator_id, :string)
  end
end
