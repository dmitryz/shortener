# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |error|
    message = "#{error.model} is not found"
    render json: { error: message }, status: :not_found
  end

  rescue_from ActiveRecord::RecordInvalid do |error|
    render json: { error: error.message }, status: :unprocessable_entity
  end
end
