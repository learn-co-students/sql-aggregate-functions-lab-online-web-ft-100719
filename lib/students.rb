## Code your solution below. Note that your SQL queries should be in quotation marks. 

def highest_student_gpa
  "Select Max(gpa) From students;"
end

def lowest_student_gpa
  "Select Min(gpa) From students"
end

def average_student_gpa
  "Select Avg(gpa) From students"
end

def total_tardies_for_all_students
  "Select Sum(students.tardies) From students"
end

def average_gpa_for_9th_grade
  "Select Avg(students.gpa) From students WHERE grade = 9"
end
