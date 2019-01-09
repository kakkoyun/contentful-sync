# frozen_string_literal: true

module Concerns
  # ErrorHandler: Concern that collects, error handling logic
  module ErrorHandler
    extend ActiveSupport::Concern

    included do
      rescue_from StandardError, with: :internal_server_error
      rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
    end

    private

    def not_found(error)
      render json: { message: error.message }, status: :not_found
    end

    def unprocessable_entity(error)
      render json: { message: error.message }, status: :unprocessable_entity
    end

    def internal_server_error(error)
      render json: { message: error.message }, status: :internal_server_error
    end
  end
end
