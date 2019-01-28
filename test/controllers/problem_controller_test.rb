require 'test_helper'

class ProblemControllerTest < ActionDispatch::IntegrationTest
  test "should get solve" do
    get problem_solve_url
    assert_response :success
  end

  test "should get read" do
    get problem_read_url
    assert_response :success
  end

end
