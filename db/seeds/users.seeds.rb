User.destroy_all

5.times do |index|
    User.create!(
        username: Faker::Alphanumeric.alpha(number: 5),
        password_digest: BCrypt::Password.create('12345678'),
        name: Faker::Name.name
    )
end
