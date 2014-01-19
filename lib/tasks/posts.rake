require "yaml"

namespace :posts do

  desc "Load a YAML data file into the DB"
  task :load, [:data_file] => :environment do |t, args|
    puts "Loading: #{args.data_file}"
    posts =  YAML.load_file(args.data_file)
    for post in posts
      Post.create(post)
    end
    puts "Done! Loaded #{posts.length} posts"
  end

  desc "Delete all the posts from the DB"
  task :clear => :environment do |t, args|
    puts "Deleting all posts..."
    Post.delete_all
    puts "Done!"
  end
end
