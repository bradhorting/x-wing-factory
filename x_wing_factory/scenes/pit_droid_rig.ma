//Maya ASCII 2016 scene
//Name: pit_droid_rig.ma
//Last modified: Mon, Jan 18, 2016 10:12:01 PM
//Codeset: 1252
file -rdi 1 -ns "pit_droid_01" -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Brad/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
file -r -ns "pit_droid_01" -dr 1 -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Brad/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.8 ";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201508242200-969261";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9BD920CC-49F2-78CA-7D14-BD95F7442712";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.915646227608466 18.503663236473816 30.879066520477565 ;
	setAttr ".r" -type "double3" -16.538352722604241 -340.99999999912637 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "88BDCA63-4928-5184-1A46-AC87F8242895";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 32.184214384447223;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8F8EE8F6-4026-0B89-2008-D6B62A120D6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6A4713C3-43F0-C863-AC05-16AFA084BC43";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9F88DDBA-45A7-8A2C-962F-109E3CBCC156";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.1397325182687171 7.1262640928640764 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "64C76D4D-4313-7C76-6540-9A8B73DD6AB1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.8502284629188228;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4ED84846-4F8B-2180-8338-A8909D231F0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.59352539083001155 0.45483289472096855 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "961F44EE-4700-9691-57D9-78A14F5A2E51";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.36509337680189;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root_jnt";
	rename -uid "1E779029-4950-D56F-D83E-DDADA54FA40D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.53477038882668704;
createNode joint -n "base_jnt" -p "root_jnt";
	rename -uid "B3876EC8-4A49-E0C1-7A21-7FB1C991BE7A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000042366430932 0.21903512932396318 90.000000161961566 ;
	setAttr ".radi" 0.53477038882668704;
createNode joint -n "hips_jnt" -p "base_jnt";
	rename -uid "2B5DD506-4F6B-4076-E1F5-12A008C75285";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.9176601235455162e-013 -2.3566320867248147e-011 -1.4186437637050064 ;
	setAttr ".radi" 0.65346762406978764;
createNode joint -n "spine_jnt" -p "hips_jnt";
	rename -uid "37349A08-467B-9F16-4E81-648E488CAA81";
	setAttr ".t" -type "double3" 3.9686617833365037 -9.8948627131627401e-015 1.6323498535201684e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8551305723630376e-011 -2.0425913489524864e-010 -10.379005603040904 ;
	setAttr ".radi" 0.5;
createNode joint -n "neck_jnt" -p "spine_jnt";
	rename -uid "C4057EA8-4152-9378-8868-26815957424E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999899671 0 12.016684496069924 ;
	setAttr ".radi" 0.53363015781001755;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "DD322B67-4DE3-51C4-F711-5585BAF1E584";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999986485 89.999957637931871 0 ;
	setAttr ".radi" 0.53363015781001755;
createNode parentConstraint -n "head_jnt_parentConstraint1" -p "head_jnt";
	rename -uid "280ADA34-450E-BC7F-D7E4-74B06B8E3ADB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 -5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" -1.3523718505583212e-011 6.3611093622498114e-015 
		-3.0499356617991079e-009 ;
	setAttr ".lr" -type "double3" 1.3517357396219775e-011 -6.3611097227018437e-015 3.0499420229145364e-009 ;
	setAttr ".rst" -type "double3" 1.5696911732837915 -0.010976165142302624 -5.9512131725435527e-008 ;
	setAttr ".rsrr" -type "double3" 1.3517357396219775e-011 -6.3611097227018437e-015 
		3.0499420229145364e-009 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "neck_jnt_parentConstraint1" -p "neck_jnt";
	rename -uid "24AD1C16-4642-F57C-AA22-FCAD05EFCDDC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0842021724855044e-019 0 1.6653345369377348e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90.00000882148224 3.1805546814635183e-015 
		89.999958562246803 ;
	setAttr ".lr" -type "double3" -8.1764526263790441e-015 -2.029163905278696e-015 -6.361109362927032e-015 ;
	setAttr ".rst" -type "double3" 0.54477555261311572 0 1.9421219190143835e-012 ;
	setAttr ".rsrr" -type "double3" -8.1764526263790441e-015 -2.029163905278696e-015 
		-6.361109362927032e-015 ;
	setAttr -k on ".w0";
createNode joint -n "shoulder_rotaion_L_jnt" -p "spine_jnt";
	rename -uid "69FAC55C-4C06-7AE8-5FCB-48964A67C931";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -77.983315503933312 -89.999957637931843 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_L_jnt" -p "shoulder_rotaion_L_jnt";
	rename -uid "0CA02AFE-4756-ECB8-A261-6E92817E2367";
	setAttr ".t" -type "double3" 0.61540800671850637 -1.7763568394002505e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_L_1_jnt" -p "shoulder_L_jnt";
	rename -uid "B62B982B-4C37-B5A0-1062-CA9176261C64";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -70.752194903299284 80.655111224194101 19.010771080347968 ;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_L_2_jnt" -p "elbow_L_1_jnt";
	rename -uid "155DD209-42D3-1B78-8646-CCB654815AAE";
	setAttr ".t" -type "double3" 0.6343731364251618 -1.1518563880485999e-015 4.3021142204224816e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.931588839177223 -4.1374386936755132e-005 -81.169001957013748 ;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "wrist_L_jnt" -p "elbow_L_2_jnt";
	rename -uid "223B3CC8-4347-5177-B97F-A88BA2064D39";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "finger_1_L_1_jnt" -p "wrist_L_jnt";
	rename -uid "1DF56879-42F7-56A7-B38F-84B6642A5775";
	setAttr ".t" -type "double3" 0.036508448910341801 -0.21456077893850048 0.12678485759744912 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.037346702607486e-015 -1.0417344510872298e-014 -75.302892230792068 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_L_2_jnt" -p "finger_1_L_1_jnt";
	rename -uid "247D8079-4088-D473-56D0-94AC50109E93";
	setAttr ".t" -type "double3" 0.61062676349890421 5.2735593669694936e-016 -1.1102225614383102e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.71984466302732 4.6512225529257147 -55.961765355999198 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_L_3_jnt" -p "finger_1_L_2_jnt";
	rename -uid "E105C156-4165-8501-969B-4887C2CEF9F5";
	setAttr ".t" -type "double3" 0.59808728368952768 1.6566609195578508e-016 4.3715031594615539e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.111101680125528e-006 187.0322547151564 48.520753426923704 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_L_1_jnt" -p "wrist_L_jnt";
	rename -uid "57D53F87-4EF3-8559-3ED5-048CD148B77E";
	setAttr ".t" -type "double3" 0.00025495603691472982 -0.21629288274596228 -0.12437019448493848 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.51755295374086e-015 -1.0336707925283787e-014 -72.054363855466022 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_L_2_jnt" -p "finger_2_L_1_jnt";
	rename -uid "4324937B-4151-C230-0595-4690E433A81A";
	setAttr ".t" -type "double3" 0.6153902585723291 -1.9428902930940239e-016 1.4917725379013234e-023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.0128587780851 -5.1543379219410763 -58.529337834843055 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_L_3_jnt" -p "finger_2_L_2_jnt";
	rename -uid "3C9B2A8F-476D-9817-BD90-309C495CEDC4";
	setAttr ".t" -type "double3" 0.59768353438667099 -1.5785983631388945e-016 -5.6898930012039273e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999425495591 7.8940635091602882 -130.85343094936118 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_L_1_jnt" -p "wrist_L_jnt";
	rename -uid "2A6A1501-46C1-0DF1-A1A8-5191308B2A7C";
	setAttr ".t" -type "double3" 0.036508448910341801 -0.21456077893850048 0.12678485759744912 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.57724921581624 -0.33847569081367501 -128.68190405218326 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_L_2_jnt" -p "finger_3_L_1_jnt";
	rename -uid "070212AF-40D0-A78F-C520-FA848873DCCA";
	setAttr ".t" -type "double3" 0.37895741247481257 -1.3820528380580066e-016 1.3782378016635732e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 179.45844488759332 51.31684723702034 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "wrist_L_jnt_parentConstraint1" -p "wrist_L_jnt";
	rename -uid "5B88F8A2-456B-B121-3958-B5832F72D760";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_wrist_cntrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" 3.7015288742460806e-011 5.1185756434271061e-005 
		4.1433788814379837e-005 ;
	setAttr ".lr" -type "double3" -3.701528874319825e-011 -2.3854098128519999e-015 -1.2722218725853297e-014 ;
	setAttr ".rst" -type "double3" 2.8105796001425292 -0.039229647173416593 -0.034642076149422274 ;
	setAttr ".rsrr" -type "double3" -3.7015288747056615e-011 4.9130572258672963e-021 
		1.2722218725854067e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "elbow_L_1_jnt_parentConstraint1" -p "elbow_L_1_jnt";
	rename -uid "6EFC17B4-4681-6634-D6A0-B785B5691914";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_elbow_cntrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-016 0 8.0491169285323849e-016 ;
	setAttr ".tg[0].tor" -type "double3" -70.752492938391541 80.655127897655106 -70.989481565680379 ;
	setAttr ".lr" -type "double3" 2.2263882770244617e-014 -4.3256281720891555e-030 2.2263882770244617e-014 ;
	setAttr ".rst" -type "double3" 2.5243337241011474 -4.4408920985006262e-016 -0.087663329103131224 ;
	setAttr ".rsrr" -type "double3" 2.8624992133171654e-014 -9.5416640443905519e-015 
		3.1805546814635144e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "shoulder_rotaion_L_jnt_parentConstraint1" -p "shoulder_rotaion_L_jnt";
	rename -uid "01ACEAE7-476B-B541-2788-C4B3BE8BE26C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_shoulder_cntrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-016 1.7763568394002505e-015 
		1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -6.4390131386699899e-012 -8.4387436817569931e-010 
		-3.9644092471570461e-009 ;
	setAttr ".lr" -type "double3" 6.4469843685209028e-012 8.4386794864035844e-010 3.9643960216008841e-009 ;
	setAttr ".rst" -type "double3" -0.10144434208942421 -0.0069917011491349434 1.2866879722256295 ;
	setAttr ".rsrr" -type "double3" 6.4310815951135854e-012 8.4386794864035906e-010 
		3.9643960216008841e-009 ;
	setAttr -k on ".w0";
createNode joint -n "shoulder_rotaion_R_jnt" -p "spine_jnt";
	rename -uid "EA25C8A7-403A-BB54-7D38-58ACA8A26873";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.983315503902261 89.999884238813436 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_R_jnt" -p "shoulder_rotaion_R_jnt";
	rename -uid "EF30DA58-45D3-5C91-F741-7E9562D617D0";
	setAttr ".t" -type "double3" 0.61540999999886736 -1.1938418165166094e-006 9.8431493783158976e-007 ;
	setAttr ".r" -type "double3" 0 0 -3.6284766853480392 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999938729876845 -1.9888695887774723 -90.000111098108547 ;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_R_1_jnt" -p "shoulder_R_jnt";
	rename -uid "0E5F2295-4BFC-3949-99B2-2886B80FAA1F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.47150271011917672 3.0316585800205997 79.166693581277599 ;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_R_2_jnt" -p "elbow_R_1_jnt";
	rename -uid "DEE35B05-4B15-91AF-1649-7B89FD839AB2";
	setAttr ".t" -type "double3" 0.63437431585460669 -2.6645352591003757e-015 -1.2490009027033011e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.931932641131752 -0.00011115676831578335 98.831965630700864 ;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "wrist_R_jnt" -p "elbow_R_2_jnt";
	rename -uid "7342DE5D-439C-E293-0E25-D4A5C3ED5B9C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0332133116374182e-020 -3.0332133116374152e-020 
		90.000000000000071 ;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "finger_1_R_1_jnt" -p "wrist_R_jnt";
	rename -uid "3DEF5666-4B08-2DCC-8A0C-BD9055A927CF";
	setAttr ".t" -type "double3" -0.033317926672826362 0.23027189288295613 -0.12678399798891371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3929954144972528e-005 1.0747496236166571e-005 104.696860311438 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_R_2_jnt" -p "finger_1_R_1_jnt";
	rename -uid "4A1FC004-4034-ED40-B03F-6EBDD37F6581";
	setAttr ".t" -type "double3" 0.61062887984437686 -3.9741859040198411e-016 -1.1102215687872784e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.71988452434678 -4.6512191659274622 -55.961669871665968 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_R_3_jnt" -p "finger_1_R_2_jnt";
	rename -uid "237F04E0-45BD-3B84-B94A-AE86A7EB5965";
	setAttr ".t" -type "double3" 0.59808237560055177 1.1015494072452725e-016 2.2898349882893854e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99998626849106 -7.0322118699018512 48.520603558444861 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_R_1_jnt" -p "wrist_R_jnt";
	rename -uid "C3FEAA30-49D8-581D-D14C-10970BBB4775";
	setAttr ".t" -type "double3" 0.0029318889128923252 0.23200186608138476 0.1243710288127297 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7947082180369802e-005 1.3052347984737459e-005 107.94556818951823 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_R_2_jnt" -p "finger_2_R_1_jnt";
	rename -uid "5313616A-435B-FB67-A807-85BD4BB87887";
	setAttr ".t" -type "double3" 0.61538902703899312 -3.3612654836834538e-016 -5.2939559203393771e-023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.01288777936799 5.1543324947179441 -58.529577598592269 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_R_3_jnt" -p "finger_2_R_2_jnt";
	rename -uid "3BD3D41F-415F-C668-DD04-0289BF426926";
	setAttr ".t" -type "double3" 0.59768712083832032 -4.4322184811207421e-016 4.163336342344337e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999845654159 7.8940510945721485 49.146261018318626 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_R_1_jnt" -p "wrist_R_jnt";
	rename -uid "C837AE0A-489A-AFB2-68E2-6FA2E20D0531";
	setAttr ".t" -type "double3" -0.033317926672826362 0.23027189288295613 -0.12678399798891371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.57721496612382 0.33849827960269058 51.318425313098913 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_R_2_jnt" -p "finger_3_R_1_jnt";
	rename -uid "42B92F9A-4EC3-3D8D-FE41-A7AAD00020E8";
	setAttr ".t" -type "double3" 0.3789560279517924 4.2273042705209818e-016 1.0046651011119678e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0.54159596612449679 51.317176420915331 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "wrist_R_jnt_parentConstraint1" -p "wrist_R_jnt";
	rename -uid "00C21C59-450E-C442-6C1B-BC8FC5B63E1F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_wrist_cntrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.95912990112464 7.6071545282275886e-005 
		-0.00010762682194900662 ;
	setAttr ".lr" -type "double3" -1.0654941479574246e-014 -1.7143909525977735e-018 
		-1.2722218725854067e-014 ;
	setAttr ".rst" -type "double3" -2.7948181051051115 0.03604023142162216 0.034641999999992179 ;
	setAttr ".rsrr" -type "double3" -1.0654941479574246e-014 -1.7143909525977735e-018 
		-1.2722218725854067e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "elbow_R_1_jnt_parentConstraint1" -p "elbow_R_1_jnt";
	rename -uid "2D984CCB-447F-6461-B783-16A9660657D5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_elbow_cntrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7144151343018166e-007 6.3239249772806261e-005 
		-0.0018007513667763764 ;
	setAttr ".tg[0].tor" -type "double3" 70.673815531094704 99.307054797470471 70.911967744659904 ;
	setAttr ".lr" -type "double3" -2.8823776800763118e-014 -6.1623246953355635e-015 
		-7.8892664950364418e-016 ;
	setAttr ".rst" -type "double3" 2.5259216459678608 -4.7400972036371058e-012 1.6409096303959814e-013 ;
	setAttr ".rsrr" -type "double3" -4.0552072188659847e-014 -3.9756933518293994e-016 
		-1.0746796091663835e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "shoulder_rotaion_R_jnt_parentConstraint1" -p "shoulder_rotaion_R_jnt";
	rename -uid "16ED5989-48DA-2C68-79EB-2E956CE6CF77";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_shoulder_cntrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-016 1.7763568394002505e-015 
		9.7144514654701197e-017 ;
	setAttr ".tg[0].tor" -type "double3" 176.33065321560792 3.2921554907821447e-005 
		179.99984533773332 ;
	setAttr ".lr" -type "double3" -3.6693467843230247 1.2104732346270655e-014 -1.9480855091029304e-014 ;
	setAttr ".rst" -type "double3" -0.10141614819314171 -0.0069873780442613054 -1.2866902536424232 ;
	setAttr ".rsrr" -type "double3" -3.6693467843230247 1.2104732346270655e-014 -1.9480855091029304e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "hips_jnt_parentConstraint1" -p "hips_jnt";
	rename -uid "24A8972A-4334-CF22-0916-1A8C11AF114C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_hip_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0842021724855044e-019 0 -3.4694469519536142e-018 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999837973434 1.6376788930290243 89.999957629557656 ;
	setAttr ".lr" -type "double3" -1.2563746732503166e-014 -1.2878740880166037e-014 
		7.9513867036588057e-016 ;
	setAttr ".rst" -type "double3" 0.83105694551271725 5.5511151231257827e-017 2.2562247209423347e-016 ;
	setAttr ".rsrr" -type "double3" -1.2563746732503166e-014 -1.2878740880166037e-014 
		7.9513867036588057e-016 ;
	setAttr -k on ".w0";
createNode joint -n "hips_rotaion_L_jnt" -p "base_jnt";
	rename -uid "0AAC4287-48CE-1351-CE1C-FF95E987FDE7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.780964870689502 -89.999957637931814 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "upper_leg_L_jnt" -p "hips_rotaion_L_jnt";
	rename -uid "637C21DF-49BB-C499-B170-D09EB4B319FA";
	setAttr ".t" -type "double3" 0.37918785665224186 0 0 ;
	setAttr ".r" -type "double3" -2.061249541613962e-006 3.7163321121260601e-010 1.0859041460813896 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".radi" 0.62909122828823716;
createNode joint -n "knee_l_jnt" -p "upper_leg_L_jnt";
	rename -uid "329FF46D-4C46-C7C4-EDD0-22A7D4C2372D";
	setAttr ".t" -type "double3" 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 ;
	setAttr ".r" -type "double3" -4.8404485679263607e-024 -2.0169156229406645e-008 -4.6907177819330816e-024 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "ankle_L_jnt" -p "|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt";
	rename -uid "41D754E6-44F9-06C4-00D1-3D9FE7945660";
	setAttr ".t" -type "double3" 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 ;
	setAttr ".r" -type "double3" -3.8311349468436617e-005 -0.00014980557440022653 0.00048662721117612661 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "toe_1_L_1_jnt" -p "ankle_L_jnt";
	rename -uid "85C05FB8-4FA1-02E4-1330-61BFEC0EA821";
	setAttr ".t" -type "double3" 0.13072804314036904 -0.66330724319820988 1.3397649733102668 ;
	setAttr ".r" -type "double3" 5.5821597831913089e-010 -5.5248772177755005e-011 6.0011948096170329e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1052772291616865e-005 -89.999994398309738 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe_1_L_2_jnt" -p "toe_1_L_1_jnt";
	rename -uid "3DE11C02-4223-22B4-6175-BC9822115C07";
	setAttr ".t" -type "double3" 0.81491398434886597 1.945665850912687e-014 -0.075801239828152039 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector3" -p "toe_1_L_1_jnt";
	rename -uid "39199260-42FC-4C91-9C39-19A5C5804CA9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "toe_2_L_1_jnt" -p "ankle_L_jnt";
	rename -uid "5D9EFB5A-4CEC-2066-C23E-8B8CEBF3112B";
	setAttr ".t" -type "double3" -0.10516029700695718 -0.66330715652335259 1.3397649502479498 ;
	setAttr ".r" -type "double3" -4.7664626986998606e-010 -7.5773983276212314e-012 6.0247880195411316e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1052772291616865e-005 -89.999994398309738 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe_2_L_2_jnt" -p "toe_2_L_1_jnt";
	rename -uid "706520AF-4104-F432-4DE2-8AB4C13DAF0D";
	setAttr ".t" -type "double3" 0.81491398434886597 1.9512169675655902e-014 0.064471265983953974 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector4" -p "toe_2_L_1_jnt";
	rename -uid "D33850BF-451E-50A4-CE8C-4CBD6ED93763";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt";
	rename -uid "72439585-4BFA-4A5F-696D-F49B9159A49D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "hips_rotaion_L_jnt_parentConstraint1" -p "hips_rotaion_L_jnt";
	rename -uid "917A21CD-44DF-D8E0-4857-9FABE64F204A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_hip_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.8041124150158794e-016 0 1.5407439555097887e-033 ;
	setAttr ".tg[0].tor" -type "double3" -1.3285498685007417e-011 -1.5747587854593779e-011 
		-1.0859041489244261 ;
	setAttr ".lr" -type "double3" 1.3273293166692063e-011 1.5749371582453528e-011 -1.085904144871275 ;
	setAttr ".rst" -type "double3" 0.0084779315693115365 0.014907779515360837 0.65433062573744905 ;
	setAttr ".rsrr" -type "double3" 1.3273293166692063e-011 1.5749371582453528e-011 
		-1.085904144871275 ;
	setAttr -k on ".w0";
createNode joint -n "hips_rotaion_R_jnt" -p "base_jnt";
	rename -uid "327DD2EB-40F2-AFFC-08CF-0DBAD84C2D8E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.780964870677082 89.999973550422439 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "upper_leg_R_jnt" -p "hips_rotaion_R_jnt";
	rename -uid "232E7A8C-4365-37B6-B51E-F2ADB7254010";
	setAttr ".t" -type "double3" 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 ;
	setAttr ".r" -type "double3" 3.0592252808247163e-005 -5.1955069272841565e-014 2.4386027893012901e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.0487432581116128e-012 6.048737684210645e-012 -90.000052797934117 ;
	setAttr ".radi" 0.62909122828823716;
createNode joint -n "knee_l_jnt" -p "upper_leg_R_jnt";
	rename -uid "10F59423-41F4-C086-D229-FAAA90CF54F6";
	setAttr ".t" -type "double3" 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 ;
	setAttr ".r" -type "double3" 3.7918823786011065e-019 -1.5245605771328173e-017 -2.323921352989972e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.001817462494998 -0.82926075767551455 4.4732709805461521e-008 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "ankle_R_jnt" -p "|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt";
	rename -uid "4BE44B43-40BF-0597-15D0-1FA1A8D5DD34";
	setAttr ".t" -type "double3" 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 ;
	setAttr ".r" -type "double3" 1.4628360066886691e-005 -5.3388269951900695e-005 0.00017342571405954175 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.83423105309583 -89.998185229790636 89.336525808861552 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "toe_1_R_1_jnt" -p "ankle_R_jnt";
	rename -uid "7688A437-4668-BFFD-BD7A-49A280715AB2";
	setAttr ".t" -type "double3" 0.11861240824888997 0.66330714692283677 -1.3740988798252389 ;
	setAttr ".r" -type "double3" 1.1715637030212753e-009 2.6964934188544726e-010 1.2064440645382021e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99997894722944 89.999981511835287 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe_1_R_2_jnt" -p "toe_1_R_1_jnt";
	rename -uid "F344C38D-4721-5D15-4940-4D9734C2EEA1";
	setAttr ".t" -type "double3" 0.78058023041528424 -3.1031184156066642e-008 -0.075801231384319614 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector5" -p "toe_1_R_1_jnt";
	rename -uid "AAD53B82-4EBB-649E-05A2-678D61098FD2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "toe_2_R_1_jnt" -p "ankle_R_jnt";
	rename -uid "14607F2B-4110-DFAF-6502-92B229B6BCA9";
	setAttr ".t" -type "double3" -0.11727593189843633 0.66330723359768695 -1.3740989028875825 ;
	setAttr ".r" -type "double3" 2.9713534661072442e-009 4.5333528476710135e-010 -3.5953042564033341e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99997894722944 89.999981511835287 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "toe_2_R_2_jnt" -p "toe_2_R_1_jnt";
	rename -uid "020DB287-454F-1589-59F2-FA92D3A9BB33";
	setAttr ".t" -type "double3" 0.78058023041528424 -3.1031184100555491e-008 0.06447127442778644 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector6" -p "toe_2_R_1_jnt";
	rename -uid "99B69FD3-4CE4-B3E5-4B8D-CAA5610BE630";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt";
	rename -uid "80EE243C-40BB-D9B9-ED3A-91B8CBCF633B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "hips_rotaion_R_jnt_parentConstraint1" -p "hips_rotaion_R_jnt";
	rename -uid "1071FD9F-42F9-AE30-A2F2-7D8D8F81F7A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_hip_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5511151231257827e-017 2.2204460492503131e-016 
		-1.5407439555097887e-033 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999901 2.6307381261852511e-007 
		179.99993118480393 ;
	setAttr ".lr" -type "double3" 7.3017650523438841e-024 2.6307381095106261e-007 3.1805546814635168e-015 ;
	setAttr ".rst" -type "double3" 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 ;
	setAttr ".rsrr" -type "double3" 7.3017650523438841e-024 2.6307381095106261e-007 
		3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "base_jnt_parentConstraint1" -p "base_jnt";
	rename -uid "25FCC71C-49FA-7464-3151-D8A51D559C1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.5853722614339276e-005 1.396661892755708 -0.0024080415178546113 ;
	setAttr ".tg[0].tor" -type "double3" 90.000042366430961 0.21903512932396318 90.00000016196158 ;
	setAttr ".lr" -type "double3" 2.8624992133171648e-014 9.5416640443905471e-015 3.1805546814635183e-015 ;
	setAttr ".rst" -type "double3" -1.0842021724855044e-019 0 -4.40619762898109e-016 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905456e-015 3.1805546814635152e-015 
		3.1805546814635152e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_jnt_parentConstraint1" -p "root_jnt";
	rename -uid "C3B562D9-4F4C-D3FE-C48A-689279E1ECE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_cntrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.7892787384790742e-005 1.2671539980805639 
		-0.0021847516945370598 ;
	setAttr ".rst" -type "double3" 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 ;
	setAttr -k on ".w0";
createNode transform -n "root_cntrl";
	rename -uid "CFE4E42C-4476-8BFD-C973-75A0A419F617";
	setAttr ".s" -type "double3" 6.8084518327989638 6.8084518327989638 6.8084518327989638 ;
createNode nurbsCurve -n "root_cntrlShape" -p "root_cntrl";
	rename -uid "1EA4D1E4-46FE-EF5D-68B2-7888EB362EB0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.8075684376365998 4.7393284071481107e-030 
		0.71001089588003086 -2.0971986878642724e-013 -1.5037661005775538e-030 -1.1167122568805918 
		0.80756843763725938 -1.2818989709841442e-030 0.71001089588006816 -0.69530447629410008 
		-2.6920837454479162e-030 -0.0034825218768665105 0.80899461484148794 9.9347170251271174e-030 
		-0.69608080837242337 -9.4606031630918748e-014 -3.8456969129524326e-030 1.0679569506032309 
		-0.80899461484125745 5.8918048858694319e-030 -0.69608080837233111 0.69530447629361225 
		-1.0000730197489471e-029 -0.0034825218768221849 0 0 0 0 0 0 0 0 0;
createNode transform -n "base_cntrl" -p "root_cntrl";
	rename -uid "AD9BB3EA-4695-5218-EF50-C0996A9C40C7";
	setAttr ".s" -type "double3" 0.90727326681791531 0.90727326681791531 0.90727326681791531 ;
createNode nurbsCurve -n "base_cntrlShape" -p "base_cntrl";
	rename -uid "3F6A902A-48C5-F9A8-10E3-B98629C3A161";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "right_hip_cntrl" -p "base_cntrl";
	rename -uid "FC482968-4E3C-6E67-82E5-16A75F58AF33";
	setAttr ".rp" -type "double3" -0.105831087856605 1.3968809330110283 -8.4249052789070975e-018 ;
	setAttr ".sp" -type "double3" -0.10583108785660442 1.3968809330110283 -8.4249052789070975e-018 ;
createNode nurbsCurve -n "right_hip_cntrlShape" -p "right_hip_cntrl";
	rename -uid "093A058E-4916-36E7-586E-1E9F1EDD7290";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.10583108785660444 1.4777542739017868 -0.080873340890758483
		-0.10583108785660444 1.3968809330110281 -0.11437217552213334
		-0.10583108785660444 1.3160075921202696 -0.080873340890758538
		-0.10583108785660444 1.2825087574888949 -4.1567096330210522e-017
		-0.10583108785660444 1.3160075921202696 0.080873340890758511
		-0.10583108785660444 1.3968809330110281 0.11437217552213334
		-0.10583108785660444 1.4777542739017866 0.080873340890758538
		-0.10583108785660444 1.5112531085331615 5.3004615304209842e-017
		-0.10583108785660444 1.4777542739017868 -0.080873340890758483
		-0.10583108785660444 1.3968809330110281 -0.11437217552213334
		-0.10583108785660444 1.3160075921202696 -0.080873340890758538
		;
createNode transform -n "upper_hip_cntrl" -p "base_cntrl";
	rename -uid "C4B55249-4CA3-9262-576C-E7A25F420AD6";
	setAttr ".s" -type "double3" 0.16188757450546232 0.16188757450546232 0.16188757450546232 ;
	setAttr ".rp" -type "double3" 8.5853342310721794e-005 1.5311987028443894 -0.0029223626668482441 ;
	setAttr ".sp" -type "double3" 0.00053032694184830737 9.4584078334728812 -0.018051803393654781 ;
	setAttr ".spt" -type "double3" -0.00044447359953758556 -7.9272091306284915 0.015129440726806536 ;
createNode nurbsCurve -n "upper_hip_cntrlShape" -p "upper_hip_cntrl";
	rename -uid "31BCAA68-4C81-BC5A-77D1-C19BB8D2279D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.94376153749442471 9.4584078334728812 -0.96128301394622961
		0.00053032694184815515 9.4584078334728812 -1.3519821738106996
		-0.94270088361072724 9.4584078334728812 -0.96128301394623028
		-1.3334000434751967 9.4584078334728812 -0.018051803393655166
		-0.94270088361072735 9.4584078334728812 0.92517940715892044
		0.00053032694184790557 9.4584078334728812 1.3158785670233906
		0.94376153749442326 9.4584078334728812 0.92517940715892077
		1.3344606973588933 9.4584078334728812 -0.018051803393654062
		0.94376153749442471 9.4584078334728812 -0.96128301394622961
		0.00053032694184815515 9.4584078334728812 -1.3519821738106996
		-0.94270088361072724 9.4584078334728812 -0.96128301394623028
		;
createNode transform -n "neck_cntrl" -p "upper_hip_cntrl";
	rename -uid "2E2FCF0D-4AD4-3996-F964-1EA2D89DE4F2";
	setAttr ".t" -type "double3" 3.3486268967755829e-019 0 -1.0715606069681865e-017 ;
	setAttr ".rp" -type "double3" 0.00053015921295216316 13.958286459864224 -0.24489254966697696 ;
	setAttr ".sp" -type "double3" 0.00053015921295216316 13.958286459864224 -0.24489254966697696 ;
createNode nurbsCurve -n "neck_cntrlShape" -p "neck_cntrl";
	rename -uid "32B19C7F-4E82-E844-BBBE-CD8E70FD5FC3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.72725267072582811 13.958286459864224 -0.97161506117985186
		0.00053015921295204596 13.958286459864224 -1.272633381530323
		-0.72619235229992318 13.958286459864224 -0.97161506117985219
		-1.0272106726503942 13.958286459864224 -0.24489254966697729
		-0.72619235229992318 13.958286459864224 0.4818299618458981
		0.00053015921295185352 13.958286459864224 0.78284828219636948
		0.727252670725827 13.958286459864224 0.48182996184589849
		1.0282709910762982 13.958286459864224 -0.24489254966697643
		0.72725267072582811 13.958286459864224 -0.97161506117985186
		0.00053015921295204596 13.958286459864224 -1.272633381530323
		-0.72619235229992318 13.958286459864224 -0.97161506117985219
		;
createNode transform -n "head_cntrl" -p "neck_cntrl";
	rename -uid "D3778061-4B60-74C5-460F-838B8D2ADC7F";
	setAttr ".rp" -type "double3" 0.00053022684097849221 15.527977633148017 -0.23391638452472152 ;
	setAttr ".sp" -type "double3" 0.00053022684097849221 15.527977633148017 -0.23391638452472152 ;
createNode nurbsCurve -n "head_cntrlShape" -p "head_cntrl";
	rename -uid "9E9D79E7-40CC-520C-14B6-01A6DA7222BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.95248613235233781 15.527977633148019 -1.1858722900360794
		0.00053022684097833858 15.527977633148019 -1.5801853368800454
		-0.95142567867037975 15.527977633148019 -1.1858722900360801
		-1.3457387255143451 15.527977633148019 -0.23391638452472191
		-0.95142567867038008 15.527977633148019 0.71803952098663648
		0.0005302268409780865 15.527977633148019 1.1123525678306025
		0.95248613235233626 15.527977633148019 0.71803952098663693
		1.3467991791963023 15.527977633148019 -0.2339163845247208
		0.95248613235233781 15.527977633148019 -1.1858722900360794
		0.00053022684097833858 15.527977633148019 -1.5801853368800454
		-0.95142567867037975 15.527977633148019 -1.1858722900360801
		;
createNode transform -n "right_shoulder_cntrl" -p "upper_hip_cntrl";
	rename -uid "2FA17019-4351-EE40-F528-60A04235CF11";
	addAttr -ci true -sn "arm_rotation" -ln "arm_rotation" -min -10 -max 10 -at "double";
	setAttr ".rp" -type "double3" -1.2861600000056237 13.324799999999883 -0.11719099993150826 ;
	setAttr ".sp" -type "double3" -1.2861600000056237 13.324799999999883 -0.11719099993150826 ;
	setAttr -k on ".arm_rotation";
createNode nurbsCurve -n "right_shoulder_cntrlShape" -p "right_shoulder_cntrl";
	rename -uid "A5F249D9-463B-D847-7A5B-C1B0F544DA2C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "right_elbow_cntrl" -p "right_shoulder_cntrl";
	rename -uid "51666A5D-4C2D-13B9-AFD4-A8BCEA424829";
	setAttr ".t" -type "double3" 3.3486268967755829e-019 0 3.1621817381325915e-018 ;
	setAttr ".rp" -type "double3" -1.9015701216389 10.80040002229469 -0.20485478806166968 ;
	setAttr ".sp" -type "double3" -1.9015701216389 10.80040002229469 -0.20485478806166968 ;
createNode nurbsCurve -n "right_elbow_cntrlShape" -p "right_elbow_cntrl";
	rename -uid "4C340E40-4485-3DDC-551F-C0B876E820ED";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.9015701216389003 11.258372102062824 -0.66282686782980216
		-1.9015701216389003 10.800400022294692 -0.85252511445797596
		-1.9015701216389003 10.342427942526557 -0.66282686782980238
		-1.9015701216389003 10.152729695898383 -0.2048547880616699
		-1.9015701216389003 10.342427942526557 0.2531172917064628
		-1.9015701216389003 10.800400022294692 0.44281553833463672
		-1.9015701216389 11.258372102062824 0.25311729170646302
		-1.9015701216389 11.448070348690997 -0.20485478806166935
		-1.9015701216389003 11.258372102062824 -0.66282686782980216
		-1.9015701216389003 10.800400022294692 -0.85252511445797596
		-1.9015701216389003 10.342427942526557 -0.66282686782980238
		;
createNode transform -n "right_wrist_cntrl" -p "right_elbow_cntrl";
	rename -uid "21EEBFCB-457C-288B-903A-BAA5D4CE7192";
	addAttr -ci true -sn "finger_1_1" -ln "finger_1_1" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_1_2" -ln "finger_1_2" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_2_1" -ln "finger_2_1" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_2_2" -ln "finger_2_2" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_3_1" -ln "finger_3_1" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "finger_3_2" -ln "finger_3_2" -min -10 -max 10 -at "double";
	setAttr ".rp" -type "double3" -1.8990864213562926 7.9087170775975899 -0.86931442033756701 ;
	setAttr ".sp" -type "double3" -1.8990864213562926 7.9087170775975899 -0.86931442033756701 ;
	setAttr -k on ".finger_1_1";
	setAttr -k on ".finger_1_2";
	setAttr -k on ".finger_2_1";
	setAttr -k on ".finger_2_2";
	setAttr -k on ".finger_3_1";
	setAttr -k on ".finger_3_2";
createNode nurbsCurve -n "right_wrist_cntrlShape" -p "right_wrist_cntrl";
	rename -uid "DAED5A05-4968-50AB-AAFB-D08BED438A88";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3995215774341305 7.9087170775975899 -1.3688792642597285
		-1.8990864213562928 7.9087170775975899 -1.5758057978970861
		-2.398651265278454 7.9087170775975899 -1.3688792642597285
		-2.6055777989158115 7.9087170775975899 -0.86931442033756734
		-2.398651265278454 7.9087170775975899 -0.3697495764154059
		-1.8990864213562928 7.9087170775975899 -0.16282304277804793
		-1.3995215774341314 7.9087170775975899 -0.36974957641540568
		-1.1925950437967734 7.9087170775975899 -0.86931442033756678
		-1.3995215774341305 7.9087170775975899 -1.3688792642597285
		-1.8990864213562928 7.9087170775975899 -1.5758057978970861
		-2.398651265278454 7.9087170775975899 -1.3688792642597285
		;
createNode transform -n "left_shoulder_cntrl" -p "upper_hip_cntrl";
	rename -uid "2AB4FE2D-4715-D7DB-2578-FAAFF4DC613F";
	setAttr ".rp" -type "double3" 1.2872182258629394 13.324771523860631 -0.11719126126192703 ;
	setAttr ".sp" -type "double3" 1.2872182258629394 13.324771523860631 -0.11719126126192703 ;
createNode nurbsCurve -n "left_shoulder_cntrlShape" -p "left_shoulder_cntrl";
	rename -uid "2764E77A-4C12-C588-5F4B-ECBD5E31A78A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2872182258629397 13.906597136407889 -0.69901687380918365
		1.2872182258629397 13.324771523860631 -0.94001693346229154
		1.2872182258629392 12.742945911313374 -0.69901687380918398
		1.2872182258629392 12.501945851660265 -0.11719126126192725
		1.2872182258629397 12.742945911313374 0.46463435128532987
		1.2872182258629397 13.324771523860631 0.70563441093843782
		1.2872182258629397 13.906597136407886 0.46463435128533015
		1.2872182258629397 14.147597196060996 -0.1171912612619266
		1.2872182258629397 13.906597136407889 -0.69901687380918365
		1.2872182258629397 13.324771523860631 -0.94001693346229154
		1.2872182258629392 12.742945911313374 -0.69901687380918398
		;
createNode transform -n "left_elbow_cntrl" -p "left_shoulder_cntrl";
	rename -uid "51EFE60F-4819-CC54-0616-5BAD2031D30C";
	setAttr ".rp" -type "double3" 1.9026279797533003 10.800438244796146 -0.20485514014725614 ;
	setAttr ".sp" -type "double3" 1.9026279797533003 10.800438244796146 -0.20485514014725614 ;
createNode nurbsCurve -n "left_elbow_cntrlShape" -p "left_elbow_cntrl";
	rename -uid "F62A3250-43A6-EA35-3B44-F48630F2F84B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9026279797533003 11.258410324564281 -0.66282721991538862
		1.9026279797533003 10.800438244796146 -0.85252546654356254
		1.9026279797533001 10.342466165028014 -0.66282721991538884
		1.9026279797533001 10.152767918399839 -0.20485514014725634
		1.9026279797533003 10.342466165028014 0.25311693962087639
		1.9026279797533003 10.800438244796146 0.44281518624905025
		1.9026279797533008 11.258410324564281 0.25311693962087661
		1.9026279797533008 11.448108571192453 -0.20485514014725578
		1.9026279797533003 11.258410324564281 -0.66282721991538862
		1.9026279797533003 10.800438244796146 -0.85252546654356254
		1.9026279797533001 10.342466165028014 -0.66282721991538884
		;
createNode transform -n "left_wrist_cntrl" -p "left_elbow_cntrl";
	rename -uid "CE4812F8-4F77-A9B6-4623-58B9F33C88BE";
	addAttr -ci true -sn "finger_1_1" -ln "finger_1_1" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_1_2" -ln "finger_1_2" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_2_1" -ln "finger_2_1" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_2_2" -ln "finger_2_2" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "finger_3_1" -ln "finger_3_1" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "finger_3_2" -ln "finger_3_2" -min -10 -max 10 -at "double";
	setAttr ".rp" -type "double3" 1.8969541362776636 7.8924693828529051 -0.86545145736973095 ;
	setAttr ".sp" -type "double3" 1.8969541362776636 7.8924693828529051 -0.86545145736973095 ;
	setAttr -k on ".finger_1_1";
	setAttr -k on ".finger_1_2";
	setAttr -k on ".finger_2_1";
	setAttr -k on ".finger_2_2";
	setAttr -k on ".finger_3_1";
	setAttr -k on ".finger_3_2";
createNode nurbsCurve -n "left_wrist_cntrlShape" -p "left_wrist_cntrl";
	rename -uid "0A90B086-4BB7-3223-36D1-198576C37BF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3965189801998257 7.8924693828529051 -1.3650163012918919
		1.8969541362776638 7.8924693828529051 -1.5719428349292501
		1.3973892923555025 7.8924693828529051 -1.3650163012918921
		1.1904627587181447 7.8924693828529051 -0.86545145736973117
		1.3973892923555025 7.8924693828529051 -0.36588661344756984
		1.8969541362776636 7.8924693828529051 -0.15896007981021187
		2.3965189801998243 7.8924693828529051 -0.36588661344756962
		2.6034455138371828 7.8924693828529051 -0.86545145736973073
		2.3965189801998257 7.8924693828529051 -1.3650163012918919
		1.8969541362776638 7.8924693828529051 -1.5719428349292501
		1.3973892923555025 7.8924693828529051 -1.3650163012918921
		;
createNode transform -n "left_hip_cntrl" -p "base_cntrl";
	rename -uid "BCB69E57-4EDA-1548-B028-3887EE4EE75D";
	setAttr ".rp" -type "double3" 0.10601385342849463 1.398043580571416 1.1233207038542797e-017 ;
	setAttr ".sp" -type "double3" 0.10601385342849522 1.398043580571416 1.1233207038542797e-017 ;
createNode nurbsCurve -n "left_hip_cntrlShape" -p "left_hip_cntrl";
	rename -uid "DC0B0394-4BF8-D952-81E0-FEB8A292AA3C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.10601385342849512 1.4789169214621747 -0.080873340890758469
		0.10601385342849512 1.398043580571416 -0.11437217552213333
		0.10601385342849512 1.3171702396806575 -0.080873340890758524
		0.10601385342849512 1.2836714050492828 -2.1908983636765309e-017
		0.10601385342849512 1.3171702396806575 0.080873340890758524
		0.10601385342849512 1.398043580571416 0.11437217552213336
		0.10601385342849512 1.4789169214621745 0.080873340890758552
		0.10601385342849512 1.5124157560935494 7.2662727997655055e-017
		0.10601385342849512 1.4789169214621747 -0.080873340890758469
		0.10601385342849512 1.398043580571416 -0.11437217552213333
		0.10601385342849512 1.3171702396806575 -0.080873340890758524
		;
createNode transform -n "right_foot_cntrl" -p "root_cntrl";
	rename -uid "54DEC671-4022-DE6E-2A21-F4923ACF5585";
	setAttr ".t" -type "double3" 1.0072756704481326e-016 0 0 ;
	setAttr ".s" -type "double3" 0.14687626857879946 0.14687626857879946 0.14687626857879946 ;
	setAttr ".rp" -type "double3" -0.15598943577415544 0 0 ;
	setAttr ".sp" -type "double3" -1.0620465598938253 0 0 ;
	setAttr ".spt" -type "double3" 0.90605712411966988 0 0 ;
createNode nurbsCurve -n "right_foot_cntrlShape" -p "right_foot_cntrl";
	rename -uid "DE0C0DF6-44C3-699A-7323-248BFEB4A952";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.4871752632038755 5.4504536834615684e-017 -0.89483666325728262
		-1.0634297125919367 7.7081055202372128e-017 -0.8638521268347944
		-1.6313852457914026 5.4504536834611907e-017 -0.89483666325718614
		-1.891858324617993 -1.8096806330734459e-030 -0.37613692976615176
		-1.5696139050148674 -5.4504536834605546e-017 2.3993843823205476
		-0.99527634207180027 -7.7081055202375197e-017 2.7095957913991091
		-0.48255527447546531 -5.4504536834608677e-017 2.3993843823206635
		-0.25159893294220437 -6.6734161062950186e-030 -0.37613692976603519
		-0.4871752632038755 5.4504536834615684e-017 -0.89483666325728262
		-1.0634297125919367 7.7081055202372128e-017 -0.8638521268347944
		-1.6313852457914026 5.4504536834611907e-017 -0.89483666325718614
		;
createNode ikHandle -n "ikHandle2" -p "right_foot_cntrl";
	rename -uid "211EB09E-4C8E-F5BC-B330-349B2761160D";
	setAttr ".t" -type "double3" -1.0329164403398186 0.84788382562387365 -0.062023097829682086 ;
	setAttr ".pv" -type "double3" -1.8433309737931397e-005 -0.0058882662083413837 0.7386825315501051 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle5" -p "right_foot_cntrl";
	rename -uid "007CB6D6-418B-24F1-F662-5D9AF86CFC7D";
	setAttr ".t" -type "double3" -0.83850210952163151 0.18457603087056929 2.0926557500049978 ;
	setAttr ".pv" -type "double3" -0.038760429444828597 -0.70597557802998678 -0.21396884532678651 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle6" -p "right_foot_cntrl";
	rename -uid "0C2AD99A-46DE-0CBC-142E-3F8922FFEBFE";
	setAttr ".t" -type "double3" -1.2146629554810151 0.18457585788570752 2.0926558840406644 ;
	setAttr ".pv" -type "double3" 0.013828781289525414 -0.7062127870803222 -0.21623787505497172 ;
	setAttr ".roc" yes;
createNode transform -n "left_foot_cntrl" -p "root_cntrl";
	rename -uid "BED0BD0B-4CC2-4C04-7615-A18D1684B64A";
	setAttr ".t" -type "double3" -1.0072756704481326e-016 0 0 ;
	setAttr ".s" -type "double3" 0.14687626857879946 0.14687626857879946 0.14687626857879946 ;
	setAttr ".rp" -type "double3" 0.14344047764843462 0 0 ;
	setAttr ".sp" -type "double3" 0.97660758294304451 0 0 ;
	setAttr ".spt" -type "double3" -0.8331671052946098 0 0 ;
createNode nurbsCurve -n "left_foot_cntrlShape" -p "left_foot_cntrl";
	rename -uid "43FF1BEC-4F52-AAB7-CCAD-B29E612D6984";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.31525534019116064 3.2478882582146345e-030 
		-0.0047100263761733485 -0.0013831526981114006 -7.6420900193285519e-031 0.39497703527202244 
		0.3207879509835323 -5.6699377562760224e-031 -0.004710026376076426 0.42901739738264921 
		-1.8320167944553517e-030 -0.37613692976615137 0.38255929176006787 6.9148588723279316e-030 
		1.509257745439438 0.066770217822025413 -2.2926270057985656e-030 1.4507666292922921 
		-0.31063535146274912 3.8025560821981585e-030 1.5092577454395537 -0.44838153515519585 
		-6.6320157211811536e-030 -0.37613692976603585 0 0 0 0 0 0 0 0 0;
createNode ikHandle -n "ikHandle1" -p "left_foot_cntrl";
	rename -uid "86A3B765-4F1C-A671-3BF0-B3AD3F2220F5";
	setAttr ".rp" -type "double3" 1.0339864323378372 0.84788372313095983 -0.062023671399511308 ;
	setAttr ".sp" -type "double3" 1.0339864323378372 0.84788372313095983 -0.062023671399511308 ;
	setAttr ".pv" -type "double3" 5.0990786744069084e-007 -0.0051836647853229414 0.65028973967242332 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle3" -p "left_foot_cntrl";
	rename -uid "F34FC200-459A-DD31-0684-F7AC07B68355";
	setAttr ".rp" -type "double3" 1.2405178847171183 0.18457660477896987 2.0926551255504786 ;
	setAttr ".sp" -type "double3" 1.2405178847171183 0.18457660477896987 2.0926551255504786 ;
	setAttr ".pv" -type "double3" -0.012017099800395462 -0.62173780392366962 -0.19026641424247451 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle4" -p "left_foot_cntrl";
	rename -uid "17769999-49A9-4BE2-686F-88B6B529E45C";
	setAttr ".rp" -type "double3" 0.86435703875779335 0.1845764648802479 2.0926553954095017 ;
	setAttr ".sp" -type "double3" 0.86435703875779335 0.1845764648802479 2.0926553954095017 ;
	setAttr ".pv" -type "double3" 0.015830479681563234 -0.62169136244783696 -0.19013905878301493 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "31B4EE4F-4679-4782-0DBD-E8BC09920805";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C5350C76-4328-F9D9-4A55-6D9974B19926";
createNode displayLayer -n "defaultLayer";
	rename -uid "14319512-458D-FA03-175B-D1830E2650B2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "94AE1023-4A36-EC40-C750-72836836868F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8CECA02D-46D4-F07A-5F9B-A4800CA252E1";
	setAttr ".g" yes;
createNode reference -n "pit_droid_01RN";
	rename -uid "61B6ECFA-4F7C-7F55-B924-FEBE75E13BD8";
	setAttr ".ed" -type "dataReferenceEdits" 
		"pit_droid_01RN"
		"pit_droid_01RN" 0
		"pit_droid_01RN" 18
		2 "|pit_droid_01:camera_eye" "visibility" " 1"
		2 "|pit_droid_01:camera_head" "visibility" " 1"
		2 "|pit_droid_01:left_arm" "visibility" " 1"
		2 "|pit_droid_01:hips" "visibility" " 1"
		2 "|pit_droid_01:hips|pit_droid_01:hipsShape" "dispResolution" " 1"
		2 "|pit_droid_01:hips|pit_droid_01:hipsShape" "displaySmoothMesh" " 0"
		2 "|pit_droid_01:left_leg" "visibility" " 1"
		2 "|pit_droid_01:body_main" "visibility" " 1"
		2 "|pit_droid_01:neck" "visibility" " 1"
		2 "|pit_droid_01:camera_accesorie" "visibility" " 1"
		2 "|pit_droid_01:camera_accesorie1" "visibility" " 1"
		2 "|pit_droid_01:camera_accesorie2" "visibility" " 1"
		2 "|pit_droid_01:shoulder_right" "visibility" " 1"
		2 "|pit_droid_01:foot_left" "visibility" " 1"
		2 "|pit_droid_01:shoulder_left" "visibility" " 1"
		2 "|pit_droid_01:right_leg" "visibility" " 1"
		2 "|pit_droid_01:right_foot" "visibility" " 1"
		2 "|pit_droid_01:right_arm" "visibility" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "7CC3F203-467E-6299-6441-AA9BF8D6BBFA";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "9D7F7410-46D9-5681-E1AA-67A61319527E";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "441F9D11-478C-89EC-3756-C88AB880CFC8";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "C768A782-49F5-3067-D5EF-3382868B058A";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "22A43613-4172-008E-9DC6-FA9EBCBD6180";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "887A3532-4B8C-317D-7108-4892A6009A7E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 775\n                -height 674\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 775\n            -height 674\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"right_shoulder_cntrl\" \n                -opaqueContainers 0\n                -dropTargetNode \"right_elbow_cntrl\" \n                -dropNode \"right_wrist_cntrl\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"right_shoulder_cntrl\" \n                -opaqueContainers 0\n                -dropTargetNode \"right_elbow_cntrl\" \n                -dropNode \"right_wrist_cntrl\" \n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 775\\n    -height 674\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 775\\n    -height 674\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA8B3F29-4122-7871-BD02-749CE299E4B8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "A0EDBE88-40D5-6CB9-CFD0-59AB22BF55DF";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "A9E3EA4A-400F-7742-9CAD-90A6757F0CAE";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "479191A0-4656-89EB-7681-7DB14196972D";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "D2727D85-41AF-E8F4-3DD8-DD97E4D4C8F6";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "6F88560D-4AD2-84D1-0D6F-01A84050FD4F";
	setAttr ".txf" -type "matrix" 1.1359283203649144 0 0 0 0 1.1359283203649144 0 0
		 0 0 1.1359283203649144 0 0.97660758294304451 0 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "00225762-492C-F31C-F0DF-6A9415F1F66D";
	setAttr ".txf" -type "matrix" 1.6486641362837551e-016 0.74249231898266199 0 0 -0.74249231898266199 1.6486641362837551e-016 0 0
		 0 0 0.74249231898266199 0 -1.9015700000059312 13.324800022294724 -0.11719178806285828 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "3D436A02-436E-EC83-177F-F3BB0A2076C9";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.61541000000030754 -2.2294841528491816e-008 7.8813135001576384e-007 1;
createNode animCurveUA -n "finger_1_L_1_jnt_rotateZ";
	rename -uid "33DA9BB8-4386-9235-1C23-D398B3AE6B3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -97.559996126655889;
createNode animCurveUA -n "finger_1_L_2_jnt_rotateZ";
	rename -uid "B9875FA8-44B6-3466-D0DF-47BB7C30FE6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 83.891550899583748;
createNode animCurveUA -n "finger_2_L_1_jnt_rotateZ";
	rename -uid "EAA9CDE8-4B87-E4EB-F3DA-7F89DFDBBC83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -85.448240155103363;
createNode animCurveUA -n "finger_2_L_2_jnt_rotateZ";
	rename -uid "9028C281-4395-B013-CBB0-CBAFF86A9E1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode blendWeighted -n "blendWeighted1";
	rename -uid "A9C093CA-4828-FB7E-A83D-6DBD29CFBA51";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode unitConversion -n "unitConversion1";
	rename -uid "0EF0CAD6-4D52-129C-BA2D-51B46DA04973";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "CEA3823C-4425-9475-1780-D4A44A92092B";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "animCurveUA1";
	rename -uid "F14CA735-4EA9-DEEF-AE07-E996D6664576";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 71.176882767574895;
createNode unitConversion -n "unitConversion3";
	rename -uid "982D943B-4A97-2459-5D68-5DB9B79CEAF8";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "finger_3_L_1_jnt_rotateZ";
	rename -uid "CF9858DB-46E1-EC9C-BD19-B481B8E11AEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -33.265364477360919;
createNode blendWeighted -n "blendWeighted2";
	rename -uid "40BDCC5C-4D86-996B-D9A6-24B0A5AD862E";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode unitConversion -n "unitConversion4";
	rename -uid "0DA18C50-451A-E27E-3642-D2B286E5159C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "9A6C2D66-4A5D-10F6-D5C7-9DA9CBE05077";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "animCurveUA2";
	rename -uid "98D25088-4C9A-D52A-4B54-E4BF0008869D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 54.359998416452846 0 0 10 -41.039998804474635;
createNode unitConversion -n "unitConversion6";
	rename -uid "EA3B0CF4-4D5A-1D06-EF27-A4B56C5ABD71";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "finger_3_L_2_jnt_rotateZ";
	rename -uid "3158261F-428E-19B7-8302-AC8CBB99FC7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -42.839998850609788 0 0 10 73.079998039275239;
createNode animCurveUA -n "finger_1_R_1_jnt_rotateZ";
	rename -uid "22DC695B-4225-0384-F5A0-77BA2998C81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -89.233;
createNode animCurveUA -n "finger_1_R_2_jnt_rotateZ";
	rename -uid "1FE97C54-43D5-EC11-D991-148C553D6ECB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 66.599999943007717;
createNode animCurveUA -n "finger_2_R_1_jnt_rotateZ";
	rename -uid "62140F06-49E8-553A-DF1D-34A11E7C8E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -79.560001756996058;
createNode animCurveUA -n "finger_2_R_2_jnt_rotateZ";
	rename -uid "E209E66C-4829-1552-B377-4FB817E8F940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 66.6;
createNode animCurveUA -n "finger_3_R_1_jnt_rotateZ";
	rename -uid "32312511-4049-85EA-5EB6-909D234D6047";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 55.792896555523136;
createNode blendWeighted -n "blendWeighted3";
	rename -uid "0CCF9993-48B5-716B-DB73-87AC55A881C8";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".c" 1;
createNode unitConversion -n "unitConversion7";
	rename -uid "2E9351DC-4B08-C7A3-6B78-6FA58DD82A24";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "A44A385E-49AB-1A91-82C1-8195F28DBD21";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "animCurveUA3";
	rename -uid "3A0AD84F-41F4-50F7-BAF1-E29A86D2B624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 2.1671048699383135 0 -55.792896555523143 
		10 -90.456088938217789;
createNode unitConversion -n "unitConversion9";
	rename -uid "D44BB8FB-479B-05EB-2E28-528C3FB4022B";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUA -n "finger_3_R_2_jnt_rotateZ";
	rename -uid "F14E6AEA-4F8F-845F-1DA4-EEB98A45D995";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -52.736945991669842 0 0 10 53.435448587593804;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
	setAttr ".hyp[12].isc" yes;
	setAttr ".hyp[14].isc" yes;
	setAttr ".hyp[15].isc" yes;
connectAttr "root_jnt_parentConstraint1.ctx" "root_jnt.tx";
connectAttr "root_jnt_parentConstraint1.cty" "root_jnt.ty";
connectAttr "root_jnt_parentConstraint1.ctz" "root_jnt.tz";
connectAttr "root_jnt_parentConstraint1.crx" "root_jnt.rx";
connectAttr "root_jnt_parentConstraint1.cry" "root_jnt.ry";
connectAttr "root_jnt_parentConstraint1.crz" "root_jnt.rz";
connectAttr "root_jnt.s" "base_jnt.is";
connectAttr "base_jnt_parentConstraint1.ctx" "base_jnt.tx";
connectAttr "base_jnt_parentConstraint1.cty" "base_jnt.ty";
connectAttr "base_jnt_parentConstraint1.ctz" "base_jnt.tz";
connectAttr "base_jnt_parentConstraint1.crx" "base_jnt.rx";
connectAttr "base_jnt_parentConstraint1.cry" "base_jnt.ry";
connectAttr "base_jnt_parentConstraint1.crz" "base_jnt.rz";
connectAttr "base_jnt.s" "hips_jnt.is";
connectAttr "hips_jnt_parentConstraint1.ctx" "hips_jnt.tx";
connectAttr "hips_jnt_parentConstraint1.cty" "hips_jnt.ty";
connectAttr "hips_jnt_parentConstraint1.ctz" "hips_jnt.tz";
connectAttr "hips_jnt_parentConstraint1.crx" "hips_jnt.rx";
connectAttr "hips_jnt_parentConstraint1.cry" "hips_jnt.ry";
connectAttr "hips_jnt_parentConstraint1.crz" "hips_jnt.rz";
connectAttr "hips_jnt.s" "spine_jnt.is";
connectAttr "spine_jnt.s" "neck_jnt.is";
connectAttr "neck_jnt_parentConstraint1.ctx" "neck_jnt.tx";
connectAttr "neck_jnt_parentConstraint1.cty" "neck_jnt.ty";
connectAttr "neck_jnt_parentConstraint1.ctz" "neck_jnt.tz";
connectAttr "neck_jnt_parentConstraint1.crx" "neck_jnt.rx";
connectAttr "neck_jnt_parentConstraint1.cry" "neck_jnt.ry";
connectAttr "neck_jnt_parentConstraint1.crz" "neck_jnt.rz";
connectAttr "neck_jnt.s" "head_jnt.is";
connectAttr "head_jnt_parentConstraint1.ctx" "head_jnt.tx";
connectAttr "head_jnt_parentConstraint1.cty" "head_jnt.ty";
connectAttr "head_jnt_parentConstraint1.ctz" "head_jnt.tz";
connectAttr "head_jnt_parentConstraint1.crx" "head_jnt.rx";
connectAttr "head_jnt_parentConstraint1.cry" "head_jnt.ry";
connectAttr "head_jnt_parentConstraint1.crz" "head_jnt.rz";
connectAttr "head_jnt.ro" "head_jnt_parentConstraint1.cro";
connectAttr "head_jnt.pim" "head_jnt_parentConstraint1.cpim";
connectAttr "head_jnt.rp" "head_jnt_parentConstraint1.crp";
connectAttr "head_jnt.rpt" "head_jnt_parentConstraint1.crt";
connectAttr "head_jnt.jo" "head_jnt_parentConstraint1.cjo";
connectAttr "head_cntrl.t" "head_jnt_parentConstraint1.tg[0].tt";
connectAttr "head_cntrl.rp" "head_jnt_parentConstraint1.tg[0].trp";
connectAttr "head_cntrl.rpt" "head_jnt_parentConstraint1.tg[0].trt";
connectAttr "head_cntrl.r" "head_jnt_parentConstraint1.tg[0].tr";
connectAttr "head_cntrl.ro" "head_jnt_parentConstraint1.tg[0].tro";
connectAttr "head_cntrl.s" "head_jnt_parentConstraint1.tg[0].ts";
connectAttr "head_cntrl.pm" "head_jnt_parentConstraint1.tg[0].tpm";
connectAttr "head_jnt_parentConstraint1.w0" "head_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "neck_jnt.ro" "neck_jnt_parentConstraint1.cro";
connectAttr "neck_jnt.pim" "neck_jnt_parentConstraint1.cpim";
connectAttr "neck_jnt.rp" "neck_jnt_parentConstraint1.crp";
connectAttr "neck_jnt.rpt" "neck_jnt_parentConstraint1.crt";
connectAttr "neck_jnt.jo" "neck_jnt_parentConstraint1.cjo";
connectAttr "neck_cntrl.t" "neck_jnt_parentConstraint1.tg[0].tt";
connectAttr "neck_cntrl.rp" "neck_jnt_parentConstraint1.tg[0].trp";
connectAttr "neck_cntrl.rpt" "neck_jnt_parentConstraint1.tg[0].trt";
connectAttr "neck_cntrl.r" "neck_jnt_parentConstraint1.tg[0].tr";
connectAttr "neck_cntrl.ro" "neck_jnt_parentConstraint1.tg[0].tro";
connectAttr "neck_cntrl.s" "neck_jnt_parentConstraint1.tg[0].ts";
connectAttr "neck_cntrl.pm" "neck_jnt_parentConstraint1.tg[0].tpm";
connectAttr "neck_jnt_parentConstraint1.w0" "neck_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_jnt.s" "shoulder_rotaion_L_jnt.is";
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.ctx" "shoulder_rotaion_L_jnt.tx"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.cty" "shoulder_rotaion_L_jnt.ty"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.ctz" "shoulder_rotaion_L_jnt.tz"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.crx" "shoulder_rotaion_L_jnt.rx"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.cry" "shoulder_rotaion_L_jnt.ry"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.crz" "shoulder_rotaion_L_jnt.rz"
		;
connectAttr "shoulder_rotaion_L_jnt.s" "shoulder_L_jnt.is";
connectAttr "shoulder_L_jnt.s" "elbow_L_1_jnt.is";
connectAttr "elbow_L_1_jnt_parentConstraint1.ctx" "elbow_L_1_jnt.tx";
connectAttr "elbow_L_1_jnt_parentConstraint1.cty" "elbow_L_1_jnt.ty";
connectAttr "elbow_L_1_jnt_parentConstraint1.ctz" "elbow_L_1_jnt.tz";
connectAttr "elbow_L_1_jnt_parentConstraint1.crx" "elbow_L_1_jnt.rx";
connectAttr "elbow_L_1_jnt_parentConstraint1.cry" "elbow_L_1_jnt.ry";
connectAttr "elbow_L_1_jnt_parentConstraint1.crz" "elbow_L_1_jnt.rz";
connectAttr "elbow_L_1_jnt.s" "elbow_L_2_jnt.is";
connectAttr "elbow_L_2_jnt.s" "wrist_L_jnt.is";
connectAttr "wrist_L_jnt_parentConstraint1.ctx" "wrist_L_jnt.tx";
connectAttr "wrist_L_jnt_parentConstraint1.cty" "wrist_L_jnt.ty";
connectAttr "wrist_L_jnt_parentConstraint1.ctz" "wrist_L_jnt.tz";
connectAttr "wrist_L_jnt_parentConstraint1.crx" "wrist_L_jnt.rx";
connectAttr "wrist_L_jnt_parentConstraint1.cry" "wrist_L_jnt.ry";
connectAttr "wrist_L_jnt_parentConstraint1.crz" "wrist_L_jnt.rz";
connectAttr "wrist_L_jnt.s" "finger_1_L_1_jnt.is";
connectAttr "finger_1_L_1_jnt_rotateZ.o" "finger_1_L_1_jnt.rz";
connectAttr "finger_1_L_1_jnt.s" "finger_1_L_2_jnt.is";
connectAttr "finger_1_L_2_jnt_rotateZ.o" "finger_1_L_2_jnt.rz";
connectAttr "finger_1_L_2_jnt.s" "finger_1_L_3_jnt.is";
connectAttr "wrist_L_jnt.s" "finger_2_L_1_jnt.is";
connectAttr "finger_2_L_1_jnt_rotateZ.o" "finger_2_L_1_jnt.rz";
connectAttr "finger_2_L_1_jnt.s" "finger_2_L_2_jnt.is";
connectAttr "unitConversion1.o" "finger_2_L_2_jnt.rz";
connectAttr "finger_2_L_2_jnt.s" "finger_2_L_3_jnt.is";
connectAttr "wrist_L_jnt.s" "finger_3_L_1_jnt.is";
connectAttr "unitConversion4.o" "finger_3_L_1_jnt.rz";
connectAttr "finger_3_L_1_jnt.s" "finger_3_L_2_jnt.is";
connectAttr "finger_3_L_2_jnt_rotateZ.o" "finger_3_L_2_jnt.rz";
connectAttr "wrist_L_jnt.ro" "wrist_L_jnt_parentConstraint1.cro";
connectAttr "wrist_L_jnt.pim" "wrist_L_jnt_parentConstraint1.cpim";
connectAttr "wrist_L_jnt.rp" "wrist_L_jnt_parentConstraint1.crp";
connectAttr "wrist_L_jnt.rpt" "wrist_L_jnt_parentConstraint1.crt";
connectAttr "wrist_L_jnt.jo" "wrist_L_jnt_parentConstraint1.cjo";
connectAttr "left_wrist_cntrl.t" "wrist_L_jnt_parentConstraint1.tg[0].tt";
connectAttr "left_wrist_cntrl.rp" "wrist_L_jnt_parentConstraint1.tg[0].trp";
connectAttr "left_wrist_cntrl.rpt" "wrist_L_jnt_parentConstraint1.tg[0].trt";
connectAttr "left_wrist_cntrl.r" "wrist_L_jnt_parentConstraint1.tg[0].tr";
connectAttr "left_wrist_cntrl.ro" "wrist_L_jnt_parentConstraint1.tg[0].tro";
connectAttr "left_wrist_cntrl.s" "wrist_L_jnt_parentConstraint1.tg[0].ts";
connectAttr "left_wrist_cntrl.pm" "wrist_L_jnt_parentConstraint1.tg[0].tpm";
connectAttr "wrist_L_jnt_parentConstraint1.w0" "wrist_L_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "elbow_L_1_jnt.ro" "elbow_L_1_jnt_parentConstraint1.cro";
connectAttr "elbow_L_1_jnt.pim" "elbow_L_1_jnt_parentConstraint1.cpim";
connectAttr "elbow_L_1_jnt.rp" "elbow_L_1_jnt_parentConstraint1.crp";
connectAttr "elbow_L_1_jnt.rpt" "elbow_L_1_jnt_parentConstraint1.crt";
connectAttr "elbow_L_1_jnt.jo" "elbow_L_1_jnt_parentConstraint1.cjo";
connectAttr "left_elbow_cntrl.t" "elbow_L_1_jnt_parentConstraint1.tg[0].tt";
connectAttr "left_elbow_cntrl.rp" "elbow_L_1_jnt_parentConstraint1.tg[0].trp";
connectAttr "left_elbow_cntrl.rpt" "elbow_L_1_jnt_parentConstraint1.tg[0].trt";
connectAttr "left_elbow_cntrl.r" "elbow_L_1_jnt_parentConstraint1.tg[0].tr";
connectAttr "left_elbow_cntrl.ro" "elbow_L_1_jnt_parentConstraint1.tg[0].tro";
connectAttr "left_elbow_cntrl.s" "elbow_L_1_jnt_parentConstraint1.tg[0].ts";
connectAttr "left_elbow_cntrl.pm" "elbow_L_1_jnt_parentConstraint1.tg[0].tpm";
connectAttr "elbow_L_1_jnt_parentConstraint1.w0" "elbow_L_1_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "shoulder_rotaion_L_jnt.ro" "shoulder_rotaion_L_jnt_parentConstraint1.cro"
		;
connectAttr "shoulder_rotaion_L_jnt.pim" "shoulder_rotaion_L_jnt_parentConstraint1.cpim"
		;
connectAttr "shoulder_rotaion_L_jnt.rp" "shoulder_rotaion_L_jnt_parentConstraint1.crp"
		;
connectAttr "shoulder_rotaion_L_jnt.rpt" "shoulder_rotaion_L_jnt_parentConstraint1.crt"
		;
connectAttr "shoulder_rotaion_L_jnt.jo" "shoulder_rotaion_L_jnt_parentConstraint1.cjo"
		;
connectAttr "left_shoulder_cntrl.t" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "left_shoulder_cntrl.rp" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "left_shoulder_cntrl.rpt" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "left_shoulder_cntrl.r" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "left_shoulder_cntrl.ro" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "left_shoulder_cntrl.s" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "left_shoulder_cntrl.pm" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_rotaion_L_jnt_parentConstraint1.w0" "shoulder_rotaion_L_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_jnt.s" "shoulder_rotaion_R_jnt.is";
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.ctx" "shoulder_rotaion_R_jnt.tx"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.cty" "shoulder_rotaion_R_jnt.ty"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.ctz" "shoulder_rotaion_R_jnt.tz"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.crx" "shoulder_rotaion_R_jnt.rx"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.cry" "shoulder_rotaion_R_jnt.ry"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.crz" "shoulder_rotaion_R_jnt.rz"
		;
connectAttr "shoulder_rotaion_R_jnt.s" "shoulder_R_jnt.is";
connectAttr "shoulder_R_jnt.s" "elbow_R_1_jnt.is";
connectAttr "elbow_R_1_jnt_parentConstraint1.ctx" "elbow_R_1_jnt.tx";
connectAttr "elbow_R_1_jnt_parentConstraint1.cty" "elbow_R_1_jnt.ty";
connectAttr "elbow_R_1_jnt_parentConstraint1.ctz" "elbow_R_1_jnt.tz";
connectAttr "elbow_R_1_jnt_parentConstraint1.crx" "elbow_R_1_jnt.rx";
connectAttr "elbow_R_1_jnt_parentConstraint1.cry" "elbow_R_1_jnt.ry";
connectAttr "elbow_R_1_jnt_parentConstraint1.crz" "elbow_R_1_jnt.rz";
connectAttr "elbow_R_1_jnt.s" "elbow_R_2_jnt.is";
connectAttr "elbow_R_2_jnt.s" "wrist_R_jnt.is";
connectAttr "wrist_R_jnt_parentConstraint1.ctx" "wrist_R_jnt.tx";
connectAttr "wrist_R_jnt_parentConstraint1.cty" "wrist_R_jnt.ty";
connectAttr "wrist_R_jnt_parentConstraint1.ctz" "wrist_R_jnt.tz";
connectAttr "wrist_R_jnt_parentConstraint1.crx" "wrist_R_jnt.rx";
connectAttr "wrist_R_jnt_parentConstraint1.cry" "wrist_R_jnt.ry";
connectAttr "wrist_R_jnt_parentConstraint1.crz" "wrist_R_jnt.rz";
connectAttr "wrist_R_jnt.s" "finger_1_R_1_jnt.is";
connectAttr "finger_1_R_1_jnt_rotateZ.o" "finger_1_R_1_jnt.rz";
connectAttr "finger_1_R_1_jnt.s" "finger_1_R_2_jnt.is";
connectAttr "finger_1_R_2_jnt_rotateZ.o" "finger_1_R_2_jnt.rz";
connectAttr "finger_1_R_2_jnt.s" "finger_1_R_3_jnt.is";
connectAttr "wrist_R_jnt.s" "finger_2_R_1_jnt.is";
connectAttr "finger_2_R_1_jnt_rotateZ.o" "finger_2_R_1_jnt.rz";
connectAttr "finger_2_R_1_jnt.s" "finger_2_R_2_jnt.is";
connectAttr "finger_2_R_2_jnt_rotateZ.o" "finger_2_R_2_jnt.rz";
connectAttr "finger_2_R_2_jnt.s" "finger_2_R_3_jnt.is";
connectAttr "wrist_R_jnt.s" "finger_3_R_1_jnt.is";
connectAttr "unitConversion7.o" "finger_3_R_1_jnt.rz";
connectAttr "finger_3_R_1_jnt.s" "finger_3_R_2_jnt.is";
connectAttr "finger_3_R_2_jnt_rotateZ.o" "finger_3_R_2_jnt.rz";
connectAttr "wrist_R_jnt.ro" "wrist_R_jnt_parentConstraint1.cro";
connectAttr "wrist_R_jnt.pim" "wrist_R_jnt_parentConstraint1.cpim";
connectAttr "wrist_R_jnt.rp" "wrist_R_jnt_parentConstraint1.crp";
connectAttr "wrist_R_jnt.rpt" "wrist_R_jnt_parentConstraint1.crt";
connectAttr "wrist_R_jnt.jo" "wrist_R_jnt_parentConstraint1.cjo";
connectAttr "right_wrist_cntrl.t" "wrist_R_jnt_parentConstraint1.tg[0].tt";
connectAttr "right_wrist_cntrl.rp" "wrist_R_jnt_parentConstraint1.tg[0].trp";
connectAttr "right_wrist_cntrl.rpt" "wrist_R_jnt_parentConstraint1.tg[0].trt";
connectAttr "right_wrist_cntrl.r" "wrist_R_jnt_parentConstraint1.tg[0].tr";
connectAttr "right_wrist_cntrl.ro" "wrist_R_jnt_parentConstraint1.tg[0].tro";
connectAttr "right_wrist_cntrl.s" "wrist_R_jnt_parentConstraint1.tg[0].ts";
connectAttr "right_wrist_cntrl.pm" "wrist_R_jnt_parentConstraint1.tg[0].tpm";
connectAttr "wrist_R_jnt_parentConstraint1.w0" "wrist_R_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "elbow_R_1_jnt.ro" "elbow_R_1_jnt_parentConstraint1.cro";
connectAttr "elbow_R_1_jnt.pim" "elbow_R_1_jnt_parentConstraint1.cpim";
connectAttr "elbow_R_1_jnt.rp" "elbow_R_1_jnt_parentConstraint1.crp";
connectAttr "elbow_R_1_jnt.rpt" "elbow_R_1_jnt_parentConstraint1.crt";
connectAttr "elbow_R_1_jnt.jo" "elbow_R_1_jnt_parentConstraint1.cjo";
connectAttr "right_elbow_cntrl.t" "elbow_R_1_jnt_parentConstraint1.tg[0].tt";
connectAttr "right_elbow_cntrl.rp" "elbow_R_1_jnt_parentConstraint1.tg[0].trp";
connectAttr "right_elbow_cntrl.rpt" "elbow_R_1_jnt_parentConstraint1.tg[0].trt";
connectAttr "right_elbow_cntrl.r" "elbow_R_1_jnt_parentConstraint1.tg[0].tr";
connectAttr "right_elbow_cntrl.ro" "elbow_R_1_jnt_parentConstraint1.tg[0].tro";
connectAttr "right_elbow_cntrl.s" "elbow_R_1_jnt_parentConstraint1.tg[0].ts";
connectAttr "right_elbow_cntrl.pm" "elbow_R_1_jnt_parentConstraint1.tg[0].tpm";
connectAttr "elbow_R_1_jnt_parentConstraint1.w0" "elbow_R_1_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "shoulder_rotaion_R_jnt.ro" "shoulder_rotaion_R_jnt_parentConstraint1.cro"
		;
connectAttr "shoulder_rotaion_R_jnt.pim" "shoulder_rotaion_R_jnt_parentConstraint1.cpim"
		;
connectAttr "shoulder_rotaion_R_jnt.rp" "shoulder_rotaion_R_jnt_parentConstraint1.crp"
		;
connectAttr "shoulder_rotaion_R_jnt.rpt" "shoulder_rotaion_R_jnt_parentConstraint1.crt"
		;
connectAttr "shoulder_rotaion_R_jnt.jo" "shoulder_rotaion_R_jnt_parentConstraint1.cjo"
		;
connectAttr "right_shoulder_cntrl.t" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "right_shoulder_cntrl.rp" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "right_shoulder_cntrl.rpt" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_shoulder_cntrl.r" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "right_shoulder_cntrl.ro" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "right_shoulder_cntrl.s" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "right_shoulder_cntrl.pm" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_rotaion_R_jnt_parentConstraint1.w0" "shoulder_rotaion_R_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "hips_jnt.ro" "hips_jnt_parentConstraint1.cro";
connectAttr "hips_jnt.pim" "hips_jnt_parentConstraint1.cpim";
connectAttr "hips_jnt.rp" "hips_jnt_parentConstraint1.crp";
connectAttr "hips_jnt.rpt" "hips_jnt_parentConstraint1.crt";
connectAttr "hips_jnt.jo" "hips_jnt_parentConstraint1.cjo";
connectAttr "upper_hip_cntrl.t" "hips_jnt_parentConstraint1.tg[0].tt";
connectAttr "upper_hip_cntrl.rp" "hips_jnt_parentConstraint1.tg[0].trp";
connectAttr "upper_hip_cntrl.rpt" "hips_jnt_parentConstraint1.tg[0].trt";
connectAttr "upper_hip_cntrl.r" "hips_jnt_parentConstraint1.tg[0].tr";
connectAttr "upper_hip_cntrl.ro" "hips_jnt_parentConstraint1.tg[0].tro";
connectAttr "upper_hip_cntrl.s" "hips_jnt_parentConstraint1.tg[0].ts";
connectAttr "upper_hip_cntrl.pm" "hips_jnt_parentConstraint1.tg[0].tpm";
connectAttr "hips_jnt_parentConstraint1.w0" "hips_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_jnt.s" "hips_rotaion_L_jnt.is";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.ctx" "hips_rotaion_L_jnt.tx";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.cty" "hips_rotaion_L_jnt.ty";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.ctz" "hips_rotaion_L_jnt.tz";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.crx" "hips_rotaion_L_jnt.rx";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.cry" "hips_rotaion_L_jnt.ry";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.crz" "hips_rotaion_L_jnt.rz";
connectAttr "hips_rotaion_L_jnt.s" "upper_leg_L_jnt.is";
connectAttr "upper_leg_L_jnt.s" "|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.is"
		;
connectAttr "|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.s" "ankle_L_jnt.is"
		;
connectAttr "ankle_L_jnt.s" "toe_1_L_1_jnt.is";
connectAttr "toe_1_L_1_jnt.s" "toe_1_L_2_jnt.is";
connectAttr "toe_1_L_2_jnt.tx" "effector3.tx";
connectAttr "toe_1_L_2_jnt.ty" "effector3.ty";
connectAttr "toe_1_L_2_jnt.tz" "effector3.tz";
connectAttr "ankle_L_jnt.s" "toe_2_L_1_jnt.is";
connectAttr "toe_2_L_1_jnt.s" "toe_2_L_2_jnt.is";
connectAttr "toe_2_L_2_jnt.tx" "effector4.tx";
connectAttr "toe_2_L_2_jnt.ty" "effector4.ty";
connectAttr "toe_2_L_2_jnt.tz" "effector4.tz";
connectAttr "ankle_L_jnt.tx" "effector1.tx";
connectAttr "ankle_L_jnt.ty" "effector1.ty";
connectAttr "ankle_L_jnt.tz" "effector1.tz";
connectAttr "hips_rotaion_L_jnt.ro" "hips_rotaion_L_jnt_parentConstraint1.cro";
connectAttr "hips_rotaion_L_jnt.pim" "hips_rotaion_L_jnt_parentConstraint1.cpim"
		;
connectAttr "hips_rotaion_L_jnt.rp" "hips_rotaion_L_jnt_parentConstraint1.crp";
connectAttr "hips_rotaion_L_jnt.rpt" "hips_rotaion_L_jnt_parentConstraint1.crt";
connectAttr "hips_rotaion_L_jnt.jo" "hips_rotaion_L_jnt_parentConstraint1.cjo";
connectAttr "left_hip_cntrl.t" "hips_rotaion_L_jnt_parentConstraint1.tg[0].tt";
connectAttr "left_hip_cntrl.rp" "hips_rotaion_L_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "left_hip_cntrl.rpt" "hips_rotaion_L_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "left_hip_cntrl.r" "hips_rotaion_L_jnt_parentConstraint1.tg[0].tr";
connectAttr "left_hip_cntrl.ro" "hips_rotaion_L_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "left_hip_cntrl.s" "hips_rotaion_L_jnt_parentConstraint1.tg[0].ts";
connectAttr "left_hip_cntrl.pm" "hips_rotaion_L_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "hips_rotaion_L_jnt_parentConstraint1.w0" "hips_rotaion_L_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_jnt.s" "hips_rotaion_R_jnt.is";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.ctx" "hips_rotaion_R_jnt.tx";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.cty" "hips_rotaion_R_jnt.ty";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.ctz" "hips_rotaion_R_jnt.tz";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.crx" "hips_rotaion_R_jnt.rx";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.cry" "hips_rotaion_R_jnt.ry";
connectAttr "hips_rotaion_R_jnt_parentConstraint1.crz" "hips_rotaion_R_jnt.rz";
connectAttr "hips_rotaion_R_jnt.s" "upper_leg_R_jnt.is";
connectAttr "upper_leg_R_jnt.s" "|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.is"
		;
connectAttr "|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.s" "ankle_R_jnt.is"
		;
connectAttr "ankle_R_jnt.s" "toe_1_R_1_jnt.is";
connectAttr "toe_1_R_1_jnt.s" "toe_1_R_2_jnt.is";
connectAttr "toe_1_R_2_jnt.tx" "effector5.tx";
connectAttr "toe_1_R_2_jnt.ty" "effector5.ty";
connectAttr "toe_1_R_2_jnt.tz" "effector5.tz";
connectAttr "ankle_R_jnt.s" "toe_2_R_1_jnt.is";
connectAttr "toe_2_R_1_jnt.s" "toe_2_R_2_jnt.is";
connectAttr "toe_2_R_2_jnt.tx" "effector6.tx";
connectAttr "toe_2_R_2_jnt.ty" "effector6.ty";
connectAttr "toe_2_R_2_jnt.tz" "effector6.tz";
connectAttr "ankle_R_jnt.tx" "effector2.tx";
connectAttr "ankle_R_jnt.ty" "effector2.ty";
connectAttr "ankle_R_jnt.tz" "effector2.tz";
connectAttr "hips_rotaion_R_jnt.ro" "hips_rotaion_R_jnt_parentConstraint1.cro";
connectAttr "hips_rotaion_R_jnt.pim" "hips_rotaion_R_jnt_parentConstraint1.cpim"
		;
connectAttr "hips_rotaion_R_jnt.rp" "hips_rotaion_R_jnt_parentConstraint1.crp";
connectAttr "hips_rotaion_R_jnt.rpt" "hips_rotaion_R_jnt_parentConstraint1.crt";
connectAttr "hips_rotaion_R_jnt.jo" "hips_rotaion_R_jnt_parentConstraint1.cjo";
connectAttr "right_hip_cntrl.t" "hips_rotaion_R_jnt_parentConstraint1.tg[0].tt";
connectAttr "right_hip_cntrl.rp" "hips_rotaion_R_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "right_hip_cntrl.rpt" "hips_rotaion_R_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_hip_cntrl.r" "hips_rotaion_R_jnt_parentConstraint1.tg[0].tr";
connectAttr "right_hip_cntrl.ro" "hips_rotaion_R_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "right_hip_cntrl.s" "hips_rotaion_R_jnt_parentConstraint1.tg[0].ts";
connectAttr "right_hip_cntrl.pm" "hips_rotaion_R_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "hips_rotaion_R_jnt_parentConstraint1.w0" "hips_rotaion_R_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_jnt.ro" "base_jnt_parentConstraint1.cro";
connectAttr "base_jnt.pim" "base_jnt_parentConstraint1.cpim";
connectAttr "base_jnt.rp" "base_jnt_parentConstraint1.crp";
connectAttr "base_jnt.rpt" "base_jnt_parentConstraint1.crt";
connectAttr "base_jnt.jo" "base_jnt_parentConstraint1.cjo";
connectAttr "base_cntrl.t" "base_jnt_parentConstraint1.tg[0].tt";
connectAttr "base_cntrl.rp" "base_jnt_parentConstraint1.tg[0].trp";
connectAttr "base_cntrl.rpt" "base_jnt_parentConstraint1.tg[0].trt";
connectAttr "base_cntrl.r" "base_jnt_parentConstraint1.tg[0].tr";
connectAttr "base_cntrl.ro" "base_jnt_parentConstraint1.tg[0].tro";
connectAttr "base_cntrl.s" "base_jnt_parentConstraint1.tg[0].ts";
connectAttr "base_cntrl.pm" "base_jnt_parentConstraint1.tg[0].tpm";
connectAttr "base_jnt_parentConstraint1.w0" "base_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "root_jnt.ro" "root_jnt_parentConstraint1.cro";
connectAttr "root_jnt.pim" "root_jnt_parentConstraint1.cpim";
connectAttr "root_jnt.rp" "root_jnt_parentConstraint1.crp";
connectAttr "root_jnt.rpt" "root_jnt_parentConstraint1.crt";
connectAttr "root_jnt.jo" "root_jnt_parentConstraint1.cjo";
connectAttr "root_cntrl.t" "root_jnt_parentConstraint1.tg[0].tt";
connectAttr "root_cntrl.rp" "root_jnt_parentConstraint1.tg[0].trp";
connectAttr "root_cntrl.rpt" "root_jnt_parentConstraint1.tg[0].trt";
connectAttr "root_cntrl.r" "root_jnt_parentConstraint1.tg[0].tr";
connectAttr "root_cntrl.ro" "root_jnt_parentConstraint1.tg[0].tro";
connectAttr "root_cntrl.s" "root_jnt_parentConstraint1.tg[0].ts";
connectAttr "root_cntrl.pm" "root_jnt_parentConstraint1.tg[0].tpm";
connectAttr "root_jnt_parentConstraint1.w0" "root_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "root_cntrlShape.cr";
connectAttr "makeNurbCircle5.oc" "base_cntrlShape.cr";
connectAttr "transformGeometry3.og" "right_shoulder_cntrlShape.cr";
connectAttr "upper_leg_R_jnt.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ankle_R_jnt.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "ankle_R_jnt.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikRPsolver.msg" "ikHandle6.hsv";
connectAttr "transformGeometry1.og" "left_foot_cntrlShape.cr";
connectAttr "upper_leg_L_jnt.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ankle_L_jnt.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ankle_L_jnt.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "makeNurbCircle2.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry2.ig";
connectAttr "transformGeometry2.og" "transformGeometry3.ig";
connectAttr "left_wrist_cntrl.finger_1_1" "finger_1_L_1_jnt_rotateZ.i";
connectAttr "left_wrist_cntrl.finger_1_2" "finger_1_L_2_jnt_rotateZ.i";
connectAttr "left_wrist_cntrl.finger_2_1" "finger_2_L_1_jnt_rotateZ.i";
connectAttr "left_wrist_cntrl.finger_2_1" "finger_2_L_2_jnt_rotateZ.i";
connectAttr "unitConversion2.o" "blendWeighted1.i[0]";
connectAttr "unitConversion3.o" "blendWeighted1.i[1]";
connectAttr "blendWeighted1.o" "unitConversion1.i";
connectAttr "finger_2_L_2_jnt_rotateZ.o" "unitConversion2.i";
connectAttr "left_wrist_cntrl.finger_2_2" "animCurveUA1.i";
connectAttr "animCurveUA1.o" "unitConversion3.i";
connectAttr "unitConversion5.o" "blendWeighted2.i[0]";
connectAttr "unitConversion6.o" "blendWeighted2.i[1]";
connectAttr "blendWeighted2.o" "unitConversion4.i";
connectAttr "finger_3_L_1_jnt_rotateZ.o" "unitConversion5.i";
connectAttr "left_wrist_cntrl.finger_3_1" "animCurveUA2.i";
connectAttr "animCurveUA2.o" "unitConversion6.i";
connectAttr "left_wrist_cntrl.finger_3_2" "finger_3_L_2_jnt_rotateZ.i";
connectAttr "right_wrist_cntrl.finger_1_1" "finger_1_R_1_jnt_rotateZ.i";
connectAttr "right_wrist_cntrl.finger_1_2" "finger_1_R_2_jnt_rotateZ.i";
connectAttr "right_wrist_cntrl.finger_2_1" "finger_2_R_1_jnt_rotateZ.i";
connectAttr "right_wrist_cntrl.finger_2_2" "finger_2_R_2_jnt_rotateZ.i";
connectAttr "right_wrist_cntrl.finger_2_2" "finger_3_R_1_jnt_rotateZ.i";
connectAttr "unitConversion8.o" "blendWeighted3.i[0]";
connectAttr "unitConversion9.o" "blendWeighted3.i[1]";
connectAttr "blendWeighted3.o" "unitConversion7.i";
connectAttr "finger_3_R_1_jnt_rotateZ.o" "unitConversion8.i";
connectAttr "right_wrist_cntrl.finger_3_1" "animCurveUA3.i";
connectAttr "animCurveUA3.o" "unitConversion9.i";
connectAttr "right_wrist_cntrl.finger_3_2" "finger_3_R_2_jnt_rotateZ.i";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "finger_1_L_3_jnt.msg" ":hyperGraphLayout.hyp[12].dn";
connectAttr "finger_2_L_3_jnt.msg" ":hyperGraphLayout.hyp[14].dn";
connectAttr "finger_3_L_2_jnt.msg" ":hyperGraphLayout.hyp[15].dn";
// End of pit_droid_rig.ma
