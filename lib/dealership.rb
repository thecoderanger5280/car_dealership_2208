class Dealership
  attr_reader :name,
              :address,
              :inventory,
              :inventory_count,
              :total_value,
              :details
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @total_value = 0
    @details = {"total_value" => @total_value, "address" => @address}
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
    @total_value += car.total_cost
    @details["total_value"] += car.total_cost
  end

  def has_inventory?
    @inventory_count != 0
  end

  def cars_by_make(car_make)
    @inventory.find_all do |car|
      car.make == car_make
    end
  end

  def average_price_of_car
    average = 0
    @inventory.each do |car|
      average += car.total_cost
    end
    average /= @inventory.length
  end

  def cars_sorted_by_price
    @inventory.sort_by {|car| car.total_cost}
  end

  # def inventory_hash
  #   inventory_h = @inventory.sort_by {|car| car.make}
  #   count = 0
  #   fords = @inventory.find_all {|car| car.make == "Ford"}
  #   toyotas = @inventory.find_all {|car| car.make == "Toyota"}
  #   chevrolets = @inventory.find_all {|car| car.make == "Chevrolet"}
  #   {"Ford" => fords, "Toyota" => toyotas, "Chevrolet" => chevrolets}
  # end
end