class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, length:{maximum:50}, uniqueness: true
  validates :first_name, :last_name, length:{minimum:3, maximum:30}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, password_length: 8..128
end
