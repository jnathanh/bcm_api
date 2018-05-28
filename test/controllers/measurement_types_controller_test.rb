require 'test_helper'

class MeasurementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement_type = measurement_types(:one)
  end

  test "should get index" do
    get measurement_types_url, as: :json
    assert_response :success
  end

  test "should create measurement_type" do
    assert_difference('MeasurementType.count') do
      post measurement_types_url, params: { measurement_type: { description: @measurement_type.description, name: @measurement_type.name, units: @measurement_type.units } }, as: :json
    end

    assert_response 201
  end

  test "should show measurement_type" do
    get measurement_type_url(@measurement_type), as: :json
    assert_response :success
  end

  test "should update measurement_type" do
    patch measurement_type_url(@measurement_type), params: { measurement_type: { description: @measurement_type.description, name: @measurement_type.name, units: @measurement_type.units } }, as: :json
    assert_response 200
  end

  test "should destroy measurement_type" do
    assert_difference('MeasurementType.count', -1) do
      delete measurement_type_url(@measurement_type), as: :json
    end

    assert_response 204
  end
end
