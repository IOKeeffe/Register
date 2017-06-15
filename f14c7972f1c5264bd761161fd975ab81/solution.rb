require 'byebug'

class Terminal

  attr_accessor :total

  def initialize
    @total = 0
    @shoppingBag = {}
  end

  def setPricing(itemPrices)
    @prices = itemPrices
    @prices.keys.each do |key|
      shoppingBag[key] = 0
    end
  end

  def scan(scannedItem)
    item = scannedItem.to_sym
    salesItem = salesItems[item]
    shoppingBag[item] += 1

  end

  def recalculateTotal()
    total = 0
    shoppingBag.each do |item|
      debugger
      if(item[:discount])
        total += (item / salesItem[:discount][:number]) * salesItem[:discount][:price]
        total += item
      else

      end
  end

  private
  attr_accessor :prices, :shoppingBag

end

salesItems = {a: {price: 2, discount: {number: 4, price: 7}},
              b: {price: 12},
              c: {price: 1.25, discount: {number: 6, price: 6}},
              d: {price: 0.15}}
terminal = Terminal.new
terminal.setPricing(salesItems)
p terminal.total
