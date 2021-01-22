# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
      name: "African Services Committee",
      url: 'https://logo.clearbit.com/africanservices.org',
      address: '429 West 127th Street New York, NY 10027', 
      zipCode:'10027', 
      website: 'http://africanservices.org', 
      facebook: 'facebook 1', 
      twitter: 'twitter 1',
          contact_name: 'Getachew Fikremariam',
          phone: '(212) 2223882 ext. 108',
          fax: '(212) 2227067',
          email: 'getachewf@africanservices.org',
          hours: 'Monday-Friday, 9am-5pm',
          language: [
          'Haitian Creole',
          'French'
          ],
      categories: [
          Category.find(1),
          Category.find(2),
          Category.find(5),
          Category.find(6),
      ] 
      
  },


  {
      name: "Cabrini Immigrant Services",
      url: 'https://logo.clearbit.com/cis-nyc.org',
      address: '139 Henry Street New York, NY 10002', 
      zipCode:'10002', 
      website: 'http://cis-nyc.org', 
      facebook: '', 
      twitter: '',
          contact_name: 'Sr. Kelly Carpenter',
          phone: '(212) 7914590',
          fax: '(212) 7914592',
          email: '',
          hours: 'Monday-Friday, by appointment',
          language: [],
      categories: [
          Category.find(1),
          Category.find(5),
      ]
  },

  {
      name: "CAMBA Legal Services",
      url: 'https://logo.clearbit.com/camba.org',
      address: '2211 Church Avenue, Room 301 Brooklyn, New York', 
      zipCode:'11226', 
      website: 'https://camba.org/', 
      facebook: 'https://www.facebook.com/CAMBAinc/', 
      twitter: 'https://twitter.com/cambainc',
          contact_name: 'Sr. Kelly Carpenter',
          phone: '(718) 9406311',
          fax: '',
          email: '',
          hours: 'Currently Monday-Wednesday
          are allotted for assisting the public with filing TPS applications (By
          appointment only)',
          language: ['French(Creole)'],
      categories: [
          Category.find(1),
          Category.find(3),
          Category.find(4),
          Category.find(5),
      ]
  },

  {
      name: "CARECEN",
      url: 'https://logo.clearbit.com/carecen.org',
      address: '91 N. Franklin Hempstead, N.Y. 11550', 
      zipCode:'11550', 
      website: 'https://www.carecenny.org/', 
      facebook: 'https://www.facebook.com/carecenny/', 
      twitter: '',
          contact_name: 'Pat Young',
          phone: '(516) 4898330',
          fax: '',
          email: 'pycarecen@aol.com',
          hours: 'Monday-Friday, 9am to 5pm',
          language: [],
      categories: [
          Category.find(1),
      ]
  },


  {
      name: "Catholic Charities Community Services of the Archdiocese of New York",
      url: 'https://logo.clearbit.com/catholiccharitiesny.org',
      address: '1011 First Ave, between 55th and 56th Streets, on the 12th floor', 
      zipCode:'10022', 
      website: 'https://catholiccharitiesny.org/', 
      facebook: 'https://www.facebook.com/CatholicCharitiesNY', 
      twitter: 'https://twitter.com/CathCharitiesNY',
          contact_name: 'Raluca Oncioiu',
          phone: '(212) 4193700',
          fax: '',
          email: 'Raluca.Oncioiu@archny.org',
          hours: 'Hours–Special intake every Wednesday from 3pm-5pm.
          Walkins welcome.',
          language: ['French'],
      categories: [
          Category.find(1),
          Category.find(3),
          Category.find(5),
          Category.find(6),
      ]
  },


  {
      name: "Catholic Charities – Immigrant Services Long Island",
      url: 'https://logo.clearbit.com/catholiccharitiesny.org',
      address: '143 Schleigel Boulevard, Amityville, NY 11701', 
      zipCode:'11701', 
      website: 'https://catholiccharitiesny.org/', 
      facebook: 'https://www.facebook.com/CatholicCharitiesNY', 
      twitter: 'https://twitter.com/CathCharitiesNY',
          contact_name: 'Carmen Maquilon',
          phone: '(631) 7895210',
          fax: '(631) 7895245',
          email: 'Maquilon.carmen@catholiccharities.cc',
          hours: 'MondayFriday, 9am5pm, Tuesdays (First four Tuesdays of the month) 9am7:30pm',
          language: [''],
      categories: [
          Category.find(1),
          Category.find(3),
          Category.find(5),
          Category.find(6),
      ]
  },

  {
      name: "Catholic Migration Office of Brooklyn and Queens",
      url: 'https://logo.clearbit.com/catholicmigration.org',
      address: '1258 65th Street Brooklyn, NY 11219', 
      zipCode:'11219', 
      website: 'https://catholicmigration.org/', 
      facebook: 'https://www.facebook.com/cmsbq', 
      twitter: 'https://twitter.com/CMSBQ',
          contact_name: '',
          phone: '(718) 2363000',
          fax: '(718) 2569707',
          email: '',
          hours: 'MondayFriday, 9am-5pm',
          language: [''],
      categories: [
          Category.find(1),
          Category.find(3)
      ]
  },


  {
      name: "Comprehensive Development",
      url: 'https://logo.clearbit.com/cdi-ny.org',
      address: '240 Second Ave., New York, NY 10003', 
      zipCode:'10003', 
      website: 'https://www.cdi-ny.org/', 
      facebook: 'https://www.facebook.com/cydnewyork/', 
      twitter: 'https://twitter.com/cydnewyork',
          contact_name: '',
          phone: '(212) 353-2010',
          fax: '212-387-7093',
          email: ' andreelockwood@cydnyc.org',
          hours: '',
          language: ['Arabic', 'English', 'French', 'Portuguese', 'Spanish', 'Wolof'],
      categories: [
          Category.find(2),
          Category.find(3),
          Category.find(4),
      ]
  },    


  {
      name: "Damayan Migrant Workers Association",
      url: 'https://logo.clearbit.com/damayanmigrants.org',
      address: '406 West 40th St. 3rd Floor, New York, NY 10018', 
      zipCode:'10018', 
      website: 'https://www.damayanmigrants.org/', 
      facebook: 'https://www.facebook.com/damayanmigrantworkers/', 
      twitter: 'https://twitter.com/DamayanMigrants',
          contact_name: '',
          phone: ' (212) 564-6057',
          fax: '',
          email: 'contact@damayanmigrants.org',
          hours: '',
          language: ['Tagalog'],
      categories: [
          Category.find(1),
          Category.find(4)
      ]
  }, 


  {
      name: "The Door",
      url: 'https://logo.clearbit.com/door.org',
      address: '121 Avenue of the Americas, New York, NY 10013', 
      zipCode:'10013', 
      website: 'https://www.door.org/', 
      facebook: 'https://www.facebook.com/TheDoorNYC/', 
      twitter: 'https://twitter.com/Door_NYC',
          contact_name: '',
          phone: '(212) 941-9090',
          fax: '',
          email: 'resources@door.org',
          hours: '',
          language: ['French', 'Haitian Creole', 'Spanish'],
      categories: [
          Category.find(1),
          Category.find(2),
          Category.find(3),
          Category.find(4),
          Category.find(6),

      ]
  },


  {
      name: "Good Shepherd Services",
      url: 'https://logo.clearbit.com/goodshepherds.org/',
      address: '305 7th Ave. 9th Floor, New York, NY 10001', 
      zipCode:'10001', 
      website: 'https://goodshepherds.org/', 
      facebook: 'https://www.facebook.com/GoodShepherdServicesNYC', 
      twitter: 'https://twitter.com/GoodShepherdNYC',
          contact_name: '',
          phone: '(212) 243-7070',
          fax: '',
          email: '',
          hours: '',
          language: ['Spanish'],
      categories: [
          Category.find(1),
          Category.find(3)
      ]
  },


  {
      name: "Sisters of Charity of New York",
      url: 'https://logo.clearbit.com/scny.org',
      address: '6301 Riverdale Ave., Bronx, NY 10471', 
      zipCode:'10471', 
      website: 'https://www.scny.org/', 
      facebook: 'https://www.facebook.com/SistersOfCharityNY/', 
      twitter: 'https://twitter.com/scny1',
          contact_name: 'Elena Miranda',
          phone: ' (718) 549-9200',
          fax: '',
          email: 'extcomm@scny.org',
          hours: '',
          language: ['Spanish'],
      categories: [
          Category.find(2),
          Category.find(3),
          Category.find(6)
      ]
  },



  {
      name: "Opportunities for a Better Tomorrow",
      url: '',
      address: '882 3rd Avenue Suite 10-10NE, Unit 18 Brooklyn, NY 11232', 
      zipCode:'11232', 
      website: 'https://obtjobs.org/', 
      facebook: 'https://www.facebook.com/obtjobs', 
      twitter: 'https://twitter.com/obtjobs',
          contact_name: '',
          phone: ' (718) 369-0303',
          fax: '718-369-1518',
          email: '',
          hours: '',
          language: ['Spanish'],
      categories: [
          Category.find(1),
          Category.find(4),
          Category.find(6),
      ]
  },

]);

reviews = Review.create([
  {
    title: 'review 1',
    description: 'good review 1',
    score: 5,
    date: '01.01.2021',
    organization: organizations.first
  },
  {
    title: 'review 2',
    description: 'good review 2',
    score: 3,
    date: '02.02.2021',
    organization: organizations.first
  },
])

# organizations = Organization.create([
#   {
#     name: "Organization 1",
#     address: 'NY', 
#     zipCode:'10001', 
#     website: 'website 1', 
#     facebook: 'facebook 1', 
#     twitter: 'twitter 1',
#     categories: [
#       Category.find(1),
#       Category.find(3)
#     ]
#   },
#   {
#     name: "Organization 2",
#     address: 'NY', 
#     zipCode:'10002', 
#     website: 'website 2', 
#     facebook: 'facebook 2', 
#     twitter: 'twitter 2',
#     categories: [
#       Category.find(1),
#       Category.find(2)
#     ]
#   },
#   {
#     name: "Organization 3",
#     address: 'NY', 
#     zipCode:'10003', 
#     website: 'website 3', 
#     facebook: 'facebook 3', 
#     twitter: 'twitter 3',
#     categories: [
#       Category.find(4),
#       Category.find(6)
#     ]
#   },
#   {
#     name: "Organization 4",
#     address: 'NY', 
#     zipCode:'10004', 
#     website: 'website 4', 
#     facebook: 'facebook 4', 
#     twitter: 'twitter 4',
#     categories: [
#       Category.find(3),
#       Category.find(5)
#     ]
#   },
#   {
#     name: "Organization 5",
#     address: 'NY', 
#     zipCode:'10005', 
#     website: 'website 5', 
#     facebook: 'facebook 5', 
#     twitter: 'twitter 5',
#     categories: [
#       Category.find(1),
#       Category.find(6)
#     ]
#   },
#   {
#     name: "Organization 6",
#     address: 'NY', 
#     zipCode:'10006', 
#     website: 'website 6', 
#     facebook: 'facebook 6', 
#     twitter: 'twitter 6',
#     categories: [
#       Category.find(2),
#       Category.find(4)
#     ]
#   }
# ])

