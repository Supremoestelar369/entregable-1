CREATE TABLE "users" (
"id" uuid PRIMARY KEY,
"name" varchar,
"email" varchar,
"password" varchar,
"age" int8,
"id_roles" int
);

CREATE TABLE "users_courses" (
"id" uuid PRIMARY KEY,
"user_id" uuid,
"course_id" uuid
);

CREATE TABLE "courses" (
"id" uuid PRIMARY KEY,
"title" varchar,
"description" varchar,
"level" int,
"teacher" varchar,
"courses_videos_id" int,
"courses_level" int
);

CREATE TABLE "levels" (
"id" serial PRIMARY KEY,
"name" int
);

CREATE TABLE "courses_videos" (
"id" uuid PRIMARY KEY,
"title" varchar,
"ulr" varchar,
"courses_id" uuid
);

CREATE TABLE "categories" (
"id" serial PRIMARY KEY,
"name" varchar
);

CREATE TABLE "courses_categorias" (
"id" uuid PRIMARY KEY,
"courses_id" uuid,
"categories" int
);

CREATE TABLE "roles" (
"id" serial PRIMARY KEY,
"name" varchar
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("courses_level") REFERENCES "levels" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("id_roles") REFERENCES "roles" ("id");

ALTER TABLE "courses_categorias" ADD FOREIGN KEY ("categories") REFERENCES "categories" ("id");

ALTER TABLE "courses_categorias" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

------My dbeaver code:


select * from users

select * from roles 

select * from categories 

select * from courses 

select * from courses_videos

select * from levels 

select * from users_courses 



---It will be in levels from 1 to 3
insert into levels (
	name
) values (
	1
), (
	2
),(
	3
);

insert into roles (
	name
) values (
	'student'
),(
	'teacher'
),(
	'admin'
);

insert into categories  (
	name
) values (
	'Tecnico'
),(
	'director'
),(
	'Desarrollador'
);

update categories  
set name = 'Technical'
where id  = 1;

update categories  
set name = 'manager'
where id  = 2;

update categories  
set name = 'developer'
where id  = 3;

insert into users (
	id,
	name,
	email,
	"password",
	age,
	id_roles 
) values (
	'26bc456b-1fdf-4209-8647-a3998a7da5c7',
	'Omar',
	'Omarsoto278@gmail.com',
	'root',
	35,
	2
), (
	'ha2f4aa9-baae-45e9-a56b-35dbbc8bd6c0',
	'Sara',
	'zorro@yahoo.com',
	'adm',
	19,
	2
);

insert into courses  (
	id,
	title,
	description,
	level,
	teacher,
	courses_videos_id,
	courses_level
) values (
	'ha2f4aa9-baae-45e9-a56b-35dbbc8bd6c0',
	'Technical in house',
	'Perfecto',
	1,
	'Ronald Sortes',
	1,
	1
), (
	'p4a1a72e-aaa1-4c70-8c07-327f92f5e121',
	'Technical in working',
	'Nice',
	2,
	'Luis Gomes',
	2,
	2
);


insert into courses_videos (
	id,
	title,
	ulr,
	courses_id 
) values (
--	'41deeb67-9dbb-41c0-bb04-5345eebf029e',
--	'video 1',
--	'http/:sadsdsadasasad.com',
--	'0ab388b9-aa8b-45d0-938e-65101b3ef365'

	'7c1b7e34-c40a-4a03-8872-a5c16934c99n',
	'video 2',
	'http:/ssewefsdd.com',
	'w4a1a72e-aaa1-4c70-8c07-327f92f5e121'
);

insert into users_courses (
	id,
	user_id,
	course_id 
) values (
	'3c7e662a-73ee-4bd9-8860-da3d45ca364a',
	'26bc456b-1fdf-4209-8647-a3998a7da5c7',
	'0ab388b9-aa8v-45d0-938e-65101b3ef365'
), (
	'f80f0c9c-0cdf-4415-b150-2d701e9becdb',
	'ha2f4aa9-baae-45e9-a56b-35dbbc8bd6c0',
	'p4a1a72e-aaa1-4c70-8c07-327f92f5e121'
)
