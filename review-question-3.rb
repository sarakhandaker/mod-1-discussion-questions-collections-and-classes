# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'
require_relative "./User.rb"
require_relative "./Comment.rb"
require_relative "./Photo.rb"


sandwich_photo = Photo.new
cat_photo=Photo.new
dog_photo=Photo.new
sophie = User.new("Sophie")
sam=User.new("Sam")
sandwich_photo.user = sophie
cat_photo.user=sophie
dog_photo.user=sam

sandwich_photo.user.name
# => "Sophie"

sophie.photos
# => [#<Photo:0x00007fae2880b370>]

sandwich_photo.comments
# => []


sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
binding.pry