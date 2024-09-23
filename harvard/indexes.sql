CREATE INDEX "students_id_index" ON "students"("id");

CREATE INDEX "departments_index" ON "courses"("department");
CREATE INDEX "semester_index" ON "courses"("semester");

CREATE INDEX "enrollments_courses_index" ON "enrollments"("course_id");
CREATE INDEX "enrollments_students_index" ON "enrollments"("student_id");

CREATE INDEX "requirements_index" ON "requirements"("id");

CREATE INDEX "satisfies_courses_index" ON "satisfies"("course_id");
