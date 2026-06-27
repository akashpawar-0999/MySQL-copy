/*

=============================================================================
REGEXP (Regular Expression)
=============================================================================

REGEXP is used to match a pattern instead of an exact string.

Syntax:
column REGEXP 'pattern'

Example:
WHERE name REGEXP '^A'

Matches:
Akash
Alex
Ankit

Doesn't Match:
John
Rohan

=============================================================================
LeetCode Problem: Find Users With Valid E-Mails
=============================================================================

Problem Link:
https://leetcode.com/problems/find-users-with-valid-e-mails/

Question:

Table: Users

+----------+---------+
| Column   | Type    |
+----------+---------+
| user_id  | int     |
| name     | varchar |
| mail     | varchar |
+----------+---------+

user_id is the primary key.

Each row contains the name and email of a user.

A valid e-mail has the following properties:

1. The prefix name (before '@') must start with a letter.
2. The prefix name may contain:
   - Uppercase letters (A-Z)
   - Lowercase letters (a-z)
   - Digits (0-9)
   - Underscore (_)
   - Dot (.)
   - Hyphen (-)
3. The domain must be exactly:
   @leetcode.com

Return all valid email addresses.

=============================================================================
Accepted SQL Solution
=============================================================================

SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';

=============================================================================
Pattern Breakdown
=============================================================================

^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

^
↓
Start of string
-----------------------------------------------------------------------------

[A-Za-z]
↓
First character must be a letter
-----------------------------------------------------------------------------

[A-Za-z0-9_.-]*
↓
Remaining characters can be:
Letters
Digits
Underscore (_)
Dot (.)
Hyphen (-)
-----------------------------------------------------------------------------

*
↓
Zero or more occurrences
-----------------------------------------------------------------------------

@leetcode
↓
Must literally contain @leetcode
-----------------------------------------------------------------------------

\.
↓
Literal dot
-----------------------------------------------------------------------------

com
↓
Must literally contain com
-----------------------------------------------------------------------------

$
↓
End of string

=============================================================================
Examples
=============================================================================

✓ Valid

akash@leetcode.com

A123@leetcode.com

john_doe@leetcode.com

abc.xyz@leetcode.com

abc-12@leetcode.com

--------------------------------------------

✗ Invalid

1akash@leetcode.com
Starts with number

_akash@leetcode.com
Starts with underscore

akash@gmail.com
Wrong domain

akash@leetcode.co
Wrong extension

akash@leetcode.com.in
Extra characters after .com


=============================================================================
Pattern Used in This Problem
=============================================================================

^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$

Meaning:
Start of string                                                                     -- ^
↓
First character must be a letter                                                    -- [A-Za-z]
↓
Remaining characters can be letters, digits, underscore(_), dot(.), or hyphen(-)    -- [A-Za-z0-9_.-]
↓
Zero or more occurrences of [A-Za-z0-9_.-]                                          -- *
↓
Must contain @leetcode.com                                                          -- @leetcode
↓
Nothing is allowed after ".com"                                                     -- \.com
↓
End of string                                                                       --$

=============================================================================
Meaning of Each Symbol
=============================================================================

^
Meaning:
Start of the string.

Example:
^A

Matches:
Akash
Alex

Doesn't Match:
My name is Akash


----------------------------------------------------

$

Meaning:
End of the string.

Example:
com$

Matches:
leetcode.com

Doesn't Match:
leetcode.com.in


----------------------------------------------------

.

Meaning:
Matches ANY single character.

Example:
a.c

Matches:
abc
axc
a9c


----------------------------------------------------

\.

Meaning:
Matches a literal dot (.)

Why?
Because "." normally means any character.

Example:
leetcode\.com

Matches:
leetcode.com

Doesn't Match:
leetcodeXcom


----------------------------------------------------

[A-Z]

Meaning:
Any uppercase letter.

Matches:
A
B
Z


----------------------------------------------------

[a-z]

Meaning:
Any lowercase letter.

Matches:
a
b
z


----------------------------------------------------

[A-Za-z]

Meaning:
Any alphabet (uppercase or lowercase).

Matches:
A
a
Z
x


----------------------------------------------------

[0-9]

Meaning:
Any digit.

Matches:
0
5
9


----------------------------------------------------

[A-Za-z0-9_.-]

Meaning:
Allowed characters:

Letters
Digits
Underscore (_)
Dot (.)
Hyphen (-)


----------------------------------------------------

*

Meaning:
Zero or more occurrences.

Example:
A*

Matches:
(empty)
A
AA
AAA


----------------------------------------------------

+

Meaning:
One or more occurrences.

Example:
A+

Matches:
A
AA
AAA

Doesn't Match:
(empty)


----------------------------------------------------

?

Meaning:
Zero or one occurrence.

Example:
colou?r

Matches:
color
colour


----------------------------------------------------

|

Meaning:
OR operator.

Example:
cat|dog

Matches:
cat
dog


----------------------------------------------------

()

Meaning:
Groups expressions together.

Example:
(ab)+

Matches:
ab
abab
ababab


=============================================================================
Understanding the Pattern Used
=============================================================================

Pattern:

^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$

Explanation:

^
Start matching from beginning.

[A-Za-z]
First character must be an alphabet.

[A-Za-z0-9_.-]*
Remaining characters may contain:
Letters
Digits
Underscore(_)
Dot(.)
Hyphen(-)

*
Means zero or more characters.

@leetcode
Must literally contain "@leetcode"

\.
Literal dot.

com
Must literally contain "com"

$
End of string.


=============================================================================
Examples
=============================================================================

Valid Emails

akash@leetcode.com

A123@leetcode.com

john_doe@leetcode.com

abc.xyz@leetcode.com

abc-12@leetcode.com

------------------------------------------------------------------------------

Invalid Emails

1akash@leetcode.com
(Starts with number)

_akash@leetcode.com
(Starts with underscore)

akash@gmail.com
(Wrong domain)

akash@leetcode.co
(Wrong extension)

akash@leetcode.com.in
(Text exists after ".com")


=============================================================================
LIKE BINARY
=============================================================================

Syntax:

mail LIKE BINARY '%@leetcode.com'

Purpose:
Makes string comparison case-sensitive.

Example:

abc@leetcode.com
✓ Match

abc@LeetCode.com
✗ Doesn't Match


=============================================================================
Why LIKE BINARY is Not Needed Here
=============================================================================

Because REGEXP already checks:

@leetcode\.com$

So only lowercase "leetcode.com" is accepted.

Therefore this query is enough:

SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';


=============================================================================
REGEXP Cheat Sheet
=============================================================================

^          -> Start of string

$          -> End of string

.          -> Any one character

\.         -> Literal dot (.)

[A-Z]      -> Uppercase letter

[a-z]      -> Lowercase letter

[A-Za-z]   -> Any alphabet

[0-9]      -> Any digit

[A-Za-z0-9] -> Letters and digits

*          -> Zero or more occurrences

+          -> One or more occurrences

?          -> Zero or one occurrence

|          -> OR

()         -> Group expressions

[]         -> Character set

[^abc]     -> NOT a, b or c

\d         -> Any digit (0-9)

\D         -> Not a digit

\s         -> Whitespace

\S         -> Non-whitespace

\w         -> Letter, digit or underscore

\W         -> Anything except \w


=============================================================================
Interview Tips
=============================================================================

1. Use ^ to ensure matching starts from the beginning.

2. Use $ to ensure matching ends at the last character.

3. Use [] when only specific characters are allowed.

4. Use * for zero or more characters.

5. Use + for one or more characters.

6. Escape "." using "\." when you need an actual dot.

7. REGEXP checks patterns, whereas LIKE checks simple wildcards (% and _).

8. REGEXP is much more powerful than LIKE.

*/