

-- Section entry
insert into sections values ('S-1', 'Computer Eng');
insert into sections values ('S-2', 'Computer Soft');
insert into sections values ('S-3', 'Computer Gen');


-- room entry
insert into room values ('R-1', 'Room A', 'S-1');
insert into room values ('R-2', 'Room B', 'S-2');
insert into room values ('R-3', 'Room C', 'S-1');
insert into room values ('R-4', 'Room D', 'S-2');
insert into room values ('R-5', 'Room E', 'S-3');

-- teacher entry
insert into teacher values ('T-1', 'Busanga Elijah', 'Professor-Doctor', 10000.0);
insert into teacher values ('T-2', 'Daniels Map', 'Professor', 10000.0);
insert into teacher values ('T-3', 'Sonia Son', 'Doctor', 10000.0);
insert into teacher values ('T-4', 'Marcos Mus', 'Senior Lecture', 10000.0);
insert into teacher values ('T-5', 'Rocky Roc', 'Engineer', 10000.0);

-- classs entry
insert into class values ('CL-1', 'Comp Eng-1', 'R-1', 'T-1');
insert into class values ('CL-2', 'Comp Eng-2', 'R-1', 'T-1');
insert into class values ('CL-3', 'Comp Soft-1', 'R-2', 'T-2');
insert into class values ('CL-4', 'Comp Soft-2', 'R-2', 'T-2');
insert into class values ('CL-5', 'Comp Soft-3', 'R-2', 'T-2');
insert into class values ('CL-6', 'Comp Gen-1', 'R-3', 'T-3');
insert into class values ('CL-7', 'Comp Gen-2', 'R-3', 'T-3');
insert into class values ('CL-8', 'Comp Eng-3', 'R-4', 'T-5');

-- student entry
insert into students values ('1990', 'Jack Japhet', 'CL-1', 'S-1', 'R-1');
insert into students values ('1991', 'Jackly Japhetly', 'CL-1', 'S-1', 'R-1');
insert into students values ('1992', 'Fiston One', 'CL-2', 'S-1', 'R-1');
insert into students values ('1993', 'Rose Green', 'CL-3', 'S-2', 'R-2');
insert into students values ('1994', 'Phillipe Japhet', 'CL-2', 'S-2', 'R-2');
insert into students values ('1995', 'Dany Green', 'CL-3', 'S-1', 'R-1');
insert into students values ('1996', 'Pascal Doe', 'CL-1', 'S-2', 'R-4');
insert into students values ('1997', 'Martin Luther', 'CL-2', 'S-2', 'R-2');
insert into students values ('1998', 'Pierre Jules', 'CL-3', 'S-3', 'R-5');
insert into students values ('1999', 'Mark Marcos', 'CL-2', 'S-3', 'R-5');

-- subjects entry
insert into subjects values ('Sub-1', 'C Programming', 'T-1');
insert into subjects values ('Sub-2', 'Java Programming', 'T-1');
insert into subjects values ('Sub-3', 'Phython Programming', 'T-1');
insert into subjects values ('Sub-4', 'Javascript', 'T-2');
insert into subjects values ('Sub-5', 'DBMS', 'T-2');
insert into subjects values ('Sub-6', 'Php ', 'T-1');


