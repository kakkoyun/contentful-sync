# frozen_string_literal: true

# API Controller for status, a health check probe
class StatusController < ApplicationController

  def index
    render json: { status: :ok, description: 'All systems are functional' }
  end
end
