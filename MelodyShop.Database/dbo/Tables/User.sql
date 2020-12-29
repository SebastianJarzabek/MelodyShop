CREATE TABLE [dbo].[User] (
    [id]          INT NOT NULL,
    [usersTypeId] INT NOT NULL,
    [accessId]    INT NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Users_Access] FOREIGN KEY ([accessId]) REFERENCES [dbo].[Access] ([id]),
    CONSTRAINT [FK_Users_UsersType] FOREIGN KEY ([usersTypeId]) REFERENCES [dbo].[UserType] ([id])
);

