module MaterialKit
  class Engine < ::Rails::Engine
    initializer 'material_kit.setup' do |app|
      app.config.assets.precompile += Dir.glob(config.root + 'app/assets/images/material_kit/**/*').select{ |f| File.file? f }.map { |m| "material_kit/" +  File.path(m).split("material_kit/").last }
    end

    initializer 'material_kit.sass' do |app|
      # Set the sass load paths
      app.config.sass.load_paths << File.join(config.root, "lib", "sass")

      # Set the add material_kit/lib/sass to assets path
      app.config.assets.paths << File.join(config.root, "lib", "sass")
    end
  end
end
