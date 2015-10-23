class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :group
      t.belongs_to :player
      t.string :role
      t.string :klass
      t.string :race
      t.string :character_name

      t.timestamps
    end
  end
end
