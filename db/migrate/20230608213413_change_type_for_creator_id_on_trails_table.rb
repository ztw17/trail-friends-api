class ChangeTypeForCreatorIdOnTrailsTable < ActiveRecord::Migration[7.0]
  def change
    change_column(:trails, :creator_id, :bigint)
  end
end
