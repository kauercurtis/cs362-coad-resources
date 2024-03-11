FactoryBot.define do

    factory :ticket do
        #Changes not added, committed, pushed
        name
        phone {"1-555-123-5467"};
        region_id {create(:region).id}
        resource_category_id { create(:resource_category).id}
    end

end