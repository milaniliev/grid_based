class PictureDocument
  include MongoMapper::Document
  # include SomethingElseAttachment

  key :name, String
  
  
  grid_attachment :image
end
