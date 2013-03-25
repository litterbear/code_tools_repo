-- 忘记用户名密码
-- 1) 让mysql以 不验证权限的方式启动 
--    /usr/local/mysql/bin/mysqld_safe --datadir=/data/mysql --pid-file=/data/mysql/localhost.localdomain.pid
./bin/mysqld_safe --skip-grant-tables --datadir=/data/mysql --pid-file=/data/mysql/localhost.localdomain.pid

-- 2) 登陆mysql 设置密码
USE mysql
update user set password=password("XXX") where user="root";
flush privileges;


-- 暂时解除外键 约束
SET FOREIGN_KEY_CHECKS = 0;
-- your sql 
SET FOREIGN_KEY_CHECKS = 1;


-- 不用缓存
select SQL_NO_CACHE ....