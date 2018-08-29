class User < ApplicationRecord
    validates :name, :books_read, presence: true
    has_many :books
end
