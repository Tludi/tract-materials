require 'test_helper'

class MaterialUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_unit = material_units(:one)
  end

  test "should get index" do
    get material_units_url
    assert_response :success
  end

  test "should get new" do
    get new_material_unit_url
    assert_response :success
  end

  test "should create material_unit" do
    assert_difference('MaterialUnit.count') do
      post material_units_url, params: { material_unit: { unitType: @material_unit.unitType } }
    end

    assert_redirected_to material_unit_url(MaterialUnit.last)
  end

  test "should show material_unit" do
    get material_unit_url(@material_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_unit_url(@material_unit)
    assert_response :success
  end

  test "should update material_unit" do
    patch material_unit_url(@material_unit), params: { material_unit: { unitType: @material_unit.unitType } }
    assert_redirected_to material_unit_url(@material_unit)
  end

  test "should destroy material_unit" do
    assert_difference('MaterialUnit.count', -1) do
      delete material_unit_url(@material_unit)
    end

    assert_redirected_to material_units_url
  end
end
