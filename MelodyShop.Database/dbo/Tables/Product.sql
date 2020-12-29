CREATE TABLE [dbo].[Product] (
    [id]       INT          NOT NULL,
    [name]     VARCHAR (50) NOT NULL,
    [category] VARCHAR (50) NOT NULL,
    [price]    DECIMAL (18) NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([id] ASC)
);

