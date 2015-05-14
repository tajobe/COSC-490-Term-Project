class Invite < ActiveRecord::Base
  belongs_to :user, :primary_key => "id", :foreign_key => "to_id", :required => true
  has_one :server
  belongs_to :user, :primary_key => "id", :foreign_key => "from_id", :required => true
end
