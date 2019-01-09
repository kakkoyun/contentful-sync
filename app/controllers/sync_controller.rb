# frozen_string_literal: true

# API Controller to trigger Contentful Sync
class SyncController < ApplicationController
  def initial
    sync = contentful.sync(initial: true)
    Entry.transaction do
      Entry.delete_all
      sync.each_item do |item|
        Entry.create!(entry_id: item.id, fields: item.raw['fields'], sys: item.raw['sys'])
      end
    end
    render json: { message: 'ok' }
  end

  def update
    # TODO
  end
end
