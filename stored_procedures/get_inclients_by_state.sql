drop procedure if exists get_inclients_by_state;
delimiter $$
create procedure get_inclients_by_state
	(
    state char(2)
	)
BEGIN
	SELECT *
    FROM clients c
    where c.state=state;
end $$
DELIMITER ;
-- 易错事项：
-- DELIMITER ; DELIMITER $$ 必须加空格
-- drop procedure时无（），create时必须有，而且起到parameter作用，call时要视情况而定，看看是否调用parameter
-- BEGIN与END的语句必须加；不加会报错，之前就忘记了！！！
-- 其实就类似于子查询的感觉，理解为主
-- 调用时语句：call sql_invoicing.get_inclients_by_state('ca'); 但是点闪电⚡标识时，会弹出对话框直接让你填ca的
