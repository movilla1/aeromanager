# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module AeromanagerModels
  class Engine < ::Rails::Engine
    isolate_namespace ::AeromanagerModels
    config.autoload_paths += ::Dir["app/services"]
    initializer :append_migrations do |app|
      unless app.root.to_s.match(root.to_s)
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
    config.before_initialize do                                                      
      config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
    end
  end
end
