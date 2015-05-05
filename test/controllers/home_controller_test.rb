require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  describe HomeController do
    describe 'get index' do
      it 'should be successful' do
        get :index
        assert_response :success
      end
    end
  end
end
