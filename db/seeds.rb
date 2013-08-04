# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
#   use create! to force an error on create

user1 = User.create!( name: 'anonymous', email: 'anonymous@talkvite.com' )
user2 = User.create!( name: 'talkvite', email: 'talkvite@talkvite.com' )

talk1 = Talk.create!( subject: 'talkvite', description: 'talk about the talkvite site', user_id: user1.id );

post1 = Post.create!( user_id: user2.id, talk_id: talk1.id, post_type: 'join' );
