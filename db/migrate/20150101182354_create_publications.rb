class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :format
      t.float :price
      t.string :url
      t.references :source, index: true

      t.timestamps
    end
  end
end
