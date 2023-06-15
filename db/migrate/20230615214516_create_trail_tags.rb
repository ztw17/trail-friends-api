class CreateTrailTags < ActiveRecord::Migration[7.0]
  def change
    create_table :trail_tags do |t|
      t.string :trail_id
      t.string :tag_id

      t.timestamps
    end
  end
end
