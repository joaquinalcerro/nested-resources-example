require 'test_helper'

class SectionsControllerTest < ActionController::TestCase
  setup do
    @section = sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section" do
    assert_difference('Section.count') do
      post :create, section: { content: @section.content, content_type: @section.content_type, name: @section.name, page_id: @section.page_id, position: @section.position, visible: @section.visible }
    end

    assert_redirected_to section_path(assigns(:section))
  end

  test "should show section" do
    get :show, id: @section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section
    assert_response :success
  end

  test "should update section" do
    patch :update, id: @section, section: { content: @section.content, content_type: @section.content_type, name: @section.name, page_id: @section.page_id, position: @section.position, visible: @section.visible }
    assert_redirected_to section_path(assigns(:section))
  end

  test "should destroy section" do
    assert_difference('Section.count', -1) do
      delete :destroy, id: @section
    end

    assert_redirected_to sections_path
  end
end
