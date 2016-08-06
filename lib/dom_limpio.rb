module DomLimpio
  class << self
    def load!
      if defined?(::Rails)
        register_rails_engine
      elsif defined?(::Sprockets)
        register_sprockets
      end
      configure_sass
    end

    def assets_path
      @gem_path ||= File.expand_path "../assets", File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    private

    def configure_sass
      require 'sass'
      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      require "dom_limpio/engine"
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
    end
  end
end

DomLimpio.load!
