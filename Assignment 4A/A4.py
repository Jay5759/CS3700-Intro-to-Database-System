# Application implemented by:
# - Jay Prajapati (ME21B143)
# - Advait Iyer (EE21B006)
# - Justin Jeremiah Rangad (EE21B062)
# - S N Sooraj Skanda (EE21B132)
# - Thiruvarul P (CS21B083)

import pymysql

# Function to add a course
def update_course(conn, dept_id, course_id, teacher_id, class_room):
    try:
        # Check if the department exists
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM department WHERE deptId=%s", (dept_id,))
        dept = cursor.fetchone()
        if not dept:
            print("Department not found.")
            return False

        # Check if the course already exists
        cursor.execute("SELECT * FROM course WHERE courseId=%s AND deptNo=%s", (course_id, dept_id))
        existing_course = cursor.fetchone()
        if not existing_course:
            print("Course ID does not exists in the department.")
            return False

        # Check if professor exists
        cursor.execute("SELECT * FROM teaching WHERE empId=%s", (teacher_id,))
        prof = cursor.fetchone()
        if not prof:
            print("Professor does not exist.")
            return False

        # Check if the professor teaches the course
        cursor.execute("SELECT * FROM teaching WHERE empId = %s AND courseId = %s AND sem = 'even' AND year = 2006", (teacher_id, course_id))
        teacher = cursor.fetchone()
        if not teacher:
            print("The entered professor does not teach the course in 2006 even semester")
            return False
        
        # Update the course
        cursor.execute("UPDATE teaching SET classRoom = %s WHERE empId = %s AND courseId = %s AND sem = 'even' AND year = 2006", (class_room, teacher_id, course_id))
        conn.commit()
        print("Course updated successfully.")
        return True

    except Exception as e:
        print("Error:", e)

# Function to enroll a student in a course
def enroll_student(conn, roll_no, course_id):
    try:
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM student WHERE rollNo=%s", (roll_no,))
        student = cursor.fetchone()
        if not student:
            print("Student not found.")
            return
        
        # Check if the course exists
        cursor.execute("SELECT * FROM course WHERE courseId=%s", (course_id,))
        existing_course = cursor.fetchone()
        if not existing_course:
            print("Course ID does not exist.")
            return
        
        # Check if enrollment exsits
        cursor.execute("SELECT * FROM enrollment WHERE rollNo=%s AND courseId=%s", (roll_no, course_id))
        existing_enrollment = cursor.fetchone()
        if existing_enrollment:
            print("Course was already enrolled by student")
            return
            

        # Check if the student has passed all prerequisites
        cursor.execute("""
            SELECT preReqCourse 
            FROM prerequisite 
            WHERE courseId=%s
        """, (course_id,))
        prerequisites = cursor.fetchall()

        passed_prerequisites = True
        for prerequisite in prerequisites:
            prerequisite_course_id = prerequisite[0]
            cursor.execute("""
                SELECT grade 
                FROM enrollment 
                WHERE rollNo=%s AND courseId=%s
            """, (roll_no, prerequisite_course_id))
            grade = cursor.fetchone()
            if not grade or grade[0] not in ('A', 'B', 'C', 'D', 'E'):
                passed_prerequisites = False
                break

        if not passed_prerequisites:
            print(f"Cannot enroll in {course_id}. Prerequisites not met.")
            return

        # Enroll the student in the course
        cursor.execute("""
            INSERT INTO enrollment (rollNo, courseId, sem, year) 
            VALUES (%s, %s, 'even', 2006)
        """, (roll_no, course_id))
        print(f"Enrolled in course {course_id} successfully.")

        conn.commit()

    except Exception as e:
        print("Error:", e)


# Connect to the database
conn = pymysql.connect(host='localhost',
                        user='root',
                        password='XXXXXXXX',
                        database='academic_insti')

print("-------------------------------------- DBMS Assignment 4A --------------------------------------")
print()
print()

# Code for menu
def mainmenu():
    print("-------------------------------------- Main Menu --------------------------------------")
    print()
    print()
    print("1. Do you want to update a course in 2006 Even Semester")
    print("2. Do you want to enroll in a course")
    print("3. Quit")
    choice = input("Enter your choice: ")
    return choice

while(True):

    choice = mainmenu()

    # Code for taking input and updating a course
    if(choice == '1'):
        dept_id = input("Enter department ID: ")
        course_id = input("Enter course ID: ")
        # course_name = input("Enter course name: ")
        # course_credits = input("Enter course credits: ")
        teacher_id = input("Enter teacher ID: ")
        class_room = input("Enter class room: ")

        update_course(conn, dept_id, course_id, teacher_id, class_room)
        print()
        print()

    # Code for taking input and enrolling into a course
    elif(choice == '2'):
        roll_no = input("Enter roll number: ")
        course_id = input("Enter course ID: ")

        # Call the function to enroll the student
        enroll_student(conn, roll_no, course_id)
        print()
        print()

    elif(choice == '3'):
        break

    else:
        print("Invalid choice. Please try again.")
        print()
        print()

# Close the connection
conn.close()