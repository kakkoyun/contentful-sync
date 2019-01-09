# frozen_string_literal: true

# API controller that lists entries for field agents
class EntriesController < ApplicationController
  def index
    render json: Entry.all
  end
end
