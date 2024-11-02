#!/usr/bin/awk -f

# This script finds the student with the highest grade from a CSV file.

BEGIN {
    max_grade = -1;  # Initialize max_grade to a very low number
}

{
    # Assuming the CSV format is: Name,Grade
    name = $1;
    grade = $2;

    # Convert grade to a number and check if it's the highest
    if (grade + 0 > max_grade) {
        max_grade = grade + 0;  # Update max_grade
        student_name = name;      # Store the corresponding name
    }
}

END {
    if (max_grade != -1) {
        print "Student with the highest score:"
        print "Name:", student_name, "Grade:", max_grade;
    } else {
        print "No student records found.";
    }
}
