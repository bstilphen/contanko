#!/usr/bin/ruby

require 'sqlite3'

begin
    
    db = SQLite3::Database.open "development.sqlite3"
    
    stm = db.prepare "SELECT * FROM Users" 
    rs = stm.execute 
    
    rs.each do |row|
        puts row.join "\s"
    end
           
rescue SQLite3::Exception => e 
    
    puts "Exception occurred"
    puts e
    
ensure
    stm.close if stm
    db.close if db
end

