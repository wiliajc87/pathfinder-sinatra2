class CreateCharacterStats < ActiveRecord::Migration
  def change
    create_table :character_stats do |t|
      t.integer :character_id, :null => false
      t.integer :stat_id, :null => false
      t.integer :value, default: 0
    end
  end
end
