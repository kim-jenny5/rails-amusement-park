class User < ApplicationRecord
    has_secure_password

    has_many :rides
    has_many :attractions, through: :rides

    def mood
        happiness < nausea ? "sad" : "happy"
    end
end
