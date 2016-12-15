require 'sqlite3'

db = SQLite3::Database.new("db/db_new.sqlite")

db.execute <<-SQL
  CREATE TABLE book (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30),
    author VARCHAR(30),
    pages INTEGER
  );
SQL

db.execute <<-SQL
  CREATE TABLE library (
    id INTEGER PRIMARY KEY,
    name VARCHAR(30),
    year INTEGER
  );
SQL
