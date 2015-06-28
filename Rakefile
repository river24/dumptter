# coding: utf-8
require "active_record"

task :default => :create_migration

DUMPTTER_DIR="#{ENV['HOME']}/.dumptter"
DB_FILE="#{DUMPTTER_DIR}/dumptter.db"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database  => DB_FILE
)

desc "Create a migration (parameters: NAME, VERSION)"
task :create_migration do
  unless ENV["NAME"]
    puts "No NAME specified. Example usage: `rake create_migration NAME=create_users`"
    exit
  end

  name    = ENV["NAME"]
  version = ENV["VERSION"] || Time.now.utc.strftime("%Y%m%d%H%M%S")

  ActiveRecord::Migrator.migrations_paths.each do |directory|
    p directory
    next unless File.exist?(directory)
    migration_files = Pathname(directory).children
    if duplicate = migration_files.find { |path| path.basename.to_s.include?(name) }
      puts "Another migration is already named \"#{name}\": #{duplicate}."
      exit
    end
  end

  filename = "#{version}_#{name}.rb"
  dirname  = ActiveRecord::Migrator.migrations_path
  path     = File.join(dirname, filename)

  FileUtils.mkdir_p(dirname)
  File.write path, <<-MIGRATION.strip_heredoc
class #{name.camelize} < ActiveRecord::Migration
  def change
  end
end
MIGRATION

  puts path
end

# desc "Migrate database"
# task :migrate do
#   ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
# end

