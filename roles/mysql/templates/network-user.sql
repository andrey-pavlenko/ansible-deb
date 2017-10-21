CREATE USER '{{ mysql.network_user.name }}'@'%' IDENTIFIED BY '{{ mysql.network_user.password }}';
GRANT ALL PRIVILEGES ON *.* TO '{{ mysql.network_user.name }}'@'%' WITH GRANT OPTION;
