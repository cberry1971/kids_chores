# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
[
  {:name => "Nick"},
  {:name => "Siena"},
  {:name => "Mac"}
].each do |attributes|
  Child.create(attributes)
end

[
  {:title => "Feed Chickens", 
    :description => "Refill food, check water and get eggs.", 
    :image_url => "/images/chickens.jpg", 
    :value => 0.25},
  {:title => "Empty Dishwasher", 
    :description => "If you don't know where something goes, put on counter.", 
    :image_url => "/images/dishwasher.jpg", 
    :value => 0.25},
  {:title => "Clean Dog Poop", 
    :description => "While you are at it.. look for chicken poop too.", 
    :image_url => "/images/dog.jpg", 
    :value => 0.25},    
  {:title => "Feed Louie", 
    :description => "Please be sure to check his water.", 
    :image_url => "/images/dog_food.jpg", 
    :value => 0.10},
  {:title => "Take Trash Cans Out & In", 
    :description => "Tuesday evenings they go out and back in on Wednesday.", 
    :image_url => "/images/trashcans.jpg", 
    :value => 0.25} 
].each do |attributes|
  Chore.create(attributes)
end