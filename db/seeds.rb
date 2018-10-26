# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create([
    {
        title: 'Star Wars',
        year: 1977,
        director: 'George Lucas',
        genre: 'Sci-fi',
        price: 17.99
    },
    {
        title: 'The Bourne Identity',
        year: 2002,
        director: 'Doug Ligman',
        genre: 'Thriller',
        price: 12.99
    },
    {
        title: 'Psycho' ,
        year: 1960,
        director: 'Alfred Hitchcock',
        genre: 'Horror',
        price: 12.99
    },
    {
        title: 'Raiders of the Lost Ark' ,
        year: 1981,
        director:'Steven Spielberg',
        genre: 'Adventure',
        price: 15.99
    }
])