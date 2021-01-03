module BetterTogether
  # Inital engine setup
  class InstallGenerator < Rails::Generators::Base
    desc "Installs the Community Engine inside your app. Creates an initializer file at config/initializers/better_together.rb with the defaults"
    def create_initializer_file
      create_file(
        'config/initializers/better_together.rb',
        initializer_content
      )
    end

    private

    def initializer_content
      'BetterTogether.user_class = "User"'
    end
  end
end