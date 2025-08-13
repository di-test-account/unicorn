-- test.sql - Sample SQL file for GitHub/Snowflake integration
-- This file tests the connection between GitHub and Snowflake

-- Test 1: Simple query
SELECT 'Hello from GitHub!' AS message;

-- Test 2: Current timestamp
SELECT CURRENT_TIMESTAMP() AS current_time;

-- Test 3: Query your UNICORN table
SELECT COUNT(*) AS total_records 
FROM GITHUB.RAW.UNICORN;

-- Test 4: Sample data from UNICORN table
SELECT * 
FROM GITHUB.RAW.UNICORN 
LIMIT 5;

-- Test 5: Create a test table (optional)
CREATE OR REPLACE TABLE test_from_github (
    id INTEGER,
    name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

-- Test 6: Insert sample data
INSERT INTO test_from_github (id, name) 
VALUES 
    (1, 'Test from GitHub'),
    (2, 'Git integration works!');

-- Test 7: Query the test table
SELECT * FROM test_from_github;
