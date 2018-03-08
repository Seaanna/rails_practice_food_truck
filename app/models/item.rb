class Item < ApplicationRecord
  belongs_to :truck

  def as_json(options)
    {
      id: self.id,
      name: self.name,
      price: "%.2f" % self.price
    }
  end
end
