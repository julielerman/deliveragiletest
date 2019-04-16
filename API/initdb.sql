IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Categories] (
    [Id] uniqueidentifier NOT NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY ([Id])
);

GO

CREATE TABLE [Agilistas] (
    [Id] uniqueidentifier NOT NULL,
    [Name] nvarchar(max) NULL,
    [PrimaryFocusId] uniqueidentifier NULL,
    [TwitterHandle] nvarchar(max) NULL,
    CONSTRAINT [PK_Agilistas] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Agilistas_Categories_PrimaryFocusId] FOREIGN KEY ([PrimaryFocusId]) REFERENCES [Categories] ([Id]) ON DELETE NO ACTION
);

GO

CREATE INDEX [IX_Agilistas_PrimaryFocusId] ON [Agilistas] ([PrimaryFocusId]);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20190416012400_initial', N'2.2.3-servicing-35854');

GO

