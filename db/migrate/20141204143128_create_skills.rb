class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :mod
      t.boolean :untrained, :default => true
      t.boolean :armor_check_penalty, :default => false
    end
  end
end
