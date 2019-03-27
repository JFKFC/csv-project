require "csv"

### Prompt the User to input x number of contacts to add to their List ### 

print "Give me a whole number that is greater than zero."
print ">" 
num = gets.chomp.to_i 

if num < 0	
	puts "I need a number greater than zero."  
	print ">"
elsif num > 0
	puts "Ok -- I am creating a CSV file with #{num} number of contacts."
else 
	puts "I need a number."
end 

# Create array of tag values to randomly add to CSV contacts # 
tags = [
'Influencer', 
'Media contact', 
'Large donor',
'Volunteer',
'Staff',
'Prospect',
'Uses coupons',
'Has kids',
'Trade show contact'
]

### Use CSV Open Class to create our csv file with a Header Row...

CSV.open("header-test.csv", "wb", :write_headers=> true, :headers=> ["Email Address", "First Name", "Last Name", "Tags"]) do |csv|
	#csv << ['Email', 'First', 'Last', 'Tags']

	# ... And create a row for each intance of 'n' with the corresponding number being added at the end of each email address name

	for i in 1..num do  
		csv << [
			'example' + "+#{i}" + '@chimpmail.com', 
			"Fred #{i}", 
			"Chimp #{i}", 
			tags.sample # .sample method randomizes which array is selected in the Tags list
		]
	end 
end 

