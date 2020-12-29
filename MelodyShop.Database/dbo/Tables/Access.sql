CREATE TABLE [dbo].[Access] (
    [id]        INT          NOT NULL,
    [login]     VARCHAR (50) NOT NULL,
    [password]  VARCHAR (50) NOT NULL,
    [contaktId] INT          NOT NULL,
    CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Access_Contact] FOREIGN KEY ([contaktId]) REFERENCES [dbo].[Contact] ([id])
);

