require 'rails_helper'

describe ItemsController do
  let(:item) { create(:item) }
  let(:item_images) { create_list(:item_image, item: item) }

  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end

    it "populates an array of items orderd by created_at" do
      items = create_list(:item, 4)
      get :index
      expect(assigns(:items)).to match(items.sort{ |a, b| a.created_at <=> b.created_at })
    end
  end

end
