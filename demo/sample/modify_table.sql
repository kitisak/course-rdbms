//Add amount column to table summary
ALTER TABLE summary
ADD amount decimal(5,2);

//Rename table
rename table summary to new_summary;

//Change data type of column
ALTER TABLE summary
MODIFY amount int;

//Change name of column
ALTER TABLE summary
CHANGE amount amount2 int;

//Add column constraint
ALTER TABLE summary
ADD constraint check (amount2 >= 0);

//Add table constraint
// 1. Add Primary KEY
ALTER TABLE summary
ADD PRIMARY KEY(isbn);

ALTER TABLE `table name`
ADD column `id` int(10) unsigned primary KEY AUTO_INCREMENT;

// 2. Add FOREIGN KEY
ALTER TABLE summary
ADD CONSTRAINT fk_isbn
FOREIGN KEY (isbn) REFERENCES book(isbn);


CREATE TABLE book(
  isbn varchar(20) primary key
);

// 3. Add INDEX
ALTER TABLE `table`
ADD INDEX `index nane` (`product_id`)

// Delete table constraint

// 1. Delete Primary KEY
ALTER TABLE summary
DROP PRIMARY KEY;

// 2. Delete FOREIGN KEY
ALTER TABLE summary
DROP FOREIGN KEY fk_isbn;

// 3. Delete INDEX
ALTER TABLE `table_name`
DROP INDEX  `id_name_fk`;

// Additional
ALTER TABLE  summary
DROP PRIMARY KEY ,
ADD PRIMARY KEY (  isbn );

ALTER TABLE  summary
ADD PRIMARY KEY(isbn),
ADD CONSTRAINT fk_isbn
FOREIGN KEY (isbn) REFERENCES book(isbn);

//Show detail of table
desc summary;
SHOW CREATE TABLE summary;
SHOW TABLE STATUS FROM somkiat LIKE 'summary';
mysqlshow -uroot -p1234 --keys somkiat summary
