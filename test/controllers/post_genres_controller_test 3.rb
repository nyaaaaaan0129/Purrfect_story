# frozen_string_literal: true

require 'test_helper'

class PostGenresControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get post_genres_create_url
    assert_response :success
  end

  test 'should get update' do
    get post_genres_update_url
    assert_response :success
  end
end
