# frozen_string_literal: true

class Factory
  def self.build_oscar_2019
    return if Poll.exists?(name: 'Oscar 2019')
    user = User.create!(name: 'Oscar admin', email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'])
    poll = Poll.create!(name: 'Oscar 2019', poll_date: Date.parse('2019-02-24'), user: user)

    best_picture = poll.categories.create!(name: 'Best picture', points: 4)
    best_picture.candidates.create!(name: 'Black Panther', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg')
    best_picture.candidates.create!(name: 'Blackkklansman', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg')
    best_picture.candidates.create!(name: 'Bohemian Rhapsody', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134643/49fdf0f255865e709db8675c548860a8999e339e78d7d2f8b7131c84e766c7eb-370x492.jpg')
    best_picture.candidates.create!(name: 'The Favourite', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg')
    best_picture.candidates.create!(name: 'Green Book', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140724/9fbd79d3251cfae53a4ee13026e016d6ab4e8f1f3d81a6a2eaceba0dabac3333-370x492.jpg')
    best_picture.candidates.create!(name: 'Roma', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
    best_picture.candidates.create!(name: 'A Star Is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg')
    best_picture.candidates.create!(name: 'Vice', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07145515/60cd9d00078eb2b91bb56b1a2577cebd7c6c26ab2c48394bd758991c7515543c-370x492.jpg')

    actor_leading_role = poll.categories.create!(name: 'Actor in a leading role', points: 4)
    actor_leading_role.candidates.create!(name: 'Christian Bale', description: 'Vice', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094113/ee9889585a1dfe479b01ebcfdba827f07f8927cbabdf51cde39006b17e8fd8be-370x492.jpg')
    actor_leading_role.candidates.create!(name: 'Bradley Cooper', description: 'A Star is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094313/7da8486d5c486efa235235d02904101e7d4e987fc2d3dcaf16cfb8afba7cc2f0-370x492.jpg')
    actor_leading_role.candidates.create!(name: 'Willem Dafoe', description: 'At Eternity\'s Gate', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15094455/97160890323ed90b348df478abaf57314f411b5c8c1300dadacd2f8e9c8b645b-370x492.jpg')
    actor_leading_role.candidates.create!(name: 'Rami Malek', description: 'Bohemian Rhapsody', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15110625/ffbe4352b922b8c14ca617a8490f53cb50eca68db4af94eaef5cc7d2c92b0af2-370x492.jpg')
    actor_leading_role.candidates.create!(name: 'Viggo Mortensen', description: 'Green Book', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15110825/89fecea20896ffd12ab4b17bed3299e4ca8fda805a78e805069763a13af6cf6a-370x492.jpg')

    actress_leading_role =  poll.categories.create!(name: 'Actress in a leading role', points: 4)
    actress_leading_role.candidates.create!(name: 'Lady Gaga', description: 'A Star Is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15133102/853534e709ee1c3d51cbb1ab9be62b4b0ce37526b70782a038ea58e67e2413fd-370x492.jpg')
    actress_leading_role.candidates.create!(name: 'Glenn Close', description: 'The Wife', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15125621/14d80eeb77f73f617944e8241ce4fff33a5628e3a5c51725ff1147423bcf620a-370x492.jpg')
    actress_leading_role.candidates.create!(name: 'Yalitza Aparicio', description: 'Roma', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15124713/25c3182af9147cef5392c27b54e000f6c2782170e2658f4110a668c2f87affec-370x492.jpg')
    actress_leading_role.candidates.create!(name: 'Olivia Colman', description: 'The Favourite', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15125841/622dc78a2eef876be7ea7cbc0d8673f82161e46259bafde75233bf067dd06af9-370x492.jpg')
    actress_leading_role.candidates.create!(name: 'Melissa McCarthy', description: 'Can You Ever Forgive Me?', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15133220/02b25c0bc7563794a2dee84f31778df90df2e962fd20494a5938c94021f89835-370x492.jpg')

    poll.categories.create!(name: 'Actor in a supporting role', points: 3)
    poll.categories.create!(name: 'Actress in a supporting role', points: 3)
    poll.categories.create!(name: 'Directing', points: 4)
    poll.categories.create!(name: 'Music (original score)', points: 3)
    poll.categories.create!(name: 'Writing (adapted screenplay)', points: 3)
    poll.categories.create!(name: 'Writing (original screenplay)', points: 3)
    poll.categories.create!(name: 'Cinematography', points: 3)
    poll.categories.create!(name: 'Foreign language filme', points: 3)
    poll.categories.create!(name: 'Animated feature film', points: 3)
    poll.categories.create!(name: 'Costume design', points: 3)
    poll.categories.create!(name: 'Music (original song)', points: 3)
    poll.categories.create!(name: 'Visual effects', points: 3)
  end
end
