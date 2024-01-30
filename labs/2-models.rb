# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.
#ew_company = Company.new
#puts new_company.inspect

#new_company["name"]= "Apple"
#new_company["city"] ="Cupertino"
#new_company["state"]="California"
#new_company["url"]="https://www.apple.com"
#new_company.save

#initialize a new salesperson row (aka hash)
new_salesperson1 = Salesperson.new

new_salesperson1["first_name"] = "Claudia"
new_salesperson1["last_name"] = "Steck"
new_salesperson1["email"] = "claudemail@gmail.com"

new_salesperson1.save

puts new_salesperson1.inspect

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson2 = Salesperson.new

new_salesperson2["first_name"] = "Ethan"
new_salesperson2["last_name"] = "O"
new_salesperson2["email"] = "ethano@gmail.com"

new_salesperson2.save

puts new_salesperson2.inspect

# 3. write code to display how many salespeople rows are in the database


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
#find claudia column
claudia = Salesperson.find_by({"first_name"=>"Claudia", "last_name" => "Steck"})
#update email column
claudia["email"] = "claudsteck@email.com"
# update aka "save" the row
claudia.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
for person in salespeople
    puts "#{"first_name"} #{"last_name"}"

puts "There are #{Salesperson.all.count} sales people"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
