require 'test_helper'

class VineyardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vineyard = vineyards(:one)
  end

  test "should get index" do
    get vineyards_url, as: :json
    assert_response :success
  end

  test "should create vineyard" do
    assert_difference('Vineyard.count') do
      post vineyards_url, params: { vineyard: { address: @vineyard.address, city: @vineyard.city, country: @vineyard.country, cover_image: @vineyard.cover_image, description: @vineyard.description, email: @vineyard.email, events: @vineyard.events, family_friendly: @vineyard.family_friendly, holiday: @vineyard.holiday, image_four: @vineyard.image_four, image_one: @vineyard.image_one, image_three: @vineyard.image_three, image_two: @vineyard.image_two, pet_friendly: @vineyard.pet_friendly, phone: @vineyard.phone, postcode: @vineyard.postcode, region: @vineyard.region, specialty: @vineyard.specialty, tours: @vineyard.tours, user_id: @vineyard.user_id, vineyard_name: @vineyard.vineyard_name, website_url: @vineyard.website_url } }, as: :json
    end

    assert_response 201
  end

  test "should show vineyard" do
    get vineyard_url(@vineyard), as: :json
    assert_response :success
  end

  test "should update vineyard" do
    patch vineyard_url(@vineyard), params: { vineyard: { address: @vineyard.address, city: @vineyard.city, country: @vineyard.country, cover_image: @vineyard.cover_image, description: @vineyard.description, email: @vineyard.email, events: @vineyard.events, family_friendly: @vineyard.family_friendly, holiday: @vineyard.holiday, image_four: @vineyard.image_four, image_one: @vineyard.image_one, image_three: @vineyard.image_three, image_two: @vineyard.image_two, pet_friendly: @vineyard.pet_friendly, phone: @vineyard.phone, postcode: @vineyard.postcode, region: @vineyard.region, specialty: @vineyard.specialty, tours: @vineyard.tours, user_id: @vineyard.user_id, vineyard_name: @vineyard.vineyard_name, website_url: @vineyard.website_url } }, as: :json
    assert_response 200
  end

  test "should destroy vineyard" do
    assert_difference('Vineyard.count', -1) do
      delete vineyard_url(@vineyard), as: :json
    end

    assert_response 204
  end
end
