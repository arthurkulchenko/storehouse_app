# You should test for things such as:

# was the web request successful?
# was the user redirected to the right page?
# was the user successfully authenticated?
# was the correct object stored in the response template?
# was the appropriate message displayed to the user in the view?
require 'rails_helper'

RSpec.describe FacilitiesController, type: :controller do
  let!(:user){ create(:user) }
  describe 'GET #index' do
    context 'auth user' do
      sign_in_user
      before { get :index }
      it_behaves_like 'Respond with 200'
    end
    context 'unauth user' do
      before { get :index }
      it 'do not allow to in unauth users' do
        expect(response).to_not be_success
      end
    end
  end
  describe 'POST #create' do
  end
  describe 'GET #show' do
  end
  describe 'PUT/PATCH #update' do
  end
  describe 'DELETE #destroy' do
  end
end