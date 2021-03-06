class PhotosController < ApplicationController

  respond_to :json

  def index
  end

  def create
    @photo = Photo.create(params[:photo])

    respond_to do |format|
      format.json { render partial: 'photos/single_filter', locals: { photo: @photo } }
    end
  end

end
