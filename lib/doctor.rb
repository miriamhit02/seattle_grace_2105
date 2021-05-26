class Doctor
  attr_reader :name, :speciality, :education, :salary

  def initialize(name, speciality, education, salary)
    @name = name
    @speciality = speciality
    @education = education
    @salary = salary
  end
end
