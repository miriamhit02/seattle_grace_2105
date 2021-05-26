require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  it 'has a hospital name' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

    expect(seattle_grace.hospital_name).to eq("Seattle Grace")
  end

  it 'has a chief_of_surgery' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

    expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
  end

  it 'has doctors' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

    expect(seattle_grace[2][0]).to eq({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    expect(seattle_grace[2][1]).to eq({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
  end

  xit 'can add the doctors salary' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

  end
end
