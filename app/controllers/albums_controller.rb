class AlbumsController < InheritedResources::Base
  before_action :authenticate_user!

  def index
    @albums = current_user.albums
  end
  
  def new
    @album = Album.new
    @album.user_id = current_user.id
  end
  
  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.paginate(page: params[:page], per_page: 4)
    
  end

  private

    def album_params
      params.require(:album).permit(:name, :public, :user_id)
    end
    
end

