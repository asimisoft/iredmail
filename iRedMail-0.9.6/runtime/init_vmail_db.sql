-- Create database for virtual hosts
CREATE DATABASE IF NOT EXISTS vmail CHARACTER SET utf8;

-- Permissions
GRANT SELECT ON vmail.* TO 'vmail'@'localhost' IDENTIFIED BY 'SLbA7D6Nvx2XQkY9FsrgaOj5mZghWV';
-- GRANT SELECT ON vmail.* TO 'vmail'@'siv-Aspire-E5-575G.asimisoft.com' IDENTIFIED BY 'SLbA7D6Nvx2XQkY9FsrgaOj5mZghWV';
GRANT SELECT,INSERT,DELETE,UPDATE ON vmail.* TO 'vmailadmin'@'localhost' IDENTIFIED BY '7hw9qLsmQXRuvgl7uFwsRqaYyIFwWr';
-- GRANT SELECT,INSERT,DELETE,UPDATE ON vmail.* TO 'vmailadmin'@'siv-Aspire-E5-575G.asimisoft.com' IDENTIFIED BY '7hw9qLsmQXRuvgl7uFwsRqaYyIFwWr';

FLUSH PRIVILEGES;
