# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories = Category.create([
#     {
#       name: "Category 1",
#     },
#     {
#       name: "Category 2",
#     },
#     {
#       name: "Category 3",
#     },
# ])

# organizations = Organization.create([
#     {
#       name: "Organization 1",
#       address: 'NY', 
#       zipCode:'10001', 
#       website: 'website 1', 
#       facebook: 'facebook 1', 
#       twitter: 'twitter 1',
#       categories: [
#         Category.find(1),
#         Category.find(3)
#       ]
#     },
#     {
#       name: "Organization 2",
#       address: 'NY', 
#       zipCode:'10002', 
#       website: 'website 2', 
#       facebook: 'facebook 2', 
#       twitter: 'twitter 2',
#       categories: [
#         Category.find(2),
#         Category.find(1)
#       ]
#     }
# ])



categories = Category.create([
  {
    name: "Legal Services",
  },
  {
    name: "Health",
  },
  {
    name: "Education",
  },
  {
    name: "Job",
  },
  {
    name: "Food Services",
  },
  {
    name: "English classes",
  },
])


organizations = Organization.create([
  {
    name: "Organization 1",
    address: 'NY', 
    zipCode:'10001', 
    website: 'website 1', 
    facebook: 'facebook 1', 
    twitter: 'twitter 1',
    categories: [
      Category.find(1),
      Category.find(3)
    ]
  },
  {
    name: "Organization 2",
    address: 'NY', 
    zipCode:'10002', 
    website: 'website 2', 
    facebook: 'facebook 2', 
    twitter: 'twitter 2',
    categories: [
      Category.find(1),
      Category.find(2)
    ]
  },
  {
    name: "Organization 3",
    address: 'NY', 
    zipCode:'10003', 
    website: 'website 3', 
    facebook: 'facebook 3', 
    twitter: 'twitter 3',
    categories: [
      Category.find(4),
      Category.find(6)
    ]
  },
  {
    name: "Organization 4",
    address: 'NY', 
    zipCode:'10004', 
    website: 'website 4', 
    facebook: 'facebook 4', 
    twitter: 'twitter 4',
    categories: [
      Category.find(3),
      Category.find(5)
    ]
  },
  {
    name: "Organization 5",
    address: 'NY', 
    zipCode:'10005', 
    website: 'website 5', 
    facebook: 'facebook 5', 
    twitter: 'twitter 5',
    categories: [
      Category.find(1),
      Category.find(6)
    ]
  },
  {
    name: "Organization 6",
    address: 'NY', 
    zipCode:'10006', 
    website: 'website 6', 
    facebook: 'facebook 6', 
    twitter: 'twitter 6',
    categories: [
      Category.find(2),
      Category.find(4)
    ]
  }
])