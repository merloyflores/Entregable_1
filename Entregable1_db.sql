CREATE TABLE [users] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(30) NOT NULL,
  [email] varchar(60) UNIQUE NOT NULL,
  [password] varchar(20) NOT NULL,
  [age] int NOT NULL,
  [roles_id] int NOT NULL
)
GO

CREATE TABLE [courses] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [title] varchar(40) UNIQUE NOT NULL,
  [description] nvarchar(255) NOT NULL,
  [level] nvarchar(255) NOT NULL,
  [teacher] varchar(30) NOT NULL
)
GO

CREATE TABLE [courses_video] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [title] varchar(40) UNIQUE NOT NULL,
  [url] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [categories] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(30) NOT NULL
)
GO

CREATE TABLE [roles] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255) UNIQUE NOT NULL
)
GO

CREATE TABLE [levels] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255) UNIQUE NOT NULL
)
GO

ALTER TABLE [users] ADD FOREIGN KEY ([roles_id]) REFERENCES [roles] ([id])
GO

ALTER TABLE [courses] ADD FOREIGN KEY ([level]) REFERENCES [levels] ([id])
GO
