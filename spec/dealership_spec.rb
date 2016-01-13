require('rspec')
require('vehicle')
# require('dealership')

describe('Vehicle') do
  describe('#make') do

    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.make()).to(eq('Ford'))
    end

    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.model()).to(eq('Ranger'))
    end

    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new('Ford', 'Ranger', 2003)
      expect(test_vehicle.year()).to(eq(2003))
    end

  end
end
