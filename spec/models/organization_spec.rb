require 'rails_helper'

RSpec.describe Organization, type: :model do
    setup do
        @organization = build(:organization);
    end

    it 'has a status' do
        expect(@organization).to respond_to(:status)
    end

    it 'has a name' do
        expect(@organization).to respond_to(:name)
    end

    it 'has a email' do
        expect(@organization).to respond_to(:email)
    end

    it 'has a phone' do
        expect(@organization).to respond_to(:phone)
    end

    it 'has a primary_name' do
        expect(@organization).to respond_to(:primary_name)
    end
    
    it `has a secondary_name` do
        expect(@organization).to respond_to(:primary_name)
    end

    it `has a secondary_phone` do
        expect(@organization).to respond_to(:secondary_phone)
    end

    it `has a agreement_one` do
        expect(@organization).to respond_to(:agreement_one)
    end

    it `has a agreement_two` do
        expect(@organization).to respond_to(:agreement_two)
    end

    it `has a agreement_three` do
        expect(@organization).to respond_to(:agreement_three)
    end

    it `has a agreement_four` do
        expect(@organization).to respond_to(:agreement_four)
    end

    it `has a agreement_five` do
        expect(@organization).to respond_to(:agreement_five)
    end

    it `has a agreement_six` do
        expect(@organization).to respond_to(:agreement_six)
    end

    it `has a agreement_seven` do
        expect(@organization).to respond_to(:agreement_seven)
    end

    it `has a agreement_eight` do
        expect(@organization).to respond_to(:agreement_eight)
    end

    describe "organization" do 
        it {should have_many(:tickets)}

        it {should have_many(:users)}

        it {should have_and_belong_to_many(:resource_categories)}
    end

    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:phone)}
    it {should validate_presence_of(:status)}
    it {should validate_presence_of(:primary_name)}
    it {should validate_presence_of(:secondary_name)}
    it {should validate_presence_of(:secondary_phone)}

    it {should validate_length_of(:email).is_at_least(1).is_at_most(255).on(:create)}
    it {should have_attribute(:email)}
    it {should validate_uniqueness_of(:email).case_insensitive()}

    it {should validate_length_of(:name).is_at_least(1).is_at_most(255).on(:create)}
    it {should validate_uniqueness_of(:name).case_insensitive()}

    it {should validate_length_of(:description).is_at_most(1020).on(:create)}


    
    it '#approved' do 
        organization = Organization.new
        organization.approve
        expect(organization.status).to eq("approved")
    end     
    
    it '#reject' do 
        organization = Organization.new
        organization.reject
        expect(organization.status).to eq("rejected")
    end 
    it '#set_default_status' do 
        organization = Organization.new
        organization.set_default_status
        expect(organization.status).to eq("submitted")
    end 

    it '#to_s' do 
        organization= Organization.new
        expect(organization.name).to eq(organization.to_s());
    end 

end
