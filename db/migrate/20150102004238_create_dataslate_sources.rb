class CreateDataslateSources < ActiveRecord::Migration
  def change
    create_table :dataslate_sources do |t|
      t.references :dataslate, index: true, null: false
      t.references :source, index: true, null: false

      t.timestamps
    end
  end
end
