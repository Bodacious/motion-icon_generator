module Motion
  
  module IconGenerator
    
    class Size

      attr_reader :name
      attr_reader :size
      attr_reader :scale

  
      def initialize(attributes)
        for key, value in attributes
          instance_variable_set("@#{key}", value)
        end
      end
  
      def actual_width
        scale * size
      end
  
      def actual_height
        scale * size
      end
  
    end

   
  end
  
end