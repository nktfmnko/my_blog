class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validate :password_presence
    validates :password, confirmation: true, allow_blank: true
    validate :password_complexity
  
    private
    def password_complexity
        return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/
        errors.add :password, 'Complexity requirement not met. Length should be 8-70 characters and include: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
    end

    def password_presence
       errors.add(:password, :blank) unless password_digest.present? 
    end
end