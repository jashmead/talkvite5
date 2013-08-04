# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
#   use create! to force an error on create
# Currently using this file as a kind of mini-test:  strip back to basics when we have real tests up

location1 = Location.create!( name: 'nowhere' )
location2 = Location.create!( name: 'nowhen' )
location3 = Location.create!( name: 'nohow' )

user1 = User.create!( name: 'anonymous', email: 'anonymous@talkvite.com', location_id: location1.id )
user2 = User.create!( name: 'talkvite', email: 'talkvite@talkvite.com', location_id: location2.id )

talk1 = Talk.create!( subject: 'talkvite', description: 'talk about the talkvite site', user_id: user1.id, location_id: location3.id );

post1 = Post.create!( user_id: user2.id, talk_id: talk1.id, post_type: 'join' );

## is the Model name the best choice fore the tagable_type field's contents? could use plural form, table name, or singular
tag1 = Tag.create!( tagable_type: 'User', tagable_id: user1.id, tag_code: 'test' )
tag2 = Tag.create!( tagable_type: 'Talk', tagable_id: talk1.id, tag_code: 'test' )
tag3 = Tag.create!( tagable_type: 'Post', tagable_id: post1.id, tag_code: 'test' )
tag4 = Tag.create!( tagable_type: 'Location', tagable_id: location1.id, tag_code: 'test' )

message1 = Message.create!( user_from_id: user1.id, user_to_id: user2.id, message_type: '', content: 'testing' )
