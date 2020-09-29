class User < ApplicationRecord
    has_many :posts

    # attr_accessor :password :passwprd_confirmation
    # validates :password, presence: true
    # validates :password, confirmation: true
    # before_save :bycrypt_password

    has_secure_password
    validates :email, presence: true

    # def bcrypt_password
    #     self.password_digest = BCrypst::Password.create(password)
    # end
end
