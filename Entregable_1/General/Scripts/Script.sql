CREATE TABLE "Users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "Courses" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" varchar,
  "teacher" varchar,
  "category_id" int,
  CONSTRAINT "courses_title_unique" UNIQUE ("title")
);

CREATE TABLE "Course_Videos" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "course_id" int,
  CONSTRAINT "course_videos_course_id_fk" FOREIGN KEY ("course_id") REFERENCES "Courses" ("id")
);

CREATE TABLE "Categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "Courses" ADD FOREIGN KEY ("category_id") REFERENCES "Categories" ("id");

-- Agregamos dos registros a la tabla Users
INSERT INTO "Users" (name, email, password, age) VALUES
    ('John Doe', 'johndoe@example.com', '123456', 25),
    ('Jane Smith', 'janesmith@example.com', 'abcdef', 30);

-- Agregamos dos registros a la tabla Courses
INSERT INTO "Courses" (title, description, level, teacher, category_id) VALUES
    ('Introduction to Programming', 'Learn the basics of programming', 'Beginner', 'John Doe', 1),
    ('Advanced Database Systems', 'Master the art of database design', 'Advanced', 'Jane Smith', 2);

-- Agregamos dos registros a la tabla Course_Videos
INSERT INTO "Course_Videos" (title, url, course_id) VALUES
    ('Introduction to Programming - Video 1', 'https://www.youtube.com/watch?v=abc123', 1),
    ('Advanced Database Systems - Video 1', 'https://www.youtube.com/watch?v=def456', 2);

-- Agregamos dos registros a la tabla Categories
INSERT INTO "Categories" (name) VALUES
    ('Programming'),
    ('Database Systems');

