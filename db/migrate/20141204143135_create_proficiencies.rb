class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.belongs_to :character_class
      t.belongs_to :skill
    end
  end
end
