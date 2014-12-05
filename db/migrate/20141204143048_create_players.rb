class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email
      t.string :password_hash
      t.timestamps
    end
  end
end
