class User < ActiveRecord::Base
    validates_uniqueness_of :email
    has_many :loans , :dependent => :delete_all
    has_many :wishes , :dependent => :delete_all
    
end
