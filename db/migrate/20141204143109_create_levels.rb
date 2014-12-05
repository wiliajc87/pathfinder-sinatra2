class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.belongs_to :character
      t.integer :level_number, default: nil
      t.belongs_to :character_class
    end
  end
end
