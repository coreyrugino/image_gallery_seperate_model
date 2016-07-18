class AddEntryIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :entry_id, :integer
  end
end
