require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'pry'
class InteractiveRecord
    def self.find_by(name)
    sql = "SELECT * FROM #{self.table_name} WHERE name = '#{name}'"
      DB[:conn].execute(sql)
      binding.pry
  end
end