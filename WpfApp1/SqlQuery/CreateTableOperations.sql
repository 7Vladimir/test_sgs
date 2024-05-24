--Скрипт создания таблицы Operations
CREATE TABLE Operations (
                            ID UNIQUEIDENTIFIER PRIMARY KEY,         -- ИД - тип уникальный идентификатор
                            ContainerID UNIQUEIDENTIFIER NOT NULL,   -- ИД Контейнера - тип уникальный идентификатор
                            StartDate DATETIME NOT NULL,             -- Дата начала операции – тип дата/время    
                            EndDate DATETIME NOT NULL,               -- Дата окончания операции – тип дата/время
                            OperationType NVARCHAR(100) NOT NULL,    -- Тип операции - тип текстовый    
                            OperatorName NVARCHAR(100) NOT NULL,     -- ФИО оператора - тип текстовый
                            InspectionPlace NVARCHAR(100) NOT NULL,  -- Место инспекции - тип текстовый
                            CONSTRAINT FK_Operations_Containers FOREIGN KEY (ContainerID) REFERENCES Containers(ID)  -- Внешний ключ, ссылающийся на таблицу Containers);