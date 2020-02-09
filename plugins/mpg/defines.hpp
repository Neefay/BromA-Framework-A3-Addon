#define IDC_MPG_MOUSEAREA						999

#define IDC_MPG_MENU							1000

#define IDC_MPG_OKBUTTON						1001

#define IDC_MPG_LEFTCONTENTBACKGROUND			1100

#define IDC_MPG_LEFTSEARCH						1101
#define IDC_MPG_LEFTSEARCHBUTTON				1102
#define IDC_MPG_LEFTSORT						1103
#define IDC_MPG_LEFTCONTENT						1104

#define IDC_MPG_RIGHTCONTENTBACKGROUND			1105

#define IDC_MPG_RIGHTSEARCH						1106
#define IDC_MPG_RIGHTSEARCHBUTTON				1107
#define IDC_MPG_RIGHTSORT						1108
#define IDC_MPG_RIGHTCONTENT					1109

#define IDC_MPG_LEFTTABS						1200
#define IDC_MPG_TABCAR							1201
#define IDC_MPG_TABTANK							1202
#define IDC_MPG_TABHELICOPTER					1203
#define IDC_MPG_TABPLANE						1204
#define IDC_MPG_TABNAVAL						1205
#define IDC_MPG_TABSTATIC						1206

#define IDC_MPG_LEFTTABSBACKGROUND				1300
#define IDC_MPG_RIGHTTABSBACKGROUND				1301
#define IDC_MPG_TABLEFTBACKGROUND				1302
#define IDC_MPG_TABRIGHTBACKGROUND				1303

#define IDC_MPG_RIGHTTABS						1400
#define IDC_MPG_TABANIMATIONSOURCES				1401
#define IDC_MPG_TABTEXTURESOURCES				1402
#define IDC_MPG_TABLOADOUT						1403

#define IDC_MPG_PYLONCONFIG_BACKGROUND			1500
#define IDC_MPG_PYLONCONFIG						1501
#define IDC_MPG_PYLONCONFIG_OWNER				1502
#define IDC_MPG_PYLONCONFIG_MIRROR				1503
#define IDC_MPG_PYLONCONFIG_PRIORITY			1504

#define IDC_MPG_SAVES_BACKGROUND				1600
#define IDC_MPG_SAVES_TITLE						1601
#define IDC_MPG_SAVES_GROUP						1602
#define IDC_MPG_SAVES_LIST						1603
#define IDC_MPG_SAVES_NAME						1604

#define IDC_MPG_LOADOUT_PYLONS_CREATE			2000

#define IDCS_LEFT	[IDC_MPG_TABCAR, IDC_MPG_TABTANK, IDC_MPG_TABHELICOPTER, IDC_MPG_TABPLANE, IDC_MPG_TABNAVAL, IDC_MPG_TABSTATIC]
#define IDCS_RIGHT	[IDC_MPG_TABANIMATIONSOURCES, IDC_MPG_TABTEXTURESOURCES, IDC_MPG_TABLOADOUT]



#define GUI_PIXEL_GRID_X	(safezoneX)
#define GUI_PIXEL_GRID_Y	(safezoneY)
#define GUI_PIXEL_GRID_W	(pixelW * pixelGrid)
#define GUI_PIXEL_GRID_H	(pixelH * pixelGrid)
#define GUI_PIXEL_GRID_WAbs	(safezoneW)
#define GUI_PIXEL_GRID_HAbs	(safezoneH)

#define GUI_ANCHOR_LEFT(X)		(GUI_PIXEL_GRID_X + (X))
#define GUI_ANCHOR_RIGHT(X)		(GUI_PIXEL_GRID_X + GUI_PIXEL_GRID_WAbs - (X))
#define GUI_ANCHOR_TOP(Y)		(GUI_PIXEL_GRID_Y + (Y))
#define GUI_ANCHOR_BOTTOM(Y)	(GUI_PIXEL_GRID_Y + GUI_PIXEL_GRID_HAbs - (Y))

#define SIZE_EX 2
#define PANEL_WIDTH (40 * GUI_PIXEL_GRID_W)

#define CHECKBOX_UNCHECKED_PICTURE "\a3\ui_f\data\gui\rsccommon\rsccheckbox\checkbox_unchecked_ca.paa"
#define CHECKBOX_CHECKED_PICTURE "\a3\ui_f\data\gui\rsccommon\rsccheckbox\checkbox_checked_ca.paa"
#define CHECKBOX_PICTURES [CHECKBOX_UNCHECKED_PICTURE, CHECKBOX_CHECKED_PICTURE]