class CreateRaces < ActiveRecord::Migration
  def change
    create_table :race do |t|
      t.string :name
      t.belongs_to :character
  end
end
