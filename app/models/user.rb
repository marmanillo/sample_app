class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  #validates(:name, presence: true) sind gliech
  validates :email, presence: true, length: {maximum: 255}
end
