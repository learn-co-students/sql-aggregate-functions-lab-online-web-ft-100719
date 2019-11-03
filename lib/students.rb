require "spec_helper"


describe "aggregate functions sql" do
  before do
    @db = SQLite3::Database.new(':memory:')
    SQLRunner.make_methods
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_sql_create
    @sql_runner.execute_sql_insert
  end


def highest_students_gpa
  "SELECT MAX(gpa) FROM students";
end


def lowest_students_gpa 
  "SELECT MIN(students.gpa) FROM students";
end

def average_students_gpa
  "SELECT AVG(student_gpa) FROM students"
end

def all_tardies_for_all_students
  "SELECT SUM(tardies) FROM students"
end 