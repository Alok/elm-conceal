scriptencoding utf-8

syntax match elmNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ

syntax match elmNiceOperator "==" conceal cchar=≝
syntax match elmNiceOperator ">=" conceal cchar=≥
syntax match elmNiceOperator "<=" conceal cchar=≤
syntax match elmNiceOperator "\/=" conceal cchar=≠

syntax match elmNiceOperator "\<undefined\>" conceal cchar=⊥

syntax match elmNiceOperator "<=\ze[^<]" conceal cchar=≤
syntax match elmNiceOperator ">=\ze[^>]" conceal cchar=≥

syntax match elm_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 nextgroup=elmNiceOperator contains=elm_FunctionName,elm_OpFunctionName

syntax match elmNiceOperator "++\ze[^+]" conceal cchar=⧺
syntax match elmNiceOperator "\<forall\>" conceal cchar=∀
syntax match elmNiceOperator "\<forAll\>" conceal cchar=∀
syntax match elmNiceOperator "-<" conceal cchar=↢
syntax match elmNiceOperator ">-" conceal cchar=↣
syntax match elmNiceOperator "-<<" conceal cchar=⤛
syntax match elmNiceOperator ">>-" conceal cchar=⤜
syntax match elmNiceOperator "`div`" conceal cchar=÷

syntax match elmNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘

syntax match elmQQEnd "|\]" contained conceal cchar=〛

syntax match elmNiceOperator "`elem`" conceal cchar=∈
syntax match elmNiceOperator "`notElem`" conceal cchar=∉
syntax match elmNiceOperator "`isSubsetOf`" conceal cchar=⊆
syntax match elmNiceOperator "`union`" conceal cchar=∪
syntax match elmNiceOperator "union" conceal cchar=∪
syntax match elmNiceOperator "`intersect`" conceal cchar=∩
syntax match elmNiceOperator "`difference`" conceal cchar=\
syntax match elmNiceOperator "intersect" conceal cchar=∩
syntax match elmNiceOperator "\\\\\ze[[:alpha:][:space:]_([]" conceal cchar=∖

syntax match elmNiceOperator "||\ze[[:alpha:][:space:]_([]" conceal cchar=∨
syntax match elmNiceOperator "&&\ze[[:alpha:][:space:]_([]" conceal cchar=∧

syntax match elmNiceOperator "<\*>"      conceal cchar=⊛
syntax match elmNiceOperator "<>"        conceal cchar=⊕
syntax match elmNiceOperator "\<empty\>" conceal cchar=∅

hi link elmNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

syntax match elmNiceOperator "\<String\>"  conceal cchar=𝐒

syntax match elmNiceOperator "\<Char\>"  conceal cchar=∁

syntax match elmNiceOperator "\<Either\>"  conceal cchar=𝐄
syntax match elmNiceOperator "\<Right\>"   conceal cchar=𝑅
syntax match elmNiceOperator "\<Left\>"    conceal cchar=𝐿

syntax match elmNiceOperator "\<Maybe\>"   conceal cchar=𝐌
syntax match elmNiceOperator "\<isJust\>"    conceal cchar=✔
syntax match elmNiceOperator "\<isNothing\>" conceal cchar=✘

syntax match elmNiceOperator "\:" conceal cchar=⦂
syntax match elmNiceOperator "<-" conceal cchar=←
syntax match elmNiceOperator "->" conceal cchar=→
syntax match elmNiceOperator "=>" conceal cchar=⇒
syntax match elmLRArrowHead contained ">" conceal cchar= 
syntax match elmLRArrowTail contained "-" conceal cchar=→
syntax match elmLRArrowFull "->" contains=elmLRArrowHead,elmLRArrowTail

syntax match elmRLArrowHead contained "<" conceal cchar=←
syntax match elmRLArrowTail contained "-" conceal cchar= 
syntax match elmRLArrowFull "<-" contains=elmRLArrowHead,elmRLArrowTail

syntax match elmLRDArrowHead contained ">" conceal cchar= 
syntax match elmLRDArrowTail contained "=" conceal cchar=⇒
syntax match elmLRDArrowFull "=>" contains=elmLRDArrowHead,elmLRDArrowTail

syntax match elmNiceOperator "\<sqrt\>"                       conceal cchar=√

syntax match elmNiceOperator /\*/ms=s+1,me=e-1 conceal cchar=∙

syntax match elmNiceOperator "\.\." conceal cchar=…

syntax match elmNiceOperator "`implies`"  conceal cchar=⇒

syntax match elmNiceOperator "`iff`" conceal cchar=⇔

syntax match elmNiceOperator ">>="    conceal cchar=★
syntax match elmNiceOperator ">>="    conceal cchar=ⓑ
syntax match elmNiceOperator "=<<"    conceal cchar=ⓓ
syntax match elmNiceOperator ">>"     conceal cchar=»
syntax match elmNiceOperator "<<"     conceal cchar=«
syntax match elmNiceOperator "=\zs<<" conceal cchar=«
syntax match elmNiceOperator ">>=\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=↪
syntax match elmNiceOperator "=<<\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=↩

syntax match elmNiceOperator ">>\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=»
syntax match elmNiceOperator "<<\ze\_[[:alpha:][:space:]_()[\]]" conceal cchar=«

syntax match elmNiceOperator "`liftM`" conceal cchar=↥
syntax match elmNiceOperator "`liftA`" conceal cchar=↥
syntax match elmNiceOperator "`fmap`"  conceal cchar=↥
syntax match elmNiceOperator "<$>"     conceal cchar=↥

syntax match LIFTQ  contained "`" conceal
syntax match LIFTQl contained "l" conceal cchar=↥
syntax match LIFTl  contained "l" conceal cchar=↥
syntax match LIFTi  contained "i" conceal
syntax match LIFTf  contained "f" conceal
syntax match LIFTt  contained "t" conceal
syntax match LIFTA  contained "A" conceal
syntax match LIFTM  contained "M" conceal
syntax match LIFT2  contained "2" conceal cchar=²
syntax match LIFT3  contained "3" conceal cchar=³
syntax match LIFT4  contained "4" conceal cchar=⁴
syntax match LIFT5  contained "5" conceal cchar=⁵

syntax match elmNiceOperator "`liftM2`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTM,LIFT2
syntax match elmNiceOperator "`liftM3`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTM,LIFT3
syntax match elmNiceOperator "`liftM4`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTM,LIFT4
syntax match elmNiceOperator "`liftM5`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTM,LIFT5
syntax match elmNiceOperator "`liftA2`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTA,LIFT2
syntax match elmNiceOperator "`liftA3`" contains=LIFTQ,LIFTQl,LIFTi,LIFTf,LIFTt,LIFTA,LIFT3

syntax match FMAPf    contained "f" conceal cchar=↥
syntax match FMAPm    contained "m" conceal
syntax match FMAPa    contained "a" conceal
syntax match FMAPp    contained "p" conceal
syntax match FMAPSPC  contained " " conceal

syntax match LIFTSPC contained " " conceal
syntax match elmNiceOperator "\<liftA\>\s*"  contains=LIFTl,LIFTi,LIFTf,LIFTt,LIFTA,LIFTSPC
syntax match elmNiceOperator "\<liftA2\>\s*" contains=LIFTl,LIFTi,LIFTf,LIFTt,LIFTA,LIFT2,LIFTSPC
syntax match elmNiceOperator "\<liftA3\>\s*" contains=LIFTl,LIFTi,LIFTf,LIFTt,LIFTA,LIFT3,LIFTSPC

syntax match LIFTIOL contained "l" conceal
syntax match LIFTI   contained "I" conceal cchar=i
syntax match LIFTO   contained "O" conceal cchar=o
syntax match elmNiceOperator "\<liftIO\>" contains=LIFTIOl,LIFTi,LIFTf,LIFTt,LIFTI,LIFTO

syntax match MAPMQ  contained "`" conceal
syntax match MAPMm  contained "m" conceal cchar=↱
syntax match MAPMmQ contained "m" conceal cchar=↰
syntax match MAPMa  contained "a" conceal
syntax match MAPMp  contained "p" conceal
syntax match MAPMM  contained "M" conceal
syntax match MAPMM  contained "M" conceal
syntax match MAPMU  contained "_" conceal cchar=_
syntax match SPC    contained " " conceal
syntax match elmNiceOperator "`mapM_`"      contains=MAPMQ,MAPMmQ,MAPMa,MAPMp,MAPMM,MAPMU
syntax match elmNiceOperator "`mapM`"       contains=MAPMQ,MAPMmQ,MAPMa,MAPMp,MAPMM

syntax match FORMQ  contained "`" conceal
syntax match FORMfQ contained "f" conceal cchar=↱
syntax match FORMf  contained "f" conceal cchar=↰
syntax match FORMo  contained "o" conceal
syntax match FORMr  contained "r" conceal
syntax match FORMM  contained "M" conceal
syntax match FORMU  contained "_" conceal cchar=_

syntax match elmNiceOperator "`forM`"  contains=FORMQ,FORMfQ,FORMo,FORMr,FORMM
syntax match elmNiceOperator "`forM_`" contains=FORMQ,FORMfQ,FORMo,FORMr,FORMM,FORMU


syntax match WS contained "w" conceal cchar=∵
syntax match elm contained "h" conceal cchar= 
syntax match ES contained "e" conceal cchar= 
syntax match RS contained "r" conceal cchar= 
syntax match elmNiceOperator "\<where\>" contains=WS,elm,ES,RS,ES

syntax match elmNiceOperator "(-)"        conceal cchar=⊟
syntax match elmNiceOperator "`subtract`" conceal cchar=⊟
syntax match elmNiceOperator ":+"         conceal cchar=⨢
syntax match elmNiceOperator ":+"         conceal cchar=ⅈ

syntax match elmNiceOperator "\<realPart\>" conceal cchar=ℜ
syntax match elmNiceOperator "\<imagPart\>" conceal cchar=ℑ

syntax match elmNiceSpecial "\<True\>"  conceal cchar=𝐓
syntax match elmNiceSpecial "\<False\>" conceal cchar=𝐅

syntax match elmNiceOperator "\<Bool\>" conceal cchar=𝔹

syntax match elmNiceOperator "\<Rational\>" conceal cchar=ℚ
syntax match elmNiceOperator "\<Integer\>"  conceal cchar=ℤ
syntax match elmNiceOperator "\<Float\>"   conceal cchar=𝔽
syntax match elmNiceOperator "\<Double\>"   conceal cchar=ℝ

syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)0\ze\_W" conceal cchar=⁰
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)1\ze\_W" conceal cchar=¹
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)2\ze\_W" conceal cchar=²
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)3\ze\_W" conceal cchar=³
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)4\ze\_W" conceal cchar=⁴
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)5\ze\_W" conceal cchar=⁵
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)6\ze\_W" conceal cchar=⁶
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)7\ze\_W" conceal cchar=⁷
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)8\ze\_W" conceal cchar=⁸
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)9\ze\_W" conceal cchar=⁹

syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)a\ze\_W" conceal cchar=ᵃ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)b\ze\_W" conceal cchar=ᵇ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)c\ze\_W" conceal cchar=ᶜ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)d\ze\_W" conceal cchar=ᵈ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)e\ze\_W" conceal cchar=ᵉ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)f\ze\_W" conceal cchar=ᶠ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)g\ze\_W" conceal cchar=ᵍ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)h\ze\_W" conceal cchar=ʰ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)i\ze\_W" conceal cchar=ⁱ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)j\ze\_W" conceal cchar=ʲ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)k\ze\_W" conceal cchar=ᵏ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)l\ze\_W" conceal cchar=ˡ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)m\ze\_W" conceal cchar=ᵐ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)n\ze\_W" conceal cchar=ⁿ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)o\ze\_W" conceal cchar=ᵒ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)p\ze\_W" conceal cchar=ᵖ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)r\ze\_W" conceal cchar=ʳ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)s\ze\_W" conceal cchar=ˢ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)t\ze\_W" conceal cchar=ᵗ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)u\ze\_W" conceal cchar=ᵘ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)v\ze\_W" conceal cchar=ᵛ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)w\ze\_W" conceal cchar=ʷ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)x\ze\_W" conceal cchar=ˣ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)y\ze\_W" conceal cchar=ʸ
syntax match elmNiceOperator "\(\*\*\|\^\|\^\^\)z\ze\_W" conceal cchar=ᶻ
syntax match elmNiceOperator "\<therefore\>" conceal cchar=∴
syntax match elmNiceOperator "\<exists\>" conceal cchar=∃
syntax match elmNiceOperator "\<notExist\>" conceal cchar=∄
syntax match elmNiceOperator ":=" conceal cchar=←
