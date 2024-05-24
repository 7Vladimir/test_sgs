--Скрипт создания таблицы Containers
CREATE TABLE Containers (
                            ID UNIQUEIDENTIFIER PRIMARY KEY,  -- ИД - тип уникальный идентификатор
                            Number INT NOT NULL,              -- Номер - тип числовой 
                            Type NVARCHAR(100) NOT NULL,      -- Тип – тип текстовый   
                            Length INT NOT NULL,              -- Длина – тип числовой
                            Width INT NOT NULL,               -- Ширина – тип числовой    
                            Height INT NOT NULL,              -- Высота – тип числовой
                            Weight INT NOT NULL,              -- Вес – тип числовой   
                            IsEmpty BIT NOT NULL,             -- Пустой/не пустой – тип бит    
                            ArrivalDate DATETIME NOT NULL     -- Дата поступления – тип дата/время
);