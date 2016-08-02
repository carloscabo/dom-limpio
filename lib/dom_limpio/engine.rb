module DomLimpio
  module Rails
    class Engine < ::Rails::Engine
      initializer 'dom_limpio' do | app |
        dl_path = File.expand_path("../../../src/css", __FILE__)
        app.config.assets.paths << dl_path
        app.middleware.use ::ActionDispatch::Static, "#{root}/src/css"
      end
    end
  end
end
