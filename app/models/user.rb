class User < ActiveRecord::Base
    validates :first_name, :last_name, :email_address, :age, presence: true
    validates :age, numericality: { greater_than: 9, less_than: 151 }
    validates :first_name, :last_name, length: { minimum:2 }
end
