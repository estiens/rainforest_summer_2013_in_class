class Product < ActiveRecord::Base

  def price
    (self.price_in_cents.to_f / 100).to_s(:currency, precision: 2)
  end

end