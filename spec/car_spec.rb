require 'spec_helper'

describe Car do
  let(:car) { Car.create(status: :new) }

  it { should enumerize(:status).in(:new, :used, :broken).with_default(:new) }

  it 'works fine with hstore accessor' do
    expect(car.status).to eq(:new)
  end

  it 'updates hstore attribute' do
    car.update(status: :used)
    expect(car.status).to eq(:used)
  end
end
