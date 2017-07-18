//Add amount column to table summary
ALTER TABLE summary
ADD amount decimal(5,2);

//Change data type of column
ALTER TABLE summary
MODIFY amount int;

//Change name of column
ALTER TABLE summary
CHANGE amount amount2 int;

//Add column constraint
ALTER TABLE summary
ADD constraint check (amount2 >= 0);



//Show detail of table
desc summary;
SHOW CREATE TABLE summary;
SHOW TABLE STATUS FROM somkiat LIKE 'summary';
mysqlshow -uroot -p1234 --keys somkiat summary
