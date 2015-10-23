class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :location
      t.string :name
      t.string :system
      t.belongs_to :creator
      t.boolean :invite_only
      t.integer :max_dms
      t.integer :max_players

      t.timestamps
    end
  end
end
