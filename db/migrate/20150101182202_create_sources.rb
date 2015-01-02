class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :title
      t.date :published

      t.timestamps
    end
  end
end
