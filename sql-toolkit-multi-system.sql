----------------------------------------------------
-- 🧠 SQL TOOLKIT: ALL-IN-ONE SYSTEMS
----------------------------------------------------

----------------------------------------------------
-- 1. LOG TRACKING SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS logs (
  id INTEGER PRIMARY KEY,
  event TEXT,
  level TEXT,
  created_at TEXT
);

INSERT INTO logs (event, level, created_at) VALUES
('login_success', 'info', '2026-01-01'),
('login_failed', 'warning', '2026-01-02'),
('server_error', 'error', '2026-01-03');

----------------------------------------------------
-- 2. TODO SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS tasks (
  id INTEGER PRIMARY KEY,
  title TEXT,
  priority INT,
  done INT
);

INSERT INTO tasks (title, priority, done) VALUES
('Learn SQL', 3, 0),
('Build system', 5, 0),
('Write docs', 4, 1);

----------------------------------------------------
-- 3. FINANCE SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS transactions (
  id INTEGER PRIMARY KEY,
  type TEXT,
  amount INT,
  category TEXT
);

INSERT INTO transactions (type, amount, category) VALUES
('income', 5000, 'salary'),
('expense', 1200, 'food'),
('income', 2000, 'freelance');

----------------------------------------------------
-- 4. CACHE SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS cache (
  key TEXT,
  value TEXT,
  expires_at TEXT
);

INSERT INTO cache VALUES
('user_1', 'Eren', '2026-12-31'),
('token_abc', '12345', '2025-01-01');

----------------------------------------------------
-- 5. A/B TEST SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS experiments (
  user_id INT,
  variant TEXT
);

INSERT INTO experiments VALUES
(1, 'A'),
(2, 'B'),
(3, 'A'),
(4, 'B'),
(5, 'A');

----------------------------------------------------
-- 6. DATA CLEANING SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
  id INT,
  email TEXT
);

INSERT INTO users VALUES
(1, 'test@mail.com'),
(2, NULL),
(3, 'hello@mail.com'),
(4, NULL);

----------------------------------------------------
-- 7. SEARCH SYSTEM
----------------------------------------------------
CREATE TABLE IF NOT EXISTS docs (
  id INT,
  content TEXT
);

INSERT INTO docs VALUES
(1, 'SQL is powerful'),
(2, 'Python and SQL together'),
(3, 'Database systems');

----------------------------------------------------
-- 🔍 QUERIES / ANALYTICS (OUTPUT SECTION)
----------------------------------------------------

-- LOG ANALYTICS
SELECT 'LOG ANALYTICS' AS section;

SELECT level, COUNT(*) AS total
FROM logs
GROUP BY level;

-- TODO LIST
SELECT 'TASK LIST' AS section;

SELECT * FROM tasks
ORDER BY priority DESC;

-- FINANCE SUMMARY
SELECT 'FINANCE SUMMARY' AS section;

SELECT type, SUM(amount) AS total
FROM transactions
GROUP BY type;

-- A/B TEST RESULT
SELECT 'AB TEST' AS section;

SELECT variant, COUNT(*) AS users
FROM experiments
GROUP BY variant
ORDER BY users DESC;

-- CACHE VALID DATA
SELECT 'CACHE' AS section;

SELECT * FROM cache
WHERE expires_at > '2026-01-01';

-- CLEAN USERS
SELECT 'CLEAN USERS' AS section;

DELETE FROM users
WHERE email IS NULL;

SELECT * FROM users;

-- SEARCH SYSTEM
SELECT 'SEARCH RESULTS' AS section;

SELECT * FROM docs
WHERE content LIKE '%SQL%';

----------------------------------------------------
-- 🏁 END OF TOOLKIT
----------------------------------------------------
