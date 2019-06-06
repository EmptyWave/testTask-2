
USE `test_case`;

-- Task #2
-- Напишите sql-запрос, выбирающий информацию по каждому менеджеру, включая количество связанных с ним заявок и их общую сумму (в 2 дополнительных поля: claim_count, claim_total_sum).
-- Выборка должна быть выполнена одним запросом!

SELECT 
	COUNT(claim.id) as claim_count, 
    SUM(claim.`sum`) as claim_total_sum,
    CONCAT(manager.first_name, ' ', manager.last_name) AS full_name 
FROM
	claim
		JOIN
	manager ON claim.manager_id = manager.id
GROUP BY claim.manager_id
ORDER BY claim_total_sum DESC;

-- Task #3
-- Напишите запрос, который выведет двух менеджеров, у которых количество связанных заявок меньше, чем у остальных.
-- При этом, объедините значения first_name и last_name в одно поле full_name.

SELECT 
	*
FROM (SELECT 
		COUNT(claim.id) as claim_count, 
		CONCAT(manager.first_name, ' ', manager.last_name) AS full_name 
	FROM
		claim
			JOIN
		manager ON claim.manager_id = manager.id
	GROUP BY claim.manager_id) AS manager_claims 
WHERE manager_claims.claim_count < (SELECT AVG(claim.id) FROM claim) 
LIMIT 2;

-- Task #4
-- Напишите запрос, который выведет список менеджеров, количество заявок у которых больше, чем у их руководителя (связь с руководителем по полю chief_id).

SELECT 
	full_name
FROM (SELECT 
		COUNT(claim.id) as claim_count, 
		CONCAT(manager.first_name, ' ', manager.last_name) AS full_name, 
        manager.chief_id 
	FROM 
		claim 
			JOIN 
		manager ON claim.manager_id = manager.id 
	WHERE manager.chief_id IS NOT NULL 
	GROUP BY claim.manager_id) AS manager_claims 
WHERE 
	manager_claims.claim_count > (SELECT COUNT(claim.id) FROM claim where claim.manager_id=manager_claims.chief_id);

-- Task #5
-- Напишите запрос, результатом которого будет "месячный отчет" по заявкам.
-- Т.е. в результате, мы должны увидеть таблицу с полями month, claim_count, claim_total_sum. Каждый месяц - одна строка.
-- В поле month, должно быть полное название месяца и год (e.g. November 2012). В поле claim_count - количество заявок в этом месяце,

SELECT 
    DATE_FORMAT(claim.created_at, '%M %Y') as `month`,
	COUNT(claim.id) as claim_count, 
	SUM(claim.`sum`) as claim_total_sum 
FROM
	claim
		JOIN
	manager ON claim.manager_id = manager.id
GROUP BY `month` 
ORDER BY `month` DESC;


-- Task #6
-- Выберите топ-менеджеров за июль 2013 (07.2013) по результатам среднего значения суммы заявки.

SELECT 
	CONCAT(manager.first_name, ' ', manager.last_name) AS full_name, 
    claim.`sum` 
FROM
	claim
		JOIN
	manager ON claim.manager_id = manager.id
WHERE 
	claim.`sum`>(SELECT AVG(claim.`sum`) FROM claim WHERE DATE_FORMAT(claim.created_at, '%M %Y')="July 2013") AND DATE_FORMAT(claim.created_at, '%M %Y')="July 2013";