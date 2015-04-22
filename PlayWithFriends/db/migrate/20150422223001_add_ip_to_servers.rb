class AddIpToServers < ActiveRecord::Migration
  def change
    add_column :servers, :ip, :string
  end
end
