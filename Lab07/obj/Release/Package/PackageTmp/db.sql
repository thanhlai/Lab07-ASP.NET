CREATE TABLE [dbo].[Book] (
    [BookID]      INT           IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (50) NOT NULL,
    [Publication] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([BookID] ASC)
)


CREATE TABLE [dbo].[Author] (
    [AuthorID] INT IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (50) NOT NULL,
    [LastName]       NVARCHAR (50) NOT NULL,
    [DateOfBirth] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([AuthorID] ASC)
)

CREATE TABLE [dbo].[BookAuthor] (
    [BookID]	INT,
    [AuthorID]  INT,
    CONSTRAINT Book_Author_PK PRIMARY KEY (BookID, AuthorID),
    CONSTRAINT FK_Book 
      FOREIGN KEY (BookID) REFERENCES Book (BookID),
    CONSTRAINT FK_Author
      FOREIGN KEY (AuthorID) REFERENCES Author (AuthorID)
)