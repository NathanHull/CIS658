class User < ApplicationRecord
    validates :lname, presence: true
    validates :fname, presence: true
    validates :email, presence: true
    validates 
end
