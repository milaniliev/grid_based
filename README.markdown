GridAttachment
==============

MongoMapper-compatible GridFS file attachment, as simple as possible.
---------------------------------------------------------------------

    class User
      include MongoMapper::Document
      include GridAttachment
      
      grid_attachment :photo
    end

    # from a multipart HTML form
    user.photo = params[:user][:photo] 

    # from filesystem
    user.photo = File.open('sam.jpg') 
    
    user.photo # => File object

Combine with [skinandbones' Rack::GridFS](http://github.com/skinandbones/rack-gridfs) for serving files on the web.

    # in config/initializers/grid_attachment.rb or config/environment.rb
    GridAttachment.prefix = 'gridfs'
    
    # in a view
    <%= image_tag user.photo.grid_url %>
    
    # generates
    <img src="/gridfs/users/21e3d3280283e33/photo.jpg">

License
-------

The MIT License
---------------

Copyright (c) 2010 Milan Iliev

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

Inspired by
-----------

[twoism's Grip](http://github.com/twoism/grip)

