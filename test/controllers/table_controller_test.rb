require "test_helper"

class TableControllerTest < ActionDispatch::IntegrationTest
  test "should get movies" do
    get table_movies_url
    assert_response :success
  end

  test "should get directors" do
    get table_directors_url
    assert_response :success
  end

  test "should get actors" do
    get table_actors_url
    assert_response :success
  end

  test "should get characters" do
    get table_characters_url
    assert_response :success
  end
end
