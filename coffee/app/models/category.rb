class Category < ApplicationRecord
    has_many :masseges, :dependent => :delete_all
end
