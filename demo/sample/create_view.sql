//Create view
CREATE VIEW v_summary (isbn, amount)
AS
SELECT isbn, amount2
FROM summary;

//Delete view
DROP VIEW v_summary;
