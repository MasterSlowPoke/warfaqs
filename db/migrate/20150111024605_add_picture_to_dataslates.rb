class AddPictureToDataslates < ActiveRecord::Migration
  def change
    add_attachment :dataslates, :picture
    remove_column :dataslates, :picture_url
  end
end
