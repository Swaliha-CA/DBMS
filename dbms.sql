/* create table salesman1(salesman_id number(5),name char(15),city char (15),commission decimal(10,2)); */
/*create table order123(ord_no number(5),purch_set number(4),ord_date date,cust_id number (5),salesman_id number (5),foreign key(salesman_id)references salesman(salesman_id));*/
/*create table customer1(cust_id number(5), cust_name char(25),city char(5),grade char(1),salesman_id number(5),foreign key (salesman_id ) references salesman (salesman_id));*/
/*insert into salesman1 values (&salesman_id,'&name','&city',&commission);*/
/*insert into order123 values (&ord_no,&purch_set,&ord_date,&cust_id,&salesman_id);*/
/*create table nobel_win123(year number(7),subject char(30),winner char(67),country char(9),cat char(10));*/
/*insert into nobel_win123 values(&year,'&subject','&winner','&country','&cat');*/
/*select distinct subject from nobel_win123;*/
/*select year from nobel_win123 where country='india';*/
/*select winner from nobel_win123 where country='india' and year=2024;*/
/*select year,subject,country from nobel_win123 where year <=1978;*/
/*select year from nobel_win123 where winner like 'devika%';*/
/*desc nobel_win123;*/
/*select *from nobel_win123;*/
/*select *from nobel_win123 where subject not like 'a%' order by year asc;*/
/*create table products(p_id number(10),p_price number(20),p_name char(10));*/
/*insert into products values(&p_id,&p_price,'&p_name');*/
/*select min(p_price) as minimum_price from products;*/
/*select max(p_price) as maximum_price from products;*/
/*select count(p_id) as total_no_of_products from products;*/
select avg(p_price) os average_price from products;





