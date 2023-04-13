--Session #1
BEGIN;  -- start transaction block
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';  -- rating update
SELECT * FROM pizzeria; -- check update

--Session #2
SELECT * FROM pizzeria; --check that we can’t see changes in session #2

--Session #1
COMMIT; -- end of transaction block

--Session #2
SELECT * FROM pizzeria; --check that we can see a changes in session #2