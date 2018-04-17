require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_A')

class StudentTest < MiniTest::Test
  def setup
    @student = Student.new('Colin', 21)
  end

  def test_get_student_name
    assert_equal('Colin', @student.get_name())
  end

  def test_get_student_cohort
    assert_equal(21, @student.get_cohort())
  end

  def test_set_student_name
    @student.set_name("Luis")
    assert_equal("Luis", @student.get_name())
  end

  def test_set_student_cohort
    @student.set_cohort(20)
    assert_equal(20, @student.get_cohort())
  end

  def test_student_talk
    result = @student.talk()
    assert_equal('I can talk!', result)
  end

  def test_student_fav_language
    result = @student.say_favourite_language("Ruby")
    assert_equal('I love Ruby', result)
  end
end
