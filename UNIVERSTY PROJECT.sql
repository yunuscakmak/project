CREATE DATABASE `serhatyildiz`;
CREATE DATABASE `Yunusemrecakmak`;

CREATE TABLE `student`(

`studentID` int(10) NOT NULL,
`name` varchar(40) NOT NULL,
`surname` varchar (40) NOT NULL,
`email` varchar (50),
`phone` int (20),
`department` varchar (30) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `course`(

`courseID` varchar (20) NOT NULL,
`courseName` varchar (40)NOT NULL,
`ects` int (10),
`date` date NOt NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `takingCourse`(

`id` int (10) NOT NULL,
`studentID` int (10) NOT NULL,
`courseID` varchar (20) NOT NULL,
`mark` float (10)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `lecturer` (

`lectureID` int (10) NOT NULL,
`name` varchar (40) NOT NULL,
`surname` VARCHAR (40) NOT NULL,
`dateofbirth` date,
`department` varchar (30) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `givingcourse`(

`id` int (10) NOT NULL,
`lectureID` int (10) NOT NULL,
`courseID` varchar (20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `courseinfo`(

`courseinfoID` int (10) not null,
`room` varchar (10),
`floors` int (10),
`dates` date
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `takingcourseinfo`(

`id` int (10) NOT NULL,
`courseinfoID` int (10) NOT NULL,
`courseID` varchar (20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



ALTER TABLE `student`
ADD PRIMARY KEY (`studentID`);

ALTER TABLE `course`
ADD PRIMARY KEY (`courseID`);

ALTER TABLE `takingCourse`
ADD PRIMARY KEY (`id`);


ALTER TABLE `lecturer`
ADD PRIMARY KEY (`lectureID`);

ALTER TABLE `givingcourse`
ADD PRIMARY KEY (`id`);

ALTER TABLE `courseinfo`
ADD PRIMARY KEY(`courseinfoID`);

ALTER TABLE `takingcourseinfo`
ADD PRIMARY KEY (`id`);


ALTER TABLE `takingCourse`
ADD FOREIGN KEY (`studentID`) REFERENCES `student`(`studentID`);

ALTER TABLE `takingCourse`
ADD FOREIGN KEY (`courseID`) REFERENCES `course`(`courseID`);

ALTER TABLE `givingcourse`
ADD FOREIGN KEY (`lectureID`) REFERENCES `lecturer`(`lectureID`);

ALTER TABLE `givingcourse`
ADD FOREIGN KEY (`courseID`) REFERENCES `course`(`courseID`);

ALTER TABLE `takingcourseinfo`
ADD FOREIGN KEY (`courseID`) REFERENCES `course`(`courseID`);

ALTER TABLE `takingcourseinfo`
ADD FOREIGN KEY (`courseinfoID`) REFERENCES `courseinfo`(`courseinfoID`);


ALTER TABLE `takingCourse`
MODIFY `id` int (10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `givingcourse`
MODIFY `id` int (10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `takingcourseinfo`
modify `id` int (10) NOT NULL AUTO_INCREMENT;

