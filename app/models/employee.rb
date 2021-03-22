class Employee < ApplicationRecord
    has_secure_password

    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :partners, through: :projects
end
