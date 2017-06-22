require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_vintage_robot_needing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
    robot.foreign_model = true
    robot.vintage_model = true
    robot.needs_repairs = true
    # act
    var = robot.station
    # assert
    assert_equal(1 , var)
  end

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
    robot.foreign_model = true
    robot.needs_repairs = true
    # act
    var = robot.station
    # assert
    assert_equal(1, var)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robot = Robot.new
    robot.vintage_model = true
    robot.needs_repairs = true
    # act
    var = robot.station
    # assert
    assert_equal(2, var)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robot = Robot.new
    robot.needs_repairs = true
    # act
    var = robot.station
    # assert
    assert_equal(3, var)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    robot = Robot.new
    # act
    var = robot.station
    # assert
    assert_equal(4, var)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

end
