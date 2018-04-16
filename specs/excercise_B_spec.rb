require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test

  def test_get_team_name
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_name = team1.get_team_name()
    assert_equal("Hearts", team_name)
  end

end
