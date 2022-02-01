class EventSerializer 
    include FastJsonapi::ObjectSerializer
    attributes :description, :image_url, :date, :id
  
  
  
end