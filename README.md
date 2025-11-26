
<h1>📚 Library Management System – SQL Project</h1>

<h2>🔍 Overview</h2>
<p>
This project builds a complete <strong>Library Management System database</strong> using SQL. 
It models real-world library operations including books, borrowers, publishers, authors, branches, 
inventory, and book loans. Analytical queries are included to understand book usage and borrower behavior across branches.
</p>

<hr>

<h2>🏗 Database Structure (7 Tables)</h2>

<table>
  <tr>
    <th>Table Name</th>
    <th>Purpose</th>
  </tr>
  <tr>
    <td><code>tbl_publisher</code></td>
    <td>Stores publisher details</td>
  </tr>
  <tr>
    <td><code>tbl_book</code></td>
    <td>Stores book details with publisher info</td>
  </tr>
  <tr>
    <td><code>tbl_book_authors</code></td>
    <td>Stores authors for each book</td>
  </tr>
  <tr>
    <td><code>tbl_library_branch</code></td>
    <td>Stores library branch details</td>
  </tr>
  <tr>
    <td><code>tbl_book_copies</code></td>
    <td>Stores book inventory per branch</td>
  </tr>
  <tr>
    <td><code>tbl_borrower</code></td>
    <td>Stores borrower/member details</td>
  </tr>
  <tr>
    <td><code>tbl_book_loans</code></td>
    <td>Stores book loan/issue details</td>
  </tr>
</table>

<p>📎 Full SQL schema and queries are included in <strong><code>Tables.sql and Tasks.sql</code></strong></p>

<hr>

<h2>🎯 Project Objective</h2>
<p>
To design and analyze a structured SQL database that manages books, branches, loans, and borrower activity — turning raw data into <strong>actionable insights</strong> for library management and decision-making.
</p>

<hr>

<h2>📌 Key Use Cases (SQL Queries Included)</h2>
<ul>
  <li>Copies of a specific book at a given branch</li>
  <li>Borrowers who have no issued books</li>
  <li>Borrowers with more than 5 books issued</li>
  <li>Branch-wise loan performance</li>
  <li>Book availability & demand across branches</li>
  <li>Author-based queries (e.g., Stephen King inventory)</li>
  <li>Detailed loan summary by date and branch</li>
</ul>

<hr>

<h2>📊 Dataset Files Included</h2>

<table>
  <tr>
    <th>File Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>authors.csv</code></td>
    <td>Author information</td>
  </tr>
  <tr>
    <td><code>books.csv</code></td>
    <td>Book details</td>
  </tr>
  <tr>
    <td><code>book copies.csv</code></td>
    <td>Copies available per branch</td>
  </tr>
  <tr>
    <td><code>book loans.csv</code></td>
    <td>Loan/issue records</td>
  </tr>
  <tr>
    <td><code>borrower.csv</code></td>
    <td>Library members</td>
  </tr>
  <tr>
    <td><code>publisher.csv</code></td>
    <td>Publisher information</td>
  </tr>
  <tr>
    <td><code>library branch.csv</code></td>
    <td>Branch-wise details <strong>(NEW)</strong> 🏫</td>
  </tr>
</table>

<hr>

<h2>📎 Files in This Repository</h2>

<table>
  <tr>
    <th>File</th>
    <th>Type</th>
  </tr>
  <tr>
    <td><strong>Tasks.sql and Tables.sql</strong></td>
    <td>Full SQL schema + sample data + analytical queries</td>
  </tr>
  <tr>
    <td><strong>LIBRARY MANAGEMENT SYSTEM.pptx</strong></td>
    <td>Project presentation (ER model, schema explanation, insights)</td>
  </tr>
  <tr>
    <td><strong>.csv files</strong></td>
    <td>Raw datasets required to build the Library DB</td>
  </tr>
</table>

<hr>

<h2>💡 Final Insights</h2>
<ul>
  <li>Book distribution varies across branches → optimize inventory</li>
  <li>Certain authors/titles are more popular → increase copies</li>
  <li>Few borrowers issue most books → targeted engagement strategy</li>
  <li>Queries reveal patterns to improve library services</li>
</ul>

<hr>

<h2>👩‍💻 Author</h2>
<p>
<strong>Teemara Sai</strong><br>
💡 Interested in SQL, Databases & Data Analysis
</p>
