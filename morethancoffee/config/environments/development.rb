#Rails.application.configure do
Morethancoffee::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  # config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.action_mailer.delivery_method = :smtp 
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_url_options = {:host => 'localhost:3000'}
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.smtp_settings = {
   address:              'smtp.gmail.com',
   port:                 587,
   domain:               'mail.google.com', 
   user_name:            'morethancoffeewebapp@gmail.com',
   password:             'morethancoffee',
   enable_starttls_auto: true,
   authentication:       'plain',
   enable_starttls_auto: true  }

   # config/initializers/gravatar_image_tag.rb
  GravatarImageTag.configure do |config|
    config.default_image           = 'http://www.charlieproctor.com/img/id.jpg'   # Set this to use your own default gravatar image rather then serving up Gravatar's default image [ 'http://example.com/images/default_gravitar.jpg', :identicon, :monsterid, :wavatar, 404 ].
    config.filetype                = 'jpg'   # Set this if you require a specific image file format ['gif', 'jpg' or 'png'].  Gravatar's default is png
    config.include_size_attributes = true  # The height and width attributes of the generated img will be set to avoid page jitter as the gravatars load.  Set to false to leave these attributes off.
    config.rating                  = nil   # Set this if you change the rating of the images that will be returned ['G', 'PG', 'R', 'X']. Gravatar's default is G
    config.size                    = nil   # Set this to globally set the size of the gravatar image returned (1..512). Gravatar's default is 80
    config.secure                  = false # Set this to true if you require secure images on your pages.
  end

end
