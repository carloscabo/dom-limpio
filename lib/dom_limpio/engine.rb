module DomLimpio
  module Rails
    class Engine < ::Rails::Engine
      initializer 'dom-limpio' do |app|
        app.config.assets.paths << DomLimpio.stylesheets_path
        app.middleware.use ::ActionDispatch::Static, DomLimpio.assets_path
      end
    end
  end
end
