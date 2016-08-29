require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    sodas.find { soda_brand }
  end

  def sell(soda_brand)

    p sodas.delete(soda_brand)
    cash += sodas
  end

end
