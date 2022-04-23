IF DB_ID('BBB') IS NULL
BEGIN
	CREATE DATABASE BBB
	print 'Databse BBB created'
END

ELSE
BEGIN
print 'Databse BBB found'
END