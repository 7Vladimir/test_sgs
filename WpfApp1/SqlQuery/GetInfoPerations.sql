--Скрипт получения данных из таблицы Operations
select [ID] as containerId from Containers
DECLARE @ContainerID UNIQUEIDENTIFIERSET @ContainerID = '6B543628-1756-4650-9D45-55D343F18286'
SELECT
    '{' +    '"ID": "' + CAST(ID AS NVARCHAR(36)) + '", ' +
    '"ContainerID": "' + CAST(ContainerID AS NVARCHAR(36)) + '", ' +    '"StartDate": "' + CONVERT(NVARCHAR, StartDate, 126) + '", ' +
    '"EndDate": "' + CONVERT(NVARCHAR, EndDate, 126) + '", ' +    '"OperationType": "' + OperationType + '", ' +
    '"OperatorName": "' + OperatorName + '", ' +    '"InspectionPlace": "' + InspectionPlace + '"' +
    '}' AS OperationJSONFROM Operations
    WHERE ContainerID = @ContainerID;