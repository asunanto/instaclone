class Movie < ApplicationRecord
    def price_in_cents
        (price * 100).to_i
    end
end
