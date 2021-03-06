require('rspec')
require('vehicle')
require('dealership')

    #
##### Specs for Vehicle class =========================>
    #
describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.make()).to(eq('Ford'))
    end
  end

  describe('#model') do
    it('returns the model of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.model()).to(eq('Ranger'))
    end
  end

  describe('#year') do
    it('returns the year of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.year()).to(eq(2003))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved vehicles') do
      Vehicle.new('Ford', 'Ranger', 2003).save()
      Vehicle.clear()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe('#age') do
    it('return the vehicles age') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.age()).to(eq(13))
    end
  end

  describe('#worth_buying?') do
    it('returns true if the car is American made and less than 15 years old') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.worth_buying?()).to(eq(true))
    end
  end

  describe('#id') do
    it('returns the id of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a vehicle by its id number') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      test_vehicle.save()
      test_vehicle2 = Vehicle.new('Honda', 'Civic', 1998)
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end

end

    #
##### Specs for Dealership class =========================>
    #
describe('Dealership') do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#id') do
    it('returns the id of a dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe("#cars") do
    it('returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe(".all") do
    it('returns and empty array of all dealerships') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('adds a dealership to the array of dealerships') do
      test_dealership = Dealership.new("Bob's Used Cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe(".clear") do
    it("empties out all the saved dealerships") do
      Dealership.new("Bob's Used Cars").save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe(".find") do
    it('returns a dealership by its id number') do
      test_dealership = Dealership.new("Bob's Used Cars")
      test_dealership.save()
      test_dealership2 = Dealership.new("Jane's Car Shack")
      test_dealership2.save()
      expect(Dealership.find(test_dealership.id())).to(eq(test_dealership))
    end
  end

  describe('#add_vehicle') do
    it('adds a new vehicle to the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      test_dealership.add_vehicle(test_vehicle)
      expect(test_dealership.cars()).to(eq([test_vehicle]))
    end
  end
end
