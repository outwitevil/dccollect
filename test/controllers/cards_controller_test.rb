require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { card_number: @card.card_number, catalog: @card.catalog, description: @card.description, extinct: @card.extinct, locked: @card.locked, max_level: @card.max_level, name: @card.name, rarity_id: @card.rarity_id, redeathable: @card.redeathable, shape_id: @card.shape_id, spawn_area_id: @card.spawn_area_id, strain_id: @card.strain_id, tradable: @card.tradable }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { card_number: @card.card_number, catalog: @card.catalog, description: @card.description, extinct: @card.extinct, locked: @card.locked, max_level: @card.max_level, name: @card.name, rarity_id: @card.rarity_id, redeathable: @card.redeathable, shape_id: @card.shape_id, spawn_area_id: @card.spawn_area_id, strain_id: @card.strain_id, tradable: @card.tradable }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
