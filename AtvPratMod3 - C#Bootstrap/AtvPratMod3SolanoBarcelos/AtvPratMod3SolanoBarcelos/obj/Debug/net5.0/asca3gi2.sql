IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [destino] (
    [id] int NOT NULL IDENTITY,
    [cidade] nvarchar(max) NULL,
    [estado] nvarchar(max) NULL,
    CONSTRAINT [PK_destino] PRIMARY KEY ([id])
);
GO

CREATE TABLE [promocao] (
    [id] int NOT NULL IDENTITY,
    [nome] nvarchar(max) NULL,
    [destinoid] int NOT NULL,
    CONSTRAINT [PK_promocao] PRIMARY KEY ([id]),
    CONSTRAINT [FK_promocao_destino_destinoid] FOREIGN KEY ([destinoid]) REFERENCES [destino] ([id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_promocao_destinoid] ON [promocao] ([destinoid]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211220001841_mig1', N'5.0.12');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [destino] ADD [nome] nvarchar(max) NULL;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211220004951_mig2', N'5.0.12');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211220010519_mig3', N'5.0.12');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211220013221_mig4', N'5.0.12');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20211220195519_mig5', N'5.0.12');
GO

COMMIT;
GO

