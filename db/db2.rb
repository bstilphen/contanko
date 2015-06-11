require 'sqlite3'

# Open a SQLite 3 database file
db = SQLite3::Database.new 'production.sqlite3'

# Create a table
#result = db.execute <<-SQL
#  CREATE TABLE numbers (
#    name VARCHAR(30),
#    val INT
#  );
#SQL

# Insert some data into it
#{ 'one' => 1, 'two' => 2 }.each do |pair|
#  db.execute 'insert into numbers values (?, ?)', pair
#end

# Find some records
db.execute 'SELECT * FROM users' do |row|
  p row
end
