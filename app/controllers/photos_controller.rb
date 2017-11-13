class PhotosController < InheritedResources::Base
  
  def index
    @photos = Photo.all.paginate(page: params[:page], per_page: 4)
  end
  
  def new
    @photo = Photo.new(:album_id => params[:album_id])
    @album = Album.find(params[:album_id])
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        @album = @photo.album
        format.html { redirect_to(@album) }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def update
    @photo = Photo.find(params[:id])
    @photo.attributes = photo_params
    respond_to do |format|
      if @photo.save
        @album = @photo.album
        format.html { redirect_to(@album) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @album = @photo.album
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to(@album) }
      format.js {}
    end 
  end
  
  private
    
    
    def photo_params
      params.require(:photo).permit(:name, :image, :image_cache, :album_id)
    end
end

