# main database record class that sits between app and Rails
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
