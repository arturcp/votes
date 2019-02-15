desc 'Create 2019 oscar in English'
task create_oscar_2019_in_english: :environment do
  Factories::English::Oscar2019.create
end

desc 'Create 2019 oscar in Spanish'
task create_oscar_2019_in_spanish: :environment do
  Factories::Spanish::Oscar2019.create
end

desc 'Create 2019 oscar in Portuguese'
task create_oscar_2019_in_portuguese: :environment do
  Factories::Portuguese::Oscar2019.create
end
