GEM_ROOT = File.join(File.dirname(__FILE__), '..', '..')

$LOAD_PATH.unshift(GEM_ROOT)

require "motion/icon_generator/version"

load "tasks/icons.rake"

module Motion
  module IconGenerator

  end
end
