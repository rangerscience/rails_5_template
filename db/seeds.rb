# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Root user
# Root user is intended to have all permissions and always exists. It is the intended
# as the client-side version of logging into the rails console.
pw = (Rails.env.development?) ? "toaster" : SecureRandom.base64(30)
root = User.new(
  email: 'root@example.com', #TODO: Change based on environment, and use actual domain
  password: pw, password_confirmation: pw,
  confirmed_at: Time.now
)
root.skip_confirmation!
root.save!
