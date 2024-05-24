--Скрипт получения данных из таблицы Containers
SELECT     '{' +
           '"ID": "' + CAST(ID AS NVARCHAR(36)) + '", ' +    '"Number": ' + CAST(Number AS NVARCHAR(10)) + ', ' +
           '"Type": "' + Type + '", ' +    '"Length": ' + CAST(Length AS NVARCHAR(10)) + ', ' +
           '"Width": ' + CAST(Width AS NVARCHAR(10)) + ', ' +    '"Height": ' + CAST(Height AS NVARCHAR(10)) + ', ' +
           '"Weight": ' + CAST(Weight AS NVARCHAR(10)) + ', ' +    '"IsEmpty": ' + CASE WHEN IsEmpty = 1 THEN 'true' ELSE 'false' END + ', ' +
           '"ArrivalDate": "' + CONVERT(NVARCHAR, ArrivalDate, 126) + '"' +    '}' AS ContainerJSON
FROM Containers;