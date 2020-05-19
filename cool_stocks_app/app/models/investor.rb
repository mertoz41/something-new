class Investor < ApplicationRecord
    has_many :portfolios
    has_many :stocks, through: :portfolios
    accepts_nested_attributes_for :portfolios

end
