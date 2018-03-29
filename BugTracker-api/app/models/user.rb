class User < ApplicationRecord
    has_many :bugs

    validates :lname, presence: true
    validates :fname, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }

    validates :thumbnail, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a GIF, JPG, or PNG' }
end
