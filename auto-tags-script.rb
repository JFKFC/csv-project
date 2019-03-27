require "csv"

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

### Use CSV Open Class to create our csv file with a "Header" Row...

CSV.open("auto-tags.csv", "wb") do |csv|
	csv << ['Email', 'First', 'Last', 'Tags']

	# ... And create a row for each intance of 'n' with the corresponding number being added at the end of each email address name

	n = 6 # number of contacts needed thus far 
	for i in 1..n do  
		csv << [
			'example' + "#{i}" + '@chimpmail.com', 
			"Fred #{i}", 
			"Chimp #{i}", 
			tags.sample # .sample method randomizes which array is selected in the Tags list
		]
	end
end 

