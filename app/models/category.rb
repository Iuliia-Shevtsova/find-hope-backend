class Category < ApplicationRecord
    has_and_belongs_to_many :organizations

    # validation
    validates_presence_of :name
end
