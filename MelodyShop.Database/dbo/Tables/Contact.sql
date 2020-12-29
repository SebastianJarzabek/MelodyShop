CREATE TABLE [dbo].[Contact] (
    [id]          INT          NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [surname]     VARCHAR (50) NOT NULL,
    [email]       VARCHAR (50) NOT NULL,
    [phoneNumber] VARCHAR (50) NOT NULL,
    [adressId]    INT          NOT NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Contact_Adress] FOREIGN KEY ([adressId]) REFERENCES [dbo].[Adress] ([id])
);

