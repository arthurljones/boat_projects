require 'test_helper'

class ProjectMaterialsControllerTest < ActionController::TestCase
  setup do
    @project_material = project_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_material" do
    assert_difference('ProjectMaterial.count') do
      post :create, project_material: { material_id: @project_material.material_id, project_id: @project_material.project_id, quantity: @project_material.quantity }
    end

    assert_redirected_to project_material_path(assigns(:project_material))
  end

  test "should show project_material" do
    get :show, id: @project_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_material
    assert_response :success
  end

  test "should update project_material" do
    put :update, id: @project_material, project_material: { material_id: @project_material.material_id, project_id: @project_material.project_id, quantity: @project_material.quantity }
    assert_redirected_to project_material_path(assigns(:project_material))
  end

  test "should destroy project_material" do
    assert_difference('ProjectMaterial.count', -1) do
      delete :destroy, id: @project_material
    end

    assert_redirected_to project_materials_path
  end
end
