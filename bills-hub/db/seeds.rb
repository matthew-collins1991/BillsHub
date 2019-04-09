# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.create(name:"Thames Water", url:"thameswater.co.uk", logo:"https://logo.clearbit.com/thameswater.co.uk")
Company.create(name:"Scottish Power", url:"scottishpower.co.uk", logo:"https://logo.clearbit.com/scottishpower.co.uk")
Company.create(name:"BT", url:"bt.com", logo:"https://logo.clearbit.com/bt.com")

User.create(name:"Matthew Collins", email:"matt@matt.com", password:"London", location: "leeds", house_size:2, age:28)
User.create(name:"Shane Walsh", email:"shane@shane.com", password:"London", location: "Dublin", house_size:4, age:31)
User.create(name:"Sam Barker", email:"sam@sam.com", password:"London", location: "London", house_size:1, age:32)
User.create(name:"Joey O'Dell", email:"joe@joe.com", password:"London", location: "cambridge", house_size:3, age:27)

Utility.create(company_id: 1, user_id: 1, utility_type: "Water", start_date: "16/02/19", renewal_date: "16/02/20", payment_type: "direct debit", payment_freq: "monthly", active: true )
Utility.create(company_id: 1, user_id: 2, utility_type: "Water", start_date: "23/06/17", renewal_date: "23/06/18", payment_type: "cash", payment_freq: "yearly", active: true )
Utility.create(company_id: 1, user_id: 3, utility_type: "Water", start_date: "06/11/18", renewal_date: "06/11/19", payment_type: "card", payment_freq: "quarterly", active: true )
Utility.create(company_id: 1, user_id: 4, utility_type: "Water", start_date: "13/01/19", renewal_date: "13/01/20", payment_type: "direct debit", payment_freq: "weekly", active: true )

Utility.create(company_id: 2, user_id: 2, utility_type: "Gas", start_date: "16/02/19", renewal_date: "16/02/20", payment_type: "direct debit", payment_freq: "monthly", active: true )
Utility.create(company_id: 2, user_id: 3, utility_type: "Electric", start_date: "23/06/17", renewal_date: "23/06/18", payment_type: "cash", payment_freq: "yearly", active: true )
Utility.create(company_id: 2, user_id: 4, utility_type: "Gas", start_date: "06/11/18", renewal_date: "06/11/19", payment_type: "card", payment_freq: "quarterly", active: true )
Utility.create(company_id: 2, user_id: 1, utility_type: "Electric", start_date: "13/01/19", renewal_date: "13/01/20", payment_type: "direct debit", payment_freq: "weekly", active: true )
Utility.create(company_id: 2, user_id: 1, utility_type: "Gas", start_date: "13/01/19", renewal_date: "13/01/20", payment_type: "direct debit", payment_freq: "weekly", active: true )

Utility.create(company_id: 3, user_id: 3, utility_type: "TV", start_date: "16/02/19", renewal_date: "16/02/20", payment_type: "direct debit", payment_freq: "monthly", active: true )
Utility.create(company_id: 3, user_id: 4, utility_type: "Internet", start_date: "23/06/17", renewal_date: "23/06/18", payment_type: "cash", payment_freq: "yearly", active: true )
Utility.create(company_id: 3, user_id: 1, utility_type: "Phone", start_date: "06/11/18", renewal_date: "06/11/19", payment_type: "card", payment_freq: "quarterly", active: true )
Utility.create(company_id: 3, user_id: 2, utility_type: "Mobile", start_date: "13/01/19", renewal_date: "13/01/20", payment_type: "direct debit", payment_freq: "weekly", active: true )

Bill.create(utility_id: 1, cost: 48, bill_date: "16/02/19")
Bill.create(utility_id: 1, cost: 48, bill_date: "16/03/19")
Bill.create(utility_id: 1, cost: 48, bill_date: "16/04/19")

Bill.create(utility_id: 2, cost: 256, bill_date: "23/06/17")
Bill.create(utility_id: 2, cost: 312, bill_date: "23/06/18")
Bill.create(utility_id: 2, cost: 287, bill_date: "23/06/19")

Bill.create(utility_id: 3, cost: 112, bill_date: "06/11/18")
Bill.create(utility_id: 3, cost: 123, bill_date: "06/02/19")
Bill.create(utility_id: 3, cost: 142, bill_date: "06/05/19")

Bill.create(utility_id: 4, cost: 12, bill_date: "13/01/19")
Bill.create(utility_id: 4, cost: 14, bill_date: "20/01/19")
Bill.create(utility_id: 4, cost: 5, bill_date: "27/01/19")
Bill.create(utility_id: 4, cost: 7, bill_date: "04/02/19")

Bill.create(utility_id: 5, cost: 44, bill_date: "16/02/19")
Bill.create(utility_id: 5, cost: 34, bill_date: "16/03/19")
Bill.create(utility_id: 5, cost: 45, bill_date: "16/04/19")

Bill.create(utility_id: 6, cost: 435, bill_date: "23/06/17")
Bill.create(utility_id: 6, cost: 334, bill_date: "23/06/18")
Bill.create(utility_id: 6, cost: 389, bill_date: "23/06/19")

Bill.create(utility_id: 7, cost: 435, bill_date: "06/11/18")
Bill.create(utility_id: 7, cost: 423, bill_date: "06/02/19")
Bill.create(utility_id: 7, cost: 442, bill_date: "06/05/19")

Bill.create(utility_id: 8, cost: 14, bill_date: "13/01/19")
Bill.create(utility_id: 8, cost: 22, bill_date: "20/01/19")
Bill.create(utility_id: 8, cost: 23, bill_date: "27/01/19")
Bill.create(utility_id: 8, cost: 37, bill_date: "04/02/19")

Bill.create(utility_id: 9, cost: 21, bill_date: "13/01/19")
Bill.create(utility_id: 9, cost: 17, bill_date: "20/01/19")
Bill.create(utility_id: 9, cost: 18, bill_date: "27/01/19")
Bill.create(utility_id: 9, cost: 32, bill_date: "04/02/19")

Bill.create(utility_id: 10, cost: 10, bill_date: "16/02/19")
Bill.create(utility_id: 10, cost: 10, bill_date: "16/03/19")
Bill.create(utility_id: 10, cost: 10, bill_date: "16/04/19")

Bill.create(utility_id: 11, cost: 120, bill_date: "23/06/17")
Bill.create(utility_id: 11, cost: 132, bill_date: "23/06/18")
Bill.create(utility_id: 11, cost: 140, bill_date: "23/06/19")

Bill.create(utility_id: 12, cost: 67, bill_date: "06/11/18")
Bill.create(utility_id: 12, cost: 87, bill_date: "06/02/19")
Bill.create(utility_id: 12, cost: 50, bill_date: "06/05/19")

Bill.create(utility_id: 13, cost: 5, bill_date: "13/01/19")
Bill.create(utility_id: 13, cost: 8, bill_date: "20/01/19")
Bill.create(utility_id: 13, cost: 6, bill_date: "27/01/19")
Bill.create(utility_id: 13, cost: 8, bill_date: "04/02/19")


#
