IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] ON;
INSERT INTO [Categories] ([Id], [Description])
VALUES ('167d1f6b-a93d-49e4-8a0d-e651369e018b', N'Agile Testing');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] OFF;

GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] ON;
INSERT INTO [Categories] ([Id], [Description])
VALUES ('5f6d6f80-9f9a-469e-9036-07ecbb3971ea', N'Exploratory Testing');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] OFF;

GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] ON;
INSERT INTO [Categories] ([Id], [Description])
VALUES ('c5b6a0e8-e43f-4765-906f-e15e019a19d8', N'Psychology of Collaboration');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] OFF;

GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PrimaryFocusId', N'TwitterHandle') AND [object_id] = OBJECT_ID(N'[Agilistas]'))
    SET IDENTITY_INSERT [Agilistas] ON;
INSERT INTO [Agilistas] ([Id], [Name], [PrimaryFocusId], [TwitterHandle])
VALUES ('5efdb55d-1205-419f-8a0b-9cc7a15f8565', N'Lisa Crispin', '167d1f6b-a93d-49e4-8a0d-e651369e018b', NULL),
('554be900-d1a4-4908-9d6a-5ef3ea05650e', N'Janet Gregory', '167d1f6b-a93d-49e4-8a0d-e651369e018b', NULL),
('f2e5fdba-daf9-43f0-8bde-9ed2562bd12a', N'Maaret Pyhäjärvi', '5f6d6f80-9f9a-469e-9036-07ecbb3971ea', NULL),
('83eda86f-c652-4666-ba17-db90b218a54b', N'Linda Rising', 'c5b6a0e8-e43f-4765-906f-e15e019a19d8', NULL);
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PrimaryFocusId', N'TwitterHandle') AND [object_id] = OBJECT_ID(N'[Agilistas]'))
    SET IDENTITY_INSERT [Agilistas] OFF;

GO
