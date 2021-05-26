require './lib/doctor'

RSpec.describe Doctor do
  it 'has a name' do
    doctor = Doctor.new({name: "Meredith Grey", specialty: "General Surgery",education: "Harvard University", salary: 100_000})

      expect(doctor[:name][0]).to eq("Meredith Grey")
  end

  it 'has a speciality' do
    doctor = Doctor.new({name: "Meredith Grey", specialty: "General Surgery",education: "Harvard University", salary: 100_000})

    expect(doctor[:speciality]).to eq("General Surgery")
  end

  it "has education" do
    doctor = Doctor.new({name: "Meredith Grey", specialty: "General Surgery",education: "Harvard University", salary: 100_000})

    expect(doctor[:education]).to eq("Harvard University")
  end

  it 'has a salary' do
    doctor = Doctor.new({name: "Meredith Grey", specialty: "General Surgery",education: "Harvard University", salary: 100_000})

    expect(doctor[:salary]).to eq(100_000)
  end

end
