
/* Database Creation */
	create database school_m_system;
	go 
	use school_m_system;

/* Tables Creation */

	create table students (
		studentID varchar(100) primary key not null,
		studentNames varchar(100) not null
		);

	create table sections (
		sectionID varchar(100) primary key  not null,
		sectionName varchar(100) not null
	);

	create table subjects (
		subjectID varchar(100) primary key not null,
		subjectName varchar(100) not null
	);

	create table student_fees (
		studentFee float primary key
		);

	create table teacher(
		teacherID varchar(100) primary key,
		teacherfull_name varchar,
		qualification varchar(100),
		salary float 
	);

	create table class (
		classID varchar(100) primary key not null,
		className varchar(100) not null
	);

	create table room (
		roomID varchar(100) primary key not null,
		roomName varchar(100) not null
	);


/* Setting Relationship */

	-- student
	alter table students
	add ClassId varchar(100) not null foreign key references class(classID);

	alter table students
	add SectionID varchar(100) not null foreign key references sections(sectionID);

	/* Sections & Teacher junction  */

		create table sections_teacher (
			sectionID varchar(100) not null foreign key references sections(sectionID),
			teacherID varchar(100) not null foreign key references teacher(teacherID)
		);

	-- subjects
	alter table subjects 
	add teacherID varchar(100) not null foreign key references teacher(teacherID);

	-- student_fee
	alter table student_fees
	add studentID varchar(100) not null foreign key references students(studentID);
	alter table student_fees
	add classID varchar(100) not null foreign key references class(classID);

	--teacher(staff)
	alter table teacher
	add classID varchar(100) not null foreign key references teacher(teacherID);

	--class
	alter table class
	add roomID varchar(100) not null foreign  key references room(roomID);

	-- room
	alter table room
	add classID varchar(100) not null foreign key references class(classID);
	alter table room
	add sectionID varchar(100) not null foreign key references sections(sectionID);