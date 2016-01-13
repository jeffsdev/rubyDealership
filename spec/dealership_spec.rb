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
end
