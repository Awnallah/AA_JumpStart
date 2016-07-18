
# This function takes a percentage,
# returning the corresponding letter grade
def letter_grade(percentage)
  letters = ("A".."D").to_a

  letters.each.with_index do |letter, index|
    return letter if percentage >= 90 - 10 * index
  end

  "F"
end

# This function takes an array of grades as percentages,
# returning a new array of their corresponding letter grades.
def grade_class(class_percentages)
  class_percentages.map do |student_percentage|
    letter_grade(student_percentage)
  end
end

#p grade_class([ 92.5, 88, 50, 64, 0, 70])

# This function takes a letter grade as input, returning a reasonable response to the grade.
def report_card_feedback(grade)
  passing_grades = ("A".."D").to_a
  failing_grade  = "F"

  if passing_grades.include?(grade.upcase)
    "That'll do, I guess"
  elsif grade.upcase == failing_grade
    "Try harder"
  else
    "Nice try. #{grade} isn't a real grade!"
  end
end
# p report_card_feedback("c")        
# p report_card_feedback("F")       
# p report_card_feedback("Awesome")

