class User < ApplicationRecord

  has_many :posts, dependent: :destroy 

  validates :name, presence: true,  length: { minimum: 2 }
  validates :username, presence: true, length: { minimum: 2 }
  validates :password, presence: true, length: { in: 6..20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
end
