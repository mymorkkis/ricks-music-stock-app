require_relative 'stock'

class Inventory

  def self.stock_level_accessor(stock_item)
    case stock_item.quantity
    when 1..5
      return 'Very Low'
    when 6..10
      return 'Low'
    when 11..20
      return 'Good'
    when 21..99
      return 'High'
    end
  end

  def self.product_markup(stock_item)
    markup = stock_item.sell_price - stock_item.buy_price
    return markup
  end

  def self.total_items_profit(stock_item)
    markup = Inventory.product_markup(stock_item)
    item_profit = markup * stock_item.quantity
    return item_profit.round(2)
  end

  def self.total_stock_cost(all_stock)
    total_stock_cost = 0
    all_stock.each do |each_stock_item|
      total_stock_cost += (each_stock_item.buy_price * each_stock_item.quantity)
    end
    return total_stock_cost.round(2)
  end

end