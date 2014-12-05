class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name
      t.string :alignment
      t.integer :hit_dice
      t.integer :skill_rank_per_level
      t.string :weapon_armor_proficiency
    end
  end
end
