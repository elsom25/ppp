FactoryGirl.define do
  factory :project do
    name 'Project'
    starts_at Date.parse('2014-11-06')
    ends_at Date.parse('2014-11-07')
  end
end
