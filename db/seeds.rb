# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup)
print "Creating places ..."
Place.destroy_all

    p1 = Place.create! address: 'Ettalong Beach'
    p2 = Place.create! address: 'Avoca Beach'
    p3 = Place.create! address: 'Umina Beach'
    p4 = Place.create! address: 'Macmasters Beach'

puts "created #{Place.count} places."

print "Creating users ..."
User.destroy_all

    u1 = User.create! email: 'luke@ga.co', password: 'chicken'
    u2 = User.create! email: 'zara@ga.co', password: 'chicken'
    u3 = User.create! email: 'lay@ga.co', password: 'chicken'

puts "created #{User.count} users."

print "Creating photos ..."
Photo.destroy_all

    a1 = Photo.create! image: "https://www.icentralcoast.com/images/xettalong-beach-top-of-page.jpg.pagespeed.ic.wuSdmywUB2.jpg/100/100", place_id: p1.id
    a2 = Photo.create! image: "https://images.leisurecom.com/articles/image-2018-09-17-15-28-04.jpg", place_id: p1.id
    a3 = Photo.create! image: "https://q-xx.bstatic.com/xdata/images/hotel/840x460/200525578.jpg/200/400", place_id: p1.id

    a4 = Photo.create! image: "https://cdn.shopify.com/s/files/1/1259/4183/products/CC1244-Avoca-Beach-photo.jpg/200/400", place_id: p2.id
    a5 = Photo.create! image: "http://placekitten.com/200/400", place_id: p2.id
    a6 = Photo.create! image: "http://placekitten.com/200/400", place_id: p2.id

    a7 = Photo.create! image: "http://placekitten.com/200/400", place_id: p3.id
    a8 = Photo.create! image: "http://placekitten.com/200/400", place_id: p3.id
    a9 = Photo.create! image: "http://placekitten.com/200/400", place_id: p3.id

    a10 = Photo.create! image: "http://placekitten.com/200/400", place_id: p4.id
    a11 = Photo.create! image: "http://placekitten.com/200/400", place_id: p4.id
    a12 = Photo.create! image: "http://placekitten.com/200/400", place_id: p4.id


puts "created #{Photo.count} photos."

# create associations from user to their places
u1.places << p1
u2.places << p2
u3.places << p3 << p4

# test associations:
puts "Testing user -< places associations:"
puts "The place '#{ Place.first.address }' is by #{ Place.first.user.email}"
puts "The user #{ User.last.email } has the places: #{ User.last.places.pluck(:address).join(', ') }"
