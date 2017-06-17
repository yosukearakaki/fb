class User < ActiveRecord::Base
  has_many :topics

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable

end
