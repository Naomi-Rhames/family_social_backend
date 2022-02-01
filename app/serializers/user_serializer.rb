class UserSerializer 
  include FastJsonapi::ObjectSerializer
    attributes :username, :email, :image_url, :bio, :id
  
  
  
  end