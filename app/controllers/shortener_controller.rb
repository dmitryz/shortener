# frozen_string_literal: true

class ShortenerController < ApplicationController
  def create
    render json: ShortenerService.create(params[:url])
  end

  def show
    redirect_to ShortenerService.restore(params[:id])
  end
end
