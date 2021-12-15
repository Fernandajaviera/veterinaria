class Pet < ApplicationRecord
    has_many :pethistory
    accepts_nested_attributes_for :pethistory, allow_destroy: true
end
