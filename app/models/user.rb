class User < ActiveRecord::Base
    has_many :loans
    has_many :wishes
end
