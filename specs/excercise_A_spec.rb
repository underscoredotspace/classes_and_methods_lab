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

  def test_set_student_name
    student1 = Student.new('Colin', 21)
    student1.set_name("Luis")
    assert_equal("Luis", student1.get_name())
  end

  def test_set_student_cohort
    student1 = Student.new('Colin', 21)
    student1.set_cohort(20)
    assert_equal(20, student1.get_cohort())
  end

  def test_student_talk
    student1 = Student.new('Colin', 21)
    result = student1.talk()
    assert_equal('I can talk!', result)
  end

  def test_student_fav_language
    student1 = Student.new('Colin', 21)
    result = student1.say_favourite_language("Ruby")
    assert_equal('I love Ruby', result)
  end
end
