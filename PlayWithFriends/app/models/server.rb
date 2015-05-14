class Server < ActiveRecord::Base
  belongs_to :user, :primary_key => "email", :foreign_key => "owner", :required => true
  belongs_to :game, :primary_key => "id", :foreign_key => "game_id", :required => true
end
