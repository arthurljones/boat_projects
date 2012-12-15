require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { completed: @project.completed, cruising_priority: @project.cruising_priority, daysail_priority: @project.daysail_priority, description: @project.description, helpers_needed: @project.helpers_needed, hours_estimate: @project.hours_estimate, liveabord_priority: @project.liveabord_priority, name: @project.name, notes: @project.notes, obsolete: @project.obsolete }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { completed: @project.completed, cruising_priority: @project.cruising_priority, daysail_priority: @project.daysail_priority, description: @project.description, helpers_needed: @project.helpers_needed, hours_estimate: @project.hours_estimate, liveabord_priority: @project.liveabord_priority, name: @project.name, notes: @project.notes, obsolete: @project.obsolete }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
