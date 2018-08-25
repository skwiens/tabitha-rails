# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

volunteers = [
  {
    name: "Shaunna Wiens",
    email: "skwiens@tabitha.com",
    phone: "509-448-8624",
    notes: "",
    activestatus: true,
    role: "shop"
  },
  {
    name: "Nathan",
    email: "nathan@tabitha.com",
    activestatus: true,
    role: "openhour"
  },
  {
    name: "Skye",
    email: "skye@tabitha.com",
    phone: "509-123-4567",
    activestatus: true,
    role: "both"
  },
  {
    name: "Sandeep",
    email: "sandeep@tabitha.com",
    phone: "206-123-4567",
    notes: "",
    activestatus: false,
    role: "both"
  }
]

volunteers.each do |volunteer|
  Volunteer.create(volunteer)
end

openhours = [
  {
    date: DateTime.parse("15/08/2018"),
    posted: false,
    volunteer_ids: [1, 2, 3]
  },
  {
    date: DateTime.parse("09/09/2018"),
    posted: false,
    volunteer_ids: [1, 4]
  },
  {
    date: DateTime.parse("23/07/2018"),
    posted: true,
    volunteer_ids: [2, 3, 4]
  },
  {
    date: DateTime.parse("12/08/2018"),
    posted: true,
  }
]

openhours.each do |openhour|
  Openhour.create(openhour)
end

notes = [
  {
    customers: 12,
    body: "A wonderful evening!",
    shopping: "12 carrots, 3 apples, 1 chocolate bar",
    openhour_id: 2
  },
  {
    customers: 23,
    body: "slow until the end",
    shopping: "all of the things!",
    openhour_id: 1
  }
]

notes.each do |note|
  Note.create(note)
end

oh_vols = [
  {
    openhour_id: 1,
    volunteer_id: 2
  },
  {
    openhour_id: 1,
    volunteer_id: 3
  }
]

oh_vols.each do |oh_vol|
  OhVol.create(oh_vol)
end

shop_vols = [
  {
    openhour_id: 1,
    volunteer_id: 1
  },
  {
    openhour_id: 1,
    volunteer_id: 3
  },
  {
    openhour_id: 1,
    volunteer_id: 4
  }
]

shop_vols.each do |shop_vol|
  ShopVol.create(shop_vol)
end
