require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test
  def setup
    @team = Team.new('Partick', ['Jim', 'Bob'], "Richard")
  end
  

  def test_get_team_name
    team_name = @team.team_name()
    assert_equal("Partick", team_name)
  end

  def test_get_team_players
    team_players = @team.players()
    assert_equal(["Jim", "Bob"], team_players)
  end

  def test_get_team_coach
    team_coach = @team.coach()
    assert_equal("Richard", team_coach)
  end

  def test_set_team_coach
    @team.coach = 'John'
    team_coach = @team.coach()
    assert_equal("John", team_coach)
  end

  def test_add_new_player
    @team.add_player('Jeff')
    assert_equal(['Jim', 'Bob', 'Jeff'], @team.players)
  end

  def test_is_player__true
    is_player = @team.is_player('Jim')
    assert_equal(true, is_player)
  end

  def test_is_player__false
    is_player = @team.is_player('Jeff')
    assert_equal(false, is_player)
  end

  def test_points_is_zero
    points = @team.points
    assert_equal(0, points)
  end

  def test_game_won__win
    @team.game_won(true)
    points = @team.points
    assert_equal(1, points)
  end

  def test_game_won__lose
    @team.game_won(false)
    points = @team.points
    assert_equal(0, points)
  end

end
