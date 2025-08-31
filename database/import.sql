-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS topografie;
USE topografie;

-- Create students table
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `klassecode` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `email`, `password`, `type`, `klassecode`) VALUES
(1, 'kanye', 'kanyehitler@hitler.nl', '$2y$10$i8flOPa7C0bmj1bPPS4dqONYQGWu4ya6HJczd2tV8XdCFY8UOR2I6', '', ''),
(2, 'demo', 'demo@demo.demo', '$2y$10$Un7xyVQ6fKQxpKg/OgpJhOQubH5ohAScB4CUktAHy6e8RXhKW8YtO', '', ''),
(3, 'demo1', 'demo@demo.demo1', '$2y$10$gQlmWk2MzO98qeZ9j2fSs.1a5a9gDhOxdIUHJeBnOSJ9CNk3HvbK.', '', ''),
(4, 'demo2', 'demo2@demo.demo', '$2y$10$LzyJy97Q6W0sfVKUTxQkNujI1xuW7j0CPG0OjaAvXweXTPZPidrOi', '', ''),
(5, 'demo3', 'demo3@demo.demo', '$2y$10$t.cDmPfLq0ZRKEYlcWPFheAPCSa.P0IoTH26EtIMk2EgdQowOjaPO', '', ''),
(6, 'blake', 'blake@fucking.smells', '$2y$10$Q6rA/tA7XOPQLErM/X1H9u0HSpJidbmTsOeqkNtFf8/SsDkyH9xpS', 'docent', NULL),
(7, 'docent', 'docent@docent.docent', '$2y$10$hkRU0DOuW3g03jkte3tNZez0xVIAdA115EpRVjom8txUJrUfBTvmO', 'docent', '619ABC'),
(8, 'leerling', 'leerling@leerling.nl', '$2y$10$KlaXl4w5JVkaWS5EIkLSauTKdDLq/Ht687qd6TF.qb2NLFsEVrG/2', 'leerling', '123'),
(9, 'leerling1', 'leerling1@leerling.1', '$2y$10$le/71QEWhSYMIbCjYOUmfOjSqFSAOd.hjAdEtIEr/S5MpyxhAxML6', 'leerling', '619ABC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

-- Create quiz_results table
CREATE TABLE IF NOT EXISTS quiz_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    total_possible_score INT NOT NULL,
    score INT NOT NULL,
    mode VARCHAR(50) NOT NULL,
    correct_countries JSON,
    wrong_countries JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert sample student data
INSERT INTO students (username, email, password) VALUES
('johndoe', 'john@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'), -- password: password
('janesmith', 'jane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'); -- password: password

-- Insert sample quiz results
INSERT INTO quiz_results (student_id, total_possible_score, score, mode, correct_countries, wrong_countries) VALUES
(1, 10, 8, 'europe', '["France", "Germany", "Italy", "Spain", "Netherlands", "Belgium", "Switzerland", "Austria"]', '["Portugal", "Greece"]'),
(2, 10, 9, 'europe', '["France", "Germany", "Italy", "Spain", "Netherlands", "Belgium", "Switzerland", "Austria", "Portugal"]', '["Greece"]'); 