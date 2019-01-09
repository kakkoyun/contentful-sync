class CreateSyncMetadata < ActiveRecord::Migration[5.2]
  def change
    create_table :sync_metadata do |t|
      t.string :url

      t.timestamps
    end
    add_index :sync_metadata, :url, unique: true
  end
end
