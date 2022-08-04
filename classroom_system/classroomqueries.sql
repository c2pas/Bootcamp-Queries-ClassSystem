CREATE TABLE IF NOT EXISTS students
(
    id integer NOT NULL,
    first_name "char",
    last_name "char",
    CONSTRAINT students_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS teachers
(
    id integer NOT NULL,
    first_name "char",
    last_name "char",
    CONSTRAINT teacher_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS classrooms
(
    id integer NOT NULL,
    class "char",
    teacher_id integer references teachers(id),
    student_id integer references students(id),
    CONSTRAINT classrooms_pkey PRIMARY KEY (id)
);
