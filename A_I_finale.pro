CoDeSys+[   �                   @        @   2.3.9.50    @/    @                             <�e +    @                          b|e        �5   @   q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    o   C:\TwinCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    ��              L_TMR                    TON    ��              D_TMR                    TON    ��              P_TRIG                 R_TRIG    ��              SD_TMR                    TON    ��              SD_FF                 RS    ��              DS_FF                 RS    ��              DS_TMR                    TON    ��              SL_FF                 RS    ��              SL_TMR                    TON    ��           
      N            ��              R0            ��              S0            ��              L            ��              D            ��              P            ��              SD            ��	              DS            ��
              SL            ��              T           ��                 Q            ��                       TX5  �    ����    R    @                                                                                          MAIN     `      Presenza_pezzo             $     IX                    %           Colore_giostra             $     IX                   %           Pistone_avanti             $     IX                   %           Trapano_alto             $     IX                   %           Pistone_indietro             $     IX                   %           Trapano_basso             $     IX                   %           Fine_corsa_nastro             $ 	    IX                   %           Tastatore_alto_altezza             $ 
    IX                   %           Scarto_giostra_avanti_post_6             $     IX                   %           Scarto_giostra_indietro_post_6             $     IX                  %           Presenza_pezzo_baia             $     IX                  %           Tastatore_basso_altezza             $     IX                  %           Pennarello_alto             $     IX                  %           Pennarello_basso             $     IX                  %           Scarto_giostra_avanti_post_7             $     IX                  %           Scarto_giostra_indietro_post_7             $     IX                  %           Giostra_in_movimento             $     IX                   %           Sensore_vacuostato             $     IX                  %           Fine_corsa_braccio_magazzino             $     IX                  %           Presenza_pezzo_magazzino_B4             $     IX                  %           Pistone_indietro_1B2             $     IX                   %           Pistone_avanti_1B1             $     IX                  %           Fine_corsa_braccio_nastro             $ !    IX                  %        ____ USCITE FISICHE____   nastro             $ &    QX                    %           pistone_giostra_post_6             $ '    QX                   %           pistone_nastro             $ (    QX                   %           pennarello_down             $ )    QX                   %           movimento_giostra_1_posto             $ *    QX                   %           pistone_giostra_post_7             $ +    QX                   %           trapano_down             $ ,    QX                   %        
   trapano_ON             $ -    QX                   %           tastatore_down             $ /    QX                   %           pistone_orizzontale             $ 1    QX                  %        
   vacuostato             $ 2    QX                  %           soffio_aria_ventosa             $ 3    QX                  %           braccio_pneumatico_indietro             $ 4    QX                  %           braccio_pneumatico_avanti             $ 5    QX                  %    (    ____ TIMER E CONTATORI IMPLEMENTATI____   attesa_magazzino             $ =              pezzo_pronto_per_braccio             $ >              pezzo_nel_braccio             $ ?           
   pezzo_pres             $ @              riconoscimento_colore             $ A              t_soffio                    TON    $ B              attesa_secondi             $ C              start             $ E           	   emergenza             $ F              accensione_pistone             $ G              prova                     tempo_3s    $ H              prova_2                     tempo_3s    $ I              led_bottone             $ J              lancio             $ K              prov                    TON    $ L           	   passaggio             $ M              controllo_a_campione                    CTU    $ N              pezzo_ok             $ O           
   reset_cont             $ P           	   contatore             $ Q              INIT                           _INIT                        	   NASTRO_ON                  SFCStepType                   INGRESSO_NASTRO                            _INGRESSO_NASTRO                            PEZZO_ATTESA                  SFCStepType                   STEP25                  SFCStepType                   STEP22                  SFCStepType                   SENSORE                  SFCStepType                   NUOVI_TOKEN                  SFCStepType                   ROSSO_RILEVATO                  SFCStepType                   TRAPANO                  SFCStepType                   TRAPANO_END                  SFCStepType                   TASTATORE_ROSSO                  SFCStepType                   TASTATORE_END_R                  SFCStepType                   PASSAGGIO_PENNARELLO                  SFCStepType                	   POS_PEN_F                  SFCStepType                   PASSAGGIO_POST_6                  SFCStepType                   POS_6_F                  SFCStepType                   PISTONE_ROSSO                  SFCStepType                	   NON_ROSSO                  SFCStepType                   PASSAGGIO_TRAPANO                  SFCStepType                   POS_TR_F                  SFCStepType                   TASTATORE_NON_ROSSO                  SFCStepType                   TASTATORE_END_NR                  SFCStepType                
   PENNARELLO                  SFCStepType                   PENNARELLO_END                  SFCStepType                   PISTONE_NON_ROSSO                  SFCStepType                   contatore__action                   SFCActionType                !   movimento_giostra_1_posto__action                   SFCActionType                   nastro__action                   SFCActionType                   passaggio__action                   SFCActionType                   pennarello_down__action                   SFCActionType                   pezzo_pres__action                   SFCActionType                   pistone_giostra_post_6__action                   SFCActionType                   pistone_giostra_post_7__action                   SFCActionType                   riconoscimento_colore__action                   SFCActionType                   trapano_down__action                   SFCActionType                   trapano_ON__action                   SFCActionType                                    p�e  @    ����           TEMPO_3S           MyTimer                    TON    '               TotalET            '               prova            '                  arrivo            '               tempo_attesa           '               nastro_1            '                  Sblocco            '                        g��e  @    ����            
 �   $   ( �6      K   �6     K   �6     K   �6     K   �6                 �6         +     ��localhost       A `��t���� �íw           ��@ �� p�vH�k�������    �  N     ��@ ��                �                  �%�� ��� ���w        N �s�N �   N ��@      N ��@ ��   �� �� D�� 82e������ �g�     ,   ,                                                        K         @   g��e�8  /*BECKCONFI3*/
        !9� @   @   �   �     3               
   Standard            	g��e                        VAR_GLOBAL
END_VAR
                                                                                  "         Sale             Standard
         MAIN����           ���� g��e                 $����, � � ��               maonim:            Standard b|e	b|e      Prec\Aei                         	g��e     (5����            VAR_CONFIG
END_VAR
                                                                                   '              , h h �           Global_Variables g��e	g��e     �;H                VAR_GLOBAL
END_VAR
                                                                                               '           	   , h h �           Variable_Configuration g��e	g��e	       H                VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     $   , �  O�           MAIN <�e	p�e                      �  PROGRAM MAIN
VAR
	Presenza_pezzo								AT %IX0.0:BOOL;
	Colore_giostra								AT %IX0.1:BOOL;
	Pistone_avanti								AT %IX0.2:BOOL;
	Trapano_alto									AT %IX0.3:BOOL;
	Pistone_indietro								AT %IX0.4:BOOL;
	Trapano_basso								AT %IX0.5:BOOL;
	Fine_corsa_nastro								AT %IX0.6:BOOL;
	Tastatore_alto_altezza							AT %IX0.7:BOOL;


	Scarto_giostra_avanti_post_6					AT %IX1.0:BOOL;
	Scarto_giostra_indietro_post_6					AT %IX1.1:BOOL;
	Presenza_pezzo_baia							AT %IX1.2:BOOL;
	Tastatore_basso_altezza						AT %IX1.3:BOOL;
	Pennarello_alto								AT %IX1.4:BOOL;
	Pennarello_basso								AT %IX1.5:BOOL;
	Scarto_giostra_avanti_post_7					AT %IX1.6:BOOL;
	Scarto_giostra_indietro_post_7					AT %IX1.7:BOOL;


	Giostra_in_movimento							AT%IX2.0:BOOL;
	Sensore_vacuostato							AT%IX2.5:BOOL;
	Fine_corsa_braccio_magazzino					AT%IX2.6:BOOL;
	Presenza_pezzo_magazzino_B4					AT%IX2.7:BOOL;


	Pistone_indietro_1B2							AT%IX3.0:BOOL;
	Pistone_avanti_1B1							AT%IX3.1:BOOL;


	Fine_corsa_braccio_nastro						AT%IX4.1:BOOL;


(* ____ USCITE FISICHE____*)

	nastro  										AT %QX0.0:BOOL;
	pistone_giostra_post_6  						AT %QX0.1:BOOL;
	pistone_nastro		         						AT %QX0.2:BOOL;
	pennarello_down	     	    						AT %QX0.3:BOOL;
	movimento_giostra_1_posto  					AT %QX0.4:BOOL;
	pistone_giostra_post_7  						AT %QX0.5:BOOL;
	trapano_down								AT %QX0.6:BOOL;
	trapano_ON									AT %QX0.7:BOOL;

	tastatore_down								AT %QX1.0:BOOL;

	pistone_orizzontale							AT %QX2.1:BOOL;
	vacuostato									AT %QX2.2:BOOL;
	soffio_aria_ventosa							AT %QX2.3:BOOL;
	braccio_pneumatico_indietro					AT %QX2.4:BOOL;
	braccio_pneumatico_avanti						AT %QX2.5:BOOL;



(* ____ TIMER E CONTATORI IMPLEMENTATI____*)

(* ____ VARIABILI DI APPOGGIO VIRTUALI____*)

	attesa_magazzino: BOOL;
	pezzo_pronto_per_braccio: BOOL;
	pezzo_nel_braccio: BOOL;
	pezzo_pres: BOOL;
	riconoscimento_colore: BOOL;
	t_soffio: TON;
	attesa_secondi: BOOL;

	start:BOOL;
	emergenza:BOOL;
	accensione_pistone:BOOL;
	prova: tempo_3s;
	prova_2: tempo_3s;
	led_bottone: BOOL;
	lancio: BOOL;
	prov: TON;
	passaggio:BOOL;
	controllo_a_campione: CTU;
	pezzo_ok: BOOL;
	reset_cont: BOOL;
	contatore:BOOL;
END_VAR       Init         Inizio %     Xp��              Transition Inizio 	<�e      �	�Presenza_pezzo_baia�	emergenzaKstart  d         	   nastro_on    nastro   L t#15s                Ingresso_nastro )     Xp��              Action Ingresso_nastro <�e      �	�Presenza_pezzo_magazzino_B4�pezzo_pronto_per_braccioaccensione_pistoneKPistone_indietro_1B2 pistone_orizzontale     �	Pistone_avanti_1B1Knastro pistone_orizzontalepezzo_pronto_per_braccio     �	pezzo_pronto_per_braccio�Fine_corsa_braccio_magazzino�pezzo_nel_braccio  braccio_pneumatico_indietro     �	Fine_corsa_braccio_magazzinopezzo_pronto_per_braccio�pezzo_nel_braccio 
vacuostatopezzo_nel_braccio     �	Sensore_vacuostato�Fine_corsa_braccio_nastroKpezzo_nel_braccio  braccio_pneumatico_avantipezzo_pronto_per_braccio     �	Fine_corsa_braccio_nastroKpezzo_nel_braccio 
vacuostatosoffio_aria_ventosa     �soffio_aria_ventosa attesa_secondi     �	�Presenza_pezzo_magazzino_B4�pezzo_nel_braccio  led_bottone     �	attesa_secondiEprova t#3sAnastrotempo_3s       attesa_secondipezzo_nel_braccio     �	soffio_aria_ventosaEt_soffio At#1sTON        soffio_aria_ventosa     �	presenza_pezzo�attesa_secondipistone_indietro�attesa_magazzino pistone_nastro     �pistone_avanti pistone_nastroattesa_magazzino     �	attesa_magazzinoEprova_2 t#1.8sAnastrotempo_3s       attesa_magazzino     �		contatoreEcontrollo_a_campione 
reset_contA3CTU              �pezzo_ok  
reset_contd          baia +     Xp��              Transition baia 	<�e      �
Presenza_pezzo_baiaK	emergenza  d      Init         fine_nastro ,     Xp��              Transition fine_nastro 	<�e      ��Fine_corsa_nastro  d    	   emergenza     init       Pezzo_attesa         giostra_libera -     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�	SENSORE.x�	emergenza�	passaggio�controllo_a_campione.Q  d          Step25 
   pezzo_pres   D t#0.8s       nastro   N           pezzo_caricato .     Xp��              Transition pezzo_caricato 	<�e      �
pezzo_pres  d          step22    movimento_giostra_1_posto   N           Primo_movimento /     Xp��              Transition Primo_movimento 	<�e      �movimento_giostra_1_posto  d            sensore    riconoscimento_colore   D t#3.5s                nuovi_token         TRUE     init         okrosso 0     Xp��              Transition okrosso 	<�e      �	riconoscimento_coloreKColore_giostra  d          rosso_rilevato         okrosso 1     Xp��              Transition okrosso 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          trapano    movimento_giostra_1_posto   N       trapano_down	   SD t#1.5S    
   trapano_ON	   SD t#1.5S           lavorazione_finita 2     Xp��              Transition lavorazione_finita 	<�e      �Trapano_basso  d          trapano_end    trapano_down   R    
   trapano_ON   R           giostra_libera 4     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          tastatore_rosso    movimento_giostra_1_posto   N    	   passaggio	   SD t#2.5s           scatto 8     Xp��              Transition scatto 	<�e      �	passaggio  d          tastatore_end_r 	   passaggio   R           giostra_libera 9     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          passaggio_pennarello    movimento_giostra_1_posto   N    	   passaggio	   SD t#2.5s           scatto E     Xp��              Transition scatto 	<�e      �	passaggio  d       	   pos_pen_f 	   passaggio   R           giostra_libera G     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          passaggio_post_6    movimento_giostra_1_posto   N    	   passaggio	   SD t#2.5s           scatto (     Xp��              Transition scatto 	<�e      �	passaggio  d          pos_6_f 	   passaggio   R           giostra_libera *     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          pistone_rosso    movimento_giostra_1_posto   N       pistone_giostra_post_7   D t#1.5S           scarico_rosso Q     Xp��              Transition scarico_rosso 	<�e      �	�Presenza_pezzo_baiaKScarto_giostra_avanti_post_7  d       altricolori R     Xp��              Transition altricolori 	<�e      �	riconoscimento_colore�Colore_giostra  d       	   non_rosso         altricolori S     Xp��              Transition altricolori 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          passaggio_trapano    movimento_giostra_1_posto   N    	   passaggio	   SD t#2.5s           scatto T     Xp��              Transition scatto 	<�e      �	passaggio  d          pos_tr_f 	   passaggio   R           giostra_libera U     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          tastatore_non_rosso    movimento_giostra_1_posto   N    	   passaggio	   SD t#2.5s           scatto V     Xp��              Transition scatto 	<�e      �	passaggio  d          tastatore_end_nr 	   passaggio   R    	   contatore   N           giostra_libera W     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�STEP22.x�STEP25.x�	emergenza�	passaggio
�controllo_a_campione.QIcontrollo_a_campione.QKpezzo_ok�PEZZO_ATTESA.x  d       
   pennarello    movimento_giostra_1_posto   N       pennarello_down	   SD t#1.5S           fine_pennarello #     Xp��              Transition fine_pennarello 	<�e      �Pennarello_basso  d          pennarello_end    pennarello_down   R           giostra_libera 5     Xp��              Transition giostra_libera 	<�e      �	�Presenza_pezzo_baiaTrapano_altoTRUEPennarello_altoScarto_giostra_indietro_post_6Scarto_giostra_indietro_post_7�Giostra_in_movimento�PEZZO_ATTESA.x�STEP22.x�STEP25.x�	emergenza�	passaggio�controllo_a_campione.Q  d          pistone_non_rosso    pistone_giostra_post_6   D t#1.5s       movimento_giostra_1_posto   N           scarico_non_rosso Z     Xp��              Transition scarico_non_rosso 	<�e      �	�Presenza_pezzo_baiaKScarto_giostra_avanti_post_6  d      init   initd                  '   , �j�           tempo_3s g��e	g��e                      �   FUNCTION_BLOCK tempo_3s
VAR_INPUT
	arrivo: BOOL;
	tempo_attesa: TIME;
  	nastro_1: BOOL;
END_VAR
VAR_OUTPUT
	Sblocco:BOOL := FALSE;
END_VAR
VAR
	MyTimer: TON;
	TotalET: TIME:= T#0s;
	prova: TIME :=T#0s;
END_VARe  
	MyTimer(IN := (nastro_1 AND arrivo), PT := tempo_attesa);
	IF nastro_1 = TRUE
		THEN
		prova := MyTimer.ET;
	END_IF

	IF nastro_1 = FALSE
	THEN
	TotalET := TotalET + prova;
	prova := t#0s;
	END_IF

	IF  ( (TotalET + prova) >= tempo_attesa)
		THEN
		sblocco := TRUE;
		TotalET := t#0s;
		prova := t#0s;
	ELSE
		sblocco := FALSE;
	END_IF                &   ,    ��           PULSANTI g��e
    @    ��e   d                                                                                                        
    @          � o d A     @                    START @���     ���             @         ���        @
 
   MAIN.start
   MAIN.start             @       �                                                                                                     
    @        �  �o @A     @                 $   STOP EMERGENZA @���     ���             @        ���        @
    MAIN.emergenza                 @       �                                                                                                    
    @         � � � P �     @                 "   MAGAZZINO B4 @���     ���             @        ���        @
    MAIN.accensione_pistone   MAIN.accensione_pistone             @       �                                                                                                      
    @        � � � � �   �       ��                                     MAIN.led_bottone       pezzo in attesa @                          ���        @
                       @                                                                                                          
    @        �
 Y� U   ���     ��  �                                  MAIN.Presenza_pezzo_baia       LIBERARE BAIA @                          ���        @
    MAIN.Presenza_pezzo_baia                  @                                                                                                          
    @        < ,� �� r  ���       �   �                                MAIN.controllo_a_campione.Q       controllo a campione @                          ���        @
                       @                                                                                                         
    @        Ji�6w    @                    pezzo ok @���     ���             @        ���        @
        MAIN.pezzo_ok             @       �         �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, ���         "   STANDARD.LIB 5.6.98 12:03:02 @f�w5!   Iecsfc.lib 12.5.98 12:03:00 @d,X5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @                                           2                ����������������  
             ����       ���        ����, h h �H                      POUs               MAIN  $                   tempo_3s  '   ����          
   Data types  ����              Visualizations                pulsanti  &   ����              Global Variables                 Global_Variables                    Variable_Configuration  	   ����                                                              b|e                         	   localhost            P      	   localhost            P      	   localhost            P           -�