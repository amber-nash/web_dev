class User < ApplicationRecord
  belongs_to :doctor

  has_secure_password

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
end
