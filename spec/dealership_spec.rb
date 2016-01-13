require('rspec')
require('vehicle')
# require('dealership')

describe('Vehicle') do
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

end
