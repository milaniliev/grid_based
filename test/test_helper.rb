$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'activesupport' # required by MongoMapper for cattr_accessor
require 'mongo_mapper'
require 'grid_attachment'
require '../fixtures/picture_document'

TEST_DB = 'test-grid-attachment'
MongoMapper.database = TEST_DB 
