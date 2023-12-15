{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,203) ([57504,300,32,0,0,0,65504,24876,57504,300,0,0,0,0,57504,300,0,0,0,4,57504,300,0,4,0,128,65504,24940,0,4096,65504,24877,0,0,0,0,57504,300,57504,300,57504,300,57504,300,57504,300,57504,300,57504,300,57504,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57504,300,0,3104,0,0,57504,300,65504,25388,0,16,0,3104,0,0,0,0,65504,24878,57504,300,0,16,57504,300,57504,300,0,0,0,0,0,3104,0,0,0,64,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'=='","'!'","'+'","'-'","'*'","'||'","\"&&\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'<'","'>'","%eof"]
        bit_start = st * 32
        bit_end = (st + 1) * 32
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..31]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (25) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_18
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_19
action_3 (10) = happyShift action_20
action_3 (11) = happyShift action_21
action_3 (12) = happyShift action_22
action_3 (13) = happyShift action_23
action_3 (14) = happyShift action_5
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (19) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (22) = happyShift action_10
action_3 (25) = happyShift action_11
action_3 (30) = happyShift action_24
action_3 (31) = happyShift action_25
action_3 (32) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (8) = happyShift action_4
action_4 (14) = happyShift action_5
action_4 (15) = happyShift action_6
action_4 (16) = happyShift action_7
action_4 (19) = happyShift action_8
action_4 (20) = happyShift action_9
action_4 (22) = happyShift action_10
action_4 (25) = happyShift action_11
action_4 (4) = happyGoto action_16
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (6) = happyShift action_2
action_7 (8) = happyShift action_4
action_7 (14) = happyShift action_5
action_7 (15) = happyShift action_6
action_7 (16) = happyShift action_7
action_7 (19) = happyShift action_8
action_7 (20) = happyShift action_9
action_7 (22) = happyShift action_10
action_7 (25) = happyShift action_11
action_7 (4) = happyGoto action_15
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_12

action_9 (19) = happyShift action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (8) = happyShift action_4
action_10 (14) = happyShift action_5
action_10 (15) = happyShift action_6
action_10 (16) = happyShift action_7
action_10 (19) = happyShift action_8
action_10 (20) = happyShift action_9
action_10 (22) = happyShift action_10
action_10 (25) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (19) = happyShift action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (24) = happyShift action_37
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_18
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_19
action_13 (10) = happyShift action_20
action_13 (11) = happyShift action_21
action_13 (12) = happyShift action_22
action_13 (13) = happyShift action_23
action_13 (14) = happyShift action_5
action_13 (15) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (19) = happyShift action_8
action_13 (20) = happyShift action_9
action_13 (22) = happyShift action_10
action_13 (23) = happyShift action_36
action_13 (25) = happyShift action_11
action_13 (30) = happyShift action_24
action_13 (31) = happyShift action_25
action_13 (4) = happyGoto action_17
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (29) = happyShift action_35
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_18
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_19
action_15 (10) = happyShift action_20
action_15 (11) = happyShift action_21
action_15 (12) = happyShift action_22
action_15 (13) = happyShift action_23
action_15 (14) = happyShift action_5
action_15 (15) = happyShift action_6
action_15 (16) = happyShift action_7
action_15 (17) = happyShift action_34
action_15 (19) = happyShift action_8
action_15 (20) = happyShift action_9
action_15 (22) = happyShift action_10
action_15 (25) = happyShift action_11
action_15 (30) = happyShift action_24
action_15 (31) = happyShift action_25
action_15 (4) = happyGoto action_17
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_18
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_19
action_16 (10) = happyShift action_20
action_16 (11) = happyShift action_21
action_16 (12) = happyShift action_22
action_16 (13) = happyShift action_23
action_16 (14) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (19) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (22) = happyShift action_10
action_16 (25) = happyShift action_11
action_16 (30) = happyShift action_24
action_16 (31) = happyShift action_25
action_16 (4) = happyGoto action_17
action_16 _ = happyReduce_5

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_18
action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_19
action_17 (10) = happyShift action_20
action_17 (11) = happyShift action_21
action_17 (12) = happyShift action_22
action_17 (13) = happyShift action_23
action_17 (14) = happyShift action_5
action_17 (15) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (19) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (22) = happyShift action_10
action_17 (25) = happyShift action_11
action_17 (30) = happyShift action_24
action_17 (31) = happyShift action_25
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_14

action_18 (6) = happyShift action_2
action_18 (8) = happyShift action_4
action_18 (14) = happyShift action_5
action_18 (15) = happyShift action_6
action_18 (16) = happyShift action_7
action_18 (19) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (22) = happyShift action_10
action_18 (25) = happyShift action_11
action_18 (4) = happyGoto action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (14) = happyShift action_5
action_19 (15) = happyShift action_6
action_19 (16) = happyShift action_7
action_19 (19) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (22) = happyShift action_10
action_19 (25) = happyShift action_11
action_19 (4) = happyGoto action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (14) = happyShift action_5
action_20 (15) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (19) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (25) = happyShift action_11
action_20 (4) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (8) = happyShift action_4
action_21 (14) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (22) = happyShift action_10
action_21 (25) = happyShift action_11
action_21 (4) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (14) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (19) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (25) = happyShift action_11
action_22 (4) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (14) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (16) = happyShift action_7
action_23 (19) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (25) = happyShift action_11
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (14) = happyShift action_5
action_24 (15) = happyShift action_6
action_24 (16) = happyShift action_7
action_24 (19) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (22) = happyShift action_10
action_24 (25) = happyShift action_11
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (14) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (19) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (25) = happyShift action_11
action_25 (4) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_18
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_19
action_26 (10) = happyShift action_20
action_26 (11) = happyShift action_21
action_26 (12) = happyShift action_22
action_26 (13) = happyShift action_23
action_26 (14) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (19) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (25) = happyShift action_11
action_26 (30) = happyShift action_24
action_26 (31) = happyShift action_25
action_26 (4) = happyGoto action_17
action_26 _ = happyReduce_18

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_18
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_19
action_27 (10) = happyShift action_20
action_27 (11) = happyShift action_21
action_27 (12) = happyShift action_22
action_27 (13) = happyShift action_23
action_27 (14) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (19) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (25) = happyShift action_11
action_27 (30) = happyShift action_24
action_27 (31) = happyShift action_25
action_27 (4) = happyGoto action_17
action_27 _ = happyReduce_17

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_18
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_19
action_28 (10) = happyShift action_20
action_28 (11) = happyShift action_21
action_28 (12) = happyShift action_22
action_28 (13) = happyShift action_23
action_28 (14) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (20) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (25) = happyShift action_11
action_28 (30) = happyShift action_24
action_28 (31) = happyShift action_25
action_28 (4) = happyGoto action_17
action_28 _ = happyReduce_10

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_18
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_19
action_29 (10) = happyShift action_20
action_29 (11) = happyShift action_21
action_29 (12) = happyShift action_22
action_29 (13) = happyShift action_23
action_29 (14) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (19) = happyShift action_8
action_29 (20) = happyShift action_9
action_29 (22) = happyShift action_10
action_29 (25) = happyShift action_11
action_29 (30) = happyShift action_24
action_29 (31) = happyShift action_25
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_9

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_18
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_19
action_30 (10) = happyShift action_20
action_30 (11) = happyShift action_21
action_30 (12) = happyShift action_22
action_30 (13) = happyShift action_23
action_30 (14) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (19) = happyShift action_8
action_30 (20) = happyShift action_9
action_30 (22) = happyShift action_10
action_30 (25) = happyShift action_11
action_30 (30) = happyShift action_24
action_30 (31) = happyShift action_25
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_8

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_18
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_19
action_31 (10) = happyShift action_20
action_31 (11) = happyShift action_21
action_31 (12) = happyShift action_22
action_31 (13) = happyShift action_23
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (19) = happyShift action_8
action_31 (20) = happyShift action_9
action_31 (22) = happyShift action_10
action_31 (25) = happyShift action_11
action_31 (30) = happyShift action_24
action_31 (31) = happyShift action_25
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_7

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_18
action_32 (8) = happyShift action_4
action_32 (10) = happyShift action_20
action_32 (11) = happyShift action_21
action_32 (12) = happyShift action_22
action_32 (13) = happyShift action_23
action_32 (14) = happyShift action_5
action_32 (15) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (19) = happyShift action_8
action_32 (20) = happyShift action_9
action_32 (22) = happyShift action_10
action_32 (25) = happyShift action_11
action_32 (30) = happyShift action_24
action_32 (31) = happyShift action_25
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_6

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_18
action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_19
action_33 (10) = happyShift action_20
action_33 (11) = happyShift action_21
action_33 (12) = happyShift action_22
action_33 (13) = happyShift action_23
action_33 (14) = happyShift action_5
action_33 (15) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (19) = happyShift action_8
action_33 (20) = happyShift action_9
action_33 (22) = happyShift action_10
action_33 (25) = happyShift action_11
action_33 (30) = happyShift action_24
action_33 (31) = happyShift action_25
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_4

action_34 (6) = happyShift action_2
action_34 (8) = happyShift action_4
action_34 (14) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (19) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (22) = happyShift action_10
action_34 (25) = happyShift action_11
action_34 (4) = happyGoto action_43
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (22) = happyShift action_40
action_35 (27) = happyShift action_41
action_35 (28) = happyShift action_42
action_35 (5) = happyGoto action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_15

action_37 (6) = happyShift action_2
action_37 (8) = happyShift action_4
action_37 (14) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (16) = happyShift action_7
action_37 (19) = happyShift action_8
action_37 (20) = happyShift action_9
action_37 (22) = happyShift action_10
action_37 (25) = happyShift action_11
action_37 (4) = happyGoto action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_18
action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_19
action_38 (10) = happyShift action_20
action_38 (11) = happyShift action_21
action_38 (12) = happyShift action_22
action_38 (13) = happyShift action_23
action_38 (14) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (16) = happyShift action_7
action_38 (19) = happyShift action_8
action_38 (20) = happyShift action_9
action_38 (22) = happyShift action_10
action_38 (25) = happyShift action_11
action_38 (26) = happyShift action_47
action_38 (30) = happyShift action_24
action_38 (31) = happyShift action_25
action_38 (4) = happyGoto action_17
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (21) = happyShift action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (22) = happyShift action_40
action_40 (27) = happyShift action_41
action_40 (28) = happyShift action_42
action_40 (5) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_19

action_42 _ = happyReduce_20

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_18
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_19
action_43 (10) = happyShift action_20
action_43 (11) = happyShift action_21
action_43 (12) = happyShift action_22
action_43 (13) = happyShift action_23
action_43 (14) = happyShift action_5
action_43 (15) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (18) = happyShift action_44
action_43 (19) = happyShift action_8
action_43 (20) = happyShift action_9
action_43 (22) = happyShift action_10
action_43 (25) = happyShift action_11
action_43 (30) = happyShift action_24
action_43 (31) = happyShift action_25
action_43 (4) = happyGoto action_17
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (8) = happyShift action_4
action_44 (14) = happyShift action_5
action_44 (15) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (19) = happyShift action_8
action_44 (20) = happyShift action_9
action_44 (22) = happyShift action_10
action_44 (25) = happyShift action_11
action_44 (4) = happyGoto action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (21) = happyShift action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (8) = happyShift action_4
action_46 (14) = happyShift action_5
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_7
action_46 (19) = happyShift action_8
action_46 (20) = happyShift action_9
action_46 (22) = happyShift action_10
action_46 (25) = happyShift action_11
action_46 (4) = happyGoto action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (8) = happyShift action_4
action_47 (14) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (16) = happyShift action_7
action_47 (19) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (22) = happyShift action_10
action_47 (25) = happyShift action_11
action_47 (4) = happyGoto action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_2
action_48 (7) = happyShift action_18
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_19
action_48 (10) = happyShift action_20
action_48 (11) = happyShift action_21
action_48 (12) = happyShift action_22
action_48 (13) = happyShift action_23
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (22) = happyShift action_10
action_48 (25) = happyShift action_11
action_48 (30) = happyShift action_24
action_48 (31) = happyShift action_25
action_48 (4) = happyGoto action_17
action_48 _ = happyReduce_16

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_18
action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_19
action_49 (10) = happyShift action_20
action_49 (11) = happyShift action_21
action_49 (12) = happyShift action_22
action_49 (13) = happyShift action_23
action_49 (14) = happyShift action_5
action_49 (15) = happyShift action_6
action_49 (16) = happyShift action_7
action_49 (19) = happyShift action_8
action_49 (20) = happyShift action_9
action_49 (22) = happyShift action_10
action_49 (25) = happyShift action_11
action_49 (30) = happyShift action_24
action_49 (31) = happyShift action_25
action_49 (4) = happyGoto action_17
action_49 _ = happyReduce_13

action_50 (22) = happyShift action_40
action_50 (27) = happyShift action_41
action_50 (28) = happyShift action_42
action_50 (5) = happyGoto action_52
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_18
action_51 (8) = happyShift action_4
action_51 (9) = happyShift action_19
action_51 (10) = happyShift action_20
action_51 (11) = happyShift action_21
action_51 (12) = happyShift action_22
action_51 (13) = happyShift action_23
action_51 (14) = happyShift action_5
action_51 (15) = happyShift action_6
action_51 (16) = happyShift action_7
action_51 (19) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (22) = happyShift action_10
action_51 (25) = happyShift action_11
action_51 (30) = happyShift action_24
action_51 (31) = happyShift action_25
action_51 (4) = happyGoto action_17
action_51 _ = happyReduce_11

action_52 (23) = happyShift action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_21

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equality happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_21 = happyReduce 5 5 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenEquality -> cont 7;
	TokenNot -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenOr -> cont 12;
	TokenAnd -> cont 13;
	TokenTrue -> cont 14;
	TokenFalse -> cont 15;
	TokenIf -> cont 16;
	TokenThen -> cont 17;
	TokenElse -> cont 18;
	TokenVar happy_dollar_dollar -> cont 19;
	TokenLam -> cont 20;
	TokenArrow -> cont 21;
	TokenLParen -> cont 22;
	TokenRParen -> cont 23;
	TokenEq -> cont 24;
	TokenLet -> cont 25;
	TokenIn -> cont 26;
	TokenBoolean -> cont 27;
	TokenNumber -> cont 28;
	TokenColon -> cont 29;
	TokenLessThan -> cont 30;
	TokenGreaterThan -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
