module Interpreter where 

import Lexer
import Parser

isValue :: Expr -> Bool 
isValue BTrue = True
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True 
isValue _ = False

subst :: String -> Expr -> Expr -> Expr 
subst x n BTrue = BTrue
subst x n BFalse = BFalse 
subst x n (Num y) = Num y
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Var v) | x == v = n 
                  | otherwise = Var v
subst x n (Lam v t e) = Lam v t (subst x n e)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)


step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e2) = Add (Num n) (step e2)
step (Add e1 e2) = Add (step e1) e2 
step (And BFalse e2) = BFalse 
step (And BTrue e2)  = e2 
step (And e1 e2) = And (step e1) e2
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2 
step (If e1 e2 e3) = If (step e1) e2 e3
step (App (Lam x t b) e) | isValue e = subst x e b 
                       | otherwise = App (Lam x t b) (step e)
step (App e1 e2) = App (step e1) e2 

eval :: Expr -> Expr
eval e | isValue e = e
       | otherwise = eval (step e)

