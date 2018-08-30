class User < ApplicationRecord
    has_secure_password
    has_many :books
    validates :name, :books_read, :email, presence: true, uniqueness: true
   
end
