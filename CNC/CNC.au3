#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=au3.ico
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs
***************************************
         Pc Esposti
***************************************
#ce


#include <GUIConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <Colorconstants.au3>
#include <WindowsConstants.au3>
#include <Color.au3>
#include <Parametri.au3>


dim $X , $Y,$a
$X= @DesktopWidth / 2 ; centro schermo X
$Y=@DesktopHeight / 2 ; centro schermo Y
$Dim_Fin_X = 5 ; da inizio schermo X
$Dim_Fin_Y= 5 ; da inizio schermo Y
$Dim_Fin_X1 =@DesktopWidth-15 ; da fine schermo X
$Dim_Fin_Y1 = @DesktopHeight -80 ; da fine schermo Y

$a=21

$v_emergenza = $l_emergenza[0]
$v_colore_emergenza = $l_colore_emergenza[0]

$Form1 = GUICreate("Interfaccia CNC - Ver. 0.1",600,550,10,10);@DesktopWidth-15 ,@DesktopHeight -80 , 5, 5)
;$X = GUICtrlCreateLabel($X, 40, 8, 144, 84)
;$Y = GUICtrlCreateLabel($Y, 40, 28, 144, 84)
$MenuItem1 = GUICtrlCreateMenu("&File")
$MenuItem3 = GUICtrlCreateMenuItem("MenuItem4", $MenuItem1)
$MenuItem4 = GUICtrlCreateMenuItem("MenuItem5", $MenuItem1)
$MenuItem5 = GUICtrlCreateMenuItem("", $MenuItem1)
$MenuItem6 = GUICtrlCreateMenuItem("Esci", $MenuItem1)
$MenuItem2 = GUICtrlCreateMenu("&Configura")
$MenuItem7 = GUICtrlCreateMenuItem("Scheda 1", $MenuItem2)
$MenuItem8 = GUICtrlCreateMenuItem("Scheda 2", $MenuItem2)
$MenuItem9 = GUICtrlCreateMenuItem("Scheda 3", $MenuItem2)
$MenuItem10 = GUICtrlCreateMenuItem("MenuItem5", $MenuItem2)

GUICtrlCreateLabel("Emergenza",10,50,100,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Tensione Alim.",10,150,150,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Corrente Ponte 1",10,200,150,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Corrente Ponte 2",10,250,150,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Temperatura Ponte 1",10,300,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Temperatura Ponte 2",10,350,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Over Running SW1",10,400,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Over Running SW2",10,450,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; **********

GUICtrlCreateLabel($v_emergenza, 300, 48, 100, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue);$v_colore_emergenza)
GUICtrlSetBkColor(-1,$v_colore_emergenza)

GUICtrlCreateGroup("Scheda 1",180,110,100,280);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

$Tensione_Scheda1_Ponte1 = GUICtrlCreateLabel("30.0", 195, 148, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda1_Ponte1 = GUICtrlCreateLabel("5.6", 195, 198, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda1_Ponte2 = GUICtrlCreateLabel("4.6", 195, 248, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Temperatura_Scheda1_Ponte1 = GUICtrlCreateLabel("50.0", 195, 298, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_red)

$Temperatura_Scheda1_Ponte2 = GUICtrlCreateLabel("50.0", 195, 348, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Overrunning_Scheda1_Sw1 = GUICtrlCreateLabel("", 195, 398, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)

$Overrunning_Scheda1_Sw2 = GUICtrlCreateLabel("", 195, 448, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)


; ********
GUICtrlCreateGroup("Scheda 2",300,110,100,280);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

$Tensione_Scheda2_Ponte1 = GUICtrlCreateLabel("33.0", 315, 148, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda2_Ponte1 = GUICtrlCreateLabel("5.6", 315, 198, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda2_Ponte2 = GUICtrlCreateLabel("4.6", 315, 248, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Temperatura_Scheda2_Ponte1 = GUICtrlCreateLabel("55.0", 315, 298, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Temperatura_Scheda2_Ponte2 = GUICtrlCreateLabel("51.0", 315, 348, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Overrunning_Scheda2_Sw1 = GUICtrlCreateLabel("", 315, 398, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)

$Overrunning_Scheda2_Sw2 = GUICtrlCreateLabel("", 315, 448, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)


; ********
GUICtrlCreateGroup("Scheda 3",420,110,100,280);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_red)

$Tensione_Scheda3_Ponte1 = GUICtrlCreateLabel("28.0", 435, 148, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda3_Ponte1 = GUICtrlCreateLabel("3.6", 435, 198, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Corrente_Scheda3_Ponte2 = GUICtrlCreateLabel("2.6", 435, 248, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Temperatura_Scheda3_Ponte1 = GUICtrlCreateLabel("52.5", 435, 298, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
							GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Temperatura_Scheda3_Ponte2 = GUICtrlCreateLabel("48.0", 435, 348, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

$Overrunning_Scheda3_Sw1 = GUICtrlCreateLabel("", 435, 398, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)

$Overrunning_Scheda3_Sw2 = GUICtrlCreateLabel("", 435, 448, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
								GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
								GUICtrlSetBkColor(-1, $Color_blue)



GUISetState(@SW_SHOW)

While 1
      $nMsg = GUIGetMsg()
      Switch $nMsg
		  Case $GUI_EVENT_CLOSE
					GUIDelete($Form1)
					Exit
		  Case $MenuItem7
					$Scheda = 1
					Call ("Configura_1",$Scheda)
		  Case $MenuItem8
					$Scheda = 2
					Call ("Configura_1",$Scheda)
		  Case $MenuItem9
					$Scheda = 3
					Call ("Configura_1",$Scheda)

      EndSwitch
  WEnd
  ; ******************************************************************
  ; *********************** Subroutine *******************************
  ; ******************************************************************
Func Configura_1($Scheda)
$Form2 = GUICreate("Configura Scheda N ° : " & $Scheda ,800 ,600 , 450, 23)

GUICtrlCreateGroup("Range Attuale",190,10,280,420);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)


GUICtrlCreateLabel("Tensione Alim.",10,70,150,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Corrente Ponte 1",10,150,150,125);300****
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Corrente Ponte 2",10,230,150,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Temperatura Ponte 1",10,310,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

GUICtrlCreateLabel("Temperatura Ponte 2",10,390,160,125);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; *********
$l_Tensione_Scheda_Ponte1_Minima = GUICtrlCreateLabel("30.0", 200, 68, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Minima",195,40,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
; ********
$l_Tensione_Scheda_Ponte1_Warning = GUICtrlCreateLabel("30.0", 295, 68, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Warning",290,40,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
; **********
$l_Tensione_Scheda_Ponte1_Massima = GUICtrlCreateLabel("30.0", 390, 68, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Massima",385,40,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ********************************  Corrente  ********************
$l_Corrente_Sched1_Ponte1_Lavoro = GUICtrlCreateLabel("5.6", 200, 148, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Lavoro",195,120,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
; **********

;
$l_Corrente_Sched1_Ponte1_Massima = GUICtrlCreateLabel("5.6", 295, 148, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Massima",290,120,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
;
;
$l_Corrente_Scheda_Ponte2_Lavoro = GUICtrlCreateLabel("4.6", 200, 228, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Lavoro",195,200,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
;
$l_Corrente_Scheda_Ponte2_Massima = GUICtrlCreateLabel("4.6", 295, 228, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Massima",290,200,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; **********************************************
;
$l_Temperatura_Scheda_Ponte1_Reset_Warning = GUICtrlCreateLabel("50.0", 200, 309, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("R. Warn.",195,281,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

;
$l_Temperatura_Scheda_Ponte1_Set_Warning = GUICtrlCreateLabel("50.0", 295, 309, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("S. Warn.",290,281,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

;
$l_Temperatura_Scheda_Ponte1_Allarm = GUICtrlCreateLabel("50.0", 390, 309, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Alarm",385,281,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

;
;
$l_Temperatura_Scheda_Ponte2_Reset_Warning = GUICtrlCreateLabel("50.0", 200, 389, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("R. Warn.",195,361,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
;
$l_Temperatura_Scheda_Ponte2_Set_Warning = GUICtrlCreateLabel("50.0", 295, 389, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("S. Warn.",290,361,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
;
$l_Temperatura_Scheda_Ponte2_Allarm = GUICtrlCreateLabel("50.0", 390, 389, 70, 27, $SS_CENTER, BitOR($WS_EX_CLIENTEDGE, $WS_EX_STATICEDGE))
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")

GUICtrlCreateGroup("Alarm",385,361,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

;
;

;GUICtrlCreateGroup("Minimo",488,10,80,280);300
;UICtrlSetFont(-1, 14, 400, 0, "Calibri")
;GUICtrlSetColor(-1, $Color_blue)

;GUICtrlCreateGroup("Massimo",488,10,80,280);300
;GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
;GUICtrlSetColor(-1, $Color_blue)

;
$Tensione_Scheda_Ponte_Minimo = GUICtrlCreateCombo("", 500, 67, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Tensione_Scheda_Ponte_Minimo, $Range_Tensioni) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $Color_green)
$Settaggi[$Scheda][1] = GUICtrlRead($Tensione_Scheda_Ponte_Minimo)

GUICtrlCreateGroup("Minima",495,39,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ************
$Tensione_Scheda_Ponte_Warning = GUICtrlCreateCombo("", 600, 67, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Tensione_Scheda_Ponte_Warning, $Range_Tensioni) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_blue)
$Settaggi[$Scheda][2] = GUICtrlRead($Tensione_Scheda_Ponte_Warning)

GUICtrlCreateGroup("Warning",595,39,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********
$Tensione_Scheda_Ponte_Massimo = GUICtrlCreateCombo("", 700, 67, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Tensione_Scheda_Ponte_Massimo, $Range_Tensioni) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_red)
$Settaggi[$Scheda][2] = GUICtrlRead($Tensione_Scheda_Ponte_Massimo)

GUICtrlCreateGroup("Massima",695,39,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)
; ***********
$Corrente_Scheda_Ponte1_Lavoro = GUICtrlCreateCombo("", 500, 147, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Corrente_Scheda_Ponte1_Lavoro, $Range_Correnti) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $Color_green)
$Settaggi[$Scheda][3] = GUICtrlRead($Corrente_Scheda_Ponte1_Lavoro)

GUICtrlCreateGroup("Lavoro",495,119,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; *************
$Corrente_Scheda_Ponte1_Massima = GUICtrlCreateCombo("", 600, 147, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($CORRENTE_Scheda_Ponte1_Massima, $Range_Correnti) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_blue)
$Settaggi[$Scheda][4] = GUICtrlRead($Corrente_Scheda_Ponte1_Massima)

GUICtrlCreateGroup("Massima",595,119,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********
$Corrente_Scheda_Ponte2_Lavoro = GUICtrlCreateCombo("", 500, 227, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Corrente_Scheda_Ponte2_Lavoro, $Range_Correnti) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_green)
$Settaggi[$Scheda][5] = GUICtrlRead($Corrente_Scheda_Ponte2_Lavoro)

GUICtrlCreateGroup("Lavoro",495,199,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ************
$Corrente_Scheda_Ponte2_Massima = GUICtrlCreateCombo("", 600, 227, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Corrente_Scheda_Ponte2_Massima, $Range_Correnti) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_blue)
$Settaggi[$Scheda][6] = GUICtrlRead($Corrente_Scheda_Ponte2_Massima)

GUICtrlCreateGroup("Massima",595,199,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********

$Temperatura_Scheda_Ponte1_Reset_Warning = GUICtrlCreateCombo("", 500, 307, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte1_Reset_Warning, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_green)
$Settaggi[$Scheda][7] = GUICtrlRead($Temperatura_Scheda_Ponte1_Reset_Warning)

GUICtrlCreateGroup("R. Warn.",495,279,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; *************
$Temperatura_Scheda_Ponte1_Set_Warning = GUICtrlCreateCombo("", 600, 307, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte1_Set_Warning, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_blue)
$Settaggi[$Scheda][8] = GUICtrlRead($Temperatura_Scheda_Ponte1_Set_Warning)

GUICtrlCreateGroup("S. Warn.",595,279,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; *************
$Temperatura_Scheda_Ponte1_Alarm = GUICtrlCreateCombo("", 700, 307, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte1_Alarm, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_red)
$Settaggi[$Scheda][8] = GUICtrlRead($Temperatura_Scheda_Ponte1_Alarm)

GUICtrlCreateGroup("Alarm",695,279,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; *************
$Temperatura_Scheda_Ponte2_Reset_Warning = GUICtrlCreateCombo("", 500, 387, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte2_Reset_Warning, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_green)
$Settaggi[$Scheda][9] = GUICtrlRead($Temperatura_Scheda_Ponte2_Reset_Warning)

GUICtrlCreateGroup("R. Warn.",495,359,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********
$Temperatura_Scheda_Ponte2_Set_Warning = GUICtrlCreateCombo("", 600, 387, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte2_Set_Warning, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_red)
$Settaggi[$Scheda][10] = GUICtrlRead($Temperatura_Scheda_Ponte2_Set_Warning)

GUICtrlCreateGroup("S. Warn.",595,359,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********
$Temperatura_Scheda_Ponte2_Alarm = GUICtrlCreateCombo("", 700, 387, 70, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($Temperatura_Scheda_Ponte2_Alarm, $Range_Temperature) ; Lunghezza 12 car
GUICtrlSetFont(-1, 14, 800, 0, "Calibri")
GUICtrlSetLimit(-1, 12)
GUICtrlSetColor(-1, $COLOR_red)
$Settaggi[$Scheda][10] = GUICtrlRead($Temperatura_Scheda_Ponte2_Alarm)

GUICtrlCreateGroup("Alarm",695,359,80,70);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_blue)

; ***********

GUICtrlCreateButton("Leggi Settaggi",200,500,120,40);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_gray)
;
GUICtrlCreateButton("Uguali",350,500,120,40);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_green)
;
GUICtrlCreateButton("Registra",500,500,120,40);300
GUICtrlSetFont(-1, 14, 400, 0, "Calibri")
GUICtrlSetColor(-1, $Color_red)


GUISetState(@SW_SHOW)

While 1
      $nMsg = GUIGetMsg()
      Switch $nMsg
              Case $GUI_EVENT_CLOSE
				  GUIDelete($Form2)
				  Exitloop

				Case ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $Settaggi[$Scheda][0] = ' & $Settaggi[$Scheda][0] & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console





      EndSwitch
  WEnd

EndFunc
