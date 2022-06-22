SELECT Users.document_number AS Documento, account_balances.balance AS Saldo_Cliente, goals.balance AS Saldo_Bolsillo, 
goals.end_date - pocket.balance AS Dias_Completar
FROM Users
INNER JOIN account_balances ON account_balances.user_id = Users.user_id
INNER JOIN pocket_balances ON  account_balances.account_id = pocket_balances.account_id  
INNER JOIN goals ON pocket_balances.pocket_id = goals.pocket_id
WHEN Users.document_number = 52123123

