require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_A')

class StudentTest < MiniTest::Test
  def test_get_student_name
    student1 = Student.new('Colin', 21)
    assert_equal('Colin', student1.get_name())
  end

  def test_get_student_cohort
    student1 = Student.new('Colin', 21)
    assert_equal(21, student1.get_cohort())
  end
end
