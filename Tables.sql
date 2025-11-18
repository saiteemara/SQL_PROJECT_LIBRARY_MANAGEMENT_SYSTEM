create database Library;

use Library;

-- Table: tbl_publisher
CREATE TABLE tbl_publisher (
    publisher_PublisherName VARCHAR(255) PRIMARY KEY,
    publisher_PublisherAddress TEXT,
    publisher_PublisherPhone VARCHAR(15)
);

-- Table: tbl_book
CREATE TABLE tbl_book (
    book_BookID INT PRIMARY KEY,
    book_Title VARCHAR(255),
    book_PublisherName VARCHAR(255),
    FOREIGN KEY (book_PublisherName) REFERENCES tbl_publisher(publisher_PublisherName)ON UPDATE CASCADE ON DELETE CASCADE
);

-- Table: tbl_book_authors
CREATE TABLE tbl_book_authors (
    book_authors_AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    book_authors_BookID INT,
    book_authors_AuthorName VARCHAR(255),
    FOREIGN KEY (book_authors_BookID) REFERENCES tbl_book(book_BookID)ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Table: tbl_library_branch
CREATE TABLE tbl_library_branch (
    library_branch_BranchID INT PRIMARY KEY AUTO_INCREMENT,
    library_branch_BranchName VARCHAR(255),
    library_branch_BranchAddress TEXT
);

-- Table: tbl_book_copies
CREATE TABLE tbl_book_copies (
    book_copies_CopiesID INT PRIMARY KEY AUTO_INCREMENT,
    book_copies_BookID INT,
    book_copies_BranchID INT,
    book_copies_No_Of_Copies INT,
    FOREIGN KEY (book_copies_BookID) REFERENCES tbl_book(book_BookID)ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (book_copies_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID)ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Table: tbl_borrower
CREATE TABLE tbl_borrower (
    borrower_CardNo INT PRIMARY KEY,
    borrower_BorrowerName VARCHAR(255),
    borrower_BorrowerAddress TEXT,
    borrower_BorrowerPhone VARCHAR(15)
);

-- Table: tbl_book_loans
CREATE TABLE tbl_book_loans (
    book_loans_LoansID INT PRIMARY KEY AUTO_INCREMENT,
    book_loans_BookID INT,
    book_loans_BranchID INT,
    book_loans_CardNo INT,
    book_loans_DateOut DATE,
    book_loans_DueDate DATE,
    FOREIGN KEY (book_loans_BookID) REFERENCES tbl_book(book_BookID)ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (book_loans_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID)ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (book_loans_CardNo) REFERENCES tbl_borrower(borrower_CardNo)ON UPDATE CASCADE
    ON DELETE CASCADE
);

select * from tbl_publisher;

SET GLOBAL LOCAL_INFILE=ON;
LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/publisher.csv'
INTO TABLE tbl_publisher
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone);

SELECT * FROM tbl_book;

LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/authors.csv'
INTO TABLE tbl_book_authors
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(book_authors_BookID, book_authors_AuthorName);

select * from tbl_book_authors;

LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/library branch.csv'
INTO TABLE tbl_library_branch
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(library_branch_BranchName,library_branch_BranchAddress);

select * from tbl_library_branch;

LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/book copies.csv'
INTO TABLE tbl_book_copies
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(book_copies_BookID,book_copies_BranchID,book_copies_No_Of_Copies);

select * from tbl_book_copies;

LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/borrower.csv'
INTO TABLE tbl_borrower
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(borrower_CardNo,borrower_BorrowerName,borrower_BorrowerAddress,borrower_BorrowerPhone);

select * from tbl_borrower;

LOAD DATA LOCAL INFILE 'C:/Users/Sai/OneDrive/Desktop/SQL/Library Mangement System/book loans.csv'
INTO TABLE tbl_book_loans
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(book_loans_BookID,book_loans_BranchID,book_loans_CardNo,book_loans_DateOut,book_loans_DueDate);

select * from tbl_book_loans;



















