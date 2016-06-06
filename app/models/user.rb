class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :leagues
  has_many :commissioners, foreign_key: :commissioner_id
  has_many :managers, foreign_key: :manager_id
end
