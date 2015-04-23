class Server < ActiveRecord::Base
  belongs_to :user, :primary_key => "email", :foreign_key => "owner", :required => true
end
