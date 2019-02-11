desc 'Create 2019 oscar'
task create_oscar_2019: :environment do
  Factory.build_oscar_2019
end
