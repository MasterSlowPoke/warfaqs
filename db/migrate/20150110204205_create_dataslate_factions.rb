class CreateDataslateFactions < ActiveRecord::Migration
  def change
    create_table :dataslate_factions do |t|
      t.references :dataslate, index: true, null: false
      t.references :faction, index: true, null: false

      t.timestamps
    end
  end
end
