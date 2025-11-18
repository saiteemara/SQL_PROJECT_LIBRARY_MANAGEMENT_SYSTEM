-- 1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

select bc.book_copies_No_Of_Copies
from tbl_book_copies bc join 
tbl_book b on bc.book_copies_BookID = b.book_BookID
join tbl_library_branch lb on bc.book_copies_BranchID = lb.library_branch_BranchID
where b.book_Title = "The Lost Tribe" and lb.library_branch_BranchName = "Sharpstown";

-- 2.How many copies of the book titled "The Lost Tribe" are owned by each library branch?

select lb.library_branch_BranchName,bc.book_copies_No_Of_Copies
from tbl_book_copies bc 
join tbl_book b on bc.book_copies_BookID = b.book_BookID
join tbl_library_branch lb on bc.book_copies_BranchID = lb.library_branch_BranchID
where b.book_Title = "The Lost Tribe";

-- 3.Retrieve the names of all borrowers who do not have any books checked out.

SELECT borrower_BorrowerName
FROM tbl_borrower b
WHERE NOT EXISTS (
    SELECT 1
    FROM tbl_book_loans bl
    WHERE bl.book_loans_CardNo = b.borrower_CardNo
);

select  b.borrower_BorrowerName 
from tbl_borrower b
left join tbl_book_loans bl on b.borrower_CardNo = bl.book_loans_CardNo
where bl.book_loans_CardNo is null;

/* 4.For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18, 
retrieve the book title, the borrower's name, and the borrower's address */

select b.book_Title,br.borrower_BorrowerName,br.borrower_BorrowerAddress
FROM tbl_book_loans bl
JOIN tbl_book b ON bl.book_loans_BookID = b.book_BookID
JOIN tbl_borrower br ON bl.book_loans_CardNo = br.borrower_CardNo
JOIN tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
where lb.library_branch_BranchName = "Sharpstown" and bl.book_loans_DueDate = '2018-02-03';

-- 5.For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

select lb.library_branch_BranchName,count(*) AS total_books_loaned
from tbl_book_loans bl 
join tbl_library_branch lb on bl.book_loans_BranchID = lb.library_branch_BranchID
group by lb.library_branch_BranchName;

-- 6.Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.

SELECT br.borrower_BorrowerName, br.borrower_BorrowerAddress, COUNT(bl.book_loans_LoansID) AS books_checked_out
FROM tbl_borrower br
JOIN tbl_book_loans bl ON br.borrower_CardNo = bl.book_loans_CardNo
GROUP BY br.borrower_CardNo, br.borrower_BorrowerName, br.borrower_BorrowerAddress
HAVING COUNT(bl.book_loans_LoansID) > 5;

/* 7.For each book authored by "Stephen King", retrieve the title and the number of copies 
owned by the library branch whose name is "Central". */

SELECT b.book_Title, bc.book_copies_No_Of_Copies
FROM tbl_book_authors ba
JOIN tbl_book b ON ba.book_authors_BookID = b.book_BookID
JOIN tbl_book_copies bc ON b.book_BookID = bc.book_copies_BookID
JOIN tbl_library_branch lb ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE ba.book_authors_AuthorName = 'Stephen King' AND lb.library_branch_BranchName = 'Central';





