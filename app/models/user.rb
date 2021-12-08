class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_recipes
  has_many :recipes, through: :user_recipes
  has_many :preferences
  has_many :favourites
  has_many :recipes, through: :favourites
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
