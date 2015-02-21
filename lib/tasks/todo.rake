namespace :todo do
  desc "Delete items older than seven days"
  task delete_items: :environment do
    
    counter = 0
    # display created_at values for all items that will be deleted
    Item.where("created_at <= ?", Time.now - 7.days).order(created_at: :desc).each do |item|
      puts item.created_at
      item.destroy
      counter += 1 if item.destroyed?
    end

    puts "#{counter} items removed" 
  end
end
