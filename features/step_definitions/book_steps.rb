Given /the following books exist/ do |books_table|
books_table.hashes.each do |book|
# each returned element will be a hash whose key is the table header.
# we should arrange to add that book to the database here.
Book.create book
end
end
Then /(.*) seed books should exist/ do | n_seeds |
assert Book.count == n_seeds.to_i
end
