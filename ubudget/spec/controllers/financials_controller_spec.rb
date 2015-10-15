require 'rails_helper'

RSpec.describe FinancialsController , type: :controller do 
	let(:financial) {FactoryGirl.create(:financial)}

	let(:valid_session) {
		{user_id: 2}
	}

	describe "GET #index" do
		it "assigns all financials as @financial" do
			get :index
			expect(assigns(:financials)).to eq [financial] 
		end
	end

	# describe "POST #create" do
	# 	context "with valid params" do
	# 		it "creates a new financial" do
	# 			attributes = FactoryGirl.attributes_for(:financial)
	# 			build(:financial)
	# 			expect {
	# 				post :create, {financial: attributes}, valid_session
	# 			}.to change(Financial, :count).by(1)
	# 		end

	# 	end
end
