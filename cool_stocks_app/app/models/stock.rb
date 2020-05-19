class Stock < ApplicationRecord
    has_many :portfolios
    has_many :investors, through: :portfolios
end
