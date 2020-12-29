CREATE TABLE [dbo].[Cart] (
    [id]        INT NOT NULL,
    [userId]    INT NOT NULL,
    [productId] INT NOT NULL,
    [quantity]  INT NOT NULL,
    CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Cart_Product] FOREIGN KEY ([productId]) REFERENCES [dbo].[Product] ([id]),
    CONSTRAINT [FK_Cart_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[User] ([id])
);

