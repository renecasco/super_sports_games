require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_it_has_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.name
    expected = "Curling"
    assert_equal expected, actual
  end

  def test_it_has_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.ages
    expected = [24, 30, 18, 20, 41]
    assert_equal expected, actual
  end

  def test_it_gets_largest_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.max_age
    expected = [41]
    assert_equal expected, actual
  end

  def test_it_gets_smallest_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.min_age
    expected = [18]
    assert_equal expected, actual
  end

  def test_it_gets_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.average_age
    expected = 26.6
    assert_equal expected, actual
  end

  def test_it_gets_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual = event.standard_deviation_age
    expected = 8.28
    assert_equal expected, actual
  end
end
