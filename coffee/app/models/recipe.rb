class Recipe < ApplicationRecord
    has_many :comments, :dependent => :delete_all
end
