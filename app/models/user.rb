class User < ApplicationRecord
  has_many :ideas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Gravatar user icon
  include Gravtastic
  gravtastic
end
