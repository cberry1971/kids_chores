require 'test_helper'

class ChoreTest < ActiveSupport::TestCase
 fixtures :chores
 
  test "chore attributes must not be empty" do
    chore = Chore.new
    assert chore.invalid?
    assert chore.errors[:title].any?
    assert chore.errors[:description].any?
    assert chore.errors[:value].any?
    assert chore.errors[:image_url].any?
  end

  test "chore value must be positive" do
    chore = Chore.new(
      :title        => "Lorem Ipsum",
      :description  => "Wibbles are fun",
      :image_url    => "lorem.jpg")
    chore.value = -1
    assert chore.invalid?
    assert_equal "must be greater than or equal to 0.01",
      chore.errors[:value].join('; ')
      
    chore.value = 0
    assert chore.invalid?
    assert_equal "must be greater than or equal to 0.01",
      chore.errors[:value].join('; ')

    chore.value = 1
    assert chore.valid?
  end
end
