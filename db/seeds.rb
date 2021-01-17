# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
    {
      name: "Category 1",
    },
    {
      name: "Category 2",
    },
    {
      name: "Category 3",
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
        Category.find(2),
        Category.find(1)
      ]
    }
])