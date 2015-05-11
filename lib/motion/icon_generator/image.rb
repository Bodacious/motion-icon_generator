module Motion
  module IconGenerator
    class Image
  
      require 'rmagick'
  
      include Magick
  
      attr_reader :size
  
  
      # Create a new Image
      #
      # size - An ImageSize to specifcy the size and name of image.
      def initialize(size)
        @size = size
      end
      
      # Writes this image to disk
      def write!
        create_target_directory
        scaled_image.write(filename)
      end
      
      # Prints feedback to STDOUT
      def report
        if File.exist?(filename)
          puts("Created #{filename.ljust(50)}\t(#{size.actual_width}x#{size.actual_height})")
        else
          warn("Couldn't write #{filename}")
        end
      end
  
  
      private

  
      def scaled_image
        template_image.resize_to_fill(size.actual_width, size.actual_height)
      end
  
      def filename
        "#{target}/#{size.name}"
      end
  
      def template_image
        if File.exist?(img_name)
          ImageList.new(img_name)
        else
          raise "No template image specified. Did you create resources/icon-template.png?"
        end
      end
  
      def create_target_directory
        FileUtils.mkdir(target) unless Dir.exist?(target)
      end
  
      def img_name
        ENV['TEMPLATE'] || "resources/icon-template.png"
      end
  
      def target
        ENV['TARGET'] || 'icons'
      end

    end
  
  end
end