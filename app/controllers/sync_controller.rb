# frozen_string_literal: true

# API Controller to trigger Contentful Sync
class SyncController < ApplicationController
  def initial
    sync = client.sync(initial: true, type: 'Deletion')
    sync.each_item do |item|
      # TODO
    end
   end

  def update
    # TODO
   end
end
