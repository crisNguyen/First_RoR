require "test_helper"

class StudentifsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentif = studentifs(:one)
  end

  test "should get index" do
    get studentifs_url
    assert_response :success
  end

  test "should get new" do
    get new_studentif_url
    assert_response :success
  end

  test "should create studentif" do
    assert_difference('Studentif.count') do
      post studentifs_url, params: { studentif: { email: @studentif.email, facebook: @studentif.facebook, firts_name: @studentif.firts_name, last_name: @studentif.last_name, phone: @studentif.phone } }
    end

    assert_redirected_to studentif_url(Studentif.last)
  end

  test "should show studentif" do
    get studentif_url(@studentif)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentif_url(@studentif)
    assert_response :success
  end

  test "should update studentif" do
    patch studentif_url(@studentif), params: { studentif: { email: @studentif.email, facebook: @studentif.facebook, firts_name: @studentif.firts_name, last_name: @studentif.last_name, phone: @studentif.phone } }
    assert_redirected_to studentif_url(@studentif)
  end

  test "should destroy studentif" do
    assert_difference('Studentif.count', -1) do
      delete studentif_url(@studentif)
    end

    assert_redirected_to studentifs_url
  end
end
