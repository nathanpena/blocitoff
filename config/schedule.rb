every 1.day, :at => '1:00 am'  do  
  rake 'todo:delete_items'  
  command 'cd /Users/nathanpena/code/blocitoff && RAILS_ENV=development bundle exec rake todo:delete_items'
end