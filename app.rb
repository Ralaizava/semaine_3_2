require 'bundler'
#require 'csv'
Bundler.require

$:.unshift File.expand_path("C:/Users/RJM/Desktop/semaine_3_2/lib/app", __FILE__)
require 'scrapper'
  File.open("C:/Users/RJM/Desktop/semaine_3_2/db/emails.json","w") do |f|
  f.write(Scrapper.new.perform.to_json)
 end
#CSV.open("C:/Users/RJM/Desktop/semaine_3_2/db/emails.csv", "wb") {|csv| Scrapper.new.perform.to_a.each {|elem| csv << elem} }