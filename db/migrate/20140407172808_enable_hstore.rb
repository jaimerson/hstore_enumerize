class EnableHstore < ActiveRecord::Migration
  def up
    execute('CREATE EXTENSION IF NOT EXISTS hstore;') unless ENV['CI']
  end

  def down
    execute('DROP EXTENSION hstore;') unless ENV['CI']
  end
end
