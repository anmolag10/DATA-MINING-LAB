--<ScriptOptions statementTerminator="!"/>

CREATE SCHEMA Schema!

CREATE TABLE Schema.PRODUCT (
		PID VARCHAR(30) DEFAULT NULL NOT NULL,
		PNAME VARCHAR(30)
	)
	DATA CAPTURE NONE!

CREATE TABLE Schema.SUPPLIER (
		SID VARCHAR(30) DEFAULT NULL NOT NULL,
		SNAME VARCHAR(30)
	)
	DATA CAPTURE NONE!

CREATE TABLE Schema.SUPPLY (
		SID VARCHAR(30),
		PID VARCHAR(30),
		QTY DOUBLE
	)
	DATA CAPTURE NONE!

ALTER TABLE Schema.PRODUCT ADD CONSTRAINT PRODUCT_PK PRIMARY KEY
	(PID)!

ALTER TABLE Schema.SUPPLIER ADD CONSTRAINT SUPPLIER_PK PRIMARY KEY
	(SID)!

ALTER TABLE Schema.SUPPLY ADD CONSTRAINT SUPPLY_PRODUCT_FK FOREIGN KEY
	(PID)
	REFERENCES Schema.PRODUCT
	(PID)
	ON DELETE CASCADE!

ALTER TABLE Schema.SUPPLY ADD CONSTRAINT SUPPLY_SUPPLIER_FK FOREIGN KEY
	(SID)
	REFERENCES Schema.SUPPLIER
	(SID)
	ON DELETE CASCADE!

