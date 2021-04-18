CREATE TABLE IF NOT EXISTS loan_transactions AS
SELECT loan.id, loan.amount, loan.user_id, u.created, t.transaction_fee, t.t_type
FROM users AS u, transactions AS t, loans AS loan
WHERE (loan_status = 'active' or loan_status = 'repaid' AND t_type = 'disbursement');

SELECT * FROM loan_transactions