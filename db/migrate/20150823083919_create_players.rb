class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :location
      t.string :phone_number
      t.string :role_preference
      t.string :preferred_game_location
      t.boolean :currently_looking
      t.text :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
