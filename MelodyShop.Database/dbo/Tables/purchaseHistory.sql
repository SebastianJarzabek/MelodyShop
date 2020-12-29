CREATE TABLE [dbo].[purchaseHistory] (
    [id]          INT      NOT NULL,
    [cartId]      INT      NULL,
    [puchaseDate] DATETIME NULL,
    CONSTRAINT [PK_purchaseHistory] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_purchaseHistory_Cart] FOREIGN KEY ([cartId]) REFERENCES [dbo].[Cart] ([id])
);

