-- Inizializzazione database
CREATE DATABASE IF NOT EXISTS chinese_dictionary;
USE chinese_dictionary;

CREATE TABLE IF NOT EXISTS dictionary (
    id INT PRIMARY KEY AUTO_INCREMENT,
    meaning TEXT NOT NULL,
    chinese VARCHAR(255) NOT NULL,
    pronounce VARCHAR(255) NOT NULL,
    note TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserisci dati di esempio (opzionale)
INSERT INTO dictionary (meaning, chinese, pronounce, note) VALUES
('ciao', '你好', 'nǐ hǎo', 'Saluto informale'),
('grazie', '谢谢', 'xiè xiè', 'Espressione di gratitudine'),
('acqua', '水', 'shuǐ', 'Elemento liquido');
