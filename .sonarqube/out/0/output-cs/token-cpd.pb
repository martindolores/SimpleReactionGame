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
} ¨g
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
public 
void 
Connect 
( 
IGui  
gui! $
,$ %
IRandom& -
rng. 1
)1 2
{ 	
Gui   
=   
gui   
;   
Rng!! 
=!! 
rng!! 
;!! 
Init"" 
("" 
)"" 
;"" 
}## 	
public%% 
void%% 
Init%% 
(%% 
)%% 
{&& 	
CurrentState'' 
='' 
new'' 
OnState'' &
(''& '
this''' +
)''+ ,
;'', -
}(( 	
public** 
void** 
CoinInserted**  
(**  !
)**! "
{++ 	
CurrentState,, 
.,, 
CoinInserted,, %
(,,% &
this,,& *
),,* +
;,,+ ,
}-- 	
public// 
void// 
GoStopPressed// !
(//! "
)//" #
{00 	
CurrentState11 
.11 
GoStopPressed11 &
(11& '
this11' +
)11+ ,
;11, -
}22 	
public44 
void44 
Tick44 
(44 
)44 
{55 	
CurrentState66 
.66 
Tick66 
(66 
this66 "
)66" #
;66# $
}77 	
private99 
void99 
SetState99 
(99 
State99 #
state99$ )
)99) *
{:: 	
CurrentState;; 
=;; 
state;;  
;;;  !
}<< 	
privateAA 
abstractAA 
classAA 
StateAA $
{BB 	
publicCC 
abstractCC 
voidCC  
CoinInsertedCC! -
(CC- .$
SimpleReactionControllerCC. F

controllerCCG Q
)CCQ R
;CCR S
publicDD 
abstractDD 
voidDD  
GoStopPressedDD! .
(DD. /$
SimpleReactionControllerDD/ G

controllerDDH R
)DDR S
;DDS T
publicEE 
abstractEE 
voidEE  
TickEE! %
(EE% &$
SimpleReactionControllerEE& >

controllerEE? I
)EEI J
;EEJ K
}FF 	
privateHH 
classHH 
OnStateHH 
:HH 
StateHH  %
{II 	
publicJJ 
OnStateJJ 
(JJ $
SimpleReactionControllerJJ 3

controllerJJ4 >
)JJ> ?
{KK 

controllerLL 
.LL 
GuiLL 
.LL 

SetDisplayLL )
(LL) *
$strLL* 7
)LL7 8
;LL8 9
}MM 
publicOO 
overrideOO 
voidOO  
CoinInsertedOO! -
(OO- .$
SimpleReactionControllerOO. F

controllerOOG Q
)OOQ R
{PP 

controllerQQ 
.QQ 
SetStateQQ #
(QQ# $
newQQ$ '

ReadyStateQQ( 2
(QQ2 3

controllerQQ3 =
)QQ= >
)QQ> ?
;QQ? @
}RR 
publicTT 
overrideTT 
voidTT  
GoStopPressedTT! .
(TT. /$
SimpleReactionControllerTT/ G

controllerTTH R
)TTR S
{UU 
}WW 
publicYY 
overrideYY 
voidYY  
TickYY! %
(YY% &$
SimpleReactionControllerYY& >

controllerYY? I
)YYI J
{ZZ 
}\\ 
}]] 	
private__ 
class__ 

ReadyState__  
:__! "
State__# (
{`` 	
publicaa 

ReadyStateaa 
(aa $
SimpleReactionControlleraa 6

controlleraa7 A
)aaA B
{bb 

controllercc 
.cc 
Guicc 
.cc 

SetDisplaycc )
(cc) *
$strcc* 5
)cc5 6
;cc6 7
}dd 
publicee 
overrideee 
voidee  
CoinInsertedee! -
(ee- .$
SimpleReactionControlleree. F

controllereeG Q
)eeQ R
{ff 
}hh 
publicjj 
overridejj 
voidjj  
GoStopPressedjj! .
(jj. /$
SimpleReactionControllerjj/ G

controllerjjH R
)jjR S
{kk 

controllerll 
.ll 
SetStatell #
(ll# $
newll$ '
	WaitStatell( 1
(ll1 2

controllerll2 <
)ll< =
)ll= >
;ll> ?
}mm 
publicoo 
overrideoo 
voidoo  
Tickoo! %
(oo% &$
SimpleReactionControlleroo& >

controlleroo? I
)ooI J
{pp 
}rr 
}ss 	
privateuu 
classuu 
	WaitStateuu 
:uu  !
Stateuu" '
{vv 	
privateww 
intww 
waitTimeww  
;ww  !
publicyy 
	WaitStateyy 
(yy $
SimpleReactionControlleryy 5

controlleryy6 @
)yy@ A
{zz 

controller{{ 
.{{ 
Gui{{ 
.{{ 

SetDisplay{{ )
({{) *
$str{{* 3
){{3 4
;{{4 5

controller|| 
.|| 
Ticks||  
=||! "
$num||# $
;||$ %
waitTime}} 
=}} 

controller}} %
.}}% &
Rng}}& )
.}}) *
	GetRandom}}* 3
(}}3 4
MIN_TIME}}4 <
,}}< =
MAX_TIME}}> F
)}}F G
;}}G H
}~~ 
public
ÄÄ 
override
ÄÄ 
void
ÄÄ  
CoinInserted
ÄÄ! -
(
ÄÄ- .&
SimpleReactionController
ÄÄ. F

controller
ÄÄG Q
)
ÄÄQ R
{
ÅÅ 
}
ÉÉ 
public
ÖÖ 
override
ÖÖ 
void
ÖÖ  
GoStopPressed
ÖÖ! .
(
ÖÖ. /&
SimpleReactionController
ÖÖ/ G

controller
ÖÖH R
)
ÖÖR S
{
ÜÜ 

controller
áá 
.
áá 
SetState
áá #
(
áá# $
new
áá$ '
OnState
áá( /
(
áá/ 0

controller
áá0 :
)
áá: ;
)
áá; <
;
áá< =
}
àà 
public
ää 
override
ää 
void
ää  
Tick
ää! %
(
ää% &&
SimpleReactionController
ää& >

controller
ää? I
)
ääI J
{
ãã 

controller
åå 
.
åå 
Ticks
åå  
++
åå  "
;
åå" #
if
çç 
(
çç 

controller
çç 
.
çç 
Ticks
çç $
==
çç% '
waitTime
çç( 0
)
çç0 1
{
éé 

controller
èè 
.
èè 
SetState
èè '
(
èè' (
new
èè( +
RunningState
èè, 8
(
èè8 9

controller
èè9 C
)
èèC D
)
èèD E
;
èèE F
}
ëë 
}
íí 
}
ìì 	
private
ïï 
class
ïï 
RunningState
ïï "
:
ïï# $
State
ïï% *
{
ññ 	
public
óó 
RunningState
óó 
(
óó  &
SimpleReactionController
óó  8

controller
óó9 C
)
óóC D
{
òò 

controller
ôô 
.
ôô 
Gui
ôô 
.
ôô 

SetDisplay
ôô )
(
ôô) *
$str
ôô* 0
)
ôô0 1
;
ôô1 2

controller
öö 
.
öö 
Ticks
öö  
=
öö! "
$num
öö# $
;
öö$ %
}
õõ 
public
ùù 
override
ùù 
void
ùù  
CoinInserted
ùù! -
(
ùù- .&
SimpleReactionController
ùù. F

controller
ùùG Q
)
ùùQ R
{
ûû 
}
†† 
public
¢¢ 
override
¢¢ 
void
¢¢  
GoStopPressed
¢¢! .
(
¢¢. /&
SimpleReactionController
¢¢/ G

controller
¢¢H R
)
¢¢R S
{
££ 

controller
§§ 
.
§§ 
SetState
§§ #
(
§§# $
new
§§$ '
GameOverState
§§( 5
(
§§5 6

controller
§§6 @
)
§§@ A
)
§§A B
;
§§B C
}
•• 
public
ßß 
override
ßß 
void
ßß  
Tick
ßß! %
(
ßß% &&
SimpleReactionController
ßß& >

controller
ßß? I
)
ßßI J
{
®® 

controller
©© 
.
©© 
Ticks
©©  
++
©©  "
;
©©" #
double
™™ 
time
™™ 
=
™™ 

controller
™™ (
.
™™( )
Ticks
™™) .
/
™™/ 0&
SimpleReactionController
™™1 I
.
™™I J
TICKS
™™J O
;
™™O P

controller
´´ 
.
´´ 
Gui
´´ 
.
´´ 

SetDisplay
´´ )
(
´´) *
time
´´* .
.
´´. /
ToString
´´/ 7
(
´´7 8
$str
´´8 >
)
´´> ?
)
´´? @
;
´´@ A
if
¨¨ 
(
¨¨ 

controller
¨¨ 
.
¨¨ 
Ticks
¨¨ $
==
¨¨% '&
SimpleReactionController
¨¨( @
.
¨¨@ A
	GAME_TIME
¨¨A J
)
¨¨J K
{
≠≠ 

controller
ÆÆ 
.
ÆÆ 
SetState
ÆÆ '
(
ÆÆ' (
new
ÆÆ( +
GameOverState
ÆÆ, 9
(
ÆÆ9 :

controller
ÆÆ: D
)
ÆÆD E
)
ÆÆE F
;
ÆÆF G
}
ØØ 
}
∞∞ 
}
±± 	
private
≥≥ 
class
≥≥ 
GameOverState
≥≥ #
:
≥≥$ %
State
≥≥& +
{
¥¥ 	
public
µµ 
GameOverState
µµ  
(
µµ  !&
SimpleReactionController
µµ! 9

controller
µµ: D
)
µµD E
{
∂∂ 

controller
∑∑ 
.
∑∑ 
Ticks
∑∑  
=
∑∑! "
$num
∑∑# $
;
∑∑$ %
}
∏∏ 
public
ππ 
override
ππ 
void
ππ  
CoinInserted
ππ! -
(
ππ- .&
SimpleReactionController
ππ. F

controller
ππG Q
)
ππQ R
{
∫∫ 
}
ºº 
public
ææ 
override
ææ 
void
ææ  
GoStopPressed
ææ! .
(
ææ. /&
SimpleReactionController
ææ/ G

controller
ææH R
)
ææR S
{
øø 

controller
¿¿ 
.
¿¿ 
SetState
¿¿ #
(
¿¿# $
new
¿¿$ '
OnState
¿¿( /
(
¿¿/ 0

controller
¿¿0 :
)
¿¿: ;
)
¿¿; <
;
¿¿< =
}
¡¡ 
public
√√ 
override
√√ 
void
√√  
Tick
√√! %
(
√√% &&
SimpleReactionController
√√& >

controller
√√? I
)
√√I J
{
ƒƒ 

controller
≈≈ 
.
≈≈ 
Ticks
≈≈  
++
≈≈  "
;
≈≈" #
if
∆∆ 
(
∆∆ 

controller
∆∆ 
.
∆∆ 
Ticks
∆∆ $
==
∆∆% '&
SimpleReactionController
∆∆( @
.
∆∆@ A
GAMEOVER_TIME
∆∆A N
)
∆∆N O
{
«« 

controller
»» 
.
»» 
SetState
»» '
(
»»' (
new
»»( +
OnState
»», 3
(
»»3 4

controller
»»4 >
)
»»> ?
)
»»? @
;
»»@ A
}
…… 
}
   
}
ÀÀ 	
}
ŒŒ 
}œœ “`
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