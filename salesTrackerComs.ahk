#SingleInstance, Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode,Mouse ,screen


 


;#----------------------HANDELS THE GUI------------------------



Gui, Color, ffffff
Gui, Font,, Lucida Fax


Gui, Add, Text,cRed , Track Your Coms, Put You're Heart Towards Sales
Gui, Add, Text,cblue y5 x+100 , Test Version 1.0.2
;Gui, Add, DropDownList, w182 y30 x50 vTemp AltSubmit, Coms Catergory  || MOBILES SIMS | HARDWARE |  HANDSETS


;global NBNPage := {
;	nbnPlans: 2,
;	nbnBtn:3,
;	nbnText:3
;}

Gui, +AlwaysOnTop
global test := 100
Gui, Add, Tab3, x0 y20 w500 h400, NBN|HARDWARE|MOBILE SIMS DATA ONLY|MOBILE SIMS VOICE AND DATA|5G MOBILE VOICE AND DATA|VOIP PHONE|MOBILE HANDSETS|
Gui, Show, w520 h580, OutBounder Comms Tracker,Gui


;-------NBN

Gui, tab, 1
Gui, Add, Button,   w100 h30 y+47 gnbn25Btn vbtn25 ,25/10 NBN 
Gui, Add, Button,   w100 h30 y110 x+10 gnbn250/25Btn vbtn250 ,250/25 NBN 
Gui, Add, Button,   w100 h30 y150 x+10 gnbn250/100Btn vbtn100 ,250/100 NBN 
Gui, Add, Button,   w100 h30 y150 x12 gnbn1000/50Btn vbtn1000 ,1000/50 NBN 
Gui, Add, Button,   w100 h30 y150 x+10 gFWBtn vbtn75 , 75/10 FW NBN 


Gui, Add, Text,  cRed vtext50 , Plan For 50/20
Gui, Add, DropDownList, gPicked50/20 vdrop50 AltSubmit vEverydayNBN ,50/20 500GB| 50/20 Unlimited|

Gui, Add, Text,  cRed , Plan For 75/20
Gui, Add, DropDownList, gPicked75/20 AltSubmit vMidPlanNBN,75/20 500GB| 75/20 Unlimited|
Gui, Add, Text,  cRed , Plan For 100/20
Gui, Add, DropDownList,gPicked100/20 AltSubmit vFamilyNBN,100/20 500GB| 100/20 Unlimited|
Gui, Add, Text,  cRed , Plan For 100/40
Gui, Add, DropDownList, gPicked100/40 AltSubmit vFamilyPlusNBN ,100/40 500GB| 100/40 Unlimited|

;--------HARDWARE----------------

Gui, tab, 2
Gui, Add, Button,   w100 h30 y+20 gNF, NF18MESH 
Gui, Add, Button,   w100 h30 y80 x+10  gNL ,NL1901
Gui, Add, Button,   w100 h30 y115 x12  gNest1 ,Nest 1 pack 
Gui, Add, Button,   w100 h30 y115 x+10  gNest2 ,Nest 2 pack 
Gui, Add, Button,   w100 h30 y115 x+15 gNest3, Nest 3 pack 
Gui, Add, Button,   w100 h30 y150 x12  gMini,Fetch Mini
Gui, Add, Button,   w100 h30 y150 x+10 gMighty, Fetch Mighty

;--------------------------------

;----------MOBILES SIMS DATA ONLY-------


Gui, tab, 3
Gui, Add, Button,   w100 h30 y+0 gB5GB, 4G DATA Bundled 5GB 
Gui, Add, Button,   w100 h30 y65 x+10  gB25GB ,4G DATA Bundled 25GB
Gui, Add, Button,   w100 h30 y100 x+10  gB40GB,4G DATA Bundled 40GB
Gui, Add, Button,   w100 h30 y100 x12 gB60GB,4G DATA Bundled 60GB
Gui, Add, Button,   w100 h30 y100 x+10 gB100GB,4G DATA Bundled 100GB

Gui, Add, Button,   w100 h40 y150 x12 gS25GB , 4G DATA Standalone 2.5GB
Gui, Add, Button,   w100 h40 y150 x+10 gS15GB , 4G DATA Standalone 15GB
Gui, Add, Button,   w100 h40 y150 x+10 gS30GB , 4G DATA Standalone 30GB
Gui, Add, Button,   w100 h40 y195 x12 gS50GB , 4G DATA Standalone 50GB
Gui, Add, Button,   w100 h40 y195 x+10 gS80GB , 4G DATA Standalone 80GB

;----------------------------------------

;-----------MOBILE SIMS VOICE AND DATA-------------


Gui, tab, 4

Gui, Add, Button,   w100 h30 y+0 gV2G , 4G Voice Bundled 2GB 
Gui, Add, Button,   w100 h30 y10 x60 gV5G , 4G Voice Bundled 5GB 
Gui, Add, Button,   w100 h30 y65 x120 gV25G  ,4G Voice Bundled 25GB
Gui, Add, Button,   w100 h30 y100 x+10 gV40G ,4G Voice Bundled 40GB
Gui, Add, Button,   w100 h30 y100 x12  g50G ,4G Voice Bundled 60GB
Gui, Add, Button,   w100 h30 y100 x+10  g1005G ,4G Voice Bundled 100GB

Gui, Add, Button,   w100 h40 y150 x12 gVS1G , 4G Voice Standalone 1GB
Gui, Add, Button,   w100 h40 y150 x+15 gVS25G , 4G Voice Standalone 2.5GB
Gui, Add, Button,   w100 h40 y150 x+10 gVS15G , 4G Voice Standalone 15GB
Gui, Add, Button,   w100 h40 y150 x+10 gVS30G , 4G Voice Standalone 30GB
Gui, Add, Button,   w100 h40 y195 x12 gVS50G , 4G Voice Standalone 50GB
Gui, Add, Button,   w100 h40 y195 x+10 gVS80G , 4G Voice Standalone 80GB






;--------------------------------------------------------

;-----------5G MOBILE SIMS VOICE AND DATA-------------


Gui, tab, 5

Gui, Add, Button,   w100 h30 y+15 g5G10GB, S 5G 10GB
Gui, Add, Button,   w100 h30 y77 x+10 g5G50GB  , M 5G 50GB
Gui, Add, Button,   w100 h30 y77 x+10  g5G80GB ,L 5G 80B





;#--------------------------------------------------------


;-----------VOIP PHONE-------------


Gui, tab, 6

Gui, Add, Button,   w100 h30 y+15 gCas, Casual
Gui, Add, Button,   w100 h30 y77 x+10 gEvery , Everyday
Gui, Add, Button,   w100 h30 y77 x+10  gInternational ,International





;#--------------------------------------------------------


;-----------MOBILE HANDSETS-------------


Gui, tab, 7

Gui, Add, Button,   w100 h30 y+20 x0 gLG,  LG any available model
Gui, Add, Button,   w100 h30 y120 x0 gA12 ,Samsung A12
Gui, Add, Button,   w100 h30 y170 x0 gA51,Samsung A51
Gui, Add, Button,   w100 h30 y220 x0 gA71 ,Samsung A71
Gui, Add, Button,   w100 h30 y260 x0 gS128GB ,Samsung Note or Galaxy 128GB

Gui, Add, Button,   w100 h40 y300 x0 gS256GB, Samsung Note or Galaxy 256GB
Gui, Add, Button,   w100 h40 y360 x0 gS512GB, Samsung Note or Galaxy 512GB




;#--------------------------------------------------------


Gui, tab,




Gui, Add, Text, x20 y450 cRed , Total Coms: 
Gui, Add, Edit, r1 vtotalAmount x130 y450 w100 +ReadOnly, 


Gui, Add, Text, x20 y500 cRed , Edit Total Coms: 
Gui, Add, Edit, r1 vEdittotalAmount x130 y500 w100,
Gui, Add, Button, w100 h40 y540 x0 gSaveBtn, Save Edit











global amountTotal


Return 


;#----------------------------------------------

;#--------------------FUNCTIONS--------------------------
AddToTotal(amount)
{
 amountTotal += %amount%
 GuiControl, , totalAmount, $%amountTotal%
 test := 500


 ;HideComPage()
 ;msgBox, %hight%

}

SaveBtn:
    Gui, submit, nohide
    amountTotal = %EdittotalAmount%
    GuiControl, , totalAmount, $%EdittotalAmount%
    
    
return

init(){
 ;NBNPage.nbnPlans.Insert("test")
	;msgBox, %NBNPage.nbnPlans%



}

HideComPage(){
  GuiControl, Hide, btn25
  GuiControl, Hide, btn250
  GuiControl, Hide, btn100
  GuiControl, Hide, btn1000
  
  GuiControl, Hide, text50
  GuiControl, Hide, drop50
  
}

;--------------------------------



;----NBN LOGIC----

Picked50/20:  
 GuiControlGet, EverydayNBN	
 if( EverydayNBN = 1 ) {
	AddToTotal(3)
 }else {
	AddToTotal(round(4.5,1))
 }
 return
 
 Picked75/20:  

 GuiControlGet, MidPlanNBN	
 if( MidPlanNBN = 1 ) {
	AddToTotal(3.75)
 }else {
	AddToTotal(5.25)
 }
 return
 
 Picked100/20:  
 
  GuiControlGet, FamilyNBN	
 if( FamilyNBN = 1 ) {
	AddToTotal(4.5)
 }else {
	AddToTotal(6)
 }
 return
 
 
 Picked100/40:  
  GuiControlGet, FamilyPlusNBN	
 if( FamilyPlusNBN = 1 ) {
	AddToTotal(4.5)
 }else {
	AddToTotal(6)
 }
 return

nbn25Btn:
	
    
	AddToTotal(3)
    return

 
nbn250/25Btn:
	
    
	AddToTotal(10.50)
    return


nbn250/100Btn:
	
    
	AddToTotal(10.50)
    return

nbn1000/50Btn:
	
    
	AddToTotal(13.50)
    return
FWBtn:
	
    
	AddToTotal(5.25)
    return



;-----------------------------------------
;-----------------Hardware Logic-----------------------

NF:
	
    AddToTotal(3)
    return
NL:
	
    
	AddToTotal(4.50)
    return
Nest1:
	
	AddToTotal(3)
    return
Nest2:
	
    
	AddToTotal(4.50)
    return

Nest3:
	

	AddToTotal(7.50)
    return



Mini:
	
    
	AddToTotal(7.50)
    return
Mighty:
	
    
	AddToTotal(7.50)
    return



;-----------------MOBILES SIMS DATA ONLY LOGIC -----------------------

;--bundle sims---
B5GB:
	AddToTotal(6)
    return

B25GB:
	AddToTotal(12)
    return

B40GB:
	AddToTotal(15)
    return

B60GB:
	AddToTotal(15)
    return

B100GB:
	AddToTotal(15)
    return
;--------
;-Stand alone

S25GB:
	AddToTotal(4.50)
    return

S15GB:
	AddToTotal(6)
    return

S30GB:
	AddToTotal(7.50)
    return

S50GB:
	AddToTotal(7.50)
    return

S80GB:
	AddToTotal(7.50)
    return
;---

;-----------------------------------------
;-----------------MOBILE SIMS VOICE AND DATA LOGIC -----------------------

;--bundle sims---
V2G:
	AddToTotal(6)
    return

V5G:
	AddToTotal(6)
    return

V25G:
	AddToTotal(12)
    return

V40G:
	AddToTotal(15)
    return

50G:
	AddToTotal(15)
    return

1005G:
	AddToTotal(15)
    return
;--------
;-Stand alone

VS1G:
	AddToTotal(3)
    return

VS25G:
	AddToTotal(4.50)
    return

VS15G:
	AddToTotal(6)
    return

VS30G:
	AddToTotal(7.50)
    return

VS50G:
	AddToTotal(7.50)
    return

VS80G:
	AddToTotal(7.50)
    return
;---




;-----------------------------------------
;-----------5G MOBILE SIMS VOICE AND DATA-------------
5G10GB:
	AddToTotal(12)
    return

5G50GB:
	AddToTotal(12)
    return

5G80GB:
	AddToTotal(12)
    return

;-----------------------------------------
;-----------VOIP PHONE-------------

Cas:
	AddToTotal(12)
    return

Every:
	AddToTotal(12)
    return

International:
	AddToTotal(12)
    return

;-----------------------------------------
;-----------MOBILE HANDSETS-------------


LG:
	
    AddToTotal(15)
    return
A12:
	
    
	AddToTotal(15)
    return
A51:
	
	AddToTotal(15)
    return
A71:
	
    
	AddToTotal(15)
    return

S128GB:
	

	AddToTotal(15)
    return
S256GB:
	
    
	AddToTotal(15)
    return
S512GB:
	
    
	AddToTotal(15)
    return


