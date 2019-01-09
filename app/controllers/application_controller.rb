# frozen_string_literal: true

# Application level shared base controller
class ApplicationController < ActionController::API
  include Concerns::ErrorHandler

  def contentful
    @client ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE_ID'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
