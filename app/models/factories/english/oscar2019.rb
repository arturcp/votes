# frozen_string_literal: true

module Factories
  module English
    class Oscar2019
      def self.create
        return if Poll.exists?(name: 'Oscar 2019')

        user = User.create!(name: 'Oscar admin', email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'])
        poll = Poll.create!(name: 'Oscar 2019', poll_date: Time.parse('2019-02-24 14:00'), user: user)

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

        actor_supporting_role = poll.categories.create!(name: 'Actor in a supporting role', points: 3)
        actor_supporting_role.candidates.create!(name: 'Mahershala Ali', description: 'Green Book', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15112946/52a709e3be7d08d95a30a5b8cb12ed2e942ee5f0a232abd5cb7b9ec08d17cd4d-370x492.jpg')
        actor_supporting_role.candidates.create!(name: 'Adam Driver', description: 'BlacKkKlansman', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15113553/d575beca63023f0ba904f1c1282277e9d712a85da769a978717908624c8738ee-370x492.jpg')
        actor_supporting_role.candidates.create!(name: 'Sam Elliott', description: 'A Star Is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15113745/76592b00b1fd6012b220f8f0a7043f1937f981c929d20e23985c831b496656b5-370x492.jpg')
        actor_supporting_role.candidates.create!(name: 'Richard E. Grant', description: 'Can You Ever Forgive Me?', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15114031/d0ad52bd56346e7baba04146c1f40f402a1fe7883eece7947982135514b40aa1-370x492.jpg')
        actor_supporting_role.candidates.create!(name: 'Sam Rockwell', description: 'Vice', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15115007/28377af02f644767226e1d9e22a92c0bac8cbf472019d420b3c27a4ca3e7a641-370x492.jpg')

        actress_supporting_role = poll.categories.create!(name: 'Actress in a supporting role', points: 3)
        actress_supporting_role.candidates.create!(name: 'Amy Adams', description: 'Vice', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15134248/42ed4dc9e0d3b038df66bf3abe64afd15ab4ef539a6fccd9a3507247de803bdf-370x492.jpg')
        actress_supporting_role.candidates.create!(name: 'Marina de Tavira', description: 'Roma', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/17110206/2ab71ea215ec081570f80e3505862db5801fb1f60f077411335ec2a33d54973a-370x492.jpeg')
        actress_supporting_role.candidates.create!(name: 'Regina King', description: 'If Beale Street Could Talk', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15135545/658e4cefa9f02cc3fa8dc2c2ceab6ff44c1d7070348a7b22d3e393a6d9282b86-370x492.jpg')
        actress_supporting_role.candidates.create!(name: 'Emma Stone', description: 'The Favourite', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15142704/3d6a418d324c5dbfa6a306c587640af7246c5543a5a7604247ef16f081aecaa4-370x492.jpg')
        actress_supporting_role.candidates.create!(name: 'Rachel Weisz', description: 'The Favourite', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15142808/9168d54b531349d1e44f5ec10ef2d8a7fcb3542e190d0a0b3a82bdc1a502877f-370x492.jpg')

        directing = poll.categories.create!(name: 'Directing', points: 4)
        directing.candidates.create!(description: 'BlacKkKlansman', name: 'Spike Lee', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg')
        directing.candidates.create!(description: 'Cold War', name: 'Pawel Pawlikowski', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115651/fb12cc341598cfd679dd85f94e27a0e5d68e8362aa98914fef159b32bfde327a-370x492.jpg')
        directing.candidates.create!(description: 'The Favourite', name: 'Yorgos Lanthimos', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg')
        directing.candidates.create!(description: 'Roma', name: 'Alfonso Cuarón', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
        directing.candidates.create!(description: 'Vice', name: 'Adam McKay', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07145515/60cd9d00078eb2b91bb56b1a2577cebd7c6c26ab2c48394bd758991c7515543c-370x492.jpg')

        original_music = poll.categories.create!(name: 'Music (original score)', points: 3)
        original_music.candidates.create!(name: 'Black Panther', description: 'Ludwig Goransson', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg')
        original_music.candidates.create!(name: 'BlacKkKlansman', description: 'Terence Blanchard', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg')
        original_music.candidates.create!(name: 'If Beale Street Could Talk', description: 'Nicholas Britell', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140938/4de67af328d8eee863f588a16b30804c40fe3f0f3ce4b7ba48aeb1da7ea8abba-370x492.jpg')
        original_music.candidates.create!(name: 'Isle of Dogs', description: 'Alexandre Desplat', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07101211/0fc3980c2d24ab2669fa2129822c9ae1818e832ae6f59bc693bdc15c738e50e1-370x492.jpg')
        original_music.candidates.create!(name: 'Mary Poppins Returns', description: 'Marc Shaiman', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07141601/453bd9b67b86cdbe57a9908bd2f7497739683880de7b64615723d9830666c768-370x492.jpg')

        original_writing = poll.categories.create!(name: 'Writing (original screenplay)', points: 3)
        original_writing.candidates.create!(name: 'The Favourite', description: 'Written by Deborah Davis and Tony McNamara', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg')
        original_writing.candidates.create!(name: 'First Reformed', description: 'Written by Paul Schrader', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140518/3c1b73f914d35a8573a4971df2b82fabf0dd457edc6b951ab6f5e1a3b152e896-370x492.jpg')
        original_writing.candidates.create!(name: 'Green Book', description: 'Written by Nick Vallelonga, Brian Currie, Peter Farrelly', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140724/9fbd79d3251cfae53a4ee13026e016d6ab4e8f1f3d81a6a2eaceba0dabac3333-370x492.jpg')
        original_writing.candidates.create!(name: 'Roma', description: 'Written by Alfonso Cuarón', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
        original_writing.candidates.create!(name: 'Vice', description: 'Written by Adam McKay', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07145515/60cd9d00078eb2b91bb56b1a2577cebd7c6c26ab2c48394bd758991c7515543c-370x492.jpg')

        adapted_writing = poll.categories.create!(name: 'Writing (adapted screenplay)', points: 3)
        adapted_writing.candidates.create!(name: 'The Ballad Of Buster Scruggs', description: 'Written by Joel Coen & Ethan Coen', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143435/bdacdc4921dd1da792a73a0062c4fa5ebf93d2721684132408848d16fd5a5023-370x492.jpg')
        adapted_writing.candidates.create!(name: 'BlacKkKlansman', description: 'Written by Charlie Wachtel & David Rabinowitz and Kevin Willmott & Spike Lee', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134511/d4da934ee889ec689de327d3bb00e77d7dbe1dcc89854f6a9aebf09c328c9e3d-370x492.jpg')
        adapted_writing.candidates.create!(name: 'Can You Ever Forgive me?', description: 'Screenplay by Nicole Holofcener and Jeff Whitty', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07135007/e5328bd91c7b6875124f6728c0e9b2870cb3650e2ab8e67b2ee668d170ea3e44-370x492.jpg')
        adapted_writing.candidates.create!(name: 'If Beale Street Could Talk', description: 'Written for the screen by Barry Jenkins', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140938/4de67af328d8eee863f588a16b30804c40fe3f0f3ce4b7ba48aeb1da7ea8abba-370x492.jpg')
        adapted_writing.candidates.create!(name: 'A Star Is Born', description: 'Screenplay by Eric Roth and Bradley Cooper & Will Fetters', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg')

        cinematography = poll.categories.create!(name: 'Cinematography', points: 3)
        cinematography.candidates.create!(name: 'Cold War', description: 'Pawel Pawlikowski', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115651/fb12cc341598cfd679dd85f94e27a0e5d68e8362aa98914fef159b32bfde327a-370x492.jpg')
        cinematography.candidates.create!(name: 'The Favourite', description: 'Robbie Ryan', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143705/266f9495ce8222ac9ade5f970201bfe4b0cc0ea9f5c017e0fa69d993264d5609-370x492.jpg')
        cinematography.candidates.create!(name: 'Never Look Away', description: 'Caleb Deschanel', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115759/2622f9e2dbbedd57cb6531440a2183d775b4b9eab666027bc2dc1d693cdeb226-370x492.jpg')
        cinematography.candidates.create!(name: 'Roma', description: 'Alfonso Cuarón', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
        cinematography.candidates.create!(name: 'A Star Is Born', description: 'Matthew Libatique', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg')

        foreign_language_film = poll.categories.create!(name: 'Foreign language filme', points: 3)
        foreign_language_film.candidates.create!(name: 'Capernaum', description: 'Lebanon; Nadine Labaki', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115448/cff07232745a6db5f0ef00e3cc8b88815e5a6d90e7641f1f4aa2bf4ff132aa1e-370x492.jpg')
        foreign_language_film.candidates.create!(name: 'Cold War', description: 'Poland; Pawel Pawlikowski', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115651/fb12cc341598cfd679dd85f94e27a0e5d68e8362aa98914fef159b32bfde327a-370x492.jpg')
        foreign_language_film.candidates.create!(name: 'Never Look Away', description: 'Germany; Florian Henckel von Donnersmarck', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115759/2622f9e2dbbedd57cb6531440a2183d775b4b9eab666027bc2dc1d693cdeb226-370x492.jpg')
        foreign_language_film.candidates.create!(name: 'Roma', description: 'Mexico; Alfonso Cuarón', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07115901/7efdf047cbd57d9ee454a724b9ebe4ce0bd6780326d8685849ec8bfe39200192-370x492.jpg')
        foreign_language_film.candidates.create!(name: 'Shoplifters', description: 'Japan; Hirokazu Kore-eda', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07120028/1f162b1977c22ac76f07d618c5a1770f38b9b322f3b0fc397629468ebd84739c-370x492.jpg')

        animated_feature_filme = poll.categories.create!(name: 'Animated feature film', points: 3)
        animated_feature_filme.candidates.create!(name: 'Incredibles 2', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07101116/0477f19802ef4addb6de709967564a0cdb369947fa049a6380d6ee21a5b77f0c-370x492.jpg')
        animated_feature_filme.candidates.create!(name: 'Isle Of Dogs', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07101211/0fc3980c2d24ab2669fa2129822c9ae1818e832ae6f59bc693bdc15c738e50e1-370x492.jpg')
        animated_feature_filme.candidates.create!(name: 'Mirai', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07102606/51b048787995b86a336388439e30c9f09854dcb122b300c272ac325ede2dd0bc-370x492.jpg')
        animated_feature_filme.candidates.create!(name: 'Ralph Breaks The Internet', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07102910/ae194687429f6bb2c3cdddd3d0401915933a7018d7d9c0dc41fe25ef7b12aeb1-370x492.jpg')
        animated_feature_filme.candidates.create!(name: 'Spider-man: Into the Spider-verse', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07103329/d23df439f5ae3e828cb06b75565d69d56d5ce6988a735c74c872bd984221f98a-370x492.jpg')

        costume_design = poll.categories.create!(name: 'Costume design', points: 3)
        costume_design.candidates.create!(name: 'The Ballad of Buster Scruggs', description: 'Mary Zophres', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/22052915/4828b22d04ee4c574ce68cdd315bed87674619a0f211668f90cc580c092ce74a-370x492.jpeg')
        costume_design.candidates.create!(name: 'Black Panther', description: 'Ruth Carter', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15140830/f176b5606e36ed65fc0932e8421df29d785e3c936cc05d42c5afbd73cace1cdb-370x492.jpg')
        costume_design.candidates.create!(name: 'The Favourite', description: 'Sandy Powell', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15143101/517a65f2aaae668ba5644a7f8076937d0a99b54c60315655850264289ce9daef-370x492.jpg')
        costume_design.candidates.create!(name: 'Mary Poppins Returns', description: 'Sandy Powell', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15144051/d62f42d995f0ae000bf82113b0a5515915d51990dec16217507d6ef4e8f8232a-370x492.jpg')
        costume_design.candidates.create!(name: 'Mary Queen of Scots', description: 'Alexandra Byrne', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/15144247/585a2cf0d69dc7097fcb0f0788ddc2363daafc301112f88ae5e030cdd8c2e919-370x492.jpg')

        music_original_song = poll.categories.create!(name: 'Music (original song)', points: 3)
        music_original_song.candidates.create!(name: 'All The Stars', description: 'from Black Panther', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07134409/e0e0b612a16885b02848f38ead529fffaed84d06d9651396218a2515a73ea823-370x492.jpg')
        music_original_song.candidates.create!(name: 'I’ll Fight', description: 'from RBG', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07111336/9588ee9645340f543ddf8f92a4bca741053304eed3532687eca9187c7a64c201-370x492.jpg')
        music_original_song.candidates.create!(name: 'The Place Where Lost Things Go', description: 'from Mary Mary Poppings Returns', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07141601/453bd9b67b86cdbe57a9908bd2f7497739683880de7b64615723d9830666c768-370x492.jpg')
        music_original_song.candidates.create!(name: 'Shallow', description: 'from A Star Is Born', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07132442/8207ba86b0560820430f4ec397eb4b8eb6818babf948ed57dd5a887b19d57de5-370x492.jpg')
        music_original_song.candidates.create!(name: 'When A Cowboy Trades His Spurs For Wings', description: 'from The Ballad Of Buster Scruggs', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07143435/bdacdc4921dd1da792a73a0062c4fa5ebf93d2721684132408848d16fd5a5023-370x492.jpg')

        visual_effects = poll.categories.create!(name: 'Visual effects', points: 3)
        visual_effects.candidates.create!(name: 'Avengers: Infinity War', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07133256/0d91a07ac52bf1acffa1b8c0fec81b042fec2ae6a8a07881a403b68ad8cbe726-370x492.jpg')
        visual_effects.candidates.create!(name: 'Christopher Robin', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07135115/16539bcc574787d13053ca681e18a0393622134729b88bf280341091fe48b504-370x492.jpg')
        visual_effects.candidates.create!(name: 'First Man', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07140414/425b9493f58573fbe8c00917fec47d5fb12532387fa488501b9d429f5f0c0d8c-370x492.jpg')
        visual_effects.candidates.create!(name: 'Ready Player One', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07142706/976a1dfecebb868db21c0337ce1957cd930cab0e964442dfc6dc14f5369fa1ed-370x492.jpg')
        visual_effects.candidates.create!(name: 'Solo: A Star Wars Story', image_url: 'https://drraa3ej68s2c.cloudfront.net/wp-content/uploads/2019/01/07142819/1bcf0cc56f606430e1a0fd117332c5cf6099e86c95c6263429926882889f3ebc-370x492.jpg')
      end
    end
  end
end
