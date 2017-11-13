class PhotosController < InheritedResources::Base
  
  def index
    @photos = Photo.all.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @photo = Photo.new(:album_id => params[:album_id])
    @album = Album.find(params[:album_id])
  end
  
  private

    def photo_params
      params.require(:photo).permit(:name, :image, :image_cache, :album_id)
    end
end

