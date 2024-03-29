class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def edit
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to entries_path
    else
      render :new
    end
  end

  private
      def picture_params
        params.require(:picture).permit(:entry_id, :caption, :image)
      end

end
