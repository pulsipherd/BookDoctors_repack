serialize :liked_books, Array

def self_linked(ids)
  ids = ids.empty? ? [0] :ids
  Book.where("id NOT IN (?)", ids).order("RANDOM()")
end

# I don't think I need this part for my app
# def self.random_book(ids)
#   ids = ids.empty? ? [0] : ids
#   Book.where("id NOT IN (?)", ids).order("RANDOM()")
# end