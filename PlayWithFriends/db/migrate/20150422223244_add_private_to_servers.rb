class AddPrivateToServers < ActiveRecord::Migration
  def change
    add_column :servers, :private, :boolean, default: true
  end
end
