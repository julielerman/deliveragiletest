ALTER TABLE [Agilistas] ADD [SecondaryFocusId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';

GO

UPDATE [Agilistas] SET [SecondaryFocusId] = '5f6d6f80-9f9a-469e-9036-07ecbb3971ea'
WHERE [Id] = '554be900-d1a4-4908-9d6a-5ef3ea05650e';
SELECT @@ROWCOUNT;


GO

UPDATE [Agilistas] SET [SecondaryFocusId] = '5f6d6f80-9f9a-469e-9036-07ecbb3971ea'
WHERE [Id] = '5efdb55d-1205-419f-8a0b-9cc7a15f8565';
SELECT @@ROWCOUNT;


GO

UPDATE [Agilistas] SET [SecondaryFocusId] = '5f6d6f80-9f9a-469e-9036-07ecbb3971ea'
WHERE [Id] = '83eda86f-c652-4666-ba17-db90b218a54b';
SELECT @@ROWCOUNT;


GO

UPDATE [Agilistas] SET [SecondaryFocusId] = 'c5b6a0e8-e43f-4765-906f-e15e019a19d8'
WHERE [Id] = 'f2e5fdba-daf9-43f0-8bde-9ed2562bd12a';
SELECT @@ROWCOUNT;


GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] ON;
INSERT INTO [Categories] ([Id], [Description])
VALUES ('a372269c-0e3d-45f6-bda1-6631667e8e37', N'Agile Data');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description') AND [object_id] = OBJECT_ID(N'[Categories]'))
    SET IDENTITY_INSERT [Categories] OFF;

GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PrimaryFocusId', N'SecondaryFocusId', N'TwitterHandle') AND [object_id] = OBJECT_ID(N'[Agilistas]'))
    SET IDENTITY_INSERT [Agilistas] ON;
INSERT INTO [Agilistas] ([Id], [Name], [PrimaryFocusId], [SecondaryFocusId], [TwitterHandle])
VALUES ('cb2a97da-1700-4f2b-a419-c539279e0d1f', N'Julie Lerman', 'a372269c-0e3d-45f6-bda1-6631667e8e37', '00000000-0000-0000-0000-000000000000', NULL);
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PrimaryFocusId', N'SecondaryFocusId', N'TwitterHandle') AND [object_id] = OBJECT_ID(N'[Agilistas]'))
    SET IDENTITY_INSERT [Agilistas] OFF;

GO

CREATE INDEX [IX_Agilistas_SecondaryFocusId] ON [Agilistas] ([SecondaryFocusId]);

GO

ALTER TABLE [Agilistas] ADD CONSTRAINT [FK_Agilistas_Categories_SecondaryFocusId] FOREIGN KEY ([SecondaryFocusId]) REFERENCES [Categories] ([Id]) ON DELETE CASCADE;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190419003735_newpropsandseeddata', N'2.2.3-servicing-35854');

GO

