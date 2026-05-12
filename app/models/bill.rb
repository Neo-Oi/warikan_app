class Bill < ApplicationRecord
    validates :people, numericality: {greater_than: 0}
    validates :amount, numericality: {greater_than: 0}
end
