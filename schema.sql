CREATE TABLE users(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    patronymic VARCHAR(255),
    surname VARCHAR(255),
    age INT,
    create_time DATE
);
COMMENT ON TABLE users IS 'Таблица со списком пользователей';
COMMENT ON COLUMN users.name IS 'Имя пользователя';
COMMENT ON COLUMN users.patronymic IS 'Отчество пользователя';
COMMENT ON COLUMN users.surname IS 'Фамилия пользователя';
COMMENT ON COLUMN users.age IS 'Возраст пользователя';
COMMENT ON COLUMN users.create_time IS 'Дата создания пользователя';