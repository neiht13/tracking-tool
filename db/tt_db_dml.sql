USE `tt_db`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tt_db
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES 
	(1,'JAVA'),
	(2,'DOTNET');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES 
	(1,1,'Declarations and Access Control'),
	(2,1,'Object Orientation'),
	(3,1,'Assignments'),
	(4,1,'Operators'),
	(5,1,'Flow Control, Exceptions, and Assertions'),
	(6,1,'Strings, I/O, Formatting, and Parsing'),
	(7,1,'Generics and Collections'),
	(8,1,'Inner Classes'),
	(9,1,'Threads');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
    (1,'admin','$2a$10$J5XpBSu92vN2T6Ra6obMO.95RMHb6CCbwKjxQDq.o.pgkzlPpnGqm','Admin'),
    (2,'btthuan','$2a$10$J5XpBSu92vN2T6Ra6obMO.95RMHb6CCbwKjxQDq.o.pgkzlPpnGqm','Bui Thanh Thuan'),
    (3,'nvluong','$2a$10$J5XpBSu92vN2T6Ra6obMO.95RMHb6CCbwKjxQDq.o.pgkzlPpnGqm','Nguyen Van Luong'),
    (4,'nvtri','$2a$10$J5XpBSu92vN2T6Ra6obMO.95RMHb6CCbwKjxQDq.o.pgkzlPpnGqm','Nguyen Van Tri'),
    (5,'hvtrung','$2a$10$J5XpBSu92vN2T6Ra6obMO.95RMHb6CCbwKjxQDq.o.pgkzlPpnGqm','Hoang Van Trung');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES
    ('ADMIN_ROLE', 'ADMIN_ROLE'),
    ('DG_ROLE', 'DG_ROLE'),
    ('DC_ROLE', 'DC_ROLE'),
    ('RAC_ROLE', 'RAC_ROLE'),
    ('MENTOR_ROLE', 'MENTOR_ROLE'),
    ('USER_ROLE', 'USER_ROLE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES
    (1,'ADMIN_ROLE'),
    (2,'DG_ROLE'),
    (3,'DC_ROLE'),
    (4,'RAC_ROLE'),
    (5,'RAC_ROLE'),
    (5,'MENTOR_ROLE'),
    (5,'USER_ROLE');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
INSERT INTO `function` VALUES
    ('USER', 'USER'),
    ('USER_CHANGE_PASSWORD', 'USER_CHANGE_PASSWORD'),
    ('SUBJECT', 'SUBJECT'),
    ('AREA', 'AREA'),
    ('QUESTION_UPLOAD', 'QUESTION_UPLOAD'),
    ('TEST_DESIGN', 'TEST_DESIGN'),
    ('TEST_ASSIGNMENT', 'TEST_ASSIGNMENT'),
    ('TEST_EXECUTION', 'TEST_EXECUTION'),
    ('SCHEDULE', 'SCHEDULE'),
    ('SCHEDULE_REPORT', 'SCHEDULE_REPORT'),
    ('DELIVERY_GROUP', 'DELIVERY_GROUP'),
    ('DELIVERY_CENTER', 'DELIVERY_CENTER'),
    ('PROJECT', 'PROJECT'),
    ('SKILL', 'SKILL'),
    ('REQUEST', 'REQUEST'),
    ('CANDIDATE', 'CANDIDATE'),
    ('CANDIDATE_UPLOAD', 'CANDIDATE_UPLOAD'),
    ('TASK_CATEGORY', 'TASK_CATEGORY'),
    ('TASK_TEMPLATE', 'TASK_TEMPLATE'),
    ('TASK_ASSIGNMENT', 'TASK_ASSIGNMENT'),
    ('TASK_REPORT', 'TASK_REPORT');
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `role_function`
--

LOCK TABLES `role_function` WRITE;
/*!40000 ALTER TABLE `role_function` DISABLE KEYS */;
INSERT INTO `role_function` VALUES
    ('USER_ROLE', 'USER_CHANGE_PASSWORD'),
    ('USER_ROLE', 'TEST_EXECUTION');
/*!40000 ALTER TABLE `role_function` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `test`
--


LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES 
	(1,'Declarations and Access Control',1,1,10,'2018-06-06 00:00:00'),
	(2,'Object Orientation',1,1,10,'2018-06-06 00:00:00'),
	(3,'Assignments',1,1,10,'2018-06-06 00:00:00'),
	(4,'Operators',1,1,10,'2018-06-06 00:00:00'),
	(5,'Flow Control, Exceptions, and Assertions',1,1,10,'2018-06-06 00:00:00'),
	(6,'Strings, I/O, Formatting, and Parsing',1,1,10,'2018-06-06 00:00:00'),
	(7,'Generics and Collections',1,1,10,'2018-06-06 00:00:00'),
	(8,'Inner Classes',1,1,10,'2018-06-06 00:00:00'),
	(9,'Threads',1,1,10,'2018-06-06 00:00:00');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `study_plan`
--

LOCK TABLES `study_plan` WRITE;
/*!40000 ALTER TABLE `study_plan` DISABLE KEYS */;
INSERT INTO `study_plan` VALUES (1,1,2,'N'),(2,2,1,'Y'),(3,1,3,'N');
/*!40000 ALTER TABLE `study_plan` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `user_test`
--

LOCK TABLES `user_test` WRITE;
/*!40000 ALTER TABLE `user_test` DISABLE KEYS */;
INSERT INTO `user_test` VALUES 
	(1,2,1,0,0,NULL),
	(2,3,2,0,0,NULL);
/*!40000 ALTER TABLE `user_test` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `user_test_result`
--

LOCK TABLES `user_test_result` WRITE;
/*!40000 ALTER TABLE `user_test_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_test_result` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `user_mentor`
--

LOCK TABLES `user_mentor` WRITE;
/*!40000 ALTER TABLE `user_mentor` DISABLE KEYS */;
INSERT INTO `user_mentor` VALUES (1,2,4,1);
/*!40000 ALTER TABLE `user_mentor` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES 
	(1,'18-2018',2,'Y','Y','N','N','N','N','N','N','N','N'),
	(2,'18-2018',1,'N','N','Y','Y','N','N','N','N','N','N');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `delivery_group`
--

LOCK TABLES `delivery_group` WRITE;
/*!40000 ALTER TABLE `delivery_group` DISABLE KEYS */;
INSERT INTO `delivery_group` VALUES (1, 'DG1','DG1');
/*!40000 ALTER TABLE `delivery_group` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `delivery_center`
--

LOCK TABLES `delivery_center` WRITE;
/*!40000 ALTER TABLE `delivery_center` DISABLE KEYS */;
INSERT INTO `delivery_center` VALUES (1,1,'DC3','DC3');
/*!40000 ALTER TABLE `delivery_center` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,1,'GBST','GBST');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Java','Java 1');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `task_category`
--

LOCK TABLES `task_category` WRITE;
/*!40000 ALTER TABLE `task_category` DISABLE KEYS */;
INSERT INTO `task_category` VALUES (1,'Task for Java Candidate', 'Task for Java Candidate');
/*!40000 ALTER TABLE `task_category` ENABLE KEYS */;
UNLOCK TABLES;



-- Chapter 1 ------------
-- ------------
SELECT @questionId := ifnull(max(question_id), 0) +1 from question;

INSERT INTO `question` VALUES (@questionId, 1, 'Which is true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. "X extends Y" is correct if and only if X is a class and Y is an interface', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. "X extends Y" is correct if and only if X is an interface and Y is a class', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. "X extends Y" is correct if X and Y are either both classes or both interfaces', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. "X extends Y" is correct for all combinations of X and Y being classes and/or interfaces', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+1, 1, 'Which method names follow the JavaBeans standard? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. addSize', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. getCust', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. deleteRep', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. isColorado', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. putDimensions', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+2, 1, 'Given:<br/>1. class Voop {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doStuff(1);<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doStuff(1,2);<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>7. }<br/>Which, inserted independently at line 6, will compile? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. static void doStuff(int... doArgs) { }', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. static void doStuff(int[] doArgs) { }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. static void doStuff(int doArgs...) { }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. static void doStuff(int... doArgs, int y) { }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. static void doStuff(int x, int... doArgs) { }', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+3, 1, 'Given:<br/>1. enum Animals {<br/>2.&nbsp;&nbsp;&nbsp;&nbsp;DOG("woof"), CAT("meow"), FISH("burble");<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;String sound;<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;Animals(String s) { sound = s; }<br/>5. }<br/>6. class TestEnum {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;static Animals a;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(a.DOG.sound + " " + a.FISH.sound);<br/>10. }<br/>11.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. woof burble', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. Multiple compilation errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. Compilation fails due to an error on line 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. Compilation fails due to an error on line 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. Compilation fails due to an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. Compilation fails due to an error on line 9', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+4, 1, 'Given two files:<br/>1. package pkgA;<br/>2. public class Foo {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;int a = 5;<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;protected int b = 6;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public int c = 7;<br/>6. }<br/> <br/>3. package pkgB;<br/>4. import pkgA.*;<br/>5. public class Baz {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Foo f = new Foo();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + f.a);<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + f.b);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(" " + f.c);<br/>11. }<br/>12.}<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. 5 6 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. 5 followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. Compilation fails with an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. Compilation fails with an error on line 8', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. Compilation fails with an error on line 9', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. Compilation fails with an error on line 10', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+5, 1, 'Given:<br/>1. public class Electronic implements Device<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ public void doIt() { } }<br/>2<br/>3. abstract class Phone1 extends Electronic { }<br/>4<br/>5. abstract class Phone2 extends Electronic<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ public void doIt(int x) { } }<br/>6<br/>7. class Phone3 extends Electronic implements Device<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ public void doStuff() { } }<br/>8<br/>9. interface Device { public void doIt(); }<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. Compilation succeeds', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. Compilation fails with an error on line 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. Compilation fails with an error on line 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. Compilation fails with an error on line 5', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. Compilation fails with an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. Compilation fails with an error on line 9', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+6, 1, 'Given:<br/>4. class Announce {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int __x = 0; __x < 3; __x++) ;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int #lb = 7;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;long [] x [5];<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Boolean []ba[];<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;enum Traffic { RED, YELLOW, GREEN };<br/>11. }<br/>12.}<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. Compilation succeeds', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. Compilation fails with an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. Compilation fails with an error on line 7', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. Compilation fails with an error on line 8', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. Compilation fails with an error on line 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'F. Compilation fails with an error on line 10', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+7, 1, 'Given:<br/>3. public class TestDays {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public enum Days { MON, TUE, WED };<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(Days d : Days.values() )<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Days [] d2 = Days.values();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(d2[2]);<br/>10. }<br/>11.}<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. TUE', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. WED', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. The output is unpredictable', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. Compilation fails due to an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. Compilation fails due to an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. Compilation fails due to an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'G. Compilation fails due to an error on line 9', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+8, 1, 'Given:<br/>4. public class Frodo extends Hobbit {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Short myGold = 7;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(countGold(myGold, 6));<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. }<br/>10. class Hobbit {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;int countGold(int x, int y) { return x + y; }<br/>12. }<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. 13', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. Compilation fails due to multiple errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. Compilation fails due to an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. Compilation fails due to an error on line 7', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. Compilation fails due to an error on line 11', 'N');




-- Chapter 2 ------------
-- ------------
SELECT @questionId := max(question_id) from question;

INSERT INTO `question` VALUES (@questionId+1, 2, 'Given:<br/>&nbsp;&nbsp;&nbsp;&nbsp;public abstract interface Frobnicate { public void twiddle(String s); }<br/>Which is a correct class? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. public abstract class Frob implements Frobnicate {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public abstract void twiddle(String s) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. public abstract class Frob implements Frobnicate { }', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. public class Frob extends Frobnicate {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void twiddle(Integer i) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. public class Frob implements Frobnicate {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void twiddle(Integer i) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. public class Frob implements Frobnicate {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void twiddle(String i) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void twiddle(Integer s) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+2, 2, 'Given:<br/>&nbsp;&nbsp;&nbsp;&nbsp;class Top {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public Top(String s) { System.out.print("B"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public class Bottom2 extends Top {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public Bottom2(String s) { System.out.print("D"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Bottom2("C");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(" ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>What is the result?', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. BD', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. DB', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. BDC', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. DBC', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. Compilation fails', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+3, 2, 'Given:<br/>&nbsp;&nbsp;&nbsp;&nbsp;class Clidder {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private final void flipper() { System.out.println("Clidder"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public class Clidlet extends Clidder {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public final void flipper() { System.out.println("Clidlet"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Clidlet().flipper();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. Clidlet', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. Clidder', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. Clidder<br/>Clidlet', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. Clidlet<br/>Clidder', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+4, 2, 'Which statement(s) are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. Cohesion is the OO principle most closely associated with hiding implementation details', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. Cohesion is the OO principle most closely associated with making sure that classes know about other classes only through their APIs', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. Cohesion is the OO principle most closely associated with making sure that a class is designed with a single, well-focused purpose', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. Cohesion is the OO principle most closely associated with allowing a single object to be seen as having many types', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+5, 2, 'Given the following,<br/>&nbsp;&nbsp;&nbsp;&nbsp;1. class X { void do1() { } }<br/>&nbsp;&nbsp;&nbsp;&nbsp;2. class Y extends X { void do2() { } }<br/>&nbsp;&nbsp;&nbsp;&nbsp;3.<br/>&nbsp;&nbsp;&nbsp;&nbsp;4. class Chrome {<br/>&nbsp;&nbsp;&nbsp;&nbsp;5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X x1 = new X();<br/>&nbsp;&nbsp;&nbsp;&nbsp;7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;X x2 = new Y();<br/>&nbsp;&nbsp;&nbsp;&nbsp;8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Y y1 = new Y();<br/>&nbsp;&nbsp;&nbsp;&nbsp;9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>&nbsp;&nbsp;&nbsp;&nbsp;10. } }<br/>Which, inserted at line 9, will compile? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. x2.do2();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. (Y)x2.do2();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. ((Y)x2).do2();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. None of the above statements will compile', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+6, 2, 'Given:<br/>1. ClassA has a ClassD<br/>2. Methods in ClassA use public methods in ClassB<br/>3. Methods in ClassC use public methods in ClassA<br/>4. Methods in ClassA use public variables in ClassB<br/>Which is most likely true? (Choose the most likely.)', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. ClassD has low cohesion', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. ClassA has weak encapsulation', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. ClassB has weak encapsulation', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. ClassB has strong encapsulation', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. ClassC is tightly coupled to ClassA', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+7, 2, 'Given:<br/>3. class Dog {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public void bark() { System.out.print("woof "); }<br/>5. }<br/>6. class Hound extends Dog {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public void sniff() { System.out.print("sniff "); }<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;public void bark() { System.out.print("howl "); }<br/>9. }<br/>10. public class DogShow {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) { new DogShow().go(); }<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Hound().bark();<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;((Dog) new Hound()).bark();<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;((Dog) new Hound()).sniff();<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>17. }<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. howl howl sniff', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. howl woof sniff', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. howl howl followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. howl woof followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. Compilation fails with an error at line 14', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. Compilation fails with an error at line 15', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+8, 2, 'Given:<br/>3. public class Redwood extends Tree {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Redwood().go();<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;go2(new Tree(), new Redwood());<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;go2((Redwood) new Tree(), new Redwood());<br/>10. }<br/>11. void go2(Tree t1, Redwood r1) {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;Redwood r2 = (Redwood)t1;<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;Tree t2 = (Tree)r1;<br/>14. }<br/>15.}<br/>16. class Tree { }<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. An exception is thrown at runtime', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. The code compiles and runs with no output', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. Compilation fails with an error at line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. Compilation fails with an error at line 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. Compilation fails with an error at line 12', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. Compilation fails with an error at line 13', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+9, 2, 'Given:<br/>3. public class Tenor extends Singer {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static String sing() { return "fa"; }<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tenor t = new Tenor();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Singer s = new Tenor();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(t.sing() + " " + s.sing());<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10.}<br/>11. class Singer { public static String sing() { return "la"; } }<br/>What is the result?', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. fa fa', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. fa la', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. la la', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+10, 2, 'Given:<br/>3. class Alpha {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static String s = " ";<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;protected Alpha() { s += "alpha "; }<br/>6. }<br/>7. class SubAlpha extends Alpha {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;private SubAlpha() { s += "sub "; }<br/>9. }<br/>10. public class SubSubAlpha extends Alpha {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;private SubSubAlpha() { s += "subsub "; }<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new SubSubAlpha();<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>16. }<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. subsub', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. sub subsub', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. alpha subsub', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. alpha sub subsub', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+11, 2, 'Given:<br/>3. class Building {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;Building() { System.out.print("b "); }<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;Building(String name) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this(); System.out.print("bn " + name);<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>8. }<br/>9. public class House extends Building {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;House() { System.out.print("h "); }<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;House(String name) {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this(); System.out.print("hn " + name);<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) { new House("x "); }<br/>15. }<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. h hn x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. hn x h', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. b h hn x', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. b hn x h', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. bn x h hn x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. b bn x h hn x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'G. bn x b h hn x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'H. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+12, 2, 'Given:<br/>3. class Mammal {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;String name = "furry ";<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;String makeNoise() { return "generic noise"; }<br/>6. }<br/>7. class Zebra extends Mammal {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;String name = "stripes ";<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;String makeNoise() { return "bray"; }<br/>10. }<br/>11. public class ZooKeeper {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) { new ZooKeeper().go(); }<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mammal m = new Zebra();<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(m.name + m.makeNoise());<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>17. }<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. furry bray', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. stripes bray', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. furry generic noise', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. stripes generic noise', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+13, 2, 'You’re designing a new online board game in which Floozels are a type of Jammers, Jammers can have Quizels, Quizels are a type of Klakker, and Floozels can have several Floozets. Which of the following fragments represent this design? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'A. import java.util.*;<br/>interface Klakker { }<br/>class Jammer { Set<Quizel> q; }<br/>class Quizel implements Klakker { }<br/>public class Floozel extends Jammer { List<Floozet> f; }<br/>interface Floozet { }', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'B. import java.util.*;<br/>class Klakker { Set<Quizel> q; }<br/>class Quizel extends Klakker { }<br/>class Jammer { List<Floozel> f; }<br/>class Floozet extends Floozel { }<br/>public class Floozel { Set<Klakker> k; }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'C. import java.util.*;<br/>class Floozet { }<br/>class Quizel implements Klakker { }<br/>class Jammer { List<Quizel> q; }<br/>interface Klakker { }<br/>class Floozel extends Jammer { List<Floozet> f; }', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'D. import java.util.*;<br/>interface Jammer extends Quizel { }<br/>interface Klakker { }<br/>interface Quizel extends Klakker { }<br/>interface Floozel extends Jammer, Floozet { }<br/>interface Floozet { }', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+14, 2, 'Given:<br/>3. class A { }<br/>4. class B extends A { }<br/>5. public class ComingThru {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;static String s = "-";<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A[] aa = new A[2];<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B[] ba = new B[2];<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;sifter(aa);<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;sifter(ba);<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;sifter(7);<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>14. }<br/>15. static void sifter(A[]... a2) { s += "1"; }<br/>16. static void sifter(B[]... b1) { s += "2"; }<br/>17. static void sifter(B[] b1) { s += "3"; }<br/>18. static void sifter(Object o) { s += "4"; }<br/>19.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'A. -124', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'B. -134', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'C. -424', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'D. -434', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'E. -444', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'F. Compilation fails', 'N');




-- Chapter 3 ------------
-- ------------

SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 3, 'Given:<br/>class CardBoard {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Short story = 200;<br/>&nbsp;&nbsp;&nbsp;&nbsp;CardBoard go(CardBoard cb) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cb = null;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return cb;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CardBoard c1 = new CardBoard();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CardBoard c2 = new CardBoard();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CardBoard c3 = c1.go(c2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c1 = null;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// do Stuff<br/>&nbsp;&nbsp;&nbsp;&nbsp;} <br/>}<br/>When // doStuff is reached, how many objects are eligible for GC?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. 0', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. It is not possible to know', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+1, 3, 'Given:<br/>class Alien {<br/>&nbsp;&nbsp;&nbsp;&nbsp;String invade(short ships) { return "a few"; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;String invade(short... ships) { return "many"; }<br/>}<br/>class Defender {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(new Alien().invade(7));<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. many', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. a few', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. The output is not predictable', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+2, 3, 'Given:<br/>1. class Dims {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[][] a = {{1,2,}, {3,4}};<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[] b = (int[]) a[1];<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Object o1 = a;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[][] a2 = (int[][]) o1;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[] b2 = (int[]) o1;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(b[1]);<br/>9. } }<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. An exception is thrown at runtime', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. Compilation fails due to an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. Compilation fails due to an error on line 5', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'F. Compilation fails due to an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'G. Compilation fails due to an error on line 7', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+3, 3, 'Given:<br/>class Mixer {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Mixer() { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;Mixer(Mixer m) { m1 = m; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;Mixer m1;<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mixer m2 = new Mixer();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mixer m3 = new Mixer(m2); m3.go();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mixer m4 = m3.m1; m4.go();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mixer m5 = m2.m1; m5.go();<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void go() { System.out.print("hi "); }<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. hi', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. hi hi', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. hi hi hi', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. hi, followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. hi hi, followed by an exception', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+4, 3, 'Given:<br/>class Fizz {<br/>&nbsp;&nbsp;&nbsp;&nbsp;int x = 5;<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;final Fizz f1 = new Fizz();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fizz f2 = new Fizz();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fizz f3 = FizzSwitch(f1,f2);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println((f1 == f3) + " " + (f1.x == f3.x));<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;static Fizz FizzSwitch(Fizz x, Fizz y) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;final Fizz z = x;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;z.x = 6;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return z;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. true true', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. false true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. true false', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. false false', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+5, 3, 'Given:<br/>class Bird {<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ System.out.print("b1 "); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;public Bird() { System.out.print("b2 "); }<br/>}<br/>class Raptor extends Bird {<br/>&nbsp;&nbsp;&nbsp;&nbsp;static { System.out.print("r1 "); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;public Raptor() { System.out.print("r2 "); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ System.out.print("r3 "); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;static { System.out.print("r4 "); }<br/>}<br/>class Hawk extends Raptor {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("pre ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Hawk();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("hawk ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. pre b1 b2 r3 r2 hawk', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. pre b2 b1 r2 r3 hawk', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. pre b2 b1 r2 r3 hawk r1 r4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. r1 r4 pre b1 b2 r3 r2 hawk', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. r1 r4 pre b2 b1 r2 r3 hawk', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. pre r1 r4 b1 b2 r3 r2 hawk', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'G. pre r1 r4 b2 b1 r2 r3 hawk', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'H. The order of output cannot be predicted', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'I. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+6, 3, 'Given:<br/>3. public class Bridge {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public enum Suits {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLUBS(20), DIAMONDS(20), HEARTS(30), SPADES(30),<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTRUMP(40) { public int getValue(int bid) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ((bid-1)*30)+40; } };<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Suits(int points) { this.points = points; }<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private int points;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public int getValue(int bid) { return points * bid; }<br/>10. }<br/>11. public static void main(String[] args) {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(Suits.NOTRUMP.getValue(3));<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(Suits.SPADES + " " + Suits.SPADES.points);<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(Suits.values());<br/>15. }<br/>16.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. The output could contain 30', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. The output could contain @bf73fa', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. The output could contain DIAMONDS', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. Compilation fails due to an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. Compilation fails due to an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'F. Compilation fails due to an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'G. Compilation fails due to an error on line 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'H. Compilation fails due to an error within lines 12 to 14', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+7, 3, 'Given:<br/>3. public class Ouch {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static int ouch = 7;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Ouch().go(ouch);<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + ouch);<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;void go(int ouch) {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;ouch++;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;for(int ouch = 3; ouch < 6; ouch++)<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + ouch);<br/>14. }<br/>15.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. 5 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. 5 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. 8 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. 8 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+8, 3, 'Given:<br/>3. public class Bertha {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static String s = "";<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int x = 4; Boolean y = true; short[] sa = {1,2,3};<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doStuff(x, y);<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doStuff(x);<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doStuff(sa, sa);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>11. }<br/>12. static void doStuff(Object o) { s += "1"; }<br/>13. static void doStuff(Object... o) { s += "2"; }<br/>14. static void doStuff(Integer... i) { s += "3"; }<br/>15. static void doStuff(Long L) { s += "4"; }<br/>16.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. 212', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. 232', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. 234', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. 312', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. 332', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. 334', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'G. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+9, 3, 'Given:<br/>3. class Dozens {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;int[] dz = {1,2,3,4,5,6,7,8,9,10,11,12};<br/>5. }<br/>6. public class Eggs {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dozens [] da = new Dozens[3];<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da[0] = new Dozens();<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;Dozens d = new Dozens();<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;da[1] = d;<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;d = null;<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;da[1] = null;<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;// do stuff<br/>15. }<br/>16.}<br/>Which two are true about the objects created within main(), and eligible for garbage collection when line 14 is reached?', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. Three objects were created', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. Four objects were created', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. Five objects were created', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. Zero objects are eligible for GC', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. One object is eligible for GC', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'F. Two objects are eligible for GC', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'G. Three objects are eligible for GC', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+10, 3, 'Given:<br/>3. class Beta { }<br/>4. class Alpha {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;static Beta b1;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;Beta b2;<br/>7. }<br/>8. public class Tester {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;Beta b1 = new Beta(); Beta b2 = new Beta();<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;Alpha a1 = new Alpha(); Alpha a2 = new Alpha();<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;a1.b1 = b1;<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;a1.b2 = b1;<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;a2.b2 = b2;<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;a1 = null; b1 = null; b2 = null;<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;// do stuff<br/>17. }<br/>18.}<br/>When line 16 is reached, how many objects will be eligible for garbage collection?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. 0', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. 1', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. 5', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+11, 3, 'Given:<br/>3. class Box {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;int size;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;Box(int s) { size = s; }<br/>6. }<br/>7. public class Laser {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Box b1 = new Box(5);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;Box[] ba = go(b1, new Box(6));<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;ba[0] = b1;<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;for(Box b : ba) System.out.print(b.size + " ");<br/>13. }<br/>14. static Box[] go(Box b1, Box b2) {<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;b1.size = 4;<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;Box[] ma = {b2, b1};<br/>17. &nbsp;&nbsp;&nbsp;&nbsp;return ma;<br/>18. }<br/>19.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. 4 4', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. 5 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. 6 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. 4 5', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. 5 5', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+12, 3, 'Given:<br/>3. public class Dark {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;int x = 3;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Dark().go1();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;void go1() {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int x;<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;go2(++x);<br/>11. }<br/>12. void go2(int y) {<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;int x = ++y;<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(x);<br/>15. }<br/>16.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. 5', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. An exception is thrown at runtime', 'N');




-- Chapter 4 ------------
-- ------------
SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 4, 'Given:<br/>class Hexy {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer i = 42;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = (i<40)?"life":(i>50)?"universe":"everything";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. null', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. life', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. universe', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. everything', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'F. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+1, 4, 'Given:<br/>1. class Comp2 {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;float f1 = 2.3f;<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;float[][] f2 = {{42.0f}, {1.7f, 2.3f}, {2.6f, 2.7f}};<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;float[] f3 = {2.7f};<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Long x = 42L;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("true");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10.}<br/>And the following five code fragments:<br/>F1. if(f1 == f2)<br/>F2. if(f1 == f2[2][1])<br/>F3. if(x == f2[0][0])<br/>F4. if(f1 == f2[1,1])<br/>F5. if(f3 == f2[2])<br/>What is true?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. One of them will compile, only one will be true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. Two of them will compile, only one will be true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. Two of them will compile, two will be true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. Three of them will compile, only one will be true', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. Three of them will compile, exactly two will be true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'F. Three of them will compile, exactly three will be true', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+2, 4, 'Given:<br/>class Fork {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(args.length == 1 | args[1].equals("test")) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("test case");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("production " + args[0]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>And the command-line invocation:<br/>java Fork live2<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. test case', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. production live2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. test case live2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. An exception is thrown at runtime', 'Y');

-- ------------

INSERT INTO `question` VALUES (@questionId+3, 4, 'Given:<br/>class Feline {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Long x = 42L;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Long y = 44L;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + 7 + 2 + " ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(foo() + x + 5 + " ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(x + y + foo());<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;static String foo() { return "foo"; }<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. 9 foo47 86foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. 9 foo47 4244foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. 9 foo425 86foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. 9 foo425 4244foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. 72 foo47 86foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. 72 foo47 4244foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'G. 72 foo425 86foo', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'H. 72 foo425 4244foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'I. Compilation fails', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+4, 4, 'Given:<br/>3. public class Twisty {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;{ index = 1; }<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;int index;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Twisty().go();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;int [][] dd = {{9,8,7}, {6,5,4}, {3,2,1,0}};<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(dd[index++][index++]);<br/>12. }<br/>13.}<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. 4', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'G. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+5, 4, 'Given:<br/>3. public class McGee {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Days d1 = Days.TH;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Days d2 = Days.M;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(Days d: Days.values()) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(d.equals(Days.F)) break;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d2 = d;<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println((d1 == d2)?"same old" : "newly new");<br/>12. }<br/>13. enum Days {M, T, W, TH, F, SA, SU};<br/>14.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. same old', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. newly new', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. Compilation fails due to multiple errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. Compilation fails due only to an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. Compilation fails due only to an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. Compilation fails due only to an error on line 11', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'G. Compilation fails due only to an error on line 13', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+6, 4, 'Given:<br/>4. public class SpecialOps {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = "";<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Boolean b1 = true;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;boolean b2 = false;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((b2 = false) | (21%5) > 2) s += "x";<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;if(b1 || (b2 == true)) s += "y";<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;if(b2 == true) s += "z";<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>13. }<br/>14.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. x will be included in the output', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. y will be included in the output', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. z will be included in the output', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. An exception is thrown at runtime', 'N');

-- ------------

INSERT INTO `question` VALUES (@questionId+7, 4, 'Given:<br/>3. public class Spock {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int mask = 0;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int count = 0;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( ((5<7) || (++count < 10)) | mask++ < 10 ) mask = mask + 1;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( (6 > 8) ^ false) mask = mask + 10;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( !(mask > 1) && ++count > 1) mask = mask + 100;<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(mask + " " + count);<br/>11. }<br/>12.}<br/>Which two are true about the value of mask and the value of count at line 10?(Choose two.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. mask is 0', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. mask is 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. mask is 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. mask is 10', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. mask is greater than 10', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. count is 0', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'G. count is greater than 0', 'N');


-- ------------

INSERT INTO `question` VALUES (@questionId+8, 4, 'Given:<br/>3. interface Vessel { }<br/>4. interface Toy { }<br/>5. class Boat implements Vessel { }<br/>6. class Speedboat extends Boat implements Toy { }<br/>7. public class Tree {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = "0";<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;Boat b = new Boat();<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;Boat b2 = new Speedboat();<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;Speedboat s2 = new Speedboat();<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;if((b instanceof Vessel) && (b2 instanceof Toy)) s += "1";<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;if((s2 instanceof Vessel) && (s2 instanceof Toy)) s += "2";<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>16. }<br/>17.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. 0', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. 01', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. 02', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. 012', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. An exception is thrown at runtime', 'N');




-- Chapter 5 ------------
-- ------------

SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 5, 'Given two files:<br/>1. class One {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int assert = 0;<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>5. }<br/>1. class Two {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assert(false);<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>5. }<br/>And the four command-line invocations:<br/>javac -source 1.3 One.java<br/>javac -source 1.4 One.java<br/>javac -source 1.3 Two.java<br/>javac -source 1.4 Two.java<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. Only one compilation will succeed', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. Exactly two compilations will succeed', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. Exactly three compilations will succeed', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. All four compilations will succeed', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. No compiler warnings will be produced', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'F. At least one compiler warning will be produced', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+1, 5, 'Given:<br/>class Plane {<br/>&nbsp;&nbsp;&nbsp;&nbsp;static String s = "-";<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Plane().s1();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void s1() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try { s2(); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;catch (Exception e) { s += "c"; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void s2() throws Exception {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s3(); s += "2";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s3(); s += "2b";<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void s3() throws Exception {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Exception();<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. -', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. -c', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. -c2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. -2c', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. -c22b', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'F. -2c2b', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'G. -2c2bc', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'H. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+2, 5, 'Given:<br/>try { int x = Integer.parseInt("two"); }<br/>Which could be used to create an appropriate catch block? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. ClassCastException', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. IllegalStateException', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. NumberFormatException', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. IllegalArgumentException', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. ExceptionInInitializerError', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'F. ArrayIndexOutOfBoundsException', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+3, 5, 'Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. It is appropriate to use assertions to validate arguments to methods marked public', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. It is appropriate to catch and handle assertion errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. It is NOT appropriate to use assertions to validate command-line arguments', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. It is appropriate to use assertions to generate alerts when you reach code that should not be reachable', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. It is NOT appropriate for assertions to change a program’s state', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+4, 5, 'Given:<br/>1. class Loopy {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[] x = {7,6,5,4,3,2,1};<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(y + " ");<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. }<br/>8.}<br/>Which, inserted independently at line 4, compiles? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. for(int y : x) {', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. for(x : int y) {', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. int y = 0; for(y : x) {', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. for(int y=0, z=0; z<x.length; z++) { y = x[z];', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. for(int y=0, int z=0; z<x.length; z++) { y = x[z];', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. int y = 0; for(int z=0; z<x.length; z++) { y = x[z];', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+5, 5, 'Given:<br/>class Emu {<br/>&nbsp;&nbsp;&nbsp;&nbsp;static String s = "-";<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Exception();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception e) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try { throw new Exception();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception ex) { s += "ic "; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Exception(); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;catch (Exception x) { s += "mc "; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;finally { s += "mf "; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} finally { s += "of "; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>&nbsp;&nbsp;&nbsp;&nbsp;} <br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. -ic of', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. -mf of', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. -mc mf', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. -ic mf of', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. -ic mc mf of', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. -ic mc of mf', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'G. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+6, 5, 'Given:<br/>3. class SubException extends Exception { }<br/>4. class SubSubException extends SubException { }<br/>5<br/>6. public class CC { void doStuff() throws SubException { } }<br/>7<br/>8. class CC2 extends CC { void doStuff() throws SubSubException { } }<br/>9<br/>10. class CC3 extends CC { void doStuff() throws Exception { } }<br/>11<br/>12. class CC4 extends CC { void doStuff(int x) throws Exception { } }<br/>13<br/>14. class CC5 extends CC { void doStuff() { } }<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. Compilation succeeds', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. Compilation fails due to an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. Compilation fails due to an error on line 10', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. Compilation fails due to an error on line 12', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. Compilation fails due to an error on line 14', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+7, 5, 'Given:<br/>3. public class Ebb {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static int x = 7;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = "";<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int y = 0; y < 3; y++) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x++;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch(x) {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 8: s += "8 ";<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 9: s += "9 ";<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 10: { s+= "10 "; break; }<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default: s += "d ";<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 13: s+= "13 ";<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>17. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>18. }<br/>19. static { x++; }<br/>20.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. 9 10 d', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. 8 9 10 d', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. 9 10 10 d', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. 9 10 10 d 13', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. 8 9 10 10 d 13', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. 8 9 10 9 10 10 d 13', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'G. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+8, 5, 'Given:<br/>3. class Infinity { }<br/>4. public class Beyond extends Infinity {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;static Integer i;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int sw = (int)(Math.random() * 3);<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch(sw) {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 0: { for(int x = 10; x > 5; x++)<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x > 10000000) x = 10;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break; }<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 1: { int y = 7 * i; break; }<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 2: { Infinity inf = new Beyond();<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Beyond b = (Beyond)inf; }<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>16. }<br/>17.}<br/>And given that line 7 will assign the value 0, 1, or 2 to sw, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. A ClassCastException might be thrown', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. A StackOverflowError might be thrown', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. A NullPointerException might be thrown', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. An IllegalStateException might be thrown', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. The program might hang without ever completing', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'G. The program will always complete without exception', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+9, 5, 'Given:<br/>3. public class Circles {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int[] ia = {1,3,5,7,9};<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int x : ia) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int j = 0; j < 3; j++) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x > 4 && x < 8) continue;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + x);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(j == 1) break;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue;<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue;<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>15. }<br/>16.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. 1 3 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. 5 5 7 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. 1 3 3 9 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. 1 1 3 3 9 9', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. 1 1 1 3 3 3 9 9 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'F. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+10, 5, 'Given:<br/>3. public class OverAndOver {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static String s = "";<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s += "1";<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Exception();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception e) { s += "2";<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;} finally { s += "3"; doStuff(); s += "4";<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>13. }<br/>14. static void doStuff() { int x = 0; int y = 7/x; }<br/>15.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. 12', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. 13', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. 123', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. 1234', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. 123 followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'G. 1234 followed by an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'H. An exception is thrown with no other output', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+11, 5, 'Given:<br/>3. public class Wind {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach:<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int j=0; j<5; j++) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int k=0; k< 3; k++) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" " + j);<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(j==3 && k==1) break foreach;<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(j==0 || j==2) break;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>13. }<br/>14.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. 0 1 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. 1 1 1 3 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. 0 1 1 1 2 3 3', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. 1 1 1 3 3 4 4 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. 0 1 1 1 2 3 3 4 4 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+12, 5, 'Given:<br/>3. public class Gotcha {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>6<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;go();<br/>10. }<br/>11.}<br/>And given the following three code fragments:<br/>I. new Gotcha().go();<br/>II. try { new Gotcha().go(); }<br/>catch (Error e) { System.out.println("ouch"); }<br/>III. try { new Gotcha().go(); }<br/>catch (Exception e) { System.out.println("ouch"); }<br/>When fragments I - III are added, independently, at line 5, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. Some will not compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. They will all compile', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. All will complete normally', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. None will complete normally', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. Only one will complete normally', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. Two of them will complete normally', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+13, 5, 'Given:<br/>3. public class Clumsy {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int j = 7;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assert(++j > 7);<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assert(++j > 8): "hi";<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assert(j > 10): j=12;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assert(j==12): doStuff();<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;assert(j==12): new Clumsy();<br/>11. }<br/>12. static void doStuff() { }<br/>13. }<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'A. Compilation succeeds', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'B. Compilation fails due to an error on line 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'C. Compilation fails due to an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'D. Compilation fails due to an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'E. Compilation fails due to an error on line 9', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'F. Compilation fails due to an error on line 10', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+14, 5, 'Given:<br/>1. public class Frisbee {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int x = 0;<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(7/x);<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>6. }<br/>And given the following four code fragments:<br/>I. public static void main(String[] args) {<br/>II. public static void main(String[] args) throws Exception {<br/>III. public static void main(String[] args) throws IOException {<br/>IV. public static void main(String[] args) throws RuntimeException {<br/>If the four fragments are inserted independently at line 4, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'A. All four will compile and execute without exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'B. All four will compile and execute and throw an exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'C. Some, but not all, will compile and execute without exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'D. Some, but not all, will compile and execute and throw an exception', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'E. When considering fragments II, III, and IV, of those that will compile, adding a try/catch block around line 6 will cause compilation to fail', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+15, 5, 'Given:<br/>2. class MyException extends Exception { }<br/>3. class Tire {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;void doStuff() { }<br/>5. }<br/>6. public class Retread extends Tire {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Retread().doStuff();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10. // insert code here<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(7/0);<br/>12. }<br/>13.}<br/>And given the following four code fragments:<br/>I. void doStuff() {<br/>II. void doStuff() throws MyException {<br/>III. void doStuff() throws RuntimeException {<br/>IV. void doStuff() throws ArithmeticException {<br/>When fragments I - IV are added, independently, at line 10, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'A. None will compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'B. They will all compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'C. Some, but not all, will compile', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'D. All of those that compile will throw an exception at runtime', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'E. None of those that compile will throw an exception at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'F. Only some of those that compile will throw an exception at runtime', 'N');




-- Chapter 6---
-- ------------
SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 6, 'Given:<br/>import java.util.regex.*;<br/>class Regex2 {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pattern p = Pattern.compile(args[0]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matcher m = p.matcher(args[1]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;boolean b = false;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while(b = m.find()) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(m.start() + m.group());<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>And the command line:<br/>java Regex2 "\d*" ab34ef<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. 234', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. 334', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. 2334', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. 0123456', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. 01234456', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'F. 12334567', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'G. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+1, 6, 'Given:<br/>import java.io.*;<br/>class Player {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Player() { System.out.print("p"); }<br/>}<br/>class CardPlayer extends Player implements Serializable {<br/>&nbsp;&nbsp;&nbsp;&nbsp;CardPlayer() { System.out.print("c"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CardPlayer c1 = new CardPlayer();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FileOutputStream fos = new FileOutputStream("play.txt");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectOutputStream os = new ObjectOutputStream(fos);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.writeObject(c1);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FileInputStream fis = new FileInputStream("play.txt");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectInputStream is = new ObjectInputStream(fis);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CardPlayer c2 = (CardPlayer) is.readObject();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception x ) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. pc', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. pcc', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. pcp', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. pcpc', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'F. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+2, 6, 'Given:<br/>class TKO {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = "-";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer x = 343;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;long L343 = 343L;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x.equals(L343)) s += ".e1 ";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x.equals(343)) s += ".e2 ";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Short s1 = (short)((new Short((short)343)) / (new Short((short)49)));<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(s1 == 7) s += "=s ";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(s1 < new Integer(7+1)) s += "fly ";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Which of the following will be included in the output String s? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. .e1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. .e2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. =s', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. fly', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. None of the above', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'F. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'G. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+3, 6, 'Given:<br/>import java.io.*;<br/>class Keyboard { }<br/>public class Computer implements Serializable {<br/>&nbsp;&nbsp;&nbsp;&nbsp;private Keyboard k = new Keyboard();<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computer c = new Computer();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c.storeIt(c);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void storeIt(Computer c) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectOutputStream os = new ObjectOutputStream(<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new FileOutputStream("myFile"));<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.writeObject(c);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("done");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception x) {System.out.println("exc"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. exc', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. done', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. Exactly one object is serialized', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. Exactly two objects are serialized', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+4, 6, 'Given:<br/>import java.io.*;<br/>class Directories {<br/>&nbsp;&nbsp;&nbsp;&nbsp;static String [] dirs = {"dir1", "dir2"};<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (String d : dirs) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code 1 here<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File file = new File(path, args[0]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code 2 here<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>and that the invocation<br/>java Directories file2.txt<br/>is issued from a directory that has two subdirectories, "dir1" and "dir2", and that "dir1" has a file "file1.txt" and "dir2" has a file "file2.txt", and the output is "false true"; which set(s) of code fragments must be inserted? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. String path = d;<br/>System.out.print(file.exists() + " ");', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. String path = d;<br/>System.out.print(file.isFile() + " ");', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. String path = File.separator + d;<br/>System.out.print(file.exists() + " ");', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. String path = File.separator + d;<br/>System.out.print(file.isFile() + " ");', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+5, 6, 'Given:<br/>import java.io.*;<br/>public class TestSer {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SpecialSerial s = new SpecialSerial();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectOutputStream os = new ObjectOutputStream(<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new FileOutputStream("myFile"));<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.writeObject(s); os.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(++s.z + " ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ObjectInputStream is = new ObjectInputStream(<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new FileInputStream("myFile"));<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SpecialSerial s2 = (SpecialSerial)is.readObject();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s2.y + " " + s2.z);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception x) {System.out.println("exc"); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>class SpecialSerial implements Serializable {<br/>&nbsp;&nbsp;&nbsp;&nbsp;transient int y = 7;<br/>&nbsp;&nbsp;&nbsp;&nbsp;static int z = 9;<br/>}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. The output is 10 0 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. The output is 10 0 10', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. The output is 10 7 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. The output is 10 7 10', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. In order to alter the standard deserialization process you would implement the readObject() method in SpecialSerial', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'G. In order to alter the standard deserialization process you would implement the defaultReadObject() method in SpecialSerial', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+6, 6, 'Given:<br/>3. public class Theory {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s1 = "abc";<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s2 = s1;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s1 += "d";<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s1 + " " + s2 + " " + (s1==s2));<br/>9<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;StringBuffer sb1 = new StringBuffer("abc");<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;StringBuffer sb2 = sb1;<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;sb1.append("d");<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(sb1 + " " + sb2 + " " + (sb1==sb2));<br/>14. }<br/>15.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. The first line of output is abc abc true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. The first line of output is abc abc false', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. The first line of output is abcd abc false', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. The second line of output is abcd abc false', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'F. The second line of output is abcd abcd true', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'G. The second line of output is abcd abcd false', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+7, 6, 'Given:<br/>3. import java.io.*;<br/>4. public class ReadingFor {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FileReader fr = new FileReader("myfile.txt");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BufferedReader br = new BufferedReader(fr);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while((s = br.readLine()) != null)<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(s);<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;br.flush();<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;} catch (IOException e) { System.out.println("io error"); }<br/>16. }<br/>17.}<br/>And given that myfile.txt contains the following two lines of data:<br/>ab<br/>cd<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. ab', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. abcd', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. ab<br/>cd', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. a<br/>b<br/>c<br/>d', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. Compilation fails', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+8, 6, 'Given:<br/>3. import java.io.*;<br/>4. public class Talker {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Console c = System.console();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String u = c.readLine("%s", "username: ");<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("hello " + u);<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String pw;<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;if(c != null && (pw = c.readPassword("%s", "password: ")) != null)<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// check for valid password<br/>12. }<br/>13.}<br/>If line 6 creates a valid Console object, and if the user enters fred as a username and 1234 as a password, what is the result? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. username:<br/>password:', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. username: fred<br/>password:', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. username: fred<br/>password: 1234', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+9, 6, 'Given:<br/>3. import java.io.*;<br/>4. class Vehicle { }<br/>5. class Wheels { }<br/>6. class Car extends Vehicle implements Serializable { }<br/>7. class Ford extends Car { }<br/>8. class Dodge extends Car {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;Wheels w = new Wheels();<br/>10.}<br/>Instances of which class(es) can be serialized? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. Car', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. Ford', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. Dodge', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. Wheels', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. Vehicle', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+10, 6, 'Given:<br/>3. import java.text.*;<br/>4. public class Slice {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String s = "987.123456";<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;double d = 987.123456d;<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NumberFormat nf = NumberFormat.getInstance();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nf.setMaximumFractionDigits(5);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(nf.format(d) + " ");<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;try {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(nf.parse(s));<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception e) { System.out.println("got exc"); }<br/>14. }<br/>15.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. The output is 987.12345 987.12345', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. The output is 987.12346 987.12345', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. The output is 987.12345 987.123456', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. The output is 987.12346 987.123456', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. The try/catch block is unnecessary', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. The code compiles and runs without exception', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'G. The invocation of parse() must be placed within a try/catch block', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+11, 6, 'Given:<br/>3. import java.util.regex.*;<br/>4. public class Archie {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pattern p = Pattern.compile(args[0]);<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matcher m = p.matcher(args[1]);<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int count = 0;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while(m.find())<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.print(count);<br/>12. }<br/>13.}<br/>And given the command line invocation:<br/>java Archie "\d+" ab2c4d67<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. 0', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. 3', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+12, 6, 'Given:<br/>3. import java.util.*;<br/>4. public class Looking {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String input = "1 2 a 3 45 6";<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scanner sc = new Scanner(input);<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int x = 0;<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x = sc.nextInt();<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(x + " ");<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;} while (x!=0);<br/>13. }<br/>14.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. 1 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. 1 2 3 45 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. 1 2 3 4 5 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. 1 2 a 3 45 6', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. 1 2 followed by an exception', 'Y');




-- Chapter 7---
-- ------------

SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 7, 'Given:<br/>public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;// INSERT DECLARATION HERE<br/>&nbsp;&nbsp;&nbsp;&nbsp;for (int i = 0; i <= 10; i++) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;List<Integer> row = new ArrayList<Integer>();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (int j = 0; j <= 10; j++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;row.add(i * j);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;table.add(row);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;for (List<Integer> row : table)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(row);<br/>}<br/>Which statements could be inserted at // INSERT DECLARATION HERE to allow this code to compile and run? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. List<List<Integer>> table = new List<List<Integer>>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. List<List<Integer>> table = new ArrayList<List<Integer>>();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. List<List<Integer>> table = new ArrayList<ArrayList<Integer>>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. List<List, Integer> table = new List<List, Integer>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. List<List, Integer> table = new ArrayList<List, Integer>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'F. List<List, Integer> table = new ArrayList<ArrayList, Integer>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'G. None of the above', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+1, 7, 'Which statements are true about comparing two instances of the same class, given that the equals() and hashCode() methods have been properly overridden? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. If the equals() method returns true, the hashCode() comparison == might return false', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. If the equals() method returns false, the hashCode() comparison == might return true', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. If the hashCode() comparison == returns true, the equals() method must return true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. If the hashCode() comparison == returns true, the equals() method might return true', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. If the hashCode() comparison != returns true, the equals() method might return true', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+2, 7, 'Given:<br/>public static void before() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Set set = new TreeSet();<br/>&nbsp;&nbsp;&nbsp;&nbsp;set.add("2");<br/>&nbsp;&nbsp;&nbsp;&nbsp;set.add(3);<br/>&nbsp;&nbsp;&nbsp;&nbsp;set.add("1");<br/>&nbsp;&nbsp;&nbsp;&nbsp;Iterator it = set.iterator();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (it.hasNext())<br/>&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(it.next() + " ");<br/>}<br/>Which statements are true?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. The before() method will print 1 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. The before() method will print 1 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. The before() method will print three numbers, but the order cannot be determined', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. The before() method will not compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. The before() method will throw an exception at runtime', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+3, 7, 'Given:<br/>import java.util.*;<br/>class MapEQ {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map<ToDos, String> m = new HashMap<ToDos, String>();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ToDos t1 = new ToDos("Monday");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ToDos t2 = new ToDos("Monday");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ToDos t3 = new ToDos("Tuesday");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m.put(t1, "doLaundry");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m.put(t2, "payBills");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m.put(t3, "cleanAttic");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(m.size());<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>class ToDos{<br/>&nbsp;&nbsp;&nbsp;&nbsp;String day;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ToDos(String d) { day = d; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;public boolean equals(Object o) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ((ToDos)o).day == this.day;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;// public int hashCode() { return 9; }<br/>}<br/>Which is correct? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. As the code stands it will not compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. As the code stands the output will be 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. As the code stands the output will be 3', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. If the hashCode() method is uncommented the output will be 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. If the hashCode() method is uncommented the output will be 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. If the hashCode() method is uncommented the code will not compile', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+4, 7, 'Given:<br/>12. public class AccountManager {<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;private Map accountTotals = new HashMap();<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;private int retirementFund;<br/>15<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;public int getBalance(String accountName) {<br/>17. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Integer total = (Integer) accountTotals.get(accountName);<br/>18. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (total == null)<br/>19. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;total = Integer.valueOf(0);<br/>20. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return total.intValue();<br/>21. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>23. &nbsp;&nbsp;&nbsp;&nbsp;public void setBalance(String accountName, int amount) {<br/>24. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accountTotals.put(accountName, Integer.valueOf(amount));<br/>25. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>26. }<br/>This class is to be updated to make use of appropriate generic types, with no changes in behavior (for better or worse). Which of these steps could be performed? (Choose three.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. Replace line 13 with<br/>private Map<String, int> accountTotals = new HashMap<String, int>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. Replace line 13 with<br/>private Map<String, Integer> accountTotals = new HashMap<String, Integer>();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. Replace line 13 with<br/>private Map<String<Integer>> accountTotals = new HashMap<String<Integer>>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. Replace lines 17–20 with<br/>int total = accountTotals.get(accountName);<br/>if (total == null)<br/>total = 0;<br/>return total;', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. Replace lines 17–20 with<br/>Integer total = accountTotals.get(accountName);<br/>if (total == null)<br/>total = 0;<br/>return total;', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. Replace lines 17–20 with<br/>return accountTotals.get(accountName);', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'G. Replace line 24 with<br/>accountTotals.put(accountName, amount);', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'H. Replace line 24 with<br/>accountTotals.put(accountName, amount.intValue());', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+5, 7, 'Given:<br/>interface Hungry<E> { void munch(E x); }<br/>interface Carnivore<E extends Animal> extends Hungry<E> {}<br/>interface Herbivore<E extends Plant> extends Hungry<E> {}<br/>abstract class Plant {}<br/>class Grass extends Plant {}<br/>abstract class Animal {}<br/>class Sheep extends Animal implements Herbivore<Sheep> {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void munch(Sheep x) {}<br/>}<br/>class Wolf extends Animal implements Carnivore<Sheep> {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void munch(Sheep x) {}<br/>}<br/>Which of the following changes (taken separately) would allow this code to compile? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. Change the Carnivore interface to<br/>interface Carnivore<E extends Plant> extends Hungry<E> {}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. Change the Herbivore interface to<br/>interface Herbivore<E extends Animal> extends Hungry<E> {}', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. Change the Sheep class to<br/>class Sheep extends Animal implements Herbivore<Plant> {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void munch(Grass x) {}<br/>}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. Change the Sheep class to<br/>class Sheep extends Plant implements Carnivore<Wolf> {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void munch(Wolf x) {}<br/>}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. Change the Wolf class to<br/>class Wolf extends Animal implements Herbivore<Grass> {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void munch(Grass x) {}<br/>}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'F. No changes are necessary', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+6, 7, 'Which collection class(es) allows you to grow or shrink its size and provides indexed access to its elements, but whose methods are not synchronized? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. java.util.HashSet', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. java.util.LinkedHashSet', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. java.util.List', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. java.util.ArrayList', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. java.util.Vector', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'F. java.util.PriorityQueue', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+7, 7, 'Given a method declared as<br/>public static <E extends Number> List<E> process(List<E> nums)<br/>A programmer wants to use this method like this<br/>// INSERT DECLARATIONS HERE<br/>output = process(input);<br/>Which pairs of declarations could be placed at // INSERT DECLARATIONS HERE to allow the code to compile? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. ArrayList<Integer> input = null;<br/>ArrayList<Integer> output = null;', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. ArrayList<Integer> input = null;<br/>List<Integer> output = null;', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. ArrayList<Integer> input = null;<br/>List<Number> output = null;', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. List<Number> input = null;<br/>ArrayList<Integer> output = null;', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. List<Number> input = null;<br/>List<Number> output = null;', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. List<Integer> input = null;<br/>List<Integer> output = null;', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'G. None of the above', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+8, 7, 'Given the proper import statement(s), and<br/>13. PriorityQueue<String> pq = new PriorityQueue<String>();<br/>14. pq.add("2");<br/>15. pq.add("4");<br/>16. System.out.print(pq.peek() + " ");<br/>17. pq.offer("1");<br/>18. pq.add("3");<br/>19. pq.remove("1");<br/>20. System.out.print(pq.poll() + " ");<br/>21. if(pq.remove("2")) System.out.print(pq.poll() + " ");<br/>22. System.out.println(pq.poll() + " " + pq.peek());<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. 2 2 3 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. 2 2 3 4', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. 4 3 3 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. 2 2 3 3 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. 4 3 3 3 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. 2 2 3 3 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'G. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'H. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+9, 7, 'Given:<br/>3. import java.util.*;<br/>4. public class Mixup {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;Object o = new Object();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;s.add("o");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;s.add(o);<br/>10. }<br/>11.}<br/>And these three fragments:<br/>I. Set s = new HashSet();<br/>II. TreeSet s = new TreeSet();<br/>III. LinkedHashSet s = new LinkedHashSet();<br/>When fragments I, II, or III are inserted, independently, at line 7, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. Fragment I compiles', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. Fragment II compiles', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. Fragment III compiles', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. Fragment I executes without exception', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. Fragment II executes without exception', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'F. Fragment III executes without exception', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+10, 7, 'Given:<br/>3. import java.util.*;<br/>4. class Turtle {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;int size;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public Turtle(int s) { size = s; }<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public boolean equals(Object o) { return (this.size == ((Turtle)o).size); }<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>9. }<br/>10.public class TurtleTest {<br/>11. public static void main(String[] args) {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;LinkedHashSet<Turtle> t = new LinkedHashSet<Turtle>();<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;t.add(new Turtle(1)); t.add(new Turtle(2)); t.add(new Turtle(1));<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(t.size());<br/>15. }<br/>16.}<br/>And these two fragments:<br/>I. public int hashCode() { return size/5; }<br/>II. // no hashCode method declared<br/>If fragment I or II is inserted, independently, at line 8, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. If fragment I is inserted, the output is 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. If fragment I is inserted, the output is 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. If fragment II is inserted, the output is 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. If fragment II is inserted, the output is 3', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. If fragment I is inserted, compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. If fragment II is inserted, compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+11, 7, 'Given the proper import statement(s), and:<br/>13. TreeSet<String> s = new TreeSet<String>();<br/>14. TreeSet<String> subs = new TreeSet<String>();<br/>15. s.add("a"); s.add("b"); s.add("c"); s.add("d"); s.add("e");<br/>16<br/>17. subs = (TreeSet)s.subSet("b", true, "d", true);<br/>18. s.add("g");<br/>19. s.pollFirst();<br/>20. s.pollFirst();<br/>21. s.add("c2");<br/>22. System.out.println(s.size() +" "+ subs.size());<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. The size of s is 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. The size of s is 5', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. The size of s is 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. The size of subs is 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. The size of subs is 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. The size of subs is 3', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'G. The size of subs is 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'H. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+12, 7, 'Given:<br/>3. import java.util.*;<br/>4. public class Magellan {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TreeMap<String, String> myMap = new TreeMap<String, String>();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myMap.put("a", "apple"); myMap.put("d", "date");<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myMap.put("f", "fig"); myMap.put("p", "pear");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("1st after mango: " + // sop 1<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myMap.higherKey("f"));<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println("1st after mango: " + // sop 2<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myMap.ceilingKey("f"));<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println("1st after mango: " + // sop 3<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;myMap.floorKey("f"));<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;SortedMap<String, String> sub = new TreeMap<String, String>();<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;sub = myMap.tailMap("f");<br/>17. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println("1st after mango: " + // sop 4<br/>18. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sub.firstKey());<br/>19. }<br/>20.}<br/>Which of the System.out.println statements will produce the output 1st after mango: p? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. sop 1', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. sop 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. sop 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. sop 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. None; compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. None; an exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+13, 7, 'Given:<br/>3. import java.util.*;<br/>4. class Business { }<br/>5. class Hotel extends Business { }<br/>6. class Inn extends Hotel { }<br/>7. public class Travel {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;ArrayList<Hotel> go() {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>10. }<br/>11.}<br/>Which, inserted independently at line 9, will compile? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'A. return new ArrayList<Inn>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'B. return new ArrayList<Hotel>();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'C. return new ArrayList<Object>();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'D. return new ArrayList<Business>();', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+14, 7, 'Given:<br/>3. import java.util.*;<br/>4. class Dog { int size; Dog(int s) { size = s; } }<br/>5. public class FirstGrade {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TreeSet<Integer> i = new TreeSet<Integer>();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TreeSet<Dog> d = new TreeSet<Dog>();<br/>9<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;d.add(new Dog(1)); d.add(new Dog(2)); d.add(new Dog(1));<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;i.add(1); i.add(2); i.add(1);<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(d.size() + " " + i.size());<br/>13. }<br/>14.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'A. 1 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'B. 2 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'C. 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'D. 3 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'E. 3 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'F. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'G. An exception is thrown at runtime', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+15, 7, 'Given:<br/>3. import java.util.*;<br/>4. public class GeoCache {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String[] s = {"map", "pen", "marble", "key"};<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Othello o = new Othello();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.sort(s,o);<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(String s2: s) System.out.print(s2 + " ");<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(Arrays.binarySearch(s, "map"));<br/>11. }<br/>12. static class Othello implements Comparator<String> {<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;public int compare(String a, String b) { return b.compareTo(a); }<br/>14. }<br/>15.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'B. The output will contain a 1', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'C. The output will contain a 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'D. The output will contain a –1', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'E. An exception is thrown at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'F. The output will contain "key map marble pen"', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'G. The output will contain "pen marble map key"', 'Y');




-- Chapter 8---
-- ------------
SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 8, 'Which are true about a static nested class? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. You must have a reference to an instance of the enclosing class in order to instantiate it', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. It does not have access to non-static members of the enclosing class', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. Its variables and methods must be static', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. If the outer class is named MyOuter, and the nested class is named MyInner, it can be instantiated using new MyOuter.MyInner();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. It must extend the enclosing class', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+1, 8, 'Given:<br/>class Boo {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Boo(String s) { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;Boo() { }<br/>}<br/>class Bar extends Boo {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Bar() { }<br/>&nbsp;&nbsp;&nbsp;&nbsp;Bar(String s) {super(s);}<br/>&nbsp;&nbsp;&nbsp;&nbsp;void zoo() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Which create an anonymous inner class from within class Bar? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. Boo f = new Boo(24) { };', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. Boo f = new Bar() { };', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. Boo f = new Boo() {String s; };', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. Bar f = new Boo(String s) { };', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. Boo f = new Boo.Bar(String s) { };', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+2, 8, 'Which are true about a method-local inner class? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. It must be marked final', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. It can be marked abstract', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. It can be marked public', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. It can be marked static', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. It can access private members of the enclosing class', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+3, 8, 'Given:<br/>1. public class TestObj {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Object o = new Object() {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public boolean equals(Object obj) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return true;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(o.equals("Fred"));<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. An exception occurs at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. true', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. Fred', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. Compilation fails because of an error on line 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. Compilation fails because of an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. Compilation fails because of an error on line 8', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'G. Compilation fails because of an error on a line other than 3, 4, or 8', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+4, 8, 'Given:<br/>1. public class HorseTest {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;class Horse {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public String name;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public Horse(String s) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name = s;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Object obj = new Horse("Zippo");<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(obj.name);<br/>11. }<br/>12.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. An exception occurs at runtime at line 10', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. Zippo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. Compilation fails because of an error on line 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. Compilation fails because of an error on line 9', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. Compilation fails because of an error on line 10', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+5, 8, 'Given:<br/>public abstract class AbstractTest {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public int getNum() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 45;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public abstract class Bar {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public int getNum() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 38;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AbstractTest t = new AbstractTest() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public int getNum() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 22;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AbstractTest.Bar f = t.new Bar() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public int getNum() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 57;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(f.getNum() + " " + t.getNum());<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. 57 22', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. 45 38', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. 45 57', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. An exception occurs at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'E. Compilation fails', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+6, 8, 'Given:<br/>3. public class Tour {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cathedral c = new Cathedral();<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s.go();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. }<br/>10.class Cathedral {<br/>11. class Sanctum {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;void go() { System.out.println("spooky"); }<br/>13. }<br/>14.}<br/>Which, inserted independently at line 6, compile and produce the output "spooky"? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. Sanctum s = c.new Sanctum();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. c.Sanctum s = c.new Sanctum();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. c.Sanctum s = Cathedral.new Sanctum();', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. Cathedral.Sanctum s = c.new Sanctum();', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. Cathedral.Sanctum s = Cathedral.new Sanctum();', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+7, 8, 'Given:<br/>5. class A { void m() { System.out.println("outer"); } }<br/>6<br/>7. public class TestInners {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new TestInners().go();<br/>10. }<br/>11. void go() {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;new A().m();<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;class A { void m() { System.out.println("inner"); } }<br/>14. }<br/>15. class A { void m() { System.out.println("middle"); } }<br/>16.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. inner', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. outer', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. middle', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+8, 8, 'Given:<br/>3. public class Car {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;class Engine {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Car().go();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10. void go() {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;new Engine();<br/>12. }<br/>13. void drive() { System.out.println("hi"); }<br/>14.}<br/>Which, inserted independently at line 5, produce the output "hi"? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. { Car.drive(); }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. { this.drive(); }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. { Car.this.drive(); }', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. { this.Car.this.drive(); }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. Engine() { Car.drive(); }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. Engine() { this.drive(); }', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'G. Engine() { Car.this.drive(); }', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+9, 8, 'Given:<br/>3. public class City {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;class Manhattan {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void doStuff() throws Exception { System.out.print("x "); }<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;class TimesSquare extends Manhattan {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void doStuff() throws Exception { }<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10. public static void main(String[] args) throws Exception {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;new City().go();<br/>12. }<br/>13. void go() throws Exception { new TimesSquare().doStuff(); }<br/>14.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. x x', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. No output is produced', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. Compilation fails due to multiple errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. Compilation fails due only to an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'F. Compilation fails due only to an error on line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'G. Compilation fails due only to an error on line 10', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'H. Compilation fails due only to an error on line 13', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+10, 8, 'Given:<br/>3. public class Navel {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;private int size = 7;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;private static int length = 3;<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Navel().go();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;void go() {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;int size = 5;<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.println(new Gazer().adder());<br/>12. }<br/>13. class Gazer {<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;int adder() { return size * length; }<br/>15. }<br/>16.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. 15', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. 21', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. An exception is thrown at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. Compilation fails due to multiple errors', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. Compilation fails due only to an error on line 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. Compilation fails due only to an error on line 5', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+11, 8, 'Given:<br/>3. import java.util.*;<br/>4. public class Pockets {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String[] sa = {"nickel", "button", "key", "lint"};<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorter s = new Sorter();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(String s2: sa) System.out.print(s2 + " ");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Arrays.sort(sa,s);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println();<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(String s2: sa) System.out.print(s2 + " ");<br/>12. }<br/>13. class Sorter implements Comparator<String> {<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;public int compare(String a, String b) {<br/>15. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return b.compareTo(a);<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>17. }<br/>18.}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. button key lint nickel<br/>nickel lint key button', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. nickel button key lint<br/>button key lint nickel', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. nickel button key lint<br/>nickel button key lint', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. nickel button key lint<br/>nickel lint key button', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. An exception is thrown at runtime', 'N');




-- Chapter 9---
-- ------------

SELECT @questionId := max(question_id) +1 from question;

INSERT INTO `question` VALUES (@questionId, 9, 'The following block of code creates a Thread using a Runnable target:<br/>Runnable target = new MyRunnable();<br/>Thread myThread = new Thread(target);<br/>Which of the following classes can be used to create the target, so that the preceding code compiles correctly?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'A. public class MyRunnable extends Runnable{public void run(){}}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'B. public class MyRunnable extends Object{public void run(){}}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'C. public class MyRunnable implements Runnable{public void run(){}}', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'D. public class MyRunnable implements Runnable{void run(){}}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId, 'E. public class MyRunnable implements Runnable{public void start(){}}', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+1, 9, 'Given:<br/>3. class MyThread extends Thread {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MyThread t = new MyThread();<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread x = new Thread(t);<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x.start();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;for(int i=0;i<3;++i) {<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(i + "..");<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>13. }<br/>14.}<br/>What is the result of this code?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'B. 1..2..3..', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'C. 0..1..2..3..', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'D. 0..1..2..', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+1, 'E. An exception occurs at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+2, 9, 'Given:<br/>3. class Test {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printAll(args);<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void printAll(String[] lines) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int i=0;i<lines.length;i++){<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(lines[i]);<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread.currentThread().sleep(1000);<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>12. }<br/>13.}<br/>The static method Thread.currentThread() returns a reference to the currently executing Thread object. What is the result of this code?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'A. Each String in the array lines will output, with a 1-second pause between lines', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'B. Each String in the array lines will output, with no pause in between because this method is not executed in a Thread', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'C. Each String in the array lines will output, and there is no guarantee there will be a pause because currentThread() may not retrieve this thread', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'D. This code will not compile', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+2, 'E. Each String in the lines array will print, with at least a one-second pause between lines', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+3, 9, 'Assume you have a class that holds two private variables: a and b. Which of the following pairs can prevent concurrent access problems in that class? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'A. public int read(){return a+b;}<br/>public void set(int a, int b){this.a=a;this.b=b;}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'B. public synchronized int read(){return a+b;}<br/>public synchronized void set(int a, int b){this.a=a;this.b=b;}', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'C. public int read(){synchronized(a){return a+b;}}<br/>public void set(int a, int b){synchronized(a){this.a=a;this.b=b;}}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'D. public int read(){synchronized(a){return a+b;}}<br/>public void set(int a, int b){synchronized(b){this.a=a;this.b=b;}}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'E. public synchronized(this) int read(){return a+b;}<br/>public synchronized(this) void set(int a, int b){this.a=a;this.b=b;}', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+3, 'F. public int read(){synchronized(this){return a+b;}}<br/>public void set(int a, int b){synchronized(this){this.a=a;this.b=b;}}', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+4, 9, 'Given:<br/>1. public class WaitTest {<br/>2. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String [] args) {<br/>3. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("1 ");<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;synchronized(args){<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("2 ");<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;args.wait();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;catch(InterruptedException e){}<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>11. &nbsp;&nbsp;&nbsp;&nbsp;System.out.print("3 ");<br/>12. }<br/>13.}<br/>What is the result of trying to compile and run this program?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'A. It fails to compile because the IllegalMonitorStateException of wait() is not dealt with in line 7', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'B. 1 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'C. 1 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'D. 1 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'E. At runtime, it throws an IllegalMonitorStateException when trying to wait', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+4, 'F. It will fail to compile because it has to be synchronized on the this object', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+5, 9, 'Assume the following method is properly synchronized and called from a thread A on an object B:<br/>wait(2000);<br/>After calling this method, when will the thread A become a candidate to get another turn at the CPU?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'A. After object B is notified, or after two seconds', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'B. After the lock on B is released, or after two seconds', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'C. Two seconds after object B is notified', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+5, 'D. Two seconds after lock B is released', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+6, 9, 'Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'A. The notifyAll() method must be called from a synchronized context', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'B. To call wait(), an object must own the lock on the thread', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'C. The notify() method is defined in class java.lang.Thread', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'D. When a thread is waiting as a result of wait(), it releases its lock', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'E. The notify() method causes a thread to immediately release its lock', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+6, 'F. The difference between notify() and notifyAll() is that notifyAll() notifies all waiting threads, regardless of the object they are waiting on', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+7, 9, 'Given the scenario: This class is intended to allow users to write a series of messages, so that each message is identified with a timestamp and the name of the thread that wrote the message:<br/>public class Logger {<br/>&nbsp;&nbsp;&nbsp;&nbsp;private StringBuilder contents = new StringBuilder();<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void log(String message) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contents.append(System.currentTimeMillis());<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contents.append(": ");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contents.append(Thread.currentThread().getName());<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contents.append(message);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;contents.append("\n");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public String getContents() { return contents.toString(); }<br/>}<br/>How can we ensure that instances of this class can be safely used by multiple threads?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'A. This class is already thread-safe', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'B. Replacing StringBuilder with StringBuffer will make this class thread-safe', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'C. Synchronize the log() method only', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'D. Synchronize the getContents() method only', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'E. Synchronize both log() and getContents()', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+7, 'F. This class cannot be made thread-safe', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+8, 9, 'Given:<br/>public static synchronized void main(String[] args) throws InterruptedException {<br/>&nbsp;&nbsp;&nbsp;&nbsp;Thread t = new Thread();<br/>&nbsp;&nbsp;&nbsp;&nbsp;t.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("X");<br/>&nbsp;&nbsp;&nbsp;&nbsp;t.wait(10000);<br/>&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("Y");<br/>}<br/>What is the result of this code?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'A. It prints X and exits', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'B. It prints X and never exits', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'C. It prints XY and exits almost immeditately', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'D. It prints XY with a 10-second delay between X and Y', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'E. It prints XY with a 10000-second delay between X and Y', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'F. The code does not compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+8, 'G. An exception is thrown at runtime', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+9, 9, 'Given:<br/>class MyThread extends Thread {<br/>&nbsp;&nbsp;&nbsp;&nbsp;MyThread() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" MyThread");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" bar");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public void run(String s) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" baz");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>public class TestThreads {<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main (String [] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread t = new MyThread() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(" foo");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;t.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;} <br/>}<br/>What is the result?', 'ACTIVE', 'SINGLE_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'A. foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'B. MyThread foo', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'C. MyThread bar', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'D. foo bar', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'E. foo bar baz', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'F. bar foo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'G. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+9, 'H. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+10, 9, 'Given:<br/>public class ThreadDemo {<br/>&nbsp;&nbsp;&nbsp;&nbsp;synchronized void a() { actBusy(); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;static synchronized void b() { actBusy(); }<br/>&nbsp;&nbsp;&nbsp;&nbsp;static void actBusy() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread.sleep(1000);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (InterruptedException e) {}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;final ThreadDemo x = new ThreadDemo();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;final ThreadDemo y = new ThreadDemo();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Runnable runnable = new Runnable() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int option = (int) (Math.random() * 4);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch (option) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 0: x.a(); break;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 1: x.b(); break;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 2: y.a(); break;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 3: y.b(); break;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread thread1 = new Thread(runnable);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread thread2 = new Thread(runnable);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thread1.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thread2.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Which of the following pairs of method invocations could NEVER be executing at the same time? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'A. x.a() in thread1, and x.a() in thread2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'B. x.a() in thread1, and x.b() in thread2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'C. x.a() in thread1, and y.a() in thread2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'D. x.a() in thread1, and y.b() in thread2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'E. x.b() in thread1, and x.a() in thread2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'F. x.b() in thread1, and x.b() in thread2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'G. x.b() in thread1, and y.a() in thread2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+10, 'H. x.b() in thread1, and y.b() in thread2', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+11, 9, 'Given:<br/>public class TwoThreads {<br/>&nbsp;&nbsp;&nbsp;&nbsp;static Thread laurel, hardy;<br/>&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laurel = new Thread() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("A");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hardy.sleep(1000);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception e) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("B");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("C");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hardy = new Thread() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("D");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laurel.wait();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} catch (Exception e) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("E");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println("F");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laurel.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hardy.start();<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Which letters will eventually appear somewhere in the output? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'A. A', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'B. B', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'C. C', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'D. D', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'E. E', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'F. F', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'G. The answer cannot be reliably determined', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+11, 'H. The code does not compile', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+12, 9, 'Given:<br/>3. public class Starter implements Runnable {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;void go(long id) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(id);<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(Thread.currentThread().getId() + " ");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>10. }<br/>11. public void run() { go(Thread.currentThread().getId()); }<br/>12.}<br/>And given the following five fragments:<br/>I. new Starter().run();<br/>II. new Starter().start();<br/>III. new Thread(new Starter());<br/>IV. new Thread(new Starter()).run();<br/>V. new Thread(new Starter()).start();<br/>When the five fragments are inserted, one at a time at line 9, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'A. All five will compile', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'B. Only one might produce the output 4 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'C. Only one might produce the output 4 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'D. Exactly two might produce the output 4 4', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'E. Exactly two might produce the output 4 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'F. Exactly three might produce the output 4 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+12, 'G. Exactly three might produce the output 4 2', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+13, 9, 'Given:<br/>3. public class Leader implements Runnable {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread t = new Thread(new Leader());<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;t.start();<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("m1 ");<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;t.join();<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print("m2 ");<br/>10. }<br/>11. public void run() {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;System.out.print("r1 ");<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;System.out.print("r2 ");<br/>14. }<br/>15.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'A. Compilation fails', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'B. The output could be r1 r2 m1 m2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'C. The output could be m1 m2 r1 r2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'D. The output could be m1 r1 r2 m2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'E. The output could be m1 r1 m2 r2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+13, 'F. An exception is thrown at runtime', 'N');

-- ------------


INSERT INTO `question` VALUES (@questionId+14, 9, 'Given:<br/>3. class Dudes {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;static long flag = 0;<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(flag == 0) flag = id;<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int x = 1; x < 3; x++) {<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(flag == id) System.out.print("yo ");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else System.out.print("dude ");<br/>10. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>11. }<br/>12.}<br/>13.public class DudesChat implements Runnable {<br/>14. static Dudes d;<br/>15. public static void main(String[] args) {<br/>16. &nbsp;&nbsp;&nbsp;&nbsp;new DudesChat().go();<br/>17. }<br/>18. void go() {<br/>19. &nbsp;&nbsp;&nbsp;&nbsp;d = new Dudes();<br/>20. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(new DudesChat()).start();<br/>21. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(new DudesChat()).start();<br/>22. }<br/>23. public void run() {<br/>24. &nbsp;&nbsp;&nbsp;&nbsp;d.chat(Thread.currentThread().getId());<br/>25. }<br/>26.}<br/>And given these two fragments:<br/>I. synchronized void chat(long id) {<br/>II. void chat(long id) {<br/>When fragment I or fragment II is inserted at line 5, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'A. An exception is thrown at runtime', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'B. With fragment I, compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'C. With fragment II, compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'D. With fragment I, the output could be yo dude dude yo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'E. With fragment I, the output could be dude dude yo yo', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+14, 'F. With fragment II, the output could be yo dude dude yo', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+15, 9, 'Given:<br/>3. class Chicks {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;synchronized void yack(long id) {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int x = 1; x < 3; x++) {<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(id + " ");<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thread.yield();<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>10.}<br/>11.public class ChicksYack implements Runnable {<br/>12. Chicks c;<br/>13. public static void main(String[] args) {<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;new ChicksYack().go();<br/>15. }<br/>16. void go() {<br/>17. &nbsp;&nbsp;&nbsp;&nbsp;c = new Chicks();<br/>18. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(new ChicksYack()).start();<br/>19. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(new ChicksYack()).start();<br/>20. }<br/>21. public void run() {<br/>22. &nbsp;&nbsp;&nbsp;&nbsp;c.yack(Thread.currentThread().getId());<br/>23. }<br/>24.}<br/>Which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'B. The output could be 4 4 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'C. The output could be 4 4 2 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'D. The output could be 4 4 4 2', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'E. The output could be 2 2 4 4', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+15, 'F. An exception is thrown at runtime', 'Y');

-- ------------


INSERT INTO `question` VALUES (@questionId+16, 9, 'Given:<br/>3. public class Chess implements Runnable {<br/>4. &nbsp;&nbsp;&nbsp;&nbsp;public void run() {<br/>5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;move(Thread.currentThread().getId());<br/>6. &nbsp;&nbsp;&nbsp;&nbsp;}<br/>7. &nbsp;&nbsp;&nbsp;&nbsp;// insert code here<br/>8. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(id + " ");<br/>9. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.out.print(id + " ");<br/>10.&nbsp;&nbsp;&nbsp;&nbsp;}<br/>11.&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {<br/>12. &nbsp;&nbsp;&nbsp;&nbsp;Chess ch = new Chess();<br/>13. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(ch).start();<br/>14. &nbsp;&nbsp;&nbsp;&nbsp;new Thread(new Chess()).start();<br/>15. }<br/>16.}<br/>And given these two fragments:<br/>I. synchronized void move(long id) {<br/>II. void move(long id) {<br/>When either fragment I or fragment II is inserted at line 7, which are true? (Choose all that apply.)', 'ACTIVE', 'MULTI_CHOICE');

INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+16, 'A. Compilation fails', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+16, 'B. With fragment I, an exception is thrown', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+16, 'C. With fragment I, the output could be 4 2 4 2', 'Y');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+16, 'D. With fragment I, the output could be 4 4 2 3', 'N');
INSERT INTO `question_choice` (question_id, description, corrected) VALUES (@questionId+16, 'E. With fragment II, the output could be 2 4 2 4', 'Y');




INSERT INTO `test_detail` SELECT area_id, question_id FROM `question`

