class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :user
      t.string :size, default: nil
      t.string :alignment, default: nil
      t.string :eye_color, default: nil
      t.string :hair_color, default: nil
      t.string :hair_type, default: nil
      t.string :skin_color, default: nil
      t.integer :height, default: 0
      t.integer :weight, default: 0
      t.integer :age, default: 0
    end
  end
end
