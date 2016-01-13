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
end
