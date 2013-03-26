require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { description: @material.description, dimensions: @material.dimensions, inventory: @material.inventory, location: @material.location, material: @material.material, minimum_purchase: @material.minimum_purchase, package_count: @material.package_count, price: @material.price, shipping_price: @material.shipping_price, type: @material.type, units: @material.units }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    put :update, id: @material, material: { description: @material.description, dimensions: @material.dimensions, inventory: @material.inventory, location: @material.location, material: @material.material, minimum_purchase: @material.minimum_purchase, package_count: @material.package_count, price: @material.price, shipping_price: @material.shipping_price, type: @material.type, units: @material.units }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materials_path
  end
end
