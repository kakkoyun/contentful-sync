class AddOrginalCreatedAtToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :original_created_at, :datetime
  end
end
