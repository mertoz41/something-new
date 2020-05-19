class Stock < ApplicationRecord
    has_many :investors, through: :portfolio
end
