require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test

  def test_get_team_name
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_name = team1.team_name()
    assert_equal("Hearts", team_name)
  end

  def test_get_team_players
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.players()
    assert_equal(["luis", "colin"], team_players)
  end

  def test_get_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_coach = team1.coach()
    assert_equal("Sandy", team_coach)
  end

  def test_set_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team1.coach = 'John'
    team_coach = team1.coach()
    assert_equal("John", team_coach)
  end

  def test_add_new_player
    team1 = Team.new('Partick', ['Jim', 'Bob'], "Richard")
    team1.add_player('Jeff')
    assert_equal(['Jim', 'Bob', 'Jeff'], team1.players)
  end

  def test_is_player__true
    team1 = Team.new('Partick', ['Jim', 'Bob'], "Richard")
    is_player = team1.is_player('Jim')
    assert_equal(true, is_player)
  end

  def test_is_player__false
    team1 = Team.new('Partick', ['Jim', 'Bob'], "Richard")
    is_player = team1.is_player('Jeff')
    assert_equal(false, is_player)
  end

  def test_points_is_zero
    team1 = Team.new('Partick', ['Jim', 'Bob'], "Richard")
    points = team1.points
    assert_equal(0, points)
  end

end
