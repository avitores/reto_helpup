class AlbumsController < InheritedResources::Base
#  before_action :authenticate_user!
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @albums = (current_user.albums if current_user) || Album.where(public: true)
  end
  
  def new
    @album = Album.new
    @album.user_id = current_user.id
  end
  
  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.paginate(page: params[:page], per_page: MAX_PHOTO_PER_PAGE)
    
  end
  
  private

    def album_params
      params.require(:album).permit(:name, :public, :user_id)
    end
    
end

