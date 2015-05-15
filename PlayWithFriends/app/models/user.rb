class User < ActiveRecord::Base
  has_many :servers
  has_many :invites
  has_many :reputations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :email, presence: true
  validates :email, uniqueness: true

  validates :email, allow_blank: false, format: {
                      with: %r{\\@\Z}i,
                      message: 'must be a valid email with an @'
                  }
end
