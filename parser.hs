{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import IO

-- parser produced by Happy Version 1.18.6

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

action_0 (9) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail

action_1 (9) = happyShift action_2
action_1 _ = happyFail

action_2 (16) = happyShift action_8
action_2 (17) = happyShift action_9
action_2 (18) = happyShift action_10
action_2 (19) = happyShift action_11
action_2 (31) = happyShift action_12
action_2 (33) = happyShift action_13
action_2 (5) = happyGoto action_5
action_2 (6) = happyGoto action_6
action_2 _ = happyFail

action_3 (35) = happyAccept
action_3 _ = happyFail

action_4 (10) = happyShift action_7
action_4 (16) = happyShift action_8
action_4 (17) = happyShift action_9
action_4 (18) = happyShift action_10
action_4 (19) = happyShift action_11
action_4 (31) = happyShift action_12
action_4 (33) = happyShift action_13
action_4 (5) = happyGoto action_5
action_4 (6) = happyGoto action_6
action_4 _ = happyFail

action_5 (10) = happyShift action_27
action_5 _ = happyFail

action_6 (13) = happyShift action_26
action_6 _ = happyFail

action_7 _ = happyReduce_2

action_8 (26) = happyShift action_25
action_8 _ = happyFail

action_9 (11) = happyShift action_24
action_9 _ = happyFail

action_10 _ = happyReduce_8

action_11 (11) = happyShift action_23
action_11 _ = happyFail

action_12 (11) = happyShift action_17
action_12 (14) = happyShift action_18
action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (27) = happyShift action_21
action_12 (28) = happyShift action_22
action_12 (7) = happyGoto action_15
action_12 (8) = happyGoto action_16
action_12 _ = happyFail

action_13 (9) = happyShift action_4
action_13 (4) = happyGoto action_14
action_13 _ = happyFail

action_14 (34) = happyShift action_46
action_14 _ = happyFail

action_15 (9) = happyShift action_4
action_15 (4) = happyGoto action_45
action_15 _ = happyFail

action_16 (20) = happyShift action_35
action_16 (21) = happyShift action_36
action_16 (22) = happyShift action_37
action_16 (23) = happyShift action_38
action_16 (24) = happyShift action_39
action_16 (25) = happyShift action_40
action_16 (27) = happyShift action_41
action_16 (28) = happyShift action_42
action_16 (29) = happyShift action_43
action_16 (30) = happyShift action_44
action_16 _ = happyFail

action_17 (11) = happyShift action_17
action_17 (14) = happyShift action_18
action_17 (15) = happyShift action_19
action_17 (16) = happyShift action_20
action_17 (27) = happyShift action_21
action_17 (28) = happyShift action_22
action_17 (8) = happyGoto action_34
action_17 _ = happyFail

action_18 _ = happyReduce_26

action_19 _ = happyReduce_27

action_20 _ = happyReduce_25

action_21 (11) = happyShift action_17
action_21 (14) = happyShift action_18
action_21 (15) = happyShift action_19
action_21 (16) = happyShift action_20
action_21 (27) = happyShift action_21
action_21 (28) = happyShift action_22
action_21 (8) = happyGoto action_33
action_21 _ = happyFail

action_22 (11) = happyShift action_17
action_22 (14) = happyShift action_18
action_22 (15) = happyShift action_19
action_22 (16) = happyShift action_20
action_22 (27) = happyShift action_21
action_22 (28) = happyShift action_22
action_22 (8) = happyGoto action_32
action_22 _ = happyFail

action_23 (16) = happyShift action_31
action_23 _ = happyFail

action_24 (11) = happyShift action_17
action_24 (14) = happyShift action_18
action_24 (15) = happyShift action_19
action_24 (16) = happyShift action_20
action_24 (27) = happyShift action_21
action_24 (28) = happyShift action_22
action_24 (8) = happyGoto action_30
action_24 _ = happyFail

action_25 (11) = happyShift action_17
action_25 (14) = happyShift action_18
action_25 (15) = happyShift action_19
action_25 (16) = happyShift action_20
action_25 (27) = happyShift action_21
action_25 (28) = happyShift action_22
action_25 (8) = happyGoto action_29
action_25 _ = happyFail

action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (18) = happyShift action_10
action_26 (19) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (33) = happyShift action_13
action_26 (5) = happyGoto action_28
action_26 (6) = happyGoto action_6
action_26 _ = happyReduce_3

action_27 _ = happyReduce_1

action_28 _ = happyReduce_4

action_29 (27) = happyShift action_41
action_29 (28) = happyShift action_42
action_29 (29) = happyShift action_43
action_29 (30) = happyShift action_44
action_29 _ = happyReduce_5

action_30 (12) = happyShift action_61
action_30 (27) = happyShift action_41
action_30 (28) = happyShift action_42
action_30 (29) = happyShift action_43
action_30 (30) = happyShift action_44
action_30 _ = happyFail

action_31 (12) = happyShift action_60
action_31 _ = happyFail

action_32 _ = happyReduce_23

action_33 _ = happyReduce_24

action_34 (12) = happyShift action_59
action_34 (27) = happyShift action_41
action_34 (28) = happyShift action_42
action_34 (29) = happyShift action_43
action_34 (30) = happyShift action_44
action_34 _ = happyFail

action_35 (11) = happyShift action_17
action_35 (14) = happyShift action_18
action_35 (15) = happyShift action_19
action_35 (16) = happyShift action_20
action_35 (27) = happyShift action_21
action_35 (28) = happyShift action_22
action_35 (8) = happyGoto action_58
action_35 _ = happyFail

action_36 (11) = happyShift action_17
action_36 (14) = happyShift action_18
action_36 (15) = happyShift action_19
action_36 (16) = happyShift action_20
action_36 (27) = happyShift action_21
action_36 (28) = happyShift action_22
action_36 (8) = happyGoto action_57
action_36 _ = happyFail

action_37 (11) = happyShift action_17
action_37 (14) = happyShift action_18
action_37 (15) = happyShift action_19
action_37 (16) = happyShift action_20
action_37 (27) = happyShift action_21
action_37 (28) = happyShift action_22
action_37 (8) = happyGoto action_56
action_37 _ = happyFail

action_38 (11) = happyShift action_17
action_38 (14) = happyShift action_18
action_38 (15) = happyShift action_19
action_38 (16) = happyShift action_20
action_38 (27) = happyShift action_21
action_38 (28) = happyShift action_22
action_38 (8) = happyGoto action_55
action_38 _ = happyFail

action_39 (11) = happyShift action_17
action_39 (14) = happyShift action_18
action_39 (15) = happyShift action_19
action_39 (16) = happyShift action_20
action_39 (27) = happyShift action_21
action_39 (28) = happyShift action_22
action_39 (8) = happyGoto action_54
action_39 _ = happyFail

action_40 (11) = happyShift action_17
action_40 (14) = happyShift action_18
action_40 (15) = happyShift action_19
action_40 (16) = happyShift action_20
action_40 (27) = happyShift action_21
action_40 (28) = happyShift action_22
action_40 (8) = happyGoto action_53
action_40 _ = happyFail

action_41 (11) = happyShift action_17
action_41 (14) = happyShift action_18
action_41 (15) = happyShift action_19
action_41 (16) = happyShift action_20
action_41 (27) = happyShift action_21
action_41 (28) = happyShift action_22
action_41 (8) = happyGoto action_52
action_41 _ = happyFail

action_42 (11) = happyShift action_17
action_42 (14) = happyShift action_18
action_42 (15) = happyShift action_19
action_42 (16) = happyShift action_20
action_42 (27) = happyShift action_21
action_42 (28) = happyShift action_22
action_42 (8) = happyGoto action_51
action_42 _ = happyFail

action_43 (11) = happyShift action_17
action_43 (14) = happyShift action_18
action_43 (15) = happyShift action_19
action_43 (16) = happyShift action_20
action_43 (27) = happyShift action_21
action_43 (28) = happyShift action_22
action_43 (8) = happyGoto action_50
action_43 _ = happyFail

action_44 (11) = happyShift action_17
action_44 (14) = happyShift action_18
action_44 (15) = happyShift action_19
action_44 (16) = happyShift action_20
action_44 (27) = happyShift action_21
action_44 (28) = happyShift action_22
action_44 (8) = happyGoto action_49
action_44 _ = happyFail

action_45 (32) = happyShift action_48
action_45 _ = happyReduce_9

action_46 (11) = happyShift action_17
action_46 (14) = happyShift action_18
action_46 (15) = happyShift action_19
action_46 (16) = happyShift action_20
action_46 (27) = happyShift action_21
action_46 (28) = happyShift action_22
action_46 (7) = happyGoto action_47
action_46 (8) = happyGoto action_16
action_46 _ = happyFail

action_47 _ = happyReduce_11

action_48 (9) = happyShift action_4
action_48 (4) = happyGoto action_62
action_48 _ = happyFail

action_49 _ = happyReduce_21

action_50 _ = happyReduce_20

action_51 (29) = happyShift action_43
action_51 (30) = happyShift action_44
action_51 _ = happyReduce_19

action_52 (29) = happyShift action_43
action_52 (30) = happyShift action_44
action_52 _ = happyReduce_18

action_53 (27) = happyShift action_41
action_53 (28) = happyShift action_42
action_53 (29) = happyShift action_43
action_53 (30) = happyShift action_44
action_53 _ = happyReduce_15

action_54 (27) = happyShift action_41
action_54 (28) = happyShift action_42
action_54 (29) = happyShift action_43
action_54 (30) = happyShift action_44
action_54 _ = happyReduce_14

action_55 (27) = happyShift action_41
action_55 (28) = happyShift action_42
action_55 (29) = happyShift action_43
action_55 (30) = happyShift action_44
action_55 _ = happyReduce_16

action_56 (27) = happyShift action_41
action_56 (28) = happyShift action_42
action_56 (29) = happyShift action_43
action_56 (30) = happyShift action_44
action_56 _ = happyReduce_17

action_57 (27) = happyShift action_41
action_57 (28) = happyShift action_42
action_57 (29) = happyShift action_43
action_57 (30) = happyShift action_44
action_57 _ = happyReduce_13

action_58 (27) = happyShift action_41
action_58 (28) = happyShift action_42
action_58 (29) = happyShift action_43
action_58 (30) = happyShift action_44
action_58 _ = happyReduce_12

action_59 _ = happyReduce_22

action_60 _ = happyReduce_7

action_61 _ = happyReduce_6

action_62 _ = happyReduce_10

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
	(HappyTerminal (IDENT happy_var_1 _))
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
	(HappyTerminal (IDENT happy_var_3 _)) `HappyStk`
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
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Div happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Neg happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  8 happyReduction_25
happyReduction_25 (HappyTerminal (IDENT happy_var_1 _))
	 =  HappyAbsSyn8
		 (Variable happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  8 happyReduction_26
happyReduction_26 (HappyTerminal (REAL happy_var_1 _))
	 =  HappyAbsSyn8
		 (Const happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  8 happyReduction_27
happyReduction_27 (HappyTerminal (STRING happy_var_1 _))
	 =  HappyAbsSyn8
		 (Str happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BEGIN _ -> cont 9;
	END _ -> cont 10;
	LPAREN _ -> cont 11;
	RPAREN _ -> cont 12;
	SEMICOLON _ -> cont 13;
	REAL happy_dollar_dollar _ -> cont 14;
	STRING happy_dollar_dollar _ -> cont 15;
	IDENT happy_dollar_dollar _ -> cont 16;
	WRITE _ -> cont 17;
	WRITELN _ -> cont 18;
	READ _ -> cont 19;
	LESS _ -> cont 20;
	GRTR _ -> cont 21;
	LEQ _ -> cont 22;
	GEQ _ -> cont 23;
	EQL _ -> cont 24;
	NEQ _ -> cont 25;
	ASS _ -> cont 26;
	PLUS _ -> cont 27;
	MINUS _ -> cont 28;
	MULT _ -> cont 29;
	DIV _ -> cont 30;
	IF _ -> cont 31;
	ELSE _ -> cont 32;
	REP _ -> cont 33;
	UNTIL _ -> cont 34;
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
parseError (tok:toks) = error ("Parse error at line "++(show l)++ ", column "++(show c))
    where l = line (pos tok)
          c = col (pos tok)

line :: AlexPosn -> Int
line (AlexPn abs l c) = l

col :: AlexPosn -> Int
col (AlexPn abs l c) = c 

pos :: Token -> AlexPosn   
pos (LPAREN p) = p
pos (RPAREN p) = p
pos (SEMICOLON p) = p
pos (LESS p) = p
pos (LEQ p) = p
pos (EQL p) = p
pos (NEQ p) = p
pos (GEQ p) = p
pos (GRTR p) = p
pos (STRING s p) = p
pos (REAL x p) = p
pos (BEGIN p) = p
pos (END p) = p
pos (WRITE p) = p
pos (WRITELN p) = p
pos (IDENT s p) = p
pos (PLUS p) = p
pos (MINUS p) = p
pos (MULT p) = p
pos (DIV p) = p
pos (IF p) = p
pos (ELSE p) = p
pos (REP p) = p
pos (UNTIL p) = p
pos (ASS p) = p
pos (READ p) = p
    
--Describes a comparison between two expressions
data Comp = Less Expression Expression
          | Grtr Expression Expression
          | Leq Expression Expression
          | Geq Expression Expression
          | Eql Expression Expression
          | Neq Expression Expression
          | T
          | F
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
