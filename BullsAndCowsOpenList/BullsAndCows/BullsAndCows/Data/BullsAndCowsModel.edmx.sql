
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 08/14/2013 16:39:42
-- Generated from EDMX file: D:\Maria\Materiali\Telerik\JSApis\Exam\BullsAndCowsOpenList\BullsAndCows\BullsAndCows\Data\BullsAndCowsModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Games_0_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Games] DROP CONSTRAINT [FK_Games_0_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Games_1_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Games] DROP CONSTRAINT [FK_Games_1_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Games_2_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Games] DROP CONSTRAINT [FK_Games_2_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Guesses_0_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Guesses] DROP CONSTRAINT [FK_Guesses_0_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Guesses_1_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Guesses] DROP CONSTRAINT [FK_Guesses_1_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Messages_0_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Messages] DROP CONSTRAINT [FK_Messages_0_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Messages_1_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Messages] DROP CONSTRAINT [FK_Messages_1_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Messages_2_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Messages] DROP CONSTRAINT [FK_Messages_2_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Messages_3_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Messages] DROP CONSTRAINT [FK_Messages_3_0];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[FK_Scores_0_0]', 'F') IS NOT NULL
    ALTER TABLE [BullsAndCowsDbModelStoreContainer].[Scores] DROP CONSTRAINT [FK_Scores_0_0];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[Games]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[Games];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[GameStatuses]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[GameStatuses];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[Guesses]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[Guesses];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[Messages]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[Messages];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[MessageStates]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[MessageStates];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[MessageTypes]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[MessageTypes];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[Scores]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[Scores];
GO
IF OBJECT_ID(N'[BullsAndCowsDbModelStoreContainer].[Users]', 'U') IS NOT NULL
    DROP TABLE [BullsAndCowsDbModelStoreContainer].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [Id] integer  NOT NULL,
    [Title] nvarchar(40)  NOT NULL,
    [Password] nvarchar(40)  NULL,
    [RedUserNumber] integer  NOT NULL,
    [BlueUserNumber] integer  NULL,
    [UserInTurn] integer  NULL,
    [RedUserId] integer  NOT NULL,
    [BlueUserId] integer  NULL,
    [GameStatusId] integer  NOT NULL
);
GO

-- Creating table 'GameStatuses'
CREATE TABLE [dbo].[GameStatuses] (
    [Id] integer  NOT NULL,
    [Status] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Guesses'
CREATE TABLE [dbo].[Guesses] (
    [Id] integer  NOT NULL,
    [Number] integer  NOT NULL,
    [Cows] integer  NOT NULL,
    [Bulls] integer  NOT NULL,
    [UserId] integer  NOT NULL,
    [GameId] integer  NOT NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [Id] integer  NOT NULL,
    [Text] nvarchar(2147483647)  NOT NULL,
    [MessageTypeId] integer  NOT NULL,
    [UserId] integer  NOT NULL,
    [GameId] integer  NOT NULL,
    [MessageStateId] integer  NOT NULL
);
GO

-- Creating table 'MessageStates'
CREATE TABLE [dbo].[MessageStates] (
    [Id] integer  NOT NULL,
    [State] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'MessageTypes'
CREATE TABLE [dbo].[MessageTypes] (
    [Id] integer  NOT NULL,
    [Type] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Scores'
CREATE TABLE [dbo].[Scores] (
    [Id] integer  NOT NULL,
    [Value] integer  NOT NULL,
    [UserId] integer  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] integer  NOT NULL,
    [Username] nvarchar(30)  NOT NULL,
    [Nickname] nvarchar(30)  NOT NULL,
    [AuthCode] nvarchar(40)  NOT NULL,
    [SessionKey] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GameStatuses'
ALTER TABLE [dbo].[GameStatuses]
ADD CONSTRAINT [PK_GameStatuses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Guesses'
ALTER TABLE [dbo].[Guesses]
ADD CONSTRAINT [PK_Guesses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MessageStates'
ALTER TABLE [dbo].[MessageStates]
ADD CONSTRAINT [PK_MessageStates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MessageTypes'
ALTER TABLE [dbo].[MessageTypes]
ADD CONSTRAINT [PK_MessageTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Scores'
ALTER TABLE [dbo].[Scores]
ADD CONSTRAINT [PK_Scores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GameStatusId] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [FK_Games_0_0]
    FOREIGN KEY ([GameStatusId])
    REFERENCES [dbo].[GameStatuses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Games_0_0'
CREATE INDEX [IX_FK_Games_0_0]
ON [dbo].[Games]
    ([GameStatusId]);
GO

-- Creating foreign key on [BlueUserId] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [FK_Games_1_0]
    FOREIGN KEY ([BlueUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Games_1_0'
CREATE INDEX [IX_FK_Games_1_0]
ON [dbo].[Games]
    ([BlueUserId]);
GO

-- Creating foreign key on [RedUserId] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [FK_Games_2_0]
    FOREIGN KEY ([RedUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Games_2_0'
CREATE INDEX [IX_FK_Games_2_0]
ON [dbo].[Games]
    ([RedUserId]);
GO

-- Creating foreign key on [GameId] in table 'Guesses'
ALTER TABLE [dbo].[Guesses]
ADD CONSTRAINT [FK_Guesses_0_0]
    FOREIGN KEY ([GameId])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Guesses_0_0'
CREATE INDEX [IX_FK_Guesses_0_0]
ON [dbo].[Guesses]
    ([GameId]);
GO

-- Creating foreign key on [GameId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_1_0]
    FOREIGN KEY ([GameId])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_1_0'
CREATE INDEX [IX_FK_Messages_1_0]
ON [dbo].[Messages]
    ([GameId]);
GO

-- Creating foreign key on [UserId] in table 'Guesses'
ALTER TABLE [dbo].[Guesses]
ADD CONSTRAINT [FK_Guesses_1_0]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Guesses_1_0'
CREATE INDEX [IX_FK_Guesses_1_0]
ON [dbo].[Guesses]
    ([UserId]);
GO

-- Creating foreign key on [MessageStateId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_0_0]
    FOREIGN KEY ([MessageStateId])
    REFERENCES [dbo].[MessageStates]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_0_0'
CREATE INDEX [IX_FK_Messages_0_0]
ON [dbo].[Messages]
    ([MessageStateId]);
GO

-- Creating foreign key on [UserId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_2_0]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_2_0'
CREATE INDEX [IX_FK_Messages_2_0]
ON [dbo].[Messages]
    ([UserId]);
GO

-- Creating foreign key on [MessageTypeId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_Messages_3_0]
    FOREIGN KEY ([MessageTypeId])
    REFERENCES [dbo].[MessageTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Messages_3_0'
CREATE INDEX [IX_FK_Messages_3_0]
ON [dbo].[Messages]
    ([MessageTypeId]);
GO

-- Creating foreign key on [UserId] in table 'Scores'
ALTER TABLE [dbo].[Scores]
ADD CONSTRAINT [FK_Scores_0_0]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Scores_0_0'
CREATE INDEX [IX_FK_Scores_0_0]
ON [dbo].[Scores]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------