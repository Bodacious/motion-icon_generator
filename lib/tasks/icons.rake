# encoding : utf-8
require 'motion/icon_generator/image'
require 'motion/icon_generator/size'
require 'yaml'

namespace :icons do
  
  desc "Creates splash images for all devices"
  
  task :generate do
    icon_image_sizes.each do |size| 
      Motion::IconGenerator::Image.new(size).tap do |icon_image|
        icon_image.write!
        icon_image.report        
      end
    end
  end
  
  
  private

  
  def icon_image_sizes
    @icon_image_sizes ||= begin
      default_icon_image_sizes + local_icon_image_sizes
    end
  end
  
  def default_icon_image_sizes
    load_icon_image_sizes_from_file("#{GEM_ROOT}/lib/motion/icon_generator/icons.yaml")
  end

  def local_icon_image_sizes
    load_icon_image_sizes_from_file("config/icons.yaml")
  end
  
  def load_icon_image_sizes_from_file(filename)
    begin
      YAML.load(File.read(filename)).map do |attributes|
        Motion::IconGenerator::Size.new(attributes)      
      end.flatten    
    rescue Errno::ENOENT
      []
    end    
  end
  
end