every 1.day, :at => '12:00 am'  do    
  command 'cd /Users/nathanpena/code/blocitoff && RAILS_ENV=development bundle exec rake todo:delete_items'
end