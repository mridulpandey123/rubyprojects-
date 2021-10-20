class Student
  attr_accessor:first_name,:last_name,:username,:email,:password
  def initialize(firstname,lastname,username,email,password)
    @first_name=firstname
    @last_name=lastname
    @username=username
    @email=email
    @password=password
  end
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, User name: #{@username}, email address: #{@email}"
  end
end

mridul=Student.new('mridul','pandey','mridul1','mridulpandey27@gmail.com','password1')
puts mridul
mashrur = Student.new('mashrur','hosssain','mashrur1','mashrurhossain@example.com','password2')
puts mashrur
mashrur.last_name=mridul.last_name
puts mashrur