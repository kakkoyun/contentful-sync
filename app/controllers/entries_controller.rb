# frozen_string_literal: true

class EntriesController < ApplicationController
  def index
    entries = contentful.entries
    binding.pry
    puts entries
    # render plain: entries
    render json: contentful.entries
  end
end
