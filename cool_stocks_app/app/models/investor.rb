class Investor < ApplicationRecord
    has_many :stocks, through: :portfolio
end
