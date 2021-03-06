FasdUAS 1.101.10   ??   ??    k             l      ??  ??   ?{ Copyright (C) 2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      ? 	 	?   C o p y r i g h t   ( C )   2 0 2 0   K u r i t a   T e t s u r o 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ????????  ??  ??        l          x     ??  ??    1      ??
?? 
ascr  ?? ??
?? 
minv  m         ?    2 . 4??      >= OS X 10.10     ?      > =   O S   X   1 0 . 1 0      x    ?? ????    4   	 ?? 
?? 
frmk  m       ?    A p p K i t??        x     ?? ????    2   ??
?? 
osax??       !   j     "?? "
?? 
pnam " m     ! # # ? $ $  X A p p P r o c e s s !  % & % j   # )?? '?? ,0 nsrunningapplication NSRunningApplication ' 4   # (?? (
?? 
pcls ( m   % & ) ) ? * * ( N S R u n n i n g A p p l i c a t i o n &  + , + j   * 0?? -?? 0 nsworkspace NSWorkspace - 4   * /?? .
?? 
pcls . m   , - / / ? 0 0  N S W o r k s p a c e ,  1 2 1 l     ????????  ??  ??   2  3 4 3 l      ?? 5 6??   5?9!@references
Home page || http://www.script-factory.net/XModules/XAppProcess/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XAppProcess/changelog.html
Repository || https://github.com/tkurita/XAppProcess.scptd

@title XAppProcess Reference
* Version : 1.0
* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.10 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 
XAppProcess allows you to send key events to the application process specified with a bundle identifier.?gkeystroke?h and ?gkey code?h commands of ?gSystem Events?h can send key events only to the frontmost application process. But XAppProcess can send key events to any background processes.Also following oprerations to application processes are provided:activate an application process with detail options e.g. only one window is bring to the fronthide an application process without using ?gSystem Events?h

== Examples
@example
use XAppProcess : script "XAppProcess"set app_id to "com.apple.TextEdit"tell XAppProcess's make_with({id:app_id, allow_launching:true})	post_keyevent("N", {"command"})	activate_with({all_windows:false})	delay 1	log hide()	log identifier() -- "com.apple.TextEdit"	log pid()	delay 0.1	log is_active() -- true	log is_hidden() --falseend tellreturn missing value
    6 ? 7 7
b ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X A p p P r o c e s s / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X A p p P r o c e s s / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X A p p P r o c e s s . s c p t d 
 
 @ t i t l e   X A p p P r o c e s s   R e f e r e n c e 
 *   V e r s i o n   :   1 . 0 
 *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 1 0   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
  X A p p P r o c e s s   a l l o w s   y o u   t o   s e n d   k e y   e v e n t s   t o   t h e   a p p l i c a t i o n   p r o c e s s   s p e c i f i e d   w i t h   a   b u n d l e   i d e n t i f i e r .   k e y s t r o k e    a n d    k e y   c o d e    c o m m a n d s   o f    S y s t e m   E v e n t s    c a n   s e n d   k e y   e v e n t s   o n l y   t o   t h e   f r o n t m o s t   a p p l i c a t i o n   p r o c e s s .   B u t   X A p p P r o c e s s   c a n   s e n d   k e y   e v e n t s   t o   a n y   b a c k g r o u n d   p r o c e s s e s .  A l s o   f o l l o w i n g   o p r e r a t i o n s   t o   a p p l i c a t i o n   p r o c e s s e s   a r e   p r o v i d e d :  a c t i v a t e   a n   a p p l i c a t i o n   p r o c e s s   w i t h   d e t a i l   o p t i o n s   e . g .   o n l y   o n e   w i n d o w   i s   b r i n g   t o   t h e   f r o n t  h i d e   a n   a p p l i c a t i o n   p r o c e s s   w i t h o u t   u s i n g    S y s t e m   E v e n t s  
 
 = =   E x a m p l e s 
 @ e x a m p l e 
 u s e   X A p p P r o c e s s   :   s c r i p t   " X A p p P r o c e s s "   s e t   a p p _ i d   t o   " c o m . a p p l e . T e x t E d i t "   t e l l   X A p p P r o c e s s ' s   m a k e _ w i t h ( { i d : a p p _ i d ,   a l l o w _ l a u n c h i n g : t r u e } )  	 p o s t _ k e y e v e n t ( " N " ,   { " c o m m a n d " } )  	 a c t i v a t e _ w i t h ( { a l l _ w i n d o w s : f a l s e } )  	 d e l a y   1  	 l o g   h i d e ( )  	 l o g   i d e n t i f i e r ( )   - -   " c o m . a p p l e . T e x t E d i t "  	 l o g   p i d ( )  	 d e l a y   0 . 1  	 l o g   i s _ a c t i v e ( )   - -   t r u e  	 l o g   i s _ h i d d e n ( )   - - f a l s e  e n d   t e l l   r e t u r n   m i s s i n g   v a l u e 
 4  8 9 8 l      ?? : ;??   :??!@group Class Methods
@syntax activate_app(identifier)
@syntax activate_app({id:identifier, allow_launching:allow_launching, all_windows:all_windows, ignoring_other_apps:ignoring_other_apps})
@abstruct 
Activate specified application process with detail options@param identifier (text) : The bundle identifer of the target process.
@param allow_launching (boolean) :
@param all_windows (boolean) :
@param ignoring_other_apps (boolean) :
@param allow_launching (boolean) : Optional. The defalt value is false. When ture is given, the target application is launched if the application is not running. When false is given, missing value is returned if the application is not running.@result boolean : true if success    ; ? < <? ! @ g r o u p   C l a s s   M e t h o d s 
 @ s y n t a x   a c t i v a t e _ a p p ( i d e n t i f i e r ) 
 @ s y n t a x   a c t i v a t e _ a p p ( { i d : i d e n t i f i e r ,   a l l o w _ l a u n c h i n g : a l l o w _ l a u n c h i n g ,   a l l _ w i n d o w s : a l l _ w i n d o w s ,   i g n o r i n g _ o t h e r _ a p p s : i g n o r i n g _ o t h e r _ a p p s } ) 
 @ a b s t r u c t   
 A c t i v a t e   s p e c i f i e d   a p p l i c a t i o n   p r o c e s s   w i t h   d e t a i l   o p t i o n s  @ p a r a m   i d e n t i f i e r   ( t e x t )   :   T h e   b u n d l e   i d e n t i f e r   o f   t h e   t a r g e t   p r o c e s s . 
 @ p a r a m   a l l o w _ l a u n c h i n g   ( b o o l e a n )   : 
 @ p a r a m   a l l _ w i n d o w s   ( b o o l e a n )   : 
 @ p a r a m   i g n o r i n g _ o t h e r _ a p p s   ( b o o l e a n )   : 
 @ p a r a m   a l l o w _ l a u n c h i n g   ( b o o l e a n )   :   O p t i o n a l .   T h e   d e f a l t   v a l u e   i s   f a l s e .   W h e n   t u r e   i s   g i v e n ,   t h e   t a r g e t   a p p l i c a t i o n   i s   l a u n c h e d   i f   t h e   a p p l i c a t i o n   i s   n o t   r u n n i n g .   W h e n   f a l s e   i s   g i v e n ,   m i s s i n g   v a l u e   i s   r e t u r n e d   i f   t h e   a p p l i c a t i o n   i s   n o t   r u n n i n g .  @ r e s u l t   b o o l e a n   :   t r u e   i f   s u c c e s s  9  = > = i   1 4 ? @ ? I      ?? A???? 0 activate_app   A  B?? B o      ???? 0 arg  ??  ??   @ k     1 C C  D E D Z      F G???? F >     H I H n      J K J m    ??
?? 
pcls K o     ???? 0 arg   I m    ??
?? 
reco G r     L M L K     N N ?? O??
?? 
ID   O o   	 
???? 0 arg  ??   M o      ???? 0 arg  ??  ??   E  P Q P l   ????????  ??  ??   Q  R S R r     T U T b     V W V o    ???? 0 arg   W K     X X ?? Y Z?? 0 allow_launching   Y m    ??
?? boovtrue Z ?? [ \?? 0 all_windows   [ m    ??
?? boovfals \ ?? ]???? 0 ignoring_other_apps   ] m    ??
?? boovtrue??   U o      ???? 0 arg   S  ^?? ^ O     1 _ ` _ L   ) 0 a a I   ) /?? b???? 0 activate_with   b  c?? c o   * +???? 0 arg  ??  ??   ` I     &?? d???? 0 	make_with   d  e?? e o   ! "???? 0 arg  ??  ??  ??   >  f g f l     ????????  ??  ??   g  h i h l      ?? j k??   j " !@group Constructor Methods     k ? l l 8 ! @ g r o u p   C o n s t r u c t o r   M e t h o d s   i  m n m i   5 8 o p o I      ?? q???? 0 make_with_running_app   q  r s r o      ???? 0 running_app   s  t?? t o      ???? 0 
identifier  ??  ??   p k      u u  v w v r      x y x  f      y o      ???? 0 a_class   w  z?? z h    ?? {?? *0 xappprocessinstance XAppProcessInstance { k       | |  } ~ } j     ?? 
?? 
pare  o     ???? 0 a_class   ~  ? ? ? j   	 ?? ??? 0 _appprocess _appProcess ? o   	 ???? 0 running_app   ?  ? ? ? j    ?? ??? 0 _identifier   ? o    ???? 0 
identifier   ?  ? ? ? j    ?? ??? 0 _pid   ? m    ??
?? 
msng ?  ? ? ? l     ????????  ??  ??   ?  ? ? ? i     ? ? ? I      ???????? 0 pid  ??  ??   ? M      ? ? I      ???????? 0 pid  ??  ??   ?  ? ? ? l     ????????  ??  ??   ?  ??? ? i    ! ? ? ? I      ???????? 0 
identifier  ??  ??   ? M      ? ? I      ???????? 0 
identifier  ??  ??  ??  ??   n  ? ? ? l     ????????  ??  ??   ?  ? ? ? l      ?? ? ???   ?4.!@syntax make_with(identifier)
@syntax make_with({id:identifier, allow_launching:boolean})
@abstruct 
Return a new XAppProcess instance for an application process specified with a bundle identifier.@param identifier (text) : The bundle identifer of the target process.
@param allow_launching (boolean) : Optional. The defalt value is false. When ture is given, the target application is launched if the application is not running. When false is given, missing value is returned if the application is not running.@result script : A new XAppProcess instance    ? ? ? ?\ ! @ s y n t a x   m a k e _ w i t h ( i d e n t i f i e r ) 
 @ s y n t a x   m a k e _ w i t h ( { i d : i d e n t i f i e r ,   a l l o w _ l a u n c h i n g : b o o l e a n } ) 
 @ a b s t r u c t   
 R e t u r n   a   n e w   X A p p P r o c e s s   i n s t a n c e   f o r   a n   a p p l i c a t i o n   p r o c e s s   s p e c i f i e d   w i t h   a   b u n d l e   i d e n t i f i e r .  @ p a r a m   i d e n t i f i e r   ( t e x t )   :   T h e   b u n d l e   i d e n t i f e r   o f   t h e   t a r g e t   p r o c e s s . 
 @ p a r a m   a l l o w _ l a u n c h i n g   ( b o o l e a n )   :   O p t i o n a l .   T h e   d e f a l t   v a l u e   i s   f a l s e .   W h e n   t u r e   i s   g i v e n ,   t h e   t a r g e t   a p p l i c a t i o n   i s   l a u n c h e d   i f   t h e   a p p l i c a t i o n   i s   n o t   r u n n i n g .   W h e n   f a l s e   i s   g i v e n ,   m i s s i n g   v a l u e   i s   r e t u r n e d   i f   t h e   a p p l i c a t i o n   i s   n o t   r u n n i n g .  @ r e s u l t   s c r i p t   :   A   n e w   X A p p P r o c e s s   i n s t a n c e  ?  ? ? ? i   9 < ? ? ? I      ?? ????? 0 	make_with   ?  ??? ? o      ???? 0 arg  ??  ??   ? k     } ? ?  ? ? ? Z      ? ????? ? >     ? ? ? n      ? ? ? m    ??
?? 
pcls ? o     ???? 0 arg   ? m    ??
?? 
reco ? r     ? ? ? K     ? ? ?? ???
?? 
ID   ? o   	 
???? 0 arg  ??   ? o      ???? 0 arg  ??  ??   ?  ? ? ? l   ????????  ??  ??   ?  ? ? ? r    & ? ? ? b     ? ? ? o    ???? 0 arg   ? K     ? ? ?? ????? 0 allow_launching   ? m    ??
?? boovfals??   ? K       ? ? ?? ? ?
?? 
ID   ? o      ???? 0 
identifier   ? ?? ????? 0 allow_launching   ? o      ???? 0 allow_launching  ??   ?  ? ? ? l  ' '????~??  ?  ?~   ?  ? ? ? O   ' < ? ? ? r   / ; ? ? ? n  / 9 ? ? ? I   5 9?}?|?{?} 0 
lastobject 
lastObject?|  ?{   ? I   / 5?z ??y?z T0 (runningapplicationswithbundleidentifier_ (runningApplicationsWithBundleIdentifier_ ?  ??x ? o   0 1?w?w 0 
identifier  ?x  ?y   ? o      ?v?v 0 
target_app   ? o   ' ,?u?u ,0 nsrunningapplication NSRunningApplication ?  ? ? ? Z   = t ? ??t?s ? =  = @ ? ? ? o   = >?r?r 0 
target_app   ? m   > ??q
?q 
msng ? Z   C p ? ??p ? ? o   C D?o?o 0 allow_launching   ? k   G k ? ?  ? ? ? O  G U ? ? ? I  O T?n?m?l
?n .ascrnoop****      ? ****?m  ?l   ? 5   G L?k ??j
?k 
capp ? o   I J?i?i 0 
identifier  
?j kfrmID   ?  ??h ? O   V k ? ? ? r   ^ j ? ? ? n  ^ h ? ? ? I   d h?g?f?e?g 0 
lastobject 
lastObject?f  ?e   ? I   ^ d?d ??c?d T0 (runningapplicationswithbundleidentifier_ (runningApplicationsWithBundleIdentifier_ ?  ??b ? o   _ `?a?a 0 
identifier  ?b  ?c   ? o      ?`?` 0 
target_app   ? o   V [?_?_ ,0 nsrunningapplication NSRunningApplication?h  ?p   ? L   n p ? ? m   n o?^
?^ 
msng?t  ?s   ?  ??] ? L   u } ? ? I   u |?\ ??[?\ 0 make_with_running_app   ?  ? ? ? o   v w?Z?Z 0 
target_app   ?  ??Y ? o   w x?X?X 0 
identifier  ?Y  ?[  ?]   ?  ? ? ? l     ?W?V?U?W  ?V  ?U   ?  ? ? ? l      ?T ? ??T   ? ? z!
@abstruct 
Return a new XAppProcess instance for the frontmost application.@result script : A new XAppProcess instance    ? ? ? ? ? ! 
 @ a b s t r u c t   
 R e t u r n   a   n e w   X A p p P r o c e s s   i n s t a n c e   f o r   t h e   f r o n t m o s t   a p p l i c a t i o n .  @ r e s u l t   s c r i p t   :   A   n e w   X A p p P r o c e s s   i n s t a n c e  ?  ? ? ? i   = @ ? ? ? I      ?S?R?Q?S 0 make_with_frontmost  ?R  ?Q   ? k      ? ?  ? ? ? r      ? ? ? n     ? ? ? I   	 ?P?O?N?P ,0 frontmostapplication frontmostApplication?O  ?N   ? n    	 ? ? ? I    	?M?L?K?M "0 sharedworkspace sharedWorkspace?L  ?K   ? o     ?J?J 0 nsworkspace NSWorkspace ? o      ?I?I 0 
target_app   ?  ??H ? L     ? ? I    ?G ??F?G 0 make_with_running_app   ?    o    ?E?E 0 
target_app   ?D m    ?C
?C 
msng?D  ?F  ?H   ?  l     ?B?A?@?B  ?A  ?@    l      ????   - '!@group Hiding or Unhiding Applications    ?		 N ! @ g r o u p   H i d i n g   o r   U n h i d i n g   A p p l i c a t i o n s 

 l     ?>?=?<?>  ?=  ?<    l      ?;?;   H B!
@abstruct Attempts to hide the application.@result script : me    ? ? ! 
 @ a b s t r u c t   A t t e m p t s   t o   h i d e   t h e   a p p l i c a t i o n .  @ r e s u l t   s c r i p t   :   m e   i   A D I      ?:?9?8?: 0 hide  ?9  ?8   k     
  l     n     n    I    ?7?6?5?7 0 hide  ?6  ?5   o    ?4?4 0 _appprocess _appProcess  f      N H result is always false even if the application was successfully hidden.    ? ?   r e s u l t   i s   a l w a y s   f a l s e   e v e n   i f   t h e   a p p l i c a t i o n   w a s   s u c c e s s f u l l y   h i d d e n .  ?3  L    
!!  f    	?3   "#" l     ?2?1?0?2  ?1  ?0  # $%$ l      ?/&'?/  & J D!
@abstruct Attempts to unhide the application.@result script : me   ' ?(( ? ! 
 @ a b s t r u c t   A t t e m p t s   t o   u n h i d e   t h e   a p p l i c a t i o n .  @ r e s u l t   s c r i p t   :   m e % )*) i   E H+,+ I      ?.?-?,?. 
0 unhide  ?-  ?,  , k     
-- ./. l    0120 n    343 n   565 I    ?+?*?)?+ 
0 unhide  ?*  ?)  6 o    ?(?( 0 _appprocess _appProcess4  f     1 J D return false always even if the application was successfully shown.   2 ?77 ?   r e t u r n   f a l s e   a l w a y s   e v e n   i f   t h e   a p p l i c a t i o n   w a s   s u c c e s s f u l l y   s h o w n ./ 8?'8 L    
99  f    	?'  * :;: l     ?&?%?$?&  ?%  ?$  ; <=< l      ?#>??#  > ? z!
@abstruct Indicates whether the application is currently hidden.@result boolean : true when the application is hidden.   ? ?@@ ? ! 
 @ a b s t r u c t   I n d i c a t e s   w h e t h e r   t h e   a p p l i c a t i o n   i s   c u r r e n t l y   h i d d e n .  @ r e s u l t   b o o l e a n   :   t r u e   w h e n   t h e   a p p l i c a t i o n   i s   h i d d e n . = ABA i   I LCDC I      ?"?!? ?" 0 	is_hidden  ?!  ?   D L     EE n    FGF n   HIH I    ???? 0 ishidden isHidden?  ?  I o    ?? 0 _appprocess _appProcessG  f     B JKJ l     ????  ?  ?  K LML l      ?NO?  N &  !@group Activating Applications    O ?PP @ ! @ g r o u p   A c t i v a t i n g   A p p l i c a t i o n s  M QRQ l     ????  ?  ?  R STS l      ?UV?  U ? ?!
@syntax activate_with({all_windows:boolean, ignoring_other_apps:boolean, allow_launching: boolean})
@abstruct Activate the application process with detail options@result script : me   V ?WWr ! 
 @ s y n t a x   a c t i v a t e _ w i t h ( { a l l _ w i n d o w s : b o o l e a n ,   i g n o r i n g _ o t h e r _ a p p s : b o o l e a n ,   a l l o w _ l a u n c h i n g :   b o o l e a n } ) 
 @ a b s t r u c t   A c t i v a t e   t h e   a p p l i c a t i o n   p r o c e s s   w i t h   d e t a i l   o p t i o n s  @ r e s u l t   s c r i p t   :   m e T XYX i   M PZ[Z I      ?\?? 0 activate_with  \ ]?] o      ?? 0 args  ?  ?  [ k     G^^ _`_ r     aba b     
cdc o     ?? 0 args  d K    	ee ?fg? 0 all_windows  f m    ?
? boovfalsg ?hi? 0 ignoring_other_apps  h m    ?
? boovtruei ?
j?	?
 0 allow_launching  j m    ?
? boovfals?	  b K      kk ?lm? 0 all_windows  l o      ?? 0 all_windows  m ?no? 0 ignoring_other_apps  n o      ?? 0 ignoring_other_apps  o ?p?? 0 allow_launching  p o      ?? 0 allow_launching  ?  ` qrq r    !sts m    ? ?   t o      ???? 0 opt  r uvu Z   " /wx????w o   " #???? 0 all_windows  x r   & +yzy [   & ){|{ o   & '???? 0 opt  | m   ' (???? z o      ???? 0 opt  ??  ??  v }~} Z   0 =????? o   0 1???? 0 ignoring_other_apps  ? r   4 9??? [   4 7??? o   4 5???? 0 opt  ? m   5 6???? ? o      ???? 0 opt  ??  ??  ~ ???? l  > G???? L   > G?? n  > F??? I   A F??????? ,0 activatewithoptions_ activateWithOptions_? ???? o   A B???? 0 opt  ??  ??  ? l  > A?????? n  > A??? o   ? A???? 0 _appprocess _appProcess?  f   > ???  ??  ? V P always true is returned even if the application was not successfully activated.   ? ??? ?   a l w a y s   t r u e   i s   r e t u r n e d   e v e n   i f   t h e   a p p l i c a t i o n   w a s   n o t   s u c c e s s f u l l y   a c t i v a t e d .??  Y ??? l     ????????  ??  ??  ? ??? l      ??????  ? ] W!
@abstruct Indicates whether the application is currently hidden.@result script : me
   ? ??? ? ! 
 @ a b s t r u c t   I n d i c a t e s   w h e t h e r   t h e   a p p l i c a t i o n   i s   c u r r e n t l y   h i d d e n .  @ r e s u l t   s c r i p t   :   m e 
? ??? i   Q T??? I     ??????
?? .miscactvnull??? ??? null??  ??  ? L     ?? I     ??????? 0 activate_with  ? ???? J    ????  ??  ??  ? ??? l     ????????  ??  ??  ? ??? l      ??????  ? \ V!
@abstruct Indicates whether the application is currently frontmost.@result boolean
   ? ??? ? ! 
 @ a b s t r u c t   I n d i c a t e s   w h e t h e r   t h e   a p p l i c a t i o n   i s   c u r r e n t l y   f r o n t m o s t .  @ r e s u l t   b o o l e a n 
? ??? i   U X??? I      ???????? 0 	is_active  ??  ??  ? L     ?? n    ??? n   ??? I    ???????? 0 isactive isActive??  ??  ? o    ???? 0 _appprocess _appProcess?  f     ? ??? l     ????????  ??  ??  ? ??? l      ??????  ? . (!@group Post Key Events to Applications    ? ??? P ! @ g r o u p   P o s t   K e y   E v e n t s   t o   A p p l i c a t i o n s  ? ??? l     ????????  ??  ??  ? ??? i   Y \??? I      ??????? 0 to_upper  ? ???? o      ???? 0 char  ??  ??  ? k     G?? ??? l     ??????  ? + % a:97, z:122, A: 65, Z:90, 0:48, 9:57   ? ??? J   a : 9 7 ,   z : 1 2 2 ,   A :   6 5 ,   Z : 9 0 ,   0 : 4 8 ,   9 : 5 7? ??? r     ??? n     ??? 1    ??
?? 
ID  ? o     ???? 0 char  ? o      ???? 
0 charid  ? ???? Z    G????? F    ??? l   	?????? @    	??? o    ???? 
0 charid  ? m    ???? A??  ??  ? l   ?????? B    ??? o    ???? 
0 charid  ? m    ???? Z??  ??  ? L    ?? o    ???? 0 char  ? ??? F    $??? l   ?????? @    ??? o    ???? 
0 charid  ? m    ???? a??  ??  ? l   "?????? B    "??? o     ???? 
0 charid  ? m     !???? z??  ??  ? ??? L   ' 0?? 5   ' /?????
?? 
cha ? l  ) ,?????? \   ) ,??? o   ) *???? 
0 charid  ? m   * +????  ??  ??  
?? kfrmID  ? ??? F   3 >??? l  3 6?????? @   3 6??? o   3 4???? 
0 charid  ? m   4 5???? 0??  ??  ? l  9 <?????? B   9 <??? o   9 :???? 
0 charid  ? m   : ;???? 9??  ??  ? ???? l  A C???? L   A C?? o   A B???? 0 char  ? 
  0-9   ? ???    0 - 9??  ? m   F G??
?? 
msng??  ? ??? l     ????????  ??  ??  ? ??? l      ??????  ?}w!
@abstruct Post a key event to the application
@description
Even if the application is in background, key events can be send.

@param keycode (text or integer) : Any character of "0" to "9" and "A" to "Z" or a row key code to press.
@param modifier_keys (list) : A list consisting of any elements of {"command", "control", "option", "shift", "function"}@result script : me
   ? ?  ? ! 
 @ a b s t r u c t   P o s t   a   k e y   e v e n t   t o   t h e   a p p l i c a t i o n 
 @ d e s c r i p t i o n 
 E v e n   i f   t h e   a p p l i c a t i o n   i s   i n   b a c k g r o u n d ,   k e y   e v e n t s   c a n   b e   s e n d . 
 
 @ p a r a m   k e y c o d e   ( t e x t   o r   i n t e g e r )   :   A n y   c h a r a c t e r   o f   " 0 "   t o   " 9 "   a n d   " A "   t o   " Z "   o r   a   r o w   k e y   c o d e   t o   p r e s s . 
 @ p a r a m   m o d i f i e r _ k e y s   ( l i s t )   :   A   l i s t   c o n s i s t i n g   o f   a n y   e l e m e n t s   o f   { " c o m m a n d " ,   " c o n t r o l " ,   " o p t i o n " ,   " s h i f t " ,   " f u n c t i o n " }  @ r e s u l t   s c r i p t   :   m e 
?  i   ] ` I      ?????? 0 post_keyevent    o      ???? 0 keycode   ?? o      ???? 0 modifier_keys  ??  ??   k     ?		 

 Z     4?? =     n      m    ??
?? 
pcls o     ???? 0 keycode   m    ??
?? 
ctxt k    ,  r     I    ?????? 0 to_upper   ?? n   	  4   
 ??
?? 
cha  m    ????  o   	 
???? 0 keycode  ??  ??   o      ???? 0 char    Z    & ???? =   !"! o    ???? 0 char  " m    ??
?? 
msng  R    "??#$
?? .ascrerr ****      ? ****# b    !%&% o    ???? 0 keycode  & m     '' ?(( ,   i s   i n v a l i d   p a r a m e t e r .$ ??)??
?? 
errn) m    ???????  ??  ??   *??* r   ' ,+,+ b   ' *-.- m   ' (// ?00  $ . k V K _ A N S I _. o   ( )???? 0 char  , o      ???? 0 keycode  ??  ??   r   / 4121 c   / 2343 o   / 0???? 0 keycode  4 m   0 1??
?? 
ctxt2 o      ???? 0 keycode   565 l  5 5??~?}?  ?~  ?}  6 787 r   5 99:9 J   5 7?|?|  : o      ?{?{ 0 modifiers_list  8 ;<; Z   : H=>?z?y= E  : =?@? o   : ;?x?x 0 modifier_keys  @ m   ; <AA ?BB  c o m m a n d> r   @ DCDC m   @ AEE ?FF 2 $ . k C G E v e n t F l a g M a s k C o m m a n dD n      GHG  ;   B CH o   A B?w?w 0 modifiers_list  ?z  ?y  < IJI Z   I WKL?v?uK E  I LMNM o   I J?t?t 0 modifier_keys  N m   J KOO ?PP  c o n t r o lL r   O SQRQ m   O PSS ?TT 2 $ . k C G E v e n t F l a g M a s k C o n t r o lR n      UVU  ;   Q RV o   P Q?s?s 0 modifiers_list  ?v  ?u  J WXW Z   X fYZ?r?qY E  X [[\[ o   X Y?p?p 0 modifier_keys  \ m   Y Z]] ?^^  o p t i o nZ r   ^ b_`_ m   ^ _aa ?bb 6 $ . k C G E v e n t F l a g M a s k A l t e r n a t e` n      cdc  ;   ` ad o   _ `?o?o 0 modifiers_list  ?r  ?q  X efe Z   g wgh?n?mg E  g jiji o   g h?l?l 0 modifier_keys  j m   h ikk ?ll 
 s h i f th r   m smnm m   m poo ?pp . $ . k C G E v e n t F l a g M a s k S h i f tn n      qrq  ;   q rr o   p q?k?k 0 modfiers_list  ?n  ?m  f sts Z   x ?uv?j?iu E  x }wxw o   x y?h?h 0 modifier_keys  x m   y |yy ?zz  f u n c t i o nv r   ? ?{|{ m   ? ?}} ?~~ : $ . k C G E v e n t F l a g M a s k S e c o n d a r y F n| n      ?  ;   ? ?? o   ? ??g?g 0 modifiers_list  ?j  ?i  t ??? l  ? ??f?e?d?f  ?e  ?d  ? ??? r   ? ???? m   ? ??? ???  0? o      ?c?c 0 modifier_flags  ? ??? Z   ? ????b?a? ?   ? ???? l  ? ???`?_? I  ? ??^??]
?^ .corecnte****       ****? o   ? ??\?\ 0 modifiers_list  ?]  ?`  ?_  ? m   ? ??[?[  ? k   ? ??? ??? r   ? ???? m   ? ??? ???  |? 1   ? ??Z
?Z 
txdl? ??Y? r   ? ???? c   ? ???? o   ? ??X?X 0 modifiers_list  ? m   ? ??W
?W 
ctxt? o      ?V?V 0 modifier_flags  ?Y  ?b  ?a  ? ??? l  ? ??U?T?S?U  ?T  ?S  ? ??? I  ? ??R??
?R .sysodsct****        scpt? b   ? ???? b   ? ???? b   ? ???? b   ? ???? b   ? ???? b   ? ???? m   ? ??? ??? H O b j C . i m p o r t ( ' C a r b o n ' ) ; 
 	 c o n s t   p i d   =  ? I   ? ??Q?P?O?Q 0 pid  ?P  ?O  ? m   ? ??? ??? & ; 
 	 c o n s t   k e y c o d e   =  ? o   ? ??N?N 0 keycode  ? m   ? ??? ???? ; 
 	 c o n s t   s o u r c e   =   $ . C G E v e n t S o u r c e C r e a t e ( $ . k C G E v e n t S o u r c e S t a t e H I D S y s t e m S t a t e ) ; 
 	 c o n s t   k e y _ d o w n   =   $ . C G E v e n t C r e a t e K e y b o a r d E v e n t ( s o u r c e ,   k e y c o d e ,   t r u e ) ; 
 	 c o n s t   k e y _ u p   =   $ . C G E v e n t C r e a t e K e y b o a r d E v e n t ( s o u r c e ,   k e y c o d e ,   f a l s e ) ; 
 	 $ . C G E v e n t S e t F l a g s ( k e y _ d o w n ,  ? o   ? ??M?M 0 modifier_flags  ? m   ? ??? ??? ) ; 
 	 $ . C G E v e n t P o s t T o P i d ( p i d ,   k e y _ d o w n ) ; 
 	 $ . C G E v e n t P o s t T o P i d ( p i d ,   k e y _ u p ) ; 
 	 $ . C F R e l e a s e ( k e y _ d o w n ) ; 
 	 $ . C F R e l e a s e ( k e y _ u p ) ; 
 	 $ . C F R e l e a s e ( s o u r c e ) ;? ?L??K
?L 
scsy? m   ? ??? ???  J a v a S c r i p t?K  ? ??J? L   ? ???  f   ? ??J   ??? l     ?I?H?G?I  ?H  ?G  ? ??? l      ?F???F  ? < 6!@group Obtain Information of the Application Process    ? ??? l ! @ g r o u p   O b t a i n   I n f o r m a t i o n   o f   t h e   A p p l i c a t i o n   P r o c e s s  ? ??? l     ?E?D?C?E  ?D  ?C  ? ??? l      ?B???B  ? V P!
@abstruct Obtain an bundle identifier of the application process
@result text
   ? ??? ? ! 
 @ a b s t r u c t   O b t a i n   a n   b u n d l e   i d e n t i f i e r   o f   t h e   a p p l i c a t i o n   p r o c e s s 
 @ r e s u l t   t e x t 
? ??? i   a d??? I      ?A?@???A 0 
identifier  ?@  ??  ? k     -?? ??? Z     ???>?=? =    ??? n    ??? o    ?<?< 0 _identifier  ?  f     ? m    ?;
?; 
msng? r    ??? n   ??? n  	 ??? I    ?:?9?8?: &0 bundleindentifier bundleIndentifier?9  ?8  ? o   	 ?7?7 0 _appprocess _appProcess?  f    	? n     ??? o    ?6?6 0 _identifier  ?  f    ?>  ?=  ? ??? h    ?5??5 0 x  ? i     ??? I      ?4?3?2?4 0 
identifier  ?3  ?2  ? L     ?? n    ??? o    ?1?1 0 _identifier  ?  f     ? ??? r     '??? n     #??? o   ! #?0?0 0 
identifier  ? o     !?/?/ 0 x  ? n     ??? o   $ &?.?. 0 
identifier  ?  f   # $? ??-? L   ( -?? n  ( ,??? o   ) +?,?, 0 _identifier  ?  f   ( )?-  ? ??? l     ?+?*?)?+  ?*  ?)  ? ??? l      ?(???(  ? X R!
@abstruct Obtain a process identifier of the applicatin process
@result integer
   ? ??? ? ! 
 @ a b s t r u c t   O b t a i n   a   p r o c e s s   i d e n t i f i e r   o f   t h e   a p p l i c a t i n   p r o c e s s 
 @ r e s u l t   i n t e g e r 
? ??? i   e h??? I      ?'?&?%?' 0 pid  ?&  ?%  ? k     -?? ? ? Z     ?$?# =     n     o    ?"?" 0 _pid    f      m    ?!
?! 
msng r     n   	
	 n  	  I    ? ???  &0 processidentifier processIdentifier?  ?   o   	 ?? 0 _appprocess _appProcess
  f    	 n      o    ?? 0 _pid    f    ?$  ?#     h    ?? 0 x   i      I      ???? 0 pid  ?  ?   L      n     o    ?? 0 _pid    f       r     ' n     # o   ! #?? 0 pid   o     !?? 0 x   n      o   $ &?? 0 pid    f   # $ ? L   ( -   n  ( ,!"! o   ) +?? 0 _pid  "  f   ( )?  ? #$# l     ????  ?  ?  $ %&% i   i l'(' I      ???? 0 	show_help  ?  ?  ( k     )) *+* r     ,-, n    	./. 1    	?
? 
strq/ n    010 1    ?

?
 
psxp1 l    2?	?2 I    ?3?
? .earsffdralis        afdr3  f     ?  ?	  ?  - o      ?? 
0 a_path  + 454 I   ?67
? .sysodsct****        scpt6 b    898 b    :;: m    << ?== ? O b j C . i m p o r t ( ' F o u n d a t i o n ' ) ; 
 O b j C . i m p o r t ( ' C a r b o n ' ) ; 
 c o n s t   b u n d l e _ u r l   =   $ . N S U R L . f i l e U R L W i t h P a t h (; o    ?? 
0 a_path  9 m    >> ???? ) ; 
 l e t   s t a t u s   =   $ . A H R e g i s t e r H e l p B o o k W i t h U R L ( b u n d l e _ u r l ) ; 
 c o n s t   b o o k _ n a m e   =   $ . N S B u n d l e . b u n d l e W i t h U R L ( b u n d l e _ u r l ) . o b j e c t F o r I n f o D i c t i o n a r y K e y ( ' C F B u n d l e H e l p B o o k N a m e ' ) ; 
 s t a t u s     =   $ . A H G o t o P a g e ( b o o k _ n a m e ,   $ ( ) ,   $ ( ) ) ; 
7 ?@?
? 
scsy@ m    AA ?BB  J a v a S c r i p t?  5 C? C L    DD m    ??
?? boovtrue?   & EFE l     ????????  ??  ??  F GHG i   m pIJI I      ???????? 0 test  ??  ??  J k     KK LML O     NON k   	 PP QRQ I   	 ??S???? 0 post_keyevent  S TUT m   
 VV ?WW  NU X??X J    YY Z??Z m    [[ ?\\  c o m m a n d??  ??  ??  R ]??] I    ??^???? 0 activate_with  ^ _??_ J    ????  ??  ??  ??  O I     ??`???? 0 	make_with  ` a??a m    bb ?cc " c o m . a p p l e . P r e v i e w??  ??  M d??d L    ee m    ??
?? boovtrue??  H fgf l     ????????  ??  ??  g hih i   q tjkj I      ???????? 0 test_activate  ??  ??  k k     ll mnm O     opo I   	 ??q???? 0 activate_with  q r??r J   
 ????  ??  ??  p I     ??s???? 0 	make_with  s t??t m    uu ?vv   c o m . a p p l e . f i n d e r??  ??  n w??w L    xx m    ??
?? 
msng??  i yzy l     ????????  ??  ??  z {|{ i   u x}~} I      ???????? 0 test_hide_frontmost  ??  ??  ~ k      ??? O     ??? I    ???????? 0 hide  ??  ??  ? I     ???????? 0 make_with_frontmost  ??  ??  ? ???? L    ?? m    ??
?? 
msng??  | ??? l     ????????  ??  ??  ? ???? i   y |??? I     ??????
?? .aevtoappnull  ?   ? ****??  ??  ? k     ?? ??? l     ??????  ? " return test_hide_frontmost()   ? ??? 8 r e t u r n   t e s t _ h i d e _ f r o n t m o s t ( )? ???? I     ???????? 0 	show_help  ??  ??  ??  ??       ???? #???????????????????????  ? ??????????????????????????????????????????????
?? 
pimr
?? 
pnam?? ,0 nsrunningapplication NSRunningApplication?? 0 nsworkspace NSWorkspace?? 0 activate_app  ?? 0 make_with_running_app  ?? 0 	make_with  ?? 0 make_with_frontmost  ?? 0 hide  ?? 
0 unhide  ?? 0 	is_hidden  ?? 0 activate_with  
?? .miscactvnull??? ??? null?? 0 	is_active  ?? 0 to_upper  ?? 0 post_keyevent  ?? 0 
identifier  ?? 0 pid  ?? 0 	show_help  ?? 0 test  ?? 0 test_activate  ?? 0 test_hide_frontmost  
?? .aevtoappnull  ?   ? ****? ????? ?  ???? ?? ??
?? 
vers??  ? ?????
?? 
cobj? ??   ?? 
?? 
frmk??  ? ?????
?? 
cobj? ??   ??
?? 
osax??  ? ?? ?????
?? misccura
?? 
pcls? ??? ( N S R u n n i n g A p p l i c a t i o n? ?? ?????
?? misccura
?? 
pcls? ???  N S W o r k s p a c e? ?? @?????????? 0 activate_app  ?? ????? ?  ???? 0 arg  ??  ? ???? 0 arg  ? 	??????????????????
?? 
pcls
?? 
reco
?? 
ID  ?? 0 allow_launching  ?? 0 all_windows  ?? 0 ignoring_other_apps  ?? ?? 0 	make_with  ?? 0 activate_with  ?? 2??,? ??lE?Y hO??e?f?e?%E?O*?k+  	*?k+ U? ?? p?????????? 0 make_with_running_app  ?? ????? ?  ?????? 0 running_app  ?? 0 
identifier  ??  ? ?????????? 0 running_app  ?? 0 
identifier  ?? 0 a_class  ?? *0 xappprocessinstance XAppProcessInstance? ?? {??? *0 xappprocessinstance XAppProcessInstance? ?????~???}
?? .ascrinit****      ? ****? k     !??  }??  ???  ???  ???  ???  ??|?|  ?  ?~  ? ?{?z?y?x?w?v
?{ 
pare?z 0 _appprocess _appProcess?y 0 _identifier  ?x 0 _pid  ?w 0 pid  ?v 0 
identifier  ? ?u?t?s?r?q??
?u 
pare?t 0 _appprocess _appProcess?s 0 _identifier  
?r 
msng?q 0 _pid  ? ?p ??o?n???m?p 0 pid  ?o  ?n  ?  ? ?l?l 0 pid  ?m )jd*  ? ?k ??j?i???h?k 0 
identifier  ?j  ?i  ?  ? ?g?g 0 
identifier  ?h )jd*  ?} "b  N  Ob   ?Ob  ?O??OL OL ?? )E?O??K S?? ?f ??e?d???c?f 0 	make_with  ?e ?b??b ?  ?a?a 0 arg  ?d  ? ?`?_?^?]?` 0 arg  ?_ 0 
identifier  ?^ 0 allow_launching  ?] 0 
target_app  ? ?\?[?Z?Y?X?W?V?U?T?S?R
?\ 
pcls
?[ 
reco
?Z 
ID  ?Y 0 allow_launching  ?X T0 (runningapplicationswithbundleidentifier_ (runningApplicationsWithBundleIdentifier_?W 0 
lastobject 
lastObject
?V 
msng
?U 
capp
?T kfrmID  
?S .ascrnoop****      ? ****?R 0 make_with_running_app  ?c ~??,? ??lE?Y hO??fl%E[?,E?Z[?,E?ZOb   *?k+ j+ E?UO??  2? )*???0 *j 	UOb   *?k+ j+ E?UY ?Y hO*??l+ 
? ?Q ??P?O???N?Q 0 make_with_frontmost  ?P  ?O  ? ?M?M 0 
target_app  ? ?L?K?J?I?L "0 sharedworkspace sharedWorkspace?K ,0 frontmostapplication frontmostApplication
?J 
msng?I 0 make_with_running_app  ?N b  j+  j+ E?O*??l+ ? ?H?G?F???E?H 0 hide  ?G  ?F  ?  ? ?D?C?D 0 _appprocess _appProcess?C 0 hide  ?E )?,j+ O)? ?B,?A?@?????B 
0 unhide  ?A  ?@  ?  ? ?>?=?> 0 _appprocess _appProcess?= 
0 unhide  ?? )?,j+ O)? ?<D?;?:???9?< 0 	is_hidden  ?;  ?:  ?  ? ?8?7?8 0 _appprocess _appProcess?7 0 ishidden isHidden?9 	)?,j+ ? ?6[?5?4???3?6 0 activate_with  ?5 ?2??2 ?  ?1?1 0 args  ?4  ? ?0?/?.?-?,?0 0 args  ?/ 0 all_windows  ?. 0 ignoring_other_apps  ?- 0 allow_launching  ?, 0 opt  ? ?+?*?)?(?'?&?+ 0 all_windows  ?* 0 ignoring_other_apps  ?) 0 allow_launching  ?( ?' 0 _appprocess _appProcess?& ,0 activatewithoptions_ activateWithOptions_?3 H??f?e?f?%E[?,E?Z[?,E?Z[?,E?ZOjE?O? 
?kE?Y hO? 
?lE?Y hO)?,?k+ ? ?%??$?#???"
?% .miscactvnull??? ??? null?$  ?#  ?  ? ?!?! 0 activate_with  ?" 	*jvk+  ? ? ???????  0 	is_active  ?  ?  ?  ? ??? 0 _appprocess _appProcess? 0 isactive isActive? 	)?,j+ ? ???????? 0 to_upper  ? ??? ?  ?? 0 char  ?  ? ??? 0 char  ? 
0 charid  ? ?????????
?	??
? 
ID  ? A? Z
? 
bool? a? z
? 
cha ?  
?
 kfrmID  ?	 0? 9
? 
msng? H??,E?O??	 ???& ?Y 0??	 ???& *????0EY ??	 ???& ?Y ?? ??????? 0 post_keyevent  ? ??? ?  ?? ? 0 keycode  ?  0 modifier_keys  ?  ? ?????????????? 0 keycode  ?? 0 modifier_keys  ?? 0 char  ?? 0 modifiers_list  ?? 0 modfiers_list  ?? 0 modifier_flags  ? ??????????????'/AEOS]akoy}?????????????????
?? 
pcls
?? 
ctxt
?? 
cha ?? 0 to_upper  
?? 
msng
?? 
errn???
?? .corecnte****       ****
?? 
txdl?? 0 pid  
?? 
scsy
?? .sysodsct****        scpt? ֠?,?  )*??k/k+ E?O??  )??l??%Y hO??%E?Y ??&E?OjvE?O?? 	??6FY hO?? 	??6FY hO?? 	??6FY hO?? a ?6FY hO?a  a ?6FY hOa E?O?j j a *a ,FO??&E?Y hOa *j+ %a %?%a %?%a %a a l O)? ????????????? 0 
identifier  ??  ??  ? ???? 0 x  ? ???????????????? 0 _identifier  
?? 
msng?? 0 _appprocess _appProcess?? &0 bundleindentifier bundleIndentifier?? 0 x  ? ???????????
?? .ascrinit****      ? ****? k     ?? ?????  ??  ??  ? ???? 0 
identifier  ? ?? ????????????? 0 
identifier  ??  ??  ?  ? ???? 0 _identifier  ?? )?,E?? L  ?? 0 
identifier  ?? .)?,?  )?,j+ )?,FY hO??K S?O??,)?,FO)?,E? ????????????? 0 pid  ??  ??  ? ???? 0 x  ? ??????????????? 0 _pid  
?? 
msng?? 0 _appprocess _appProcess?? &0 processidentifier processIdentifier?? 0 x  ? ???????????
?? .ascrinit****      ? ****? k     ?? ????  ??  ??  ? ???? 0 pid  ? ?? ???????????? 0 pid  ??  ??  ?  ? ???? 0 _pid  ?? )?,E?? L  ?? 0 pid  ?? .)?,?  )?,j+ )?,FY hO??K S?O??,)?,FO)?,E? ??(?????????? 0 	show_help  ??  ??  ? ???? 
0 a_path  ? ??????<>??A??
?? .earsffdralis        afdr
?? 
psxp
?? 
strq
?? 
scsy
?? .sysodsct****        scpt?? )j  ?,?,E?O??%?%??l Oe? ??J?????????? 0 test  ??  ??  ?  ? b??V[?????? 0 	make_with  ?? 0 post_keyevent  ?? 0 activate_with  ?? *?k+  *??kvl+ O*jvk+ UOe? ??k?????????? 0 test_activate  ??  ??  ?  ? u???????? 0 	make_with  ?? 0 activate_with  
?? 
msng?? *?k+  	*jvk+ UO?? ??~????? ???? 0 test_hide_frontmost  ??  ??  ?    ???????? 0 make_with_frontmost  ?? 0 hide  
?? 
msng?? *j+   *j+ UO?? ?????????
?? .aevtoappnull  ?   ? ****??  ??     ???? 0 	show_help  ?? *j+   ascr  ??ޭ