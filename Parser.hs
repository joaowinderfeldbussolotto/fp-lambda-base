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
happyExpList = Happy_Data_Array.listArray (0,214) ([57504,300,128,0,0,0,63488,19263,41016,11488,1,0,0,0,0,14376,75,0,0,0,16,2560,4814,0,256,0,32768,32768,46079,901,0,256,32760,14411,0,0,0,0,2560,4814,10240,19256,40960,11488,32769,45954,4,52746,18,14376,75,57504,300,33408,1203,0,64,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40960,11488,1,32768,48,0,0,14376,75,65504,58156,0,64,0,49664,0,0,0,0,32768,48127,900,52746,18,0,0,57504,300,0,64,2560,4814,10240,19256,0,0,0,0,0,0,194,0,0,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'=='","'!'","'+'","'-'","'*'","'||'","\"&&\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'<'","'>'","where","':='","%eof"]
        bit_start = st * 34
        bit_end = (st + 1) * 34
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..33]
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
action_3 (32) = happyShift action_26
action_3 (34) = happyAccept
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

action_12 (24) = happyShift action_39
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
action_13 (23) = happyShift action_38
action_13 (25) = happyShift action_11
action_13 (30) = happyShift action_24
action_13 (31) = happyShift action_25
action_13 (32) = happyShift action_26
action_13 (4) = happyGoto action_17
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (29) = happyShift action_37
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
action_15 (17) = happyShift action_36
action_15 (19) = happyShift action_8
action_15 (20) = happyShift action_9
action_15 (22) = happyShift action_10
action_15 (25) = happyShift action_11
action_15 (30) = happyShift action_24
action_15 (31) = happyShift action_25
action_15 (32) = happyShift action_26
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
action_16 (32) = happyShift action_26
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
action_17 (32) = happyShift action_26
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
action_18 (4) = happyGoto action_35
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
action_19 (4) = happyGoto action_34
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
action_20 (4) = happyGoto action_33
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
action_21 (4) = happyGoto action_32
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
action_22 (4) = happyGoto action_31
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
action_23 (4) = happyGoto action_30
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
action_24 (4) = happyGoto action_29
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
action_25 (4) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (19) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (33) = happyShift action_46
action_27 _ = happyFail (happyExpListPerState 27)

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
action_28 (32) = happyShift action_26
action_28 (4) = happyGoto action_17
action_28 _ = happyReduce_18

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
action_29 (32) = happyShift action_26
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_17

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
action_30 (32) = happyShift action_26
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_10

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
action_31 (32) = happyShift action_26
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_9

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_18
action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_19
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
action_32 (32) = happyShift action_26
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_8

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
action_33 (32) = happyShift action_26
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_7

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_18
action_34 (8) = happyShift action_4
action_34 (10) = happyShift action_20
action_34 (11) = happyShift action_21
action_34 (12) = happyShift action_22
action_34 (13) = happyShift action_23
action_34 (14) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (19) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (22) = happyShift action_10
action_34 (25) = happyShift action_11
action_34 (30) = happyShift action_24
action_34 (31) = happyShift action_25
action_34 (32) = happyShift action_26
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_6

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_18
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_19
action_35 (10) = happyShift action_20
action_35 (11) = happyShift action_21
action_35 (12) = happyShift action_22
action_35 (13) = happyShift action_23
action_35 (14) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (19) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (22) = happyShift action_10
action_35 (25) = happyShift action_11
action_35 (30) = happyShift action_24
action_35 (31) = happyShift action_25
action_35 (32) = happyShift action_26
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_4

action_36 (6) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (19) = happyShift action_8
action_36 (20) = happyShift action_9
action_36 (22) = happyShift action_10
action_36 (25) = happyShift action_11
action_36 (4) = happyGoto action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_42
action_37 (27) = happyShift action_43
action_37 (28) = happyShift action_44
action_37 (5) = happyGoto action_41
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_15

action_39 (6) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (14) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (16) = happyShift action_7
action_39 (19) = happyShift action_8
action_39 (20) = happyShift action_9
action_39 (22) = happyShift action_10
action_39 (25) = happyShift action_11
action_39 (4) = happyGoto action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_18
action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_19
action_40 (10) = happyShift action_20
action_40 (11) = happyShift action_21
action_40 (12) = happyShift action_22
action_40 (13) = happyShift action_23
action_40 (14) = happyShift action_5
action_40 (15) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (19) = happyShift action_8
action_40 (20) = happyShift action_9
action_40 (22) = happyShift action_10
action_40 (25) = happyShift action_11
action_40 (26) = happyShift action_51
action_40 (30) = happyShift action_24
action_40 (31) = happyShift action_25
action_40 (32) = happyShift action_26
action_40 (4) = happyGoto action_17
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (21) = happyShift action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (22) = happyShift action_42
action_42 (27) = happyShift action_43
action_42 (28) = happyShift action_44
action_42 (5) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_20

action_44 _ = happyReduce_21

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_18
action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_19
action_45 (10) = happyShift action_20
action_45 (11) = happyShift action_21
action_45 (12) = happyShift action_22
action_45 (13) = happyShift action_23
action_45 (14) = happyShift action_5
action_45 (15) = happyShift action_6
action_45 (16) = happyShift action_7
action_45 (18) = happyShift action_48
action_45 (19) = happyShift action_8
action_45 (20) = happyShift action_9
action_45 (22) = happyShift action_10
action_45 (25) = happyShift action_11
action_45 (30) = happyShift action_24
action_45 (31) = happyShift action_25
action_45 (32) = happyShift action_26
action_45 (4) = happyGoto action_17
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
action_46 (4) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_18
action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_19
action_47 (10) = happyShift action_20
action_47 (11) = happyShift action_21
action_47 (12) = happyShift action_22
action_47 (13) = happyShift action_23
action_47 (14) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (16) = happyShift action_7
action_47 (19) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (22) = happyShift action_10
action_47 (25) = happyShift action_11
action_47 (30) = happyShift action_24
action_47 (31) = happyShift action_25
action_47 (32) = happyShift action_26
action_47 (4) = happyGoto action_17
action_47 _ = happyReduce_19

action_48 (6) = happyShift action_2
action_48 (8) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (22) = happyShift action_10
action_48 (25) = happyShift action_11
action_48 (4) = happyGoto action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (21) = happyShift action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (8) = happyShift action_4
action_50 (14) = happyShift action_5
action_50 (15) = happyShift action_6
action_50 (16) = happyShift action_7
action_50 (19) = happyShift action_8
action_50 (20) = happyShift action_9
action_50 (22) = happyShift action_10
action_50 (25) = happyShift action_11
action_50 (4) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (8) = happyShift action_4
action_51 (14) = happyShift action_5
action_51 (15) = happyShift action_6
action_51 (16) = happyShift action_7
action_51 (19) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (22) = happyShift action_10
action_51 (25) = happyShift action_11
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (7) = happyShift action_18
action_52 (8) = happyShift action_4
action_52 (9) = happyShift action_19
action_52 (10) = happyShift action_20
action_52 (11) = happyShift action_21
action_52 (12) = happyShift action_22
action_52 (13) = happyShift action_23
action_52 (14) = happyShift action_5
action_52 (15) = happyShift action_6
action_52 (16) = happyShift action_7
action_52 (19) = happyShift action_8
action_52 (20) = happyShift action_9
action_52 (22) = happyShift action_10
action_52 (25) = happyShift action_11
action_52 (30) = happyShift action_24
action_52 (31) = happyShift action_25
action_52 (32) = happyShift action_26
action_52 (4) = happyGoto action_17
action_52 _ = happyReduce_16

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_18
action_53 (8) = happyShift action_4
action_53 (9) = happyShift action_19
action_53 (10) = happyShift action_20
action_53 (11) = happyShift action_21
action_53 (12) = happyShift action_22
action_53 (13) = happyShift action_23
action_53 (14) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (16) = happyShift action_7
action_53 (19) = happyShift action_8
action_53 (20) = happyShift action_9
action_53 (22) = happyShift action_10
action_53 (25) = happyShift action_11
action_53 (30) = happyShift action_24
action_53 (31) = happyShift action_25
action_53 (32) = happyShift action_26
action_53 (4) = happyGoto action_17
action_53 _ = happyReduce_13

action_54 (22) = happyShift action_42
action_54 (27) = happyShift action_43
action_54 (28) = happyShift action_44
action_54 (5) = happyGoto action_56
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_18
action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_19
action_55 (10) = happyShift action_20
action_55 (11) = happyShift action_21
action_55 (12) = happyShift action_22
action_55 (13) = happyShift action_23
action_55 (14) = happyShift action_5
action_55 (15) = happyShift action_6
action_55 (16) = happyShift action_7
action_55 (19) = happyShift action_8
action_55 (20) = happyShift action_9
action_55 (22) = happyShift action_10
action_55 (25) = happyShift action_11
action_55 (30) = happyShift action_24
action_55 (31) = happyShift action_25
action_55 (32) = happyShift action_26
action_55 (4) = happyGoto action_17
action_55 _ = happyReduce_11

action_56 (23) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_22

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

happyReduce_19 = happyReduce 5 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Where happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_22 = happyReduce 5 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

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
	TokenWhere -> cont 32;
	TokenWhereAssign -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
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
