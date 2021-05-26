require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe Network do
  it "has a name" do
    gsmn = Network.new("Greater Seattle Medical Network")

    expect(gsmn.name).to eq("Greater Seattle Medical Network")
  end

  it 'has hospitals' do

  end 
end
