-- Table using date and time types
CREATE TABLE events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    event_time TIME,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert examples
INSERT INTO events (event_id, event_name, event_date, event_time)
VALUES 
(1, 'Tech Talk', '2025-07-01', '14:30:00'),
(2, 'Workshop', '2025-07-02', '10:00:00');

-- Query examples
SELECT * FROM events WHERE event_date = CURDATE();

-- Calculate days until event
SELECT event_name, DATEDIFF(event_date, CURDATE()) AS days_left FROM events;

CREATE TABLE appointments (
    id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    appointment_date DATE,
    appointment_time TIME,
    check_in DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO appointments (id, patient_name, appointment_date, appointment_time, check_in)
VALUES 
(1, 'John Doe', '2025-06-20', '09:30:00', '2025-06-20 09:15:00'),
(2, 'Jane Smith', '2025-06-21', '11:00:00', '2025-06-21 10:55:00');

SELECT CURDATE() AS today_date;
SELECT NOW() AS current_datetime;
SELECT CURRENT_TIME() AS current_time;

-- Add 7 days to today's date
SELECT DATE_ADD(CURDATE(), INTERVAL 7 DAY) AS next_week;

-- Subtract 1 month
SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AS last_month;
-- Difference in days between appointment and today
SELECT patient_name, DATEDIFF(appointment_date, CURDATE()) AS days_until_appointment
FROM appointments;

-- Time difference (in seconds) between appointment time and check-in
SELECT 
    patient_name,
    TIME_TO_SEC(TIMEDIFF(appointment_time, TIME(check_in))) AS seconds_diff
FROM appointments;
-- Display formatted date (e.g., June 20, 2025)
SELECT DATE_FORMAT(appointment_date, '%M %d, %Y') AS formatted_date FROM appointments;

-- Display time in 12-hour format
SELECT DATE_FORMAT(appointment_time, '%r') AS time_12_hour FROM appointments;
-- Get all appointments after today
SELECT * FROM appointments
WHERE appointment_date > CURDATE();

-- Appointments this week
SELECT * FROM appointments
WHERE YEARWEEK(appointment_date, 1) = YEARWEEK(CURDATE(), 1);
