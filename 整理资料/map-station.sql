INSERT INTO `alibeehive_station_tmp` (
	`area_Id`,
	`floor`,
	`building`,
	`station_no`,
	`map_source_id`,
	`price`,
	`status`,
	`type`,
	`create_Time`,
	`standard_divices`,
	`pay_divices`,
	`discount_type`
) SELECT
	'2',
	'7',
	fl_index,
	ft_name_cn,
	ft_sourceid,
	'0.01',
	'1',
	'2',
	now(),
	'6;7;8',
	'9;10',
	''
FROM
	alibeehive_map_shop
WHERE
	fl_index = '8'
AND fl_namecode = '7F'
AND ft_name_cn REGEXP '8-7-'
GROUP BY
	ft_name_cn
ORDER BY
	SUBSTR(ft_name_cn, 1, 6) ASC,
	CAST(
		SUBSTR(ft_name_cn, 7) AS DECIMAL
	) ASC


-- ��ȡ8�� 7F 8-7- ��ͷ������  ����
SELECT
	'2',
	'7',
	fl_index,
	ft_name_cn,
	ft_sourceid,
	'0.01',
	'1',
	'2',
	now(),
	'6;7;8',
	'9;10',
	''
FROM
	alibeehive_map_shop
WHERE
	fl_index = '8'
AND fl_namecode = '7F'
AND ft_name_cn REGEXP '8-7-'
GROUP BY  ft_name_cn
order by SUBSTR(ft_name_cn,1,6) asc,CAST(SUBSTR(ft_name_cn,7) AS DECIMAL) asc


---8��7¥ ������
SELECT
	*
FROM
	alibeehive_map_shop
WHERE
	fl_index = '8'
AND fl_namecode = '7F'
AND ft_name_cn NOT REGEXP '^8-7'
AND LENGTH(ft_shopnumber)>0
AND ft_shopnumber REGEXP '^8-7-'
and ft_shoptype = '980604'
GROUP BY
	ft_name_cn
ORDER BY
	SUBSTR(ft_name_cn, 1, 6) ASC,
	CAST(
		SUBSTR(ft_name_cn, 7) AS DECIMAL
	) ASC
	
--8��7¥  ����
SELECT
	*
FROM
	alibeehive_map_shop
WHERE
	fl_index = '8'
AND fl_namecode = '7F'
AND ft_name_cn NOT REGEXP '^8-7'
AND LENGTH(ft_shopnumber) > 0
AND ft_shopnumber REGEXP '^8-7-'
AND ft_shoptype = '980604'
AND ft_shopnumber REGEXP 'W$'
order by ft_shopnumber