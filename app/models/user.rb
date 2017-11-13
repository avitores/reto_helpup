class User < Patron
  devise :invitable, :registerable, :confirmable
  
  has_many :albums, :dependent => :destroy
  
  
  after_create :create_album
  
  def create_album
    self.albums.create(:name => "Mi album")    
  end
end
