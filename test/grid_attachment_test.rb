require 'test_helper'

class GridAttachmentTest < Test::Unit::TestCase
  context "A PictureDocument with a :pretty_picture grid_attachment" do
    setup do
      @document = PictureDocument.new
      @image = File.open(File.join(File.dirname(__FILE__), '..', 'fixtures', 'mission_flower.jpg'))
    end

    context "when assigned a file" do
      setup do
        @document.image = @image
      end

      should "Return the image back" do
        assert_equal @image, @document.image
      end
    end

    teardown do
      # @image.close
    end
  end
end
