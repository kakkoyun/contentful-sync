# frozen_string_literal: true

# API Controller to trigger Contentful Sync
class SyncController < ApplicationController
  def initial
    sync = contentful.sync(initial: true)
    Entry.transaction do
      SyncMetadatum.delete_all
      Entry.delete_all
      sync.each_item do |item|
        Entry.create!(entry_id: item.id, fields: item.raw['fields'], sys: item.raw['sys'], original_created_at: item.sys.created_at)
      end
      SyncMetadatum.create!(url: sync.next_sync_url)
    end
    render json: { message: 'ok' }
  end

  def incremental
    render(json: { message: 'No initial sync' }) and return unless SyncMetadatum.first

    sync = contentful.sync(SyncMetadatum.first.url)
    sync.each_item do |item|
      if item.deleted_at?
        Entry.find_by(entry_id: item.id)&.destroy!
      else
        entry = Entry.find_or_initialize_by(entry_id: item.id)
        entry.assign_attributes(fields: item.raw['fields'], sys: item.raw['sys'])
        entry.save!
      end
    end
    render json: { message: 'ok' }
  end
end
