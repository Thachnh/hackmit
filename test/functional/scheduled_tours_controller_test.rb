require 'test_helper'

class ScheduledToursControllerTest < ActionController::TestCase
  setup do
    @scheduled_tour = scheduled_tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scheduled_tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheduled_tour" do
    assert_difference('ScheduledTour.count') do
      post :create, scheduled_tour: { end_time: @scheduled_tour.end_time, start_time: @scheduled_tour.start_time }
    end

    assert_redirected_to scheduled_tour_path(assigns(:scheduled_tour))
  end

  test "should show scheduled_tour" do
    get :show, id: @scheduled_tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheduled_tour
    assert_response :success
  end

  test "should update scheduled_tour" do
    put :update, id: @scheduled_tour, scheduled_tour: { end_time: @scheduled_tour.end_time, start_time: @scheduled_tour.start_time }
    assert_redirected_to scheduled_tour_path(assigns(:scheduled_tour))
  end

  test "should destroy scheduled_tour" do
    assert_difference('ScheduledTour.count', -1) do
      delete :destroy, id: @scheduled_tour
    end

    assert_redirected_to scheduled_tours_path
  end
end
