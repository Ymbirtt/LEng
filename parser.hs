{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import IO

-- parser produced by Happy Version 1.18.6

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

action_0 (14) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail

action_1 (14) = happyShift action_2
action_1 _ = happyFail

action_2 (21) = happyShift action_9
action_2 (22) = happyShift action_10
action_2 (23) = happyShift action_11
action_2 (24) = happyShift action_12
action_2 (36) = happyShift action_13
action_2 (38) = happyShift action_14
action_2 (5) = happyGoto action_5
action_2 (6) = happyGoto action_6
action_2 (11) = happyGoto action_7
action_2 _ = happyFail

action_3 (40) = happyAccept
action_3 _ = happyFail

action_4 (15) = happyShift action_8
action_4 (21) = happyShift action_9
action_4 (22) = happyShift action_10
action_4 (23) = happyShift action_11
action_4 (24) = happyShift action_12
action_4 (36) = happyShift action_13
action_4 (38) = happyShift action_14
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 (11) = happyGoto action_7
action_4 _ = happyFail

action_5 (15) = happyShift action_31
action_5 _ = happyFail

action_6 (18) = happyShift action_30
action_6 _ = happyFail

action_7 (31) = happyShift action_29
action_7 _ = happyFail

action_8 _ = happyReduce_2

action_9 _ = happyReduce_34

action_10 (16) = happyShift action_28
action_10 _ = happyFail

action_11 _ = happyReduce_8

action_12 (16) = happyShift action_27
action_12 _ = happyFail

action_13 (16) = happyShift action_22
action_13 (19) = happyShift action_23
action_13 (20) = happyShift action_24
action_13 (21) = happyShift action_9
action_13 (32) = happyShift action_25
action_13 (33) = happyShift action_26
action_13 (7) = happyGoto action_16
action_13 (8) = happyGoto action_17
action_13 (9) = happyGoto action_18
action_13 (10) = happyGoto action_19
action_13 (11) = happyGoto action_20
action_13 (12) = happyGoto action_21
action_13 _ = happyFail

action_14 (14) = happyShift action_4
action_14 (4) = happyGoto action_15
action_14 _ = happyFail

action_15 (39) = happyShift action_50
action_15 _ = happyFail

action_16 (14) = happyShift action_4
action_16 (4) = happyGoto action_49
action_16 _ = happyFail

action_17 (25) = happyShift action_43
action_17 (26) = happyShift action_44
action_17 (27) = happyShift action_45
action_17 (28) = happyShift action_46
action_17 (29) = happyShift action_47
action_17 (30) = happyShift action_48
action_17 _ = happyFail

action_18 (32) = happyShift action_39
action_18 (33) = happyShift action_40
action_18 (34) = happyShift action_41
action_18 (35) = happyShift action_42
action_18 _ = happyReduce_24

action_19 _ = happyReduce_28

action_20 _ = happyReduce_31

action_21 _ = happyReduce_32

action_22 (16) = happyShift action_22
action_22 (19) = happyShift action_23
action_22 (20) = happyShift action_24
action_22 (21) = happyShift action_9
action_22 (32) = happyShift action_25
action_22 (33) = happyShift action_26
action_22 (8) = happyGoto action_38
action_22 (9) = happyGoto action_18
action_22 (10) = happyGoto action_19
action_22 (11) = happyGoto action_20
action_22 (12) = happyGoto action_21
action_22 _ = happyFail

action_23 _ = happyReduce_35

action_24 _ = happyReduce_27

action_25 (16) = happyShift action_22
action_25 (19) = happyShift action_23
action_25 (21) = happyShift action_9
action_25 (9) = happyGoto action_37
action_25 (10) = happyGoto action_19
action_25 (11) = happyGoto action_20
action_25 (12) = happyGoto action_21
action_25 _ = happyFail

action_26 (16) = happyShift action_22
action_26 (19) = happyShift action_23
action_26 (21) = happyShift action_9
action_26 (9) = happyGoto action_36
action_26 (10) = happyGoto action_19
action_26 (11) = happyGoto action_20
action_26 (12) = happyGoto action_21
action_26 _ = happyFail

action_27 (21) = happyShift action_9
action_27 (11) = happyGoto action_35
action_27 _ = happyFail

action_28 (16) = happyShift action_22
action_28 (19) = happyShift action_23
action_28 (20) = happyShift action_24
action_28 (21) = happyShift action_9
action_28 (32) = happyShift action_25
action_28 (33) = happyShift action_26
action_28 (8) = happyGoto action_34
action_28 (9) = happyGoto action_18
action_28 (10) = happyGoto action_19
action_28 (11) = happyGoto action_20
action_28 (12) = happyGoto action_21
action_28 _ = happyFail

action_29 (16) = happyShift action_22
action_29 (19) = happyShift action_23
action_29 (20) = happyShift action_24
action_29 (21) = happyShift action_9
action_29 (32) = happyShift action_25
action_29 (33) = happyShift action_26
action_29 (8) = happyGoto action_33
action_29 (9) = happyGoto action_18
action_29 (10) = happyGoto action_19
action_29 (11) = happyGoto action_20
action_29 (12) = happyGoto action_21
action_29 _ = happyFail

action_30 (21) = happyShift action_9
action_30 (22) = happyShift action_10
action_30 (23) = happyShift action_11
action_30 (24) = happyShift action_12
action_30 (36) = happyShift action_13
action_30 (38) = happyShift action_14
action_30 (5) = happyGoto action_32
action_30 (6) = happyGoto action_6
action_30 (11) = happyGoto action_7
action_30 _ = happyReduce_3

action_31 _ = happyReduce_1

action_32 _ = happyReduce_4

action_33 _ = happyReduce_5

action_34 (17) = happyShift action_69
action_34 _ = happyFail

action_35 (17) = happyShift action_68
action_35 _ = happyFail

action_36 (32) = happyShift action_66
action_36 (33) = happyShift action_67
action_36 (34) = happyShift action_41
action_36 (35) = happyShift action_42
action_36 _ = happyReduce_26

action_37 (32) = happyShift action_64
action_37 (33) = happyShift action_65
action_37 (34) = happyShift action_41
action_37 (35) = happyShift action_42
action_37 _ = happyReduce_25

action_38 (17) = happyShift action_63
action_38 _ = happyFail

action_39 (16) = happyShift action_22
action_39 (19) = happyShift action_23
action_39 (20) = happyShift action_24
action_39 (21) = happyShift action_9
action_39 (32) = happyShift action_25
action_39 (33) = happyShift action_26
action_39 (8) = happyGoto action_62
action_39 (9) = happyGoto action_18
action_39 (10) = happyGoto action_19
action_39 (11) = happyGoto action_20
action_39 (12) = happyGoto action_21
action_39 _ = happyFail

action_40 (16) = happyShift action_22
action_40 (19) = happyShift action_23
action_40 (20) = happyShift action_24
action_40 (21) = happyShift action_9
action_40 (32) = happyShift action_25
action_40 (33) = happyShift action_26
action_40 (8) = happyGoto action_61
action_40 (9) = happyGoto action_18
action_40 (10) = happyGoto action_19
action_40 (11) = happyGoto action_20
action_40 (12) = happyGoto action_21
action_40 _ = happyFail

action_41 (16) = happyShift action_22
action_41 (19) = happyShift action_23
action_41 (21) = happyShift action_9
action_41 (10) = happyGoto action_60
action_41 (11) = happyGoto action_20
action_41 (12) = happyGoto action_21
action_41 _ = happyFail

action_42 (16) = happyShift action_22
action_42 (19) = happyShift action_23
action_42 (21) = happyShift action_9
action_42 (10) = happyGoto action_59
action_42 (11) = happyGoto action_20
action_42 (12) = happyGoto action_21
action_42 _ = happyFail

action_43 (16) = happyShift action_22
action_43 (19) = happyShift action_23
action_43 (20) = happyShift action_24
action_43 (21) = happyShift action_9
action_43 (32) = happyShift action_25
action_43 (33) = happyShift action_26
action_43 (8) = happyGoto action_58
action_43 (9) = happyGoto action_18
action_43 (10) = happyGoto action_19
action_43 (11) = happyGoto action_20
action_43 (12) = happyGoto action_21
action_43 _ = happyFail

action_44 (16) = happyShift action_22
action_44 (19) = happyShift action_23
action_44 (20) = happyShift action_24
action_44 (21) = happyShift action_9
action_44 (32) = happyShift action_25
action_44 (33) = happyShift action_26
action_44 (8) = happyGoto action_57
action_44 (9) = happyGoto action_18
action_44 (10) = happyGoto action_19
action_44 (11) = happyGoto action_20
action_44 (12) = happyGoto action_21
action_44 _ = happyFail

action_45 (16) = happyShift action_22
action_45 (19) = happyShift action_23
action_45 (20) = happyShift action_24
action_45 (21) = happyShift action_9
action_45 (32) = happyShift action_25
action_45 (33) = happyShift action_26
action_45 (8) = happyGoto action_56
action_45 (9) = happyGoto action_18
action_45 (10) = happyGoto action_19
action_45 (11) = happyGoto action_20
action_45 (12) = happyGoto action_21
action_45 _ = happyFail

action_46 (16) = happyShift action_22
action_46 (19) = happyShift action_23
action_46 (20) = happyShift action_24
action_46 (21) = happyShift action_9
action_46 (32) = happyShift action_25
action_46 (33) = happyShift action_26
action_46 (8) = happyGoto action_55
action_46 (9) = happyGoto action_18
action_46 (10) = happyGoto action_19
action_46 (11) = happyGoto action_20
action_46 (12) = happyGoto action_21
action_46 _ = happyFail

action_47 (16) = happyShift action_22
action_47 (19) = happyShift action_23
action_47 (20) = happyShift action_24
action_47 (21) = happyShift action_9
action_47 (32) = happyShift action_25
action_47 (33) = happyShift action_26
action_47 (8) = happyGoto action_54
action_47 (9) = happyGoto action_18
action_47 (10) = happyGoto action_19
action_47 (11) = happyGoto action_20
action_47 (12) = happyGoto action_21
action_47 _ = happyFail

action_48 (16) = happyShift action_22
action_48 (19) = happyShift action_23
action_48 (20) = happyShift action_24
action_48 (21) = happyShift action_9
action_48 (32) = happyShift action_25
action_48 (33) = happyShift action_26
action_48 (8) = happyGoto action_53
action_48 (9) = happyGoto action_18
action_48 (10) = happyGoto action_19
action_48 (11) = happyGoto action_20
action_48 (12) = happyGoto action_21
action_48 _ = happyFail

action_49 (37) = happyShift action_52
action_49 _ = happyReduce_9

action_50 (16) = happyShift action_22
action_50 (19) = happyShift action_23
action_50 (20) = happyShift action_24
action_50 (21) = happyShift action_9
action_50 (32) = happyShift action_25
action_50 (33) = happyShift action_26
action_50 (7) = happyGoto action_51
action_50 (8) = happyGoto action_17
action_50 (9) = happyGoto action_18
action_50 (10) = happyGoto action_19
action_50 (11) = happyGoto action_20
action_50 (12) = happyGoto action_21
action_50 _ = happyFail

action_51 _ = happyReduce_11

action_52 (14) = happyShift action_4
action_52 (4) = happyGoto action_74
action_52 _ = happyFail

action_53 _ = happyReduce_15

action_54 _ = happyReduce_14

action_55 _ = happyReduce_16

action_56 _ = happyReduce_17

action_57 _ = happyReduce_13

action_58 _ = happyReduce_12

action_59 _ = happyReduce_30

action_60 _ = happyReduce_29

action_61 _ = happyReduce_19

action_62 _ = happyReduce_18

action_63 _ = happyReduce_33

action_64 (16) = happyShift action_22
action_64 (19) = happyShift action_23
action_64 (20) = happyShift action_24
action_64 (21) = happyShift action_9
action_64 (32) = happyShift action_25
action_64 (33) = happyShift action_26
action_64 (8) = happyGoto action_73
action_64 (9) = happyGoto action_18
action_64 (10) = happyGoto action_19
action_64 (11) = happyGoto action_20
action_64 (12) = happyGoto action_21
action_64 _ = happyFail

action_65 (16) = happyShift action_22
action_65 (19) = happyShift action_23
action_65 (20) = happyShift action_24
action_65 (21) = happyShift action_9
action_65 (32) = happyShift action_25
action_65 (33) = happyShift action_26
action_65 (8) = happyGoto action_72
action_65 (9) = happyGoto action_18
action_65 (10) = happyGoto action_19
action_65 (11) = happyGoto action_20
action_65 (12) = happyGoto action_21
action_65 _ = happyFail

action_66 (16) = happyShift action_22
action_66 (19) = happyShift action_23
action_66 (20) = happyShift action_24
action_66 (21) = happyShift action_9
action_66 (32) = happyShift action_25
action_66 (33) = happyShift action_26
action_66 (8) = happyGoto action_71
action_66 (9) = happyGoto action_18
action_66 (10) = happyGoto action_19
action_66 (11) = happyGoto action_20
action_66 (12) = happyGoto action_21
action_66 _ = happyFail

action_67 (16) = happyShift action_22
action_67 (19) = happyShift action_23
action_67 (20) = happyShift action_24
action_67 (21) = happyShift action_9
action_67 (32) = happyShift action_25
action_67 (33) = happyShift action_26
action_67 (8) = happyGoto action_70
action_67 (9) = happyGoto action_18
action_67 (10) = happyGoto action_19
action_67 (11) = happyGoto action_20
action_67 (12) = happyGoto action_21
action_67 _ = happyFail

action_68 _ = happyReduce_7

action_69 _ = happyReduce_6

action_70 _ = happyReduce_23

action_71 _ = happyReduce_21

action_72 _ = happyReduce_22

action_73 _ = happyReduce_20

action_74 _ = happyReduce_10

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	_
	 =  HappyAbsSyn4
		 (Empty
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Seq happy_var_1 Empty
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Ass happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Write happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 4 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Read happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn6
		 (WriteLn
	)

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Conditional happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 6 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Branch happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 6 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Loop happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Less happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Grtr happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Eql happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Neq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Geq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Leq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 8 happyReduction_20
happyReduction_20 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Add happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 8 happyReduction_21
happyReduction_21 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Add (Neg happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 4 8 happyReduction_22
happyReduction_22 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Sub happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 8 happyReduction_23
happyReduction_23 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Sub (Neg happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  8 happyReduction_25
happyReduction_25 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  8 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Neg happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  8 happyReduction_27
happyReduction_27 (HappyTerminal (STRING happy_var_1))
	 =  HappyAbsSyn8
		 (Str happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  9 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  9 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Variable happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  10 happyReduction_32
happyReduction_32 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn10
		 (Const happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  10 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  11 happyReduction_34
happyReduction_34 (HappyTerminal (IDENT happy_var_1))
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  12 happyReduction_35
happyReduction_35 (HappyTerminal (REAL happy_var_1))
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  13 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn13
		 (UPlus
	)

happyReduce_37 = happySpecReduce_1  13 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn13
		 (UMinus
	)

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BEGIN -> cont 14;
	END -> cont 15;
	LPAREN -> cont 16;
	RPAREN -> cont 17;
	SEMICOLON -> cont 18;
	REAL happy_dollar_dollar -> cont 19;
	STRING happy_dollar_dollar -> cont 20;
	IDENT happy_dollar_dollar -> cont 21;
	WRITE -> cont 22;
	WRITELN -> cont 23;
	READ -> cont 24;
	LESS -> cont 25;
	GRTR -> cont 26;
	LEQ -> cont 27;
	GEQ -> cont 28;
	EQL -> cont 29;
	NEQ -> cont 30;
	ASS -> cont 31;
	PLUS -> cont 32;
	MINUS -> cont 33;
	MULT -> cont 34;
	DIV -> cont 35;
	IF -> cont 36;
	ELSE -> cont 37;
	REP -> cont 38;
	UNTIL -> cont 39;
	_ -> happyError' (tk:tks)
	}

happyError_ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


--Called in the event of a parse error. I write awesome error messages, me
parseError :: [Token] -> a
parseError _ = error "Parse error"

--Describes a comparison between two expressions
data Comp = Less Expression Expression
          | Grtr Expression Expression
          | Leq Expression Expression
          | Geq Expression Expression
          | Eql Expression Expression
          | Neq Expression Expression
    deriving (Show, Eq)
    
--Describes some unary operator    
data UnOp = UPlus 
          | UMinus
    deriving (Show,Eq)
    
--Describes a mathematical expression
data Expression = Neg Expression 
                | Str String
                | Variable String
                | Const Double
                | Add Expression Expression
                | Sub Expression Expression
                | Mult Expression Expression
                | Div Expression Expression
    deriving (Show,Eq)            

--Wraps a sequence of instructions into a single structure
data Compound = Compound Sequence
    deriving (Show,Eq)

--Describes a sequence of instructions, empty denoting the start of the sequence
data Sequence = Seq Statement Sequence
              | Empty
    deriving (Show,Eq)

--Describes a single instruction
data Statement = Ass String Expression
               | Write Expression
               | WriteLn
               | Read String
               | Conditional Comp Sequence
               | Branch Comp Sequence Sequence
               | Loop Sequence Comp
    deriving (Show, Eq)
  
--Reads a file specified by the first string, parses it, then dumps the 
--resultant parse tree into the file specified by the second
parseFile :: String -> String -> IO()
parseFile inPath outPath = do inFile <- openFile inPath ReadMode
                              outFile <- openFile outPath WriteMode
                              y <- hGetContents inFile
                              hPutStr outFile ((show.parser.lexer) y)
                              hClose outFile
                              hClose inFile

--Replaces a nasty ugly bracketed string with a pretty indented string
nicelyFormat :: String -> String
nicelyFormat cs = nicelyFormat' cs [] 0
 where nicelyFormat' [] acc depth = reverse acc
       nicelyFormat' (c:cs) acc depth
         | c=='(' = nicelyFormat' cs ((replicate (depth+1) ' ')++"\n"++acc) (depth+1)
         | c==')' = nicelyFormat' cs ((replicate (depth-1) ' ')++acc) (depth-1)
         | otherwise = nicelyFormat' cs (c:acc) depth
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates\\GenericTemplate.hs" #-}








{-# LINE 51 "templates\\GenericTemplate.hs" #-}

{-# LINE 61 "templates\\GenericTemplate.hs" #-}

{-# LINE 70 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 148 "templates\\GenericTemplate.hs" #-}

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
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--	trace "failing" $ 
    	happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 311 "templates\\GenericTemplate.hs" #-}
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
