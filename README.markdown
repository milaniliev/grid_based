GridAttachment
==============

MongoMapper-compatible GridFS file attachment, as simple as possible.

    class User
      include MongoMapper::Document
      include GridAttachment
      
      grid_attachment :photo
    end
    
    user.photo = params[:user][:photo] # from a multipart HTML form
    
    user.photo = File.open('sam.jpg') # from filesystem
    
    user.photo # => File object

Combine with http://github.com/skinandbones/rack-gridfs for serving files on the web.

    # in config/initializers/grid_attachment.rb or config/environment.rb
    GridAttachment.prefix = 'gridfs'
    
    # in a view
    <%= image_tag user.photo.grid_url %>
    
    # generates
    <img src="/gridfs/users/21e3d3280283e33/photo.jpg">
 
