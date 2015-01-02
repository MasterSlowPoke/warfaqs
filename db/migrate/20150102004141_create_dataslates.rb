class CreateDataslates < ActiveRecord::Migration
  def change
    create_table :dataslates do |t|
      t.string :title
      t.string :role
      t.string :picture_url

      t.timestamps
    end
  end
end
