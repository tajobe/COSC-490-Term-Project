class Invite < ActiveRecord::Base
  belongs_to :user, :primary_key => "id", :foreign_key => "to_id", :required => true
  belongs_to :server, :required => true
  belongs_to :user, :primary_key => "id", :foreign_key => "from_id", :required => true

  validates :message, presence: true
end
