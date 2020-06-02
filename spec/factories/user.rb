FactoryBot.define do
    factory :user do
        email { 'test1@example.com' }
        password { 'password' }
        nickname { 'sample1' }
    end
end