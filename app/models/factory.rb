# frozen_stringliteral: true

class Factory
  def self.build_oscar_2019
    return if Poll.exists?(name: 'Oscar 2019')
    user = User.create!(name: 'Oscar admin', email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'])
    poll = Poll.create!(name: 'Oscar 2019', poll_date: Date.parse('2019-02-24'), user: user)

    best_picture = poll.categories.create!(name: 'Best picture')
    best_picture.candidates.create!(name: 'Black Panther', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg')
    best_picture.candidates.create!(name: 'Blackkklansman', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg')
    best_picture.candidates.create!(name: 'Bohemian Rhapsody', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134643/49fdf0f255865e709db8675c548860a8999e339e78d7d2f8b7131c84e766c7eb-370x492.jpg')
    best_picture.candidates.create!(name: 'The Favourite', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg')
    best_picture.candidates.create!(name: 'Green Book', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140724/9fbd79d3251cfae53a4ee13026e016d6ab4e8f1f3d81a6a2eaceba0dabac3333-370x492.jpg')
    best_picture.candidates.create!(name: 'Roma', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
    best_picture.candidates.create!(name: 'A Star is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg')
    best_picture.candidates.create!(name: 'Vice', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07145515/60cd9d00078eb2b91bb56b1a2577cebd7c6c26ab2c48394bd758991c7515543c-370x492.jpg')


    poll.categories.create!(name: 'Actor in a leading role')
    poll.categories.create!(name: 'Actress in a leading role')
    poll.categories.create!(name: 'Actor in a supporting role')
    poll.categories.create!(name: 'Actress in a supporting role')
    poll.categories.create!(name: 'Directing')
    poll.categories.create!(name: 'Music (original score)')
    poll.categories.create!(name: 'Writing (adapted screenplay)')
    poll.categories.create!(name: 'Writing (original screenplay)')
    poll.categories.create!(name: 'Cinematography')
    poll.categories.create!(name: 'Foreign language filme')
    poll.categories.create!(name: 'Animated feature film')
    poll.categories.create!(name: 'Costume design')
    poll.categories.create!(name: 'Music (original song)')
    poll.categories.create!(name: 'Visual effects')
  end
end