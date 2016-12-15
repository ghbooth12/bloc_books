require_relative '../app/models/book'
require_relative '../app/models/library'
require 'bloc_record'

BlocRecord.connect_to("db/db_new.sqlite")

Book.create(
  name: "The Well-Grounded Rubyist",
  author: "David A. Black",
  pages: 520
)

Book.create(
  name: 'Practical Object-Oriented Design in Ruby',
  author: 'Sandi Metz',
  pages: 272
)

Book.create(
  name: 'Eloquent Ruby',
  author: 'Russ Olsen',
  pages: 448
)

Library.create(
  name: "Royal Library",
  year: 1648
)

Library.create(
  name: "Wren Library",
  year: 1695
)

Library.create(
  name: "Library of Parliament",
  year: 1876
)
