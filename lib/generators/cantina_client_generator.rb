require 'rails/generators'
require "rails/generators/active_record"

# Generates a migration to add CantinaClient columns to the User model
class CantinaClientGenerator < ActiveRecord::Generators::Base
  # ActiveRecord::Generators::Base inherits from Rails::Generators::NamedBase which requires a NAME parameter for the
  # new table name. Our generator just updates a table, so we just set a random name here.
  argument :name, type: :string, default: 'random_name'

  class_option :'skip-migration', :type => :boolean, :desc => "Don't generate a migration"

  source_root File.expand_path('../../cantina/client', __FILE__)

  # Copies the migration template to db/migrate.
  def copy_files
    return if options['skip-migration']
    migration_template 'migration.rb', 'db/migrate/add_cantina_client_columns_to_users.rb'
  end
end