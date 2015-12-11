require 'test_helper'

class BibliographyItemsControllerTest < ActionController::TestCase
  setup do
    @bibliography_item = bibliography_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bibliography_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bibliography_item" do
    assert_difference('BibliographyItem.count') do
      post :create, bibliography_item: { accessed: @bibliography_item.accessed, author: @bibliography_item.author, source: @bibliography_item.source, titel: @bibliography_item.titel }
    end

    assert_redirected_to bibliography_item_path(assigns(:bibliography_item))
  end

  test "should show bibliography_item" do
    get :show, id: @bibliography_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bibliography_item
    assert_response :success
  end

  test "should update bibliography_item" do
    patch :update, id: @bibliography_item, bibliography_item: { accessed: @bibliography_item.accessed, author: @bibliography_item.author, source: @bibliography_item.source, titel: @bibliography_item.titel }
    assert_redirected_to bibliography_item_path(assigns(:bibliography_item))
  end

  test "should destroy bibliography_item" do
    assert_difference('BibliographyItem.count', -1) do
      delete :destroy, id: @bibliography_item
    end

    assert_redirected_to bibliography_items_path
  end
end
