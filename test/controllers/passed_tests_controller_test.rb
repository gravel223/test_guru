require "test_helper"

class PassedTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passed_test = passed_tests(:one)
  end

  test "should get index" do
    get passed_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_passed_test_url
    assert_response :success
  end

  test "should create passed_test" do
    assert_difference('PassedTest.count') do
      post passed_tests_url, params: { passed_test: {  } }
    end

    assert_redirected_to passed_test_url(PassedTest.last)
  end

  test "should show passed_test" do
    get passed_test_url(@passed_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_passed_test_url(@passed_test)
    assert_response :success
  end

  test "should update passed_test" do
    patch passed_test_url(@passed_test), params: { passed_test: {  } }
    assert_redirected_to passed_test_url(@passed_test)
  end

  test "should destroy passed_test" do
    assert_difference('PassedTest.count', -1) do
      delete passed_test_url(@passed_test)
    end

    assert_redirected_to passed_tests_url
  end
end
