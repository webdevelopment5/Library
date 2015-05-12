class Book < ActiveRecord::Base
    has_many :loans, :dependent => :delete_all
    has_many :wishes, :dependent => :delete_all
end
