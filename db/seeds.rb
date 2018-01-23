# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = [
    { title: 'The Phantom Tollbooth', genre: 'Fiction', isbn_number: '1234344', publish_date: '01-Jun-1992' },
    { title: 'Maus', genre: 'Horror', isbn_number: '123546545', publish_date: '01-Jun-1993' },
    { title: 'Never Let Me Go', genre: 'Romance', isbn_number: '1236', publish_date: '01-Jun-1994' },
    { title: 'A Peoples History', genre: 'Adventure', isbn_number: '1237', publish_date: '01-Jun-1995' },
    { title: 'Things Fall Apart', genre: 'Drama', isbn_number: '1238', publish_date: '01-Jun-1996' }]

books.each do |b|
    Book.create!(b)
end