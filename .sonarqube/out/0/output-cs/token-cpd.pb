‘
úC:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame\IController.cs
	namespace 	!
SimpleReactionMachine
 
{ 
public 

	interface 
IController  
{ 
void 
Connect 
( 
IGui 
gui 
, 
IRandom &
rng' *
)* +
;+ ,
void

 
Init

 
(

 
)

 
;

 
void 
CoinInserted 
( 
) 
; 
void 
GoStopPressed 
( 
) 
; 
void 
Tick 
( 
) 
; 
} 
} ï
ïC:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame\IGui.cs
	namespace 	!
SimpleReactionMachine
 
{ 
public 

	interface 
IGui 
{ 
void 
Connect 
( 
IController  

controller! +
)+ ,
;, -
void

 
Init

 
(

 
)

 
;

 
void 

SetDisplay 
( 
string 
s  
)  !
;! "
} 
} Û
òC:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame\IRandom.cs
	namespace 	!
SimpleReactionMachine
 
{ 
public 

	interface 
IRandom 
{ 
int 
	GetRandom 
( 
int 
from 
, 
int  #
to$ &
)& '
;' (
} 
} ≠m
©C:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame\SimpleReactionController.cs
	namespace 	
Tester
 
{ 
public		 

class		 $
SimpleReactionController		 )
:		* +
IController		, 7
{

 
private 
const 
int 
MIN_TIME "
=# $
$num% (
;( )
private 
const 
int 
MAX_TIME "
=# $
$num% (
;( )
private 
const 
int 
	GAME_TIME #
=$ %
$num& )
;) *
private 
const 
int 
GAMEOVER_TIME '
=( )
$num* -
;- .
private 
const 
double 
TICKS "
=# $
$num% *
;* +
private 
State 
CurrentState "
;" #
private 
IGui 
Gui 
{ 
get 
; 
set  #
;# $
}% &
private 
IRandom 
Rng 
{ 
get !
;! "
set# &
;& '
}( )
private 
double 
Ticks 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
ComplexMethod  
(  !
int! $
a% &
,& '
int( +
b, -
)- .
{ 	
int!! 
result!! 
=!! 
a!! 
*!! 
b!! 
;!! 
for"" 
("" 
int"" 
i"" 
="" 
$num"" 
;"" 
i"" 
<"" 
$num""  #
;""# $
i""% &
++""& (
)""( )
{## 
result$$ 
+=$$ 
i$$ 
;$$ 
}%% 
return&& 
result&& 
;&& 
}'' 	
public(( 
void(( 
Connect(( 
((( 
IGui((  
gui((! $
,(($ %
IRandom((& -
rng((. 1
)((1 2
{)) 	
Gui** 
=** 
gui** 
;** 
Rng++ 
=++ 
rng++ 
;++ 
Init,, 
(,, 
),, 
;,, 
}-- 	
public// 
void// 
Init// 
(// 
)// 
{00 	
CurrentState11 
=11 
new11 
OnState11 &
(11& '
this11' +
)11+ ,
;11, -
}22 	
public44 
void44 
CoinInserted44  
(44  !
)44! "
{55 	
CurrentState66 
.66 
CoinInserted66 %
(66% &
this66& *
)66* +
;66+ ,
}77 	
public99 
void99 
GoStopPressed99 !
(99! "
)99" #
{:: 	
CurrentState;; 
.;; 
GoStopPressed;; &
(;;& '
this;;' +
);;+ ,
;;;, -
}<< 	
public>> 
void>> 
Tick>> 
(>> 
)>> 
{?? 	
CurrentState@@ 
.@@ 
Tick@@ 
(@@ 
this@@ "
)@@" #
;@@# $
}AA 	
privateCC 
voidCC 
SetStateCC 
(CC 
StateCC #
stateCC$ )
)CC) *
{DD 	
CurrentStateEE 
=EE 
stateEE  
;EE  !
}FF 	
privateKK 
abstractKK 
classKK 
StateKK $
{LL 	
publicMM 
abstractMM 
voidMM  
CoinInsertedMM! -
(MM- .$
SimpleReactionControllerMM. F

controllerMMG Q
)MMQ R
;MMR S
publicNN 
abstractNN 
voidNN  
GoStopPressedNN! .
(NN. /$
SimpleReactionControllerNN/ G

controllerNNH R
)NNR S
;NNS T
publicOO 
abstractOO 
voidOO  
TickOO! %
(OO% &$
SimpleReactionControllerOO& >

controllerOO? I
)OOI J
;OOJ K
}PP 	
privateRR 
classRR 
OnStateRR 
:RR 
StateRR  %
{SS 	
publicTT 
OnStateTT 
(TT $
SimpleReactionControllerTT 3

controllerTT4 >
)TT> ?
{UU 

controllerVV 
.VV 
GuiVV 
.VV 

SetDisplayVV )
(VV) *
$strVV* 7
)VV7 8
;VV8 9
}WW 
publicYY 
overrideYY 
voidYY  
CoinInsertedYY! -
(YY- .$
SimpleReactionControllerYY. F

controllerYYG Q
)YYQ R
{ZZ 

controller[[ 
.[[ 
SetState[[ #
([[# $
new[[$ '

ReadyState[[( 2
([[2 3

controller[[3 =
)[[= >
)[[> ?
;[[? @
}\\ 
public^^ 
override^^ 
void^^  
GoStopPressed^^! .
(^^. /$
SimpleReactionController^^/ G

controller^^H R
)^^R S
{__ 
}aa 
publiccc 
overridecc 
voidcc  
Tickcc! %
(cc% &$
SimpleReactionControllercc& >

controllercc? I
)ccI J
{dd 
}ff 
}gg 	
privateii 
classii 

ReadyStateii  
:ii! "
Stateii# (
{jj 	
publickk 

ReadyStatekk 
(kk $
SimpleReactionControllerkk 6

controllerkk7 A
)kkA B
{ll 

controllermm 
.mm 
Guimm 
.mm 

SetDisplaymm )
(mm) *
$strmm* 5
)mm5 6
;mm6 7
}nn 
publicoo 
overrideoo 
voidoo  
CoinInsertedoo! -
(oo- .$
SimpleReactionControlleroo. F

controllerooG Q
)ooQ R
{pp 
}rr 
publictt 
overridett 
voidtt  
GoStopPressedtt! .
(tt. /$
SimpleReactionControllertt/ G

controllerttH R
)ttR S
{uu 

controllervv 
.vv 
SetStatevv #
(vv# $
newvv$ '
	WaitStatevv( 1
(vv1 2

controllervv2 <
)vv< =
)vv= >
;vv> ?
}ww 
publicyy 
overrideyy 
voidyy  
Tickyy! %
(yy% &$
SimpleReactionControlleryy& >

controlleryy? I
)yyI J
{zz 
}|| 
}}} 	
private 
class 
	WaitState 
:  !
State" '
{
ÄÄ 	
private
ÅÅ 
int
ÅÅ 
waitTime
ÅÅ  
;
ÅÅ  !
public
ÉÉ 
	WaitState
ÉÉ 
(
ÉÉ &
SimpleReactionController
ÉÉ 5

controller
ÉÉ6 @
)
ÉÉ@ A
{
ÑÑ 

controller
ÖÖ 
.
ÖÖ 
Gui
ÖÖ 
.
ÖÖ 

SetDisplay
ÖÖ )
(
ÖÖ) *
$str
ÖÖ* 3
)
ÖÖ3 4
;
ÖÖ4 5

controller
ÜÜ 
.
ÜÜ 
Ticks
ÜÜ  
=
ÜÜ! "
$num
ÜÜ# $
;
ÜÜ$ %
waitTime
áá 
=
áá 

controller
áá %
.
áá% &
Rng
áá& )
.
áá) *
	GetRandom
áá* 3
(
áá3 4
MIN_TIME
áá4 <
,
áá< =
MAX_TIME
áá> F
)
ááF G
;
ááG H
}
àà 
public
ää 
override
ää 
void
ää  
CoinInserted
ää! -
(
ää- .&
SimpleReactionController
ää. F

controller
ääG Q
)
ääQ R
{
ãã 
}
çç 
public
èè 
override
èè 
void
èè  
GoStopPressed
èè! .
(
èè. /&
SimpleReactionController
èè/ G

controller
èèH R
)
èèR S
{
êê 

controller
ëë 
.
ëë 
SetState
ëë #
(
ëë# $
new
ëë$ '
OnState
ëë( /
(
ëë/ 0

controller
ëë0 :
)
ëë: ;
)
ëë; <
;
ëë< =
}
íí 
public
îî 
override
îî 
void
îî  
Tick
îî! %
(
îî% &&
SimpleReactionController
îî& >

controller
îî? I
)
îîI J
{
ïï 

controller
ññ 
.
ññ 
Ticks
ññ  
++
ññ  "
;
ññ" #
if
óó 
(
óó 

controller
óó 
.
óó 
Ticks
óó $
==
óó% '
waitTime
óó( 0
)
óó0 1
{
òò 

controller
ôô 
.
ôô 
SetState
ôô '
(
ôô' (
new
ôô( +
RunningState
ôô, 8
(
ôô8 9

controller
ôô9 C
)
ôôC D
)
ôôD E
;
ôôE F
}
õõ 
}
úú 
}
ùù 	
private
üü 
class
üü 
RunningState
üü "
:
üü# $
State
üü% *
{
†† 	
public
°° 
RunningState
°° 
(
°°  &
SimpleReactionController
°°  8

controller
°°9 C
)
°°C D
{
¢¢ 

controller
££ 
.
££ 
Gui
££ 
.
££ 

SetDisplay
££ )
(
££) *
$str
££* 0
)
££0 1
;
££1 2

controller
§§ 
.
§§ 
Ticks
§§  
=
§§! "
$num
§§# $
;
§§$ %
}
•• 
public
ßß 
override
ßß 
void
ßß  
CoinInserted
ßß! -
(
ßß- .&
SimpleReactionController
ßß. F

controller
ßßG Q
)
ßßQ R
{
®® 
}
™™ 
public
¨¨ 
override
¨¨ 
void
¨¨  
GoStopPressed
¨¨! .
(
¨¨. /&
SimpleReactionController
¨¨/ G

controller
¨¨H R
)
¨¨R S
{
≠≠ 

controller
ÆÆ 
.
ÆÆ 
SetState
ÆÆ #
(
ÆÆ# $
new
ÆÆ$ '
GameOverState
ÆÆ( 5
(
ÆÆ5 6

controller
ÆÆ6 @
)
ÆÆ@ A
)
ÆÆA B
;
ÆÆB C
}
ØØ 
public
±± 
override
±± 
void
±±  
Tick
±±! %
(
±±% &&
SimpleReactionController
±±& >

controller
±±? I
)
±±I J
{
≤≤ 

controller
≥≥ 
.
≥≥ 
Ticks
≥≥  
++
≥≥  "
;
≥≥" #
double
¥¥ 
time
¥¥ 
=
¥¥ 

controller
¥¥ (
.
¥¥( )
Ticks
¥¥) .
/
¥¥/ 0&
SimpleReactionController
¥¥1 I
.
¥¥I J
TICKS
¥¥J O
;
¥¥O P

controller
µµ 
.
µµ 
Gui
µµ 
.
µµ 

SetDisplay
µµ )
(
µµ) *
time
µµ* .
.
µµ. /
ToString
µµ/ 7
(
µµ7 8
$str
µµ8 >
)
µµ> ?
)
µµ? @
;
µµ@ A
if
∂∂ 
(
∂∂ 

controller
∂∂ 
.
∂∂ 
Ticks
∂∂ $
==
∂∂% '&
SimpleReactionController
∂∂( @
.
∂∂@ A
	GAME_TIME
∂∂A J
)
∂∂J K
{
∑∑ 

controller
∏∏ 
.
∏∏ 
SetState
∏∏ '
(
∏∏' (
new
∏∏( +
GameOverState
∏∏, 9
(
∏∏9 :

controller
∏∏: D
)
∏∏D E
)
∏∏E F
;
∏∏F G
}
ππ 
}
∫∫ 
}
ªª 	
private
ΩΩ 
class
ΩΩ 
GameOverState
ΩΩ #
:
ΩΩ$ %
State
ΩΩ& +
{
ææ 	
public
øø 
GameOverState
øø  
(
øø  !&
SimpleReactionController
øø! 9

controller
øø: D
)
øøD E
{
¿¿ 

controller
¡¡ 
.
¡¡ 
Ticks
¡¡  
=
¡¡! "
$num
¡¡# $
;
¡¡$ %
}
¬¬ 
public
√√ 
override
√√ 
void
√√  
CoinInserted
√√! -
(
√√- .&
SimpleReactionController
√√. F

controller
√√G Q
)
√√Q R
{
ƒƒ 
}
∆∆ 
public
»» 
override
»» 
void
»»  
GoStopPressed
»»! .
(
»». /&
SimpleReactionController
»»/ G

controller
»»H R
)
»»R S
{
…… 

controller
   
.
   
SetState
   #
(
  # $
new
  $ '
OnState
  ( /
(
  / 0

controller
  0 :
)
  : ;
)
  ; <
;
  < =
}
ÀÀ 
public
ÕÕ 
override
ÕÕ 
void
ÕÕ  
Tick
ÕÕ! %
(
ÕÕ% &&
SimpleReactionController
ÕÕ& >

controller
ÕÕ? I
)
ÕÕI J
{
ŒŒ 

controller
œœ 
.
œœ 
Ticks
œœ  
++
œœ  "
;
œœ" #
if
–– 
(
–– 

controller
–– 
.
–– 
Ticks
–– $
==
––% '&
SimpleReactionController
––( @
.
––@ A
GAMEOVER_TIME
––A N
)
––N O
{
—— 

controller
““ 
.
““ 
SetState
““ '
(
““' (
new
““( +
OnState
““, 3
(
““3 4

controller
““4 >
)
““> ?
)
““? @
;
““@ A
}
”” 
}
‘‘ 
}
’’ 	
}
ÿÿ 
}ŸŸ “`
¶C:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame\SimpleReactionMachine.cs
	namespace 	!
SimpleReactionMachine
 
{ 
class 	!
SimpleReactionMachine
 
{ 
const		 
string		 
TOP_LEFT_JOINT		 #
=		$ %
$str		& )
;		) *
const

 
string

 
TOP_RIGHT_JOINT

 $
=

% &
$str

' *
;

* +
const 
string 
BOTTOM_LEFT_JOINT &
=' (
$str) ,
;, -
const 
string 
BOTTOM_RIGHT_JOINT '
=( )
$str* -
;- .
const 
string 
	TOP_JOINT 
=  
$str! $
;$ %
const 
string 
BOTTOM_JOINT !
=" #
$str$ '
;' (
const 
string 

LEFT_JOINT 
=  !
$str" %
;% &
const 
string 
JOINT 
= 
$str  
;  !
const 
string 
RIGHT_JOINT  
=! "
$str# &
;& '
const 
char 
HORIZONTAL_LINE "
=# $
$char% (
;( )
const 
char 
PADDING 
= 
$char  
;  !
const 
string 
VERTICAL_LINE "
=# $
$str% (
;( )
static 
private 
IController "
	contoller# ,
;, -
static 
private 
IGui 
gui 
;  
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
Console 
. 
ForegroundColor #
=$ %
ConsoleColor& 2
.2 3
Yellow3 9
;9 :
Console 
. 
	WriteLine 
( 
$str )
,) *
TOP_LEFT_JOINT+ 9
,9 :
new; >
string? E
(E F
HORIZONTAL_LINEF U
,U V
$numW Y
)Y Z
,Z [
TOP_RIGHT_JOINT\ k
)k l
;l m
Console 
. 
	WriteLine 
( 
$str )
,) *
VERTICAL_LINE+ 8
,8 9
new: =
string> D
(D E
$charE H
,H I
$numJ L
)L M
,M N
VERTICAL_LINEO \
)\ ]
;] ^
Console 
. 
	WriteLine 
( 
$str )
,) *
VERTICAL_LINE+ 8
,8 9
new: =
string> D
(D E
$charE H
,H I
$numJ L
)L M
,M N
VERTICAL_LINEO \
)\ ]
;] ^
Console   
.   
	WriteLine   
(   
$str   )
,  ) *
VERTICAL_LINE  + 8
,  8 9
new  : =
string  > D
(  D E
$char  E H
,  H I
$num  J L
)  L M
,  M N
VERTICAL_LINE  O \
)  \ ]
;  ] ^
Console!! 
.!! 
	WriteLine!! 
(!! 
$str!! )
,!!) *

LEFT_JOINT!!+ 5
,!!5 6
new!!7 :
string!!; A
(!!A B
HORIZONTAL_LINE!!B Q
,!!Q R
$num!!S U
)!!U V
,!!V W
RIGHT_JOINT!!X c
)!!c d
;!!d e
Console"" 
."" 
	WriteLine"" 
("" 
$str"" )
,"") *
VERTICAL_LINE""+ 8
,""8 9
new"": =
string""> D
(""D E
$char""E H
,""H I
$num""J L
)""L M
,""M N
VERTICAL_LINE""O \
)""\ ]
;""] ^
Console## 
.## 
	WriteLine## 
(## 
$str## )
,##) *
VERTICAL_LINE##+ 8
,##8 9
new##: =
string##> D
(##D E
$char##E H
,##H I
$num##J L
)##L M
,##M N
VERTICAL_LINE##O \
)##\ ]
;##] ^
Console$$ 
.$$ 
	WriteLine$$ 
($$ 
$str$$ )
,$$) *
VERTICAL_LINE$$+ 8
,$$8 9
new$$: =
string$$> D
($$D E
$char$$E H
,$$H I
$num$$J L
)$$L M
,$$M N
VERTICAL_LINE$$O \
)$$\ ]
;$$] ^
Console%% 
.%% 
	WriteLine%% 
(%% 
$str%% )
,%%) *
VERTICAL_LINE%%+ 8
,%%8 9
new%%: =
string%%> D
(%%D E
$char%%E H
,%%H I
$num%%J L
)%%L M
,%%M N
VERTICAL_LINE%%O \
)%%\ ]
;%%] ^
Console&& 
.&& 
	WriteLine&& 
(&& 
$str&& )
,&&) *
VERTICAL_LINE&&+ 8
,&&8 9
new&&: =
string&&> D
(&&D E
$char&&E H
,&&H I
$num&&J L
)&&L M
,&&M N
VERTICAL_LINE&&O \
)&&\ ]
;&&] ^
Console'' 
.'' 
	WriteLine'' 
('' 
$str'' )
,'') *
BOTTOM_LEFT_JOINT''+ <
,''< =
new''> A
string''B H
(''H I
HORIZONTAL_LINE''I X
,''X Y
$num''Z \
)''\ ]
,''] ^
BOTTOM_RIGHT_JOINT''_ q
)''q r
;''r s
Console)) 
.)) 
ForegroundColor)) #
=))$ %
ConsoleColor))& 2
.))2 3
	DarkGreen))3 <
;))< =
Console** 
.** 
SetCursorPosition** %
(**% &
$num**& '
,**' (
$num**) *
)*** +
;**+ ,
Console++ 
.++ 
Write++ 
(++ 
$str++ #
,++# $
$str++% D
)++D E
;++E F
Console,, 
.,, 
SetCursorPosition,, %
(,,% &
$num,,& '
,,,' (
$num,,) *
),,* +
;,,+ ,
Console-- 
.-- 
Write-- 
(-- 
$str-- #
,--# $
$str--% G
)--G H
;--H I
Console.. 
... 
SetCursorPosition.. %
(..% &
$num..& '
,..' (
$num..) *
)..* +
;..+ ,
Console// 
.// 
Write// 
(// 
$str// #
,//# $
$str//% ;
)//; <
;//< =
System22 
.22 
Timers22 
.22 
Timer22 
timer22  %
=22& '
new22( +
System22, 2
.222 3
Timers223 9
.229 :
Timer22: ?
(22? @
$num22@ B
)22B C
;22C D
timer44 
.44 
Elapsed44 
+=44 
OnTimedEvent44 )
;44) *
timer55 
.55 
	AutoReset55 
=55 
true55 "
;55" #
	contoller88 
=88 
new88 $
SimpleReactionController88 4
(884 5
)885 6
;886 7
gui99 
=99 
new99 
Gui99 
(99 
)99 
;99 
gui:: 
.:: 
Connect:: 
(:: 
	contoller:: !
)::! "
;::" #
	contoller;; 
.;; 
Connect;; 
(;; 
gui;; !
,;;! "
new;;# &
RandomGenerator;;' 6
(;;6 7
);;7 8
);;8 9
;;;9 :
gui>> 
.>> 
Init>> 
(>> 
)>> 
;>> 
timer@@ 
.@@ 
Enabled@@ 
=@@ 
true@@  
;@@  !
boolCC 
quitePressedCC 
=CC 
falseCC  %
;CC% &
whileDD 
(DD 
!DD 
quitePressedDD  
)DD  !
{EE 
ConsoleKeyInfoFF 
keyFF "
=FF# $
ConsoleFF% ,
.FF, -
ReadKeyFF- 4
(FF4 5
trueFF5 9
)FF9 :
;FF: ;
switchGG 
(GG 
keyGG 
.GG 
KeyGG 
)GG  
{HH 
caseII 

ConsoleKeyII #
.II# $
EnterII$ )
:II) *
	contollerJJ !
.JJ! "
GoStopPressedJJ" /
(JJ/ 0
)JJ0 1
;JJ1 2
breakKK 
;KK 
caseLL 

ConsoleKeyLL #
.LL# $
SpacebarLL$ ,
:LL, -
	contollerMM !
.MM! "
CoinInsertedMM" .
(MM. /
)MM/ 0
;MM0 1
breakNN 
;NN 
caseOO 

ConsoleKeyOO #
.OO# $
EscapeOO$ *
:OO* +
quitePressedPP $
=PP% &
truePP' +
;PP+ ,
breakQQ 
;QQ 
}RR 
}SS 
}TT 	
privateWW 
staticWW 
voidWW 
OnTimedEventWW (
(WW( )
ObjectWW) /
sourceWW0 6
,WW6 7
ElapsedEventArgsWW8 H
eWWI J
)WWJ K
{XX 	
	contollerYY 
.YY 
TickYY 
(YY 
)YY 
;YY 
}ZZ 	
private]] 
class]] 
RandomGenerator]] %
:]]& '
IRandom]]( /
{^^ 	
Random__ 
rnd__ 
=__ 
new__ 
Random__ #
(__# $
$num__$ '
)__' (
;__( )
publicaa 
intaa 
	GetRandomaa  
(aa  !
intaa! $
fromaa% )
,aa) *
intaa+ .
toaa/ 1
)aa1 2
{bb 
returncc 
rndcc 
.cc 
Nextcc 
(cc  
tocc  "
-cc# $
fromcc% )
)cc) *
+cc+ ,
fromcc- 1
;cc1 2
}dd 
}ee 	
privatehh 
classhh 
Guihh 
:hh 
IGuihh  
{ii 	
privatejj 
IControllerjj 

controllerjj  *
;jj* +
publickk 
voidkk 
Connectkk 
(kk  
IControllerkk  +

controllerkk, 6
)kk6 7
{ll 
thismm 
.mm 

controllermm 
=mm  !

controllermm" ,
;mm, -
}nn 
publicpp 
voidpp 
Initpp 
(pp 
)pp 
{qq 

SetDisplayrr 
(rr 
$strrr -
)rr- .
;rr. /
}ss 
publicuu 
voiduu 

SetDisplayuu "
(uu" #
stringuu# )
textuu* .
)uu. /
{vv 
PrintUserInterfaceww "
(ww" #
textww# '
)ww' (
;ww( )
}xx 
privatezz 
voidzz 
PrintUserInterfacezz +
(zz+ ,
stringzz, 2
textzz3 7
)zz7 8
{{{ 
Console|| 
.|| 
ForegroundColor|| '
=||( )
ConsoleColor||* 6
.||6 7
Blue||7 ;
;||; <
Console}} 
.}} 
SetCursorPosition}} )
(}}) *
$num}}* ,
,}}, -
$num}}. /
)}}/ 0
;}}0 1
Console~~ 
.~~ 
Write~~ 
(~~ 
$str~~ '
,~~' (
text~~) -
)~~- .
;~~. /
Console 
. 
SetCursorPosition )
() *
$num* +
,+ ,
$num- /
)/ 0
;0 1
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ 