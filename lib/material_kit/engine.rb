module MaterialKit
  class Engine < ::Rails::Engine
    initializer 'material_kit.setup' do |app|
      app.config.assets.precompile += %w( material_kit/avatar.jpg material_kit/christian.jpg material_kit/kendall.jpg )
    end

    initializer 'material_kit.sass' do |app|
      # Set the sass load paths
      app.config.sass.load_paths << File.join(config.root, "lib", "sass")

      # Set the add material_kit/lib/sass to assets path
      app.config.assets.paths << File.join(config.root, "lib", "sass")
    end
  end
end
