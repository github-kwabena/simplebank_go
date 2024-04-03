-- name: CreateAccount :execresult
INSERT INTO accounts (
    owner, balance, currency
) VALUES (
             ?, ?, ?
         );

-- name: GetAccount :one
SELECT * FROM accounts
WHERE id = ? LIMIT 1;

-- name: ListAccounts :many
SELECT * FROM accounts
ORDER BY id;

-- name: UpdateAccount :exec
UPDATE accounts
SET balance = 2
WHERE id = 1;


-- name: DeleteAccount :exec
DELETE FROM accounts WHERE id = 1;