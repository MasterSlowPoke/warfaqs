class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|
      t.string :name, null: false
      t.attachment :picture
    end
  end
end
