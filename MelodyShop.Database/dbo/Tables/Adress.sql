CREATE TABLE [dbo].[Adress] (
    [id]          INT           NOT NULL,
    [street]      VARCHAR (100) NOT NULL,
    [houseNumber] VARCHAR (50)  NOT NULL,
    [postalCode]  VARCHAR (50)  NOT NULL,
    [City]        VARCHAR (50)  NOT NULL,
    [Country]     VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED ([id] ASC)
);

