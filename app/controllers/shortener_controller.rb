class ShortenerController < ApplicationController
  def create
    render json: ShortenerService.create(params[:id])
  end

  def show
    redirect_to ShortenerService.restore(params[:id])
  end
end
