-- 1

SELECT t1.first_name, t1.surname FROM reststaff t1 INNER JOIN restbill t2 ON t1.staff_no = t2.waiter_no WHERE t2.cust_name = "Tanya Singh";

-- 2

SELECT DISTINCT t1.room_date FROM restroom_management t1 INNER JOIN reststaff t2 ON t1.headwaiter = t2.staff_no WHERE t2.first_name = "Charles" AND t1.room_name = "Green" AND t1.room_date LIKE "1602%";

-- 3

SELECT DISTINCT t1.first_name, t1.surname FROM reststaff t1 INNER JOIN reststaff t2 ON a.headwaiter = t2.headwaiter WHERE t2.first_name = "Zoe" AND t2.surname = "Ball" AND t1.staff_no != t2.staff_no;

-- 4

SELECT t1.cust_name, t1.bill_total, t2.first_name, t2.surname FROM restbill t1 INNER JOIN reststaff t2 ON t1.waiter_no = t2.staff_no ORDER BY t1.bill_total DESC;

-- 5

SELECT t3.first_name, t3.surname FROM reststaff t1 INNER JOIN restbill t2 ON t1.staff_no = t2.waiter_no INNER JOIN reststaff t3 ON t1.headwaiter = t3.headwaiter WHERE t2.bill_no = 14 OR t2.bill_no = 17;

-- 6

SELECT t1.first_name, t1.surname FROM restStaff t1 INNER JOIN restRoom_management t2 ON t2.headwaiter= t1.staff_no OR t1.headwaiter= t2.headwaiter WHERE t2.room_name= "Blue" AND t2.room_date= "160312";