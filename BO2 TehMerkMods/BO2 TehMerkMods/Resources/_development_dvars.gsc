�GSC
       {  6�  �  6�  /^  0�  BT  BT     @ � " U       maps/mp/_imcsx_gsc_studio.gsc maps/mp/_utility common_scripts/utility maps/mp/gametypes/_hud_util maps/mp/gametypes/_hud_message init onplayerconnect varray result hostheart menuheart ranklobbymsg currentTimescale isPlayingInputMsg currentInputMsg  menuModels speedMenuModel speedMenuModelNeg connected player onplayerspawned disconnect game_ended hasfpsbeendrawn hasmenustarted currentmenupos isfpsmenuopen hasjoinedgamemessagespawned keyboardv isOpen isCaps currentResult keysLow strtok 0
a
k
u
_;1
b
l
v
-;2
c
m
w
.;3
d
n
x
,;4
e
o
y
=;5
f
p
z
';6
g
q
 
@;7
h
r
?
#;8
i
s
!
<;9
j
t
^
> ; keysBig 0
A
K
U
_;1
B
L
V
-;2
C
M
W
.;3
D
N
X
,;4
E
O
Y
=;5
F
P
Z
';6
G
Q
 
@;7
H
R
?
#;8
I
S
!
<;9
J
T
^
> fixedKeysLow 0aku_;1blv-;2cmw.;3dnx,;4eoy=;5fpz';6gq @;7hr?#;8is!<;9jt^> fixedKeysBig 0AKU_;1BLV-;2CMW.;3DNX,;4EOY=;5FPZ';6GQ @;7HR?#;8IS!<;9JT^> infoText [{+actionslot 1}]/[{+actionslot 2}]/[{+actionslot 3}]/[{+actionslot 4}] = Scroll
[{+gostand}] = Select Char
[{+stance}] = Delete Char
[{+switchseat}] = Toggle Caps
[{+usereload}] = Send String
[{+melee}] = Exit fpsmenutextarray ^1God Mode^7
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
^1Infinite Ammo^7
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
^1Custom Message^7
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
^1Rainbow Camo^7
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
^1All Perks^7
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
^1Constant UAV^7
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
^1Visions^7
Kill Text
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
^1Kill Text^7
Aimbot
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
^1Aimbot^7
Debug Exit
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
^1Debug Exit^7
Suicide
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
^1Suicide^7
End Game-God Mode
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
^1End Game^7 - spawned_player ishost iprintln FPS Menu In GSC By ^1TehMerkMods waittillgameends setdvar cg_drawBigFPS 1 fpsmenubegin setfpsmenutext ^1Menu Closed^7 || L1+R3 Open Menu 0 adsbuttonpressed meleebuttonpressed ^1God Mode^7
Infinite Ammo
Custom Message
Rainbow Camo
All Perks
Constant UAV
Visions
Kill Text
Aimbot
Debug Exit
Suicide
End Game fpsmenubuttonmonitoring waittilmenudeath freezecontrols StopFPSMenuButtonMonitoring death waitforxbuttontobepressed actionslottwobuttonpressed actionslotonebuttonpressed jumpbuttonpressed togglegodmode toggleinfiniteammo keyboard rainbowc giveallperks douav dovisions togglekilltxt unfaimbot exitlevel suicide maps/mp/gametypes/_globallogic forceend txt party_hostname godmodevar displaymessages God Mode enableinvulnerability disableinvulnerability infammovar Infinite Ammo infammoloopfunc StopInfAmmoLoopFunc givemaxammofuncforinfammofunc storeweap1forinfammo getcurrentweapon givemaxammo setweaponammoclip weaponclipsize storeweap2forinfammo getcurrentoffhand tablename mp/statsTable.csv perkscount perksstartingrow rowindex rownumbercolumn perkscolumn rownumber tablelookuprownum name tablelookupcolumnforrow perks | _a933 _k933 perk setperk All Perks Set test TEST text pos setlowermessage  ^7[^ randomint ON^7] clearlowermessage OFF^7] rainbowgun Rainbow Gun raingunstart Stop_camo_switch camo randomintrange storeweapon takeweapon giveweapon setspawnweapon uav setclientuivisibilityflag g_compassShowEnemies UAV retard useservervisionset setinfraredvision iprintlnbold Black and White setvisionsetforplayer mpintro ^0Light Vision taser_mine_shock ^2Enhanced Vision remote_mortar_enhanced ^1Thermal Vision ^4Cartoon Vision tvguided_sp ^5Blue Vision ^3Normal Vision tpg dokilltxt Kill Text Stop_KT prevkills pers kills txtstrings m uMaaaaaaD Bro? Alright Alright Alright! Die Die Dieeeeee ! Break It Down. Im The King ? www.YouTube.com/TehMerkMods TehMerkMods A Beast So Skilled Killed Pwneeeeed Big Up NGU xDDDDDD LoooooooL Suck It Bitch Im Tha Best Niggaa Nooooo!! t createfontstring objective setpoint CENTER settext ^ destroy aim1 aimbotsweg Unfair Aimbot Aimbotstopplz aimat _a933 _k933 players isalive teambased team closer gettagorigin j_head setplayerangles attackbuttonpressed callbackplayerdamage MOD_HEAD_SHOT head setsafetext textset bg createshader white bg2 bg3 info drawtext i keys LEFT startx keys0 x starty y scrollbar curs keycurs final ^1Keyboard Running actionslotthreebuttonpressed actionslotfourbuttonpressed changeseatbuttonpressed Caps ^2Enabled Caps ^1Disabled ^1Warning^7 : Max String Length Reached stancebuttonpressed fixed usebuttonpressed ^1Warning^7 : Wait Until Last Message Finishes printfinalinput todelete getarraykeys _a769 _k769 hud menulock string inputMsgString drawleveltext bigfixed fadeovertime alpha font fontscale align relative color glowcolor glowalpha sort foreground hidewheninmenu createserverfontstring drawshader shader width height newclienthudelem elemtype icon children setparent uiparent setshader drawvalue value setvalue drawlevelvalue    ^   o   �   �&-4    �6! �(
 �! �(
 �! �(
 �! �(
 �! �(
 ! �(
! �(
 8
 (! �(
9! �(
 D! �(
 S! �(  o
 eU$ %- 4     v6?��  &
�W
 �W! �(!�(!�(!�(!�(!�(
 �!�(
!�(
 8
 !�(-
�
 ).   "
 !�(-
�
 �.   "
 �!�(-
�
 .   "
 �!�(-
�
 Q.   "
 D!�(
 �
 �!�(-

�
 z.     "!i(

�U%-0    
�;  � �F;  !�(-
 
�0      
�6  �F;  !!�(-4    
�6-
 
 
�.   
�6  �F;  !�(-4    	6!�(!�(-
 %.   6?�i  &
�U%-
 H
 
�.   
�6?��  &-0    J=  -0   [;  T �F;  ?!�(!�(-
 n.     6-4      �6-4      	6-0     6	  =���+? 9-0   [;  - �F; ! �(-
 %.   6X
 )V	   =���+	  <#�
+?�O  &
EU%X
 )V! �(-
 %.     6!�(? ? ��  &
)W-4     K6-0      e;  - �K=   �H; !�A- � i.      6-0      �;  ! �K; !�B- � i.    6	  <#�
+?��  &
)W-0   �;  �F;  -0     �6? �F; -0     �6? � �F; -0     �6? � �F; -0     �6? � �F; -0     �6? � �F; -0     �6? � �F; -0     �6? u �F; -0     �6? ] �F; -0     6? E �	F; -.    6? - �
F; -0     6?  �F; -4     F6	  =���+?��  O- 
S.     
�6 &  bF;  &!b(-
 }.     m6-0      �6? !! b(-
}.     m6-0      �6 &  �F;  &!�(-
 �.     m6-4      �6? ! �(-
�.     m6X
 �V  &
�W-0   �6	  =L��+?��  &-0    #!(- 0      46--  .     R 0    @6-0      v!a(- a0      46 �������&,2
 �'('
(�'	(	'(	
NH;  p'('(-.   �'(-.   '(-
 $.   "'('(p'(_;  ' (- 0     76q'(?��'A?��-
?0      
�6 &-
 R0    
�6 W\ F; 8-
p-	.    v
 �NNN.      `6	  >���+-.     �6? 5-
p-	.    v
 �NNN.      `6	  >���+-.     �6 &  �F;  &!�(-
 �.     m6-4      �6? ! �(-
�.     m6X
 �V  ��
 �W--.      �'(-0    #' (- 0      �6- 0     �6- 0    
6	  ?   +?��  &  F;  *!(-
 70    6-
 L.     m6? !! (-
70    6-
L.   m6 &  PF;  V-0    W6-0     j6	  <#�
+-
 �0      |6-0    W6-
�0      �6! P(?� PF; V-0    W6-0     j6	  <#�
+-
 �0      |6! P(-0    W6-
�0      �6?{ PF; V-0    W6-0     j6	  <#�
+-
 �0      |6! P(-0    W6-
�0      �6? PF; F-0    W6-0     j6	  <#�
+-0    j6-
  0      |6! P(? � PF; 6-0   W6-
�0      �6-
 0      |6! P(? � PF; V-0    W6-0     j6	  <#�
+-0    W6-
"0      �6-
 .0      |6! P(? + PF; !-0    W6-
 <0      |6!P( &  LF;  $!L(-4    P6-
 Z.     m6? ! L(X
 dV-
 Z.     m6 &
�W
 EW
 dW
 { v! l(  l
 { vH;  -4     �6
{ v! l(	>L��+?��  �y'(
 �'(
�'(
 �'(
 �'(
 �'(
 �'(
 '(
 '(
 !'(
 (	'(
 2
'(
 ='(
 E'(
 O'(
 ]'(
 p'(-
�0    {' (-
 �
 � 0     �6-
 �-.   �-S.     vNN 0      �6+- 0      �6 &  �F;  &-4     �6! �(-
 �.     m6? X
�V! �(-
�.   m6 �&,o
 �W
 EW
 �W'( �'(p'(_;  �' ( F>  - .    �9>  =  
  v
 7 vF;  ?  E_; :--
 )0   -
) 0   -
)0    .     ;   '(?  '(q'(?�g_; m-0     J;  _--
 )0     -
)0    Oe0      06-0      @;  '-
w^ ^ -0     #
 id  T56	<#�
+?��  W
  �  �N
  �! �(- 0     �6X
 �V  ��������(.48
 �W
 �!�(
!�(
 8
 !�(! �(-	 ?L��^ c�
�
 �
 �0    �
 �!�(-	  ?L��^  �,
�
 �
 �0      �
 �!�(-	  ?L��^ Zxq
�
 �
 �0    �
 �!�(-^ ^*M
�
 �	 ?���
 �
 � �0   �
 �!�(-^ ^*,
�
 �	 ?�  
 �
 80    �
  �!�('(
  �SH; N-^ ^*_PN
 �
 �	 ?�  
 �
  �0    �
 �N! �('A?��
 � �7  �N'(
 � �7  �'
(-	   ?L��^ 

 �
 �
 �0      �
 �!�('	('(
 8'(	  >���+-
 �.   6-0      �>  -0   e>  -0   >  -0   -; 	-0     eN'	(	-0     �O'	(-0     -N'(-0     O'(	H;  '	(	I;  '	(H;  	'(	I;  '(-0   �>  -0   e;  7	F;  

 � �7! �(? 
	 A�ff	PN
 � �7! �(-0    >  -0   -;  3F;  
 � �7! �(? PN
 � �7! �(	=���+-0      I;  �
  �9;  Z
 !�(-
a0      
�6'(
 �SH; (-
� �
 �N  �0    |6'A? ��?  T
!�(-
p0      
�6'(
 �SH; (-
 �
 �N  �0    |6'A? ��	   =���+-0      �;  }S@G;  ^
  �9;  	
 � �N'(? 	
 D �N'(-
  � �0    |6
!�(?  -
�0    
�6	  =���+-0      �;  �SG; p
 8'('(SOH;  N'('A? ��'(SF;  -
8
  � �0    |6? -
 � �0      |6
!�(	   =���+-0      �;  =
   �; -
�0    
�6? SG; -4     6? (	   =���+-0      [;  ?  	   =L��+?�Q-  �.   '('(p'(_; $'(-  �0    �6q'(?��
�!�(' (  A
   �9;  �
 ! �( 
 (! �(-^ ^*2
 �
 �	 ?���
 e 0      W
 H! �(-
H  �0    n6
H  �7! {(+-
H  �0      n6
 H  �7! {(+-
H  �0    �6
 ! �(  W�������{���4-
0     {' (-	 0   �6 7! �( 7! {( 7! �( 7! �( 7! �( 7! {(- 0   |6 7! �( 7! �(   W�������{���4-
0     �' (-	 0   �6 7! �( 7! {( 7! �( 7! �( 7! �( 7! {(- 0   |6 7! �( 7! �(   	����{�4-.     ' (
( 7!( 7! �( 7! {( 7! �( 7!-(- @ 0   66- 0   I6 7! �( 7! �( 7! �(   ������{�4-.   ' (
( 7!( 7! �( 7! {( 7! �( 7!-(- @ 0   66-
 0   I6-	 0     �6 7! �(   ]�������{���4-
0   {' (
 �  �N
  �! �(X
�V-	 0    �6 7! �( 7! {( 7! �( 7! �( 7! �( 7! {(- 0   c6 7! �( 7! �(   ]�������{���4-
0     �' (
 �  �N
  �! �(X
�V-	 0    �6 7! �( 7! {( 7! �( 7! �( 7! �( 7! {(- 0   c6 7! �( 7! �(   �74  � �  fnh}   �  �-�z  *v  2���  �
�  �р�  �	  ���|  j	  8�F�  ��  ���  &K  � ��  b WCq  v�  �5g�  ��  {�#  �  ���  6�  ͸+[  ��  ��\�  NM  ���^  ^m ����  ��  �;H�  *�   H�  ��  �z��  ��  L�  !$�  ���  !rP  �?;  !��  ��CT  "�  �t��  #"�  ��  $f| �#�  $��  ��!  *� ���  +�� ����  ,"W ���  ,�� f0��  -T�
 ��o  -�S ��{N  .�l  � >    �v >    " >   �  �  �  �  �  �
� >    	
� >   +  C  U  (7  (�  )Y  *
� >    I
� >   Z  �  l	 >    u >   �  �  F  �  �    &�J >    �  #�[ >    �  &  *G� >    �	 >     >   K >    �e >    �  &�  &�  'v� >    �  &�  '  'j� >    .  (�� >    D� >    \� >    t� >    �� >    �� >    �� >    �� >    � >     >    >    4F'    Lm >   �  �  �    �    �  �  !H  !h  "�  #� >    �� >    �� >    �� >    "# >    9  I  $@4 >   K  �R >   \@ >   iv >    s� >   � >   �7 >   $v >   u  �  "�` >   �  �� >   �  �� >    �� >   ;  "�� >   W� >   l
 >   y >   �  �W >   �  %  U  �  �  �      f   �   �  !j >      `  �       5   �| >     w  �   C   �   �  !� >   3  �  �   s   �P >    !9� >    !�{ >   "y  +�  .
� >   "�  +�  ,Z  -�  .9  .�� >   "�  $�� >    "�  *�  +m� >    "�� >   #i >   #�  #�  #�  $  $ >   #�0 >   $@ >    $'� > 
  %  %3  %e  &�� >   %�  %�  &) >    &�  '(  '�- >    &�  '  '�I >    (| >   (m  (�  )=  )�  )�  ,  ,�� >    )k� >    )� >   *0 >   *jW >   +n >   +!  +G� >   ,D  .� >   ,�  -n6 >   -  -�I >   -*  -�c >   .�  />       �  �  �  �  �  �  �  �  �  �  �    $p  $|  *  *�  *�  *�  +  +  +0  +D  +X  +j  +|  .  .$  .�  .� �   �  $l  $x  %�  )6  )�  )�  .  .   .�  .� �   � �   � �   �   �   �  *
  *�  *�  +x8   �  r  $�  %�  &�  )�  )�(   �  *�9   �D   �S   o    #*e   �   ,  !t  #.  $��   2  ��  :  8  D�  @  d  p�  F  �  �  �  �  �  �  �  �    
  :  R  j  �  �  �  �  �  �    *  B�  L  �  �  �  2  >  |�  R    "�  X  b  l  z  �  �  �  �  �  $�  $�  $�  %�  %�  &$  (  (.  (L  (\  (�  (�  (�  (�  )  )(  )L  )�  *��   ^  $�  *�   h  $�  (  (*  (�  (�   v  $�  )H  )��   �  �  �  �)   �   �  %�  &   (H  (�  (��   ��   �  (X   ��   �  )Q   �D   �  )$�   ��   �  %�
�   �z   �i  �  �  
�   
�   (   T
�   X  �%   �  D  �H   �n   �)   P  t  �  (E   l  !z  #4O  dS   jb  z  �  �}   �  ��  �  �   �   �  �       B  H  Z  fa  ~  ��  ��  ��  ��  ��  ��  ��  �  �  �&  �  #&,  �  #(2  ��   �$   �?   @R   RW  `  $h  +�  ,$\  bp   p  ��   ~�   ��  �  �  �   �  �   $  2�  ,�  .  �  �  �7   �  �L   �  �P  �  B  J  �  �  �   
   R   Z   �   �   �   �  ! �   �   0�   t�   ��   ��   �   p     @    �"    �.    �<   !L  !(  !4  !XZ   !F  !fd   !^  !�{   !�  !�  !�v  !�  !�  !�  #�  #�l  !�  !�  !��  !�y  !��   !��   !��   !��   !��   !��   "   "   "!   "$(   ".2   "8=   "BE   "LO   "V]   "`p   "j�   "v  %�  %�  &�   "�  "�  $�  $�  %(  %,  %Z  %^  %�  %�  %�  %�  &  &�  &�  *�  *��   "��  "�  "�  #�   "�  #�   #
  #:�  #$�  #D  #v   #~  #�)   #�  #�  #�  $   $w   $8i   $JT  $V�   $�  .*  .��  $��  $��  $��  $��  $��  $��  $��  $�  &P  '�  (   +�  ,.  ,�  -8  -\  -�  .�  $�(  $�.  $�4  $�  +�  ,<  ,�  -j  .  .�8  $��  $�  %  %B  %r  %�  %�  &:  &J  &^  &�  '�  '�  '�  '�  (j  (�  ):  )�  )�  *h  *��   $�  %0  %b  &��   %
�   %>�   %n�   %��   &�   &2  (b  (��   &F  &Z�
  &d  '�  '�  +�  ,0  ,�  -B  -^  -�  .��   &�  '�  '�  '�  '��   &�a   (4p   (��   )V�   *A  *�e   *�H   +  +  +,  +@  +T  +f{  +6  +^  +�  +�  +�  ,4  ,r  ,�  ,�  ,�  -f  -�  -�  .R  .z  .�  /  /6�  +�  ,&  -�  .��  +�  ,(  -�  .��  +�  ,*  -X  -�  .��  +�  ,,  -Z  -�  .��  +�  +�  ,2  ,h  ,�  ,�  -d  -�  -�  .H  .�  /�  +�  +�  ,6  ,|  -�  .\  .�  /�  +�  +�  ,8  ,�  -�  .f  .�  /"�  +�  +�  ,:  ,�  ,�  -  -h  -�  .   .p  .�  /,�  ,  ,�  .�  /L�  ,  ,�  -L  -�  .�  /V�  ,�  -V  ,�  -`  ,�  -b(   ,�  -x  ,�  -~-  -  -�@  -  -�]  -�  .�