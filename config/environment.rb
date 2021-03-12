# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
# Rails.application.initialize!
InstantEatsBackend::Application.initialize!

# Set the default host and port to be the same as Action Mailer.
InstantEatsBackend::Application.default_url_options = InstantEatsBackend::Application.config.action_mailer.default_url_options
