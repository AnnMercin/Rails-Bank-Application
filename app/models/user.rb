class User < ApplicationRecord
    has_one :account
    attr_accessor :password_confirmation
    validates :password, confirmation: true
    validates :password_confirmation, presence: true, if: :password_changed?
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :mobile, presence: true, format: { with: /\A\d{10}\z/ }
    before_create :hash_password
  
    private
  
    def hash_password
      self.password = BCrypt::Password.create(password)
    end
  end
  