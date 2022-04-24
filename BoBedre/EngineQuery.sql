IF DB_ID('BBB') IS NULL
BEGIN
	CREATE DATABASE BBB
	print 'Pre-Deploy Created the Database'
END

ELSE
BEGIN
print 'Pre-Deploy found an existing database'
END