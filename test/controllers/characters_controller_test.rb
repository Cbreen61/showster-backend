require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url, as: :json
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { descripption: @character.descripption, dislikes: @character.dislikes, likes: @character.likes, name: @character.name, show_id: @character.show_id, species: @character.species, status: @character.status } }, as: :json
    end

    assert_response 201
  end

  test "should show character" do
    get character_url(@character), as: :json
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { descripption: @character.descripption, dislikes: @character.dislikes, likes: @character.likes, name: @character.name, show_id: @character.show_id, species: @character.species, status: @character.status } }, as: :json
    assert_response 200
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character), as: :json
    end

    assert_response 204
  end
end
