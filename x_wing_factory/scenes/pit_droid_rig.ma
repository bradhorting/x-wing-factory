//Maya ASCII 2016 scene
//Name: pit_droid_rig.ma
//Last modified: Wed, Feb 03, 2016 02:52:13 PM
//Codeset: 1252
file -rdi 1 -ns "pit_droid_01" -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Brad/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
file -r -ns "pit_droid_01" -dr 1 -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Brad/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.2 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9BD920CC-49F2-78CA-7D14-BD95F7442712";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -31.949544842662586 15.90586674305692 53.317467690551752 ;
	setAttr ".r" -type "double3" -6.9383527224310901 -392.19999999978791 2.3491641808064373e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "88BDCA63-4928-5184-1A46-AC87F8242895";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 68.498603495878456;
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
createNode transform -n "Pit_droid_rig_grp";
	rename -uid "C10F8A9A-442F-5194-0B22-9C816FA06AA0";
createNode joint -n "root_jnt" -p "Pit_droid_rig_grp";
	rename -uid "1E779029-4950-D56F-D83E-DDADA54FA40D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".radi" 0.53477038882668704;
createNode joint -n "base_jnt" -p "root_jnt";
	rename -uid "B3876EC8-4A49-E0C1-7A21-7FB1C991BE7A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000042366430932 0.21903512932396318 90.000000161961566 ;
	setAttr ".bps" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".radi" 0.53477038882668704;
createNode joint -n "hips_jnt" -p "base_jnt";
	rename -uid "2B5DD506-4F6B-4076-E1F5-12A008C75285";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.9176601235455162e-013 -2.3566320867248147e-011 -1.4186437637050064 ;
	setAttr ".bps" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".radi" 0.65346762406978764;
createNode joint -n "spine_jnt" -p "hips_jnt";
	rename -uid "37349A08-467B-9F16-4E81-648E488CAA81";
	setAttr ".t" -type "double3" 3.9686617833365037 -9.8948627131627401e-015 1.6323498535201684e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8551305723630376e-011 -2.0425913489524864e-010 -10.379005603040904 ;
	setAttr ".bps" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".radi" 0.5;
createNode joint -n "neck_jnt" -p "spine_jnt";
	rename -uid "C4057EA8-4152-9378-8868-26815957424E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999899671 0 12.016684496069924 ;
	setAttr ".bps" -type "matrix" -2.7163740460492533e-016 1.0000000000000002 -1.1102230246251565e-016 0
		 -7.3941079828336181e-007 2.7755575618545006e-017 -0.999999999999727 0 -0.99999999999972666 -1.6653345369296574e-016 7.3941079846672602e-007 0
		 0.00053015921295216327 13.958286459864222 -0.24489254966697707 1;
	setAttr ".radi" 0.53363015781001755;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "DD322B67-4DE3-51C4-F711-5585BAF1E584";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999986485 89.999957637931871 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999945333 7.3935756700338494e-007 -7.39410798466524e-007 0
		 -7.393575670529496e-007 0.99999999999972689 3.1076657607342491e-013 0 7.3941079828336181e-007 2.3578361485476469e-013 0.999999999999727 0
		 0.00053022684097849232 15.527977633148014 -0.23391638452472163 1;
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -77.983315503933312 -89.999957637931843 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_L_jnt" -p "shoulder_rotaion_L_jnt";
	rename -uid "0CA02AFE-4756-ECB8-A261-6E92817E2367";
	setAttr ".t" -type "double3" 0.61540800671850637 -1.7763568394002505e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_L_1_jnt" -p "shoulder_L_jnt";
	rename -uid "B62B982B-4C37-B5A0-1062-CA9176261C64";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -70.752194903299284 80.655111224194101 19.010771080347968 ;
	setAttr ".bps" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_L_2_jnt" -p "elbow_L_1_jnt";
	rename -uid "155DD209-42D3-1B78-8646-CCB654815AAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.6343731364251618 -1.1518563880485999e-015 4.3021142204224816e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.931588839177223 -4.1374386936755132e-005 -81.169001957013748 ;
	setAttr ".bps" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "wrist_L_jnt" -p "elbow_L_2_jnt";
	rename -uid "223B3CC8-4347-5177-B97F-A88BA2064D39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "finger_1_L_1_jnt" -p "wrist_L_jnt";
	rename -uid "1DF56879-42F7-56A7-B38F-84B6642A5775";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.036508448910341801 -0.21456077893850048 0.12678485759744912 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.037346702607486e-015 -1.0417344510872298e-014 -75.302892230792068 ;
	setAttr ".bps" -type "matrix" 0.25370981709555573 -0.96728037750658913 -2.2665408897257206e-007 0
		 0.9672803775062031 0.25370981709565693 -8.6412960701329159e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_L_2_jnt" -p "finger_1_L_1_jnt";
	rename -uid "247D8079-4088-D473-56D0-94AC50109E93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.00025495603691472982 -0.21629288274596228 -0.12437019448493848 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.51755295374086e-015 -1.0336707925283787e-014 -72.054363855466022 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_L_2_jnt" -p "finger_2_L_1_jnt";
	rename -uid "4324937B-4151-C230-0595-4690E433A81A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.036508448910341801 -0.21456077893850048 0.12678485759744912 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.57724921581624 -0.33847569081367501 -128.68190405218326 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_L_2_jnt" -p "finger_3_L_1_jnt";
	rename -uid "070212AF-40D0-A78F-C520-FA848873DCCA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 77.983315503902261 89.999884238813436 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".radi" 0.5;
createNode joint -n "shoulder_R_jnt" -p "shoulder_rotaion_R_jnt";
	rename -uid "EF30DA58-45D3-5C91-F741-7E9562D617D0";
	setAttr ".t" -type "double3" 0.61540999999886736 -1.1938418165166094e-006 9.8431493783158976e-007 ;
	setAttr ".r" -type "double3" 0 0 -3.6284766853480392 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999938729876845 -1.9888695887774723 -90.000111098108547 ;
	setAttr ".bps" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_R_1_jnt" -p "shoulder_R_jnt";
	rename -uid "0E5F2295-4BFC-3949-99B2-2886B80FAA1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.47150271011917672 3.0316585800205997 79.166693581277599 ;
	setAttr ".bps" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".radi" 0.57976651899915221;
createNode joint -n "elbow_R_2_jnt" -p "elbow_R_1_jnt";
	rename -uid "DEE35B05-4B15-91AF-1649-7B89FD839AB2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.63437431585460669 -2.6645352591003757e-015 -1.2490009027033011e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.931932641131752 -0.00011115676831578335 98.831965630700864 ;
	setAttr ".bps" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "wrist_R_jnt" -p "elbow_R_2_jnt";
	rename -uid "7342DE5D-439C-E293-0E25-D4A5C3ED5B9C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0332133116374182e-020 -3.0332133116374152e-020 
		90.000000000000071 ;
	setAttr ".bps" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".radi" 0.60591808742984377;
createNode joint -n "finger_1_R_1_jnt" -p "wrist_R_jnt";
	rename -uid "3DEF5666-4B08-2DCC-8A0C-BD9055A927CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.033317926672826362 0.23027189288295613 -0.12678399798891371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3929954144972528e-005 1.0747496236166571e-005 104.696860311438 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_1_R_2_jnt" -p "finger_1_R_1_jnt";
	rename -uid "4A1FC004-4034-ED40-B03F-6EBDD37F6581";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0029318889128923252 0.23200186608138476 0.1243710288127297 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7947082180369802e-005 1.3052347984737459e-005 107.94556818951823 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_2_R_2_jnt" -p "finger_2_R_1_jnt";
	rename -uid "5313616A-435B-FB67-A807-85BD4BB87887";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.033317926672826362 0.23027189288295613 -0.12678399798891371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.57721496612382 0.33849827960269058 51.318425313098913 ;
	setAttr ".radi" 0.5;
createNode joint -n "finger_3_R_2_jnt" -p "finger_3_R_1_jnt";
	rename -uid "42B92F9A-4EC3-3D8D-FE41-A7AAD00020E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
createNode joint -n "hips_2_jnt" -p "hips_jnt";
	rename -uid "A66EAD98-4371-90D7-3C19-CDAEB0C06B71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0712539755581045e-014 1.7575995482662731e-014 8.7465253740246751e-015 ;
	setAttr ".bps" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".radi" 0.65346762406978764;
createNode parentConstraint -n "hips_2_jnt_parentConstraint1" -p "hips_2_jnt";
	rename -uid "E273E870-4DC1-760D-DFEC-D390E81FE0F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hips_2_cntrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.00053032694184830726 -0.024483617387920376 
		-0.018051803393654621 ;
	setAttr ".tg[0].tor" -type "double3" 89.999998788723985 1.637678893029022 89.999957616566562 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 -9.5416640443905503e-015 3.180554681463516e-015 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 0 -1.0842021724855044e-019 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 -1.5902773407317584e-014 
		3.1805546814635183e-015 ;
	setAttr -k on ".w0";
createNode joint -n "hips_rotaion_L_jnt" -p "base_jnt";
	rename -uid "0AAC4287-48CE-1351-CE1C-FF95E987FDE7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.780964870689502 -89.999957637931814 0 ;
	setAttr ".bps" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".radi" 0.5;
createNode joint -n "upper_leg_L_jnt" -p "hips_rotaion_L_jnt";
	rename -uid "637C21DF-49BB-C499-B170-D09EB4B319FA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.37918785665224186 0 0 ;
	setAttr ".r" -type "double3" -2.061249541613962e-006 3.7163321121260601e-010 1.0859041460813896 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".radi" 0.62909122828823716;
createNode joint -n "knee_l_jnt" -p "upper_leg_L_jnt";
	rename -uid "329FF46D-4C46-C7C4-EDD0-22A7D4C2372D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 ;
	setAttr ".r" -type "double3" -4.8404485679263607e-024 -2.0169156229406645e-008 -4.6907177819330816e-024 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "ankle_L_jnt" -p "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt";
	rename -uid "41D754E6-44F9-06C4-00D1-3D9FE7945660";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 ;
	setAttr ".r" -type "double3" -3.8311349468436617e-005 -0.00014980557440022653 0.00048662721117612661 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "toe_1_L_1_jnt" -p "ankle_L_jnt";
	rename -uid "85C05FB8-4FA1-02E4-1330-61BFEC0EA821";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
createNode ikEffector -n "effector1" -p "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.780964870677082 89.999973550422439 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".radi" 0.5;
createNode joint -n "upper_leg_R_jnt" -p "hips_rotaion_R_jnt";
	rename -uid "232E7A8C-4365-37B6-B51E-F2ADB7254010";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 ;
	setAttr ".r" -type "double3" 3.0592252808247163e-005 -5.1955069272841565e-014 2.4386027893012901e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.0487432581116128e-012 6.048737684210645e-012 -90.000052797934117 ;
	setAttr ".radi" 0.62909122828823716;
createNode joint -n "knee_l_jnt" -p "upper_leg_R_jnt";
	rename -uid "10F59423-41F4-C086-D229-FAAA90CF54F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 ;
	setAttr ".r" -type "double3" 3.7918823786011065e-019 -1.5245605771328173e-017 -2.323921352989972e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.001817462494998 -0.82926075767551455 4.4732709805461521e-008 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "ankle_R_jnt" -p "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt";
	rename -uid "4BE44B43-40BF-0597-15D0-1FA1A8D5DD34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 ;
	setAttr ".r" -type "double3" 1.4628360066886691e-005 -5.3388269951900695e-005 0.00017342571405954175 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.83423105309583 -89.998185229790636 89.336525808861552 ;
	setAttr ".radi" 0.66991681713169837;
createNode joint -n "toe_1_R_1_jnt" -p "ankle_R_jnt";
	rename -uid "7688A437-4668-BFFD-BD7A-49A280715AB2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
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
createNode ikEffector -n "effector2" -p "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt";
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
	setAttr ".lr" -type "double3" 4.7708320221952729e-014 3.1805546814635168e-015 -3.180554681463514e-015 ;
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
createNode transform -n "root_cntrl" -p "Pit_droid_rig_grp";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
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
createNode transform -n "hips_2_cntrl" -p "upper_hip_cntrl";
	rename -uid "B6BD599B-418A-1EB6-45F0-47BA4DAA9FF6";
	setAttr ".t" -type "double3" 3.3486268967755829e-019 0 -1.0715606069681865e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" 0 9.4828914508607998 0 ;
	setAttr ".sp" -type "double3" 0 9.4828914508607998 0 ;
createNode nurbsCurve -n "hips_2_cntrlShape" -p "hips_2_cntrl";
	rename -uid "940BBE99-4984-EFBD-2FA5-20BC8FAED7ED";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "neck_cntrl" -p "hips_2_cntrl";
	rename -uid "2E2FCF0D-4AD4-3996-F964-1EA2D89DE4F2";
	setAttr ".t" -type "double3" 3.3486268967755829e-019 0 -1.0715606069681865e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
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
createNode transform -n "right_shoulder_cntrl" -p "hips_2_cntrl";
	rename -uid "2FA17019-4351-EE40-F528-60A04235CF11";
	addAttr -ci true -sn "arm_rotation" -ln "arm_rotation" -min -10 -max 10 -at "double";
	setAttr ".t" -type "double3" -3.3486268967755829e-019 0 1.0715606069681865e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
createNode transform -n "left_shoulder_cntrl" -p "hips_2_cntrl";
	rename -uid "2AB4FE2D-4715-D7DB-2578-FAAFF4DC613F";
	setAttr ".t" -type "double3" -3.3486268967755829e-019 0 1.0715606069681865e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
createNode fosterParent -n "pit_droid_01RNfosterParent1";
	rename -uid "BEA042C4-4D80-EC99-BDCA-039A5A469E39";
createNode mesh -n "body_mainShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "3A7733BA-486E-1064-3103-7BB95F39BC9B";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "left_1_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "707E3FB1-4295-D110-DF02-308352016CEA";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_wristShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "D889AE77-483E-6058-04CA-389F41C53130";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_wristShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "192BEAF9-4FB0-7BAE-872E-B3B10E839EDD";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_1_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "DCDA7679-47EC-0D7C-7F3A-11887FA7B098";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_upper_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "ED07D8FC-40AB-E85C-7D7C-149BBA67DDB0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_lower_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "8DD35F04-4BB6-4BEB-A00A-67B2EC351318";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_toe_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "66F6BBBC-46E4-3F18-3C85-48B657200F77";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_toe_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "7AA064E4-469E-D474-22C6-BE90E88841FA";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_foorShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "1DFAE1FA-496E-80D6-BF3D-AEA3EE402F5C";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_upper_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "1AE767AA-4580-AB13-F52E-E091F59C4DA0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "hips_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "42F639BF-470C-CE60-3F68-2B9872C7ECDF";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "hips_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "2252D045-44E2-AB2E-8DD2-DFA950468A03";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_toe_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "FA142138-4A2A-FFE7-DC00-32BB4B2CD02D";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_toe_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "5CAA150D-4A54-06E9-DC86-D18F3117C066";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_footShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "E7825DFC-44E6-993A-28AA-A9996CE6F99C";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "lef_lower_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "788FEDF1-42F9-1A3E-4BE9-2799D6B756F6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_3_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "9D9B8613-446F-320D-EFF3-76BC27B04565";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_3_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "9ED5FBE6-43B9-518A-3278-C89348925599";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_2_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "2D863CF2-4152-8889-9418-AAAF06455FF4";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_2_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "CD479253-4052-83A1-3821-52ACB18D24EA";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_1_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "5E15DC97-44BC-DEBB-E7C3-37B20B21C1D8";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_lower_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "70494017-4B5E-8813-5EC6-57949F881937";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_lower_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "D4F788B3-4960-9F97-0543-86803E4DAEC0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_1_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "045B4B22-4EEE-5E77-7457-E49E3BCE001A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_2_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "6136083E-43E4-1E7A-9766-678C11A1E77A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_2_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "C6C10B42-4CF7-3CE9-4F9B-9EAD81B07887";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_3_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "915B254D-4671-ACB8-A94C-7381A1DD06A0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_3_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "49D87C1B-4A15-5B06-6C94-06A42B941740";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_upper_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "63B9B9C9-4FEB-8877-9C8D-B7A2579384B5";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_upper_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "61904440-42A0-69B0-CD95-F8A789A73799";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "neckShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "8C0EDC52-4A6E-B11E-C166-A4B2FE6D2091";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "camera_headShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "86416889-4C8C-1BC0-AC09-298A9972782D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "camera_accesorieShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "24A59351-4FD3-44F2-3DE4-848ACBCD8068";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "camera_accesorie1ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "E4DDA640-4E8B-8789-AB04-3BA79AD8835C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "camera_accesorieShape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "1F744184-4ADF-E34B-031D-66B187B5F8BF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "camera_eyeShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "42E0BB56-4783-6DF0-6C3F-5CB0F1717B04";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5BB6A932-44FA-0E5B-4653-C5B83B53C892";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E6451F91-4C74-90D9-657D-689D9EE92492";
createNode displayLayer -n "defaultLayer";
	rename -uid "14319512-458D-FA03-175B-D1830E2650B2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "850FF609-43BB-1D63-FDFE-919F87C63E66";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8CECA02D-46D4-F07A-5F9B-A4800CA252E1";
	setAttr ".g" yes;
createNode reference -n "pit_droid_01RN";
	rename -uid "61B6ECFA-4F7C-7F55-B924-FEBE75E13BD8";
	setAttr -s 136 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"pit_droid_01RN"
		"pit_droid_01RN" 410
		2 "|pit_droid_01:right_arm" "visibility" " 1"
		2 "|pit_droid_01:left_arm" "visibility" " 1"
		2 "|pit_droid_01:right_leg" "visibility" " 1"
		2 "|pit_droid_01:left_leg" "visibility" " 1"
		2 "|pit_droid_01:body_main|pit_droid_01:shoulder_right" "visibility" " 1"
		
		2 "|pit_droid_01:body_main|pit_droid_01:shoulder_left" "visibility" " 1"
		2 "|pit_droid_01:hips" "visibility" " 1"
		2 "|pit_droid_01:hips|pit_droid_01:hipsShape" "intermediateObject" " 0"
		2 "|pit_droid_01:hips|pit_droid_01:hipsShape" "dispResolution" " 1"
		2 "|pit_droid_01:hips|pit_droid_01:hipsShape" "displaySmoothMesh" " 0"
		2 "|pit_droid_01:foot_left" "visibility" " 1"
		2 "|pit_droid_01:right_foot" "visibility" " 1"
		2 "|pit_droid_01:right_foot|pit_droid_01:right_footShape" "intermediateObject" 
		" 0"
		2 "|pit_droid_01:right_foot|pit_droid_01:right_footShape" "uvPivot" " -type \"double2\" 0.56364519894123077 0.45205541513860226"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "rotateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "rotateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "rotateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "scaleX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "scaleY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" "scaleZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" "scaleZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "translateX"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "translateY"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "translateZ"
		
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "rotateX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "rotateY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "rotateZ"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "scaleX"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "scaleY"
		8 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" "scaleZ"
		9 "|pit_droid_01:hips" "translateX"
		9 "|pit_droid_01:hips" "translateY"
		9 "|pit_droid_01:hips" "translateZ"
		9 "|pit_droid_01:hips" "rotateX"
		9 "|pit_droid_01:hips" "rotateY"
		9 "|pit_droid_01:hips" "rotateZ"
		9 "|pit_droid_01:hips" "scaleX"
		9 "|pit_droid_01:hips" "scaleY"
		9 "|pit_droid_01:hips" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" "scaleZ"
		9 "|pit_droid_01:right_foot" "translateX"
		9 "|pit_droid_01:right_foot" "translateY"
		9 "|pit_droid_01:right_foot" "translateZ"
		9 "|pit_droid_01:right_foot" "rotateX"
		9 "|pit_droid_01:right_foot" "rotateY"
		9 "|pit_droid_01:right_foot" "rotateZ"
		9 "|pit_droid_01:right_foot" "scaleX"
		9 "|pit_droid_01:right_foot" "scaleY"
		9 "|pit_droid_01:right_foot" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "translateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleZ"
		"pit_droid_01RN" 254
		0 "|pit_droid_01RNfosterParent1|camera_eyeShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|camera_accesorieShape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|camera_accesorie1ShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|camera_accesorieShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|camera_headShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|neckShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_upper_armShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_upper_armShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_3_finger_2ShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_3_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_2_finger_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_2_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_1_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_lower_armShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_lower_armShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_1_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_2_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_2_finger_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_3_finger_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_3_finger_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|lef_lower_legShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_footShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_toe_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_toe_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|hips_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|hips_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_upper_legShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_foorShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_toe_Shape1Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_toe_Shape2Deformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_lower_legShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_upper_legShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_1_finger_2ShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|right_wristShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_wristShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|left_1_finger_2ShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2" 
		"-s -r "
		0 "|pit_droid_01RNfosterParent1|body_mainShapeDeformed" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" 
		"-s -r "
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head" "visibility" 
		" 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_headShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_headShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye" 
		"visibility" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye|pit_droid_01:camera_eyeShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye|pit_droid_01:camera_eyeShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2" 
		"visibility" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2|pit_droid_01:camera_accesorieShape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2|pit_droid_01:camera_accesorieShape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1" 
		"visibility" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1|pit_droid_01:camera_accesorie1Shape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1|pit_droid_01:camera_accesorie1Shape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie" 
		"visibility" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie|pit_droid_01:camera_accesorieShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie|pit_droid_01:camera_accesorieShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck" "visibility" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck|pit_droid_01:neckShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck|pit_droid_01:neckShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm|pit_droid_01:right_upper_armShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm|pit_droid_01:right_upper_armShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm|pit_droid_01:left_upper_armShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm|pit_droid_01:left_upper_armShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2|pit_droid_01:right_3_finger_2Shape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2|pit_droid_01:right_3_finger_2Shape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1|pit_droid_01:right_3_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1|pit_droid_01:right_3_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2|pit_droid_01:right_2_finger_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2|pit_droid_01:right_2_finger_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1|pit_droid_01:right_2_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1|pit_droid_01:right_2_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1|pit_droid_01:right_1_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1|pit_droid_01:right_1_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm|pit_droid_01:right_lower_armShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm|pit_droid_01:right_lower_armShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm|pit_droid_01:left_lower_armShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm|pit_droid_01:left_lower_armShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1|pit_droid_01:left_1_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1|pit_droid_01:left_1_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1|pit_droid_01:left_2_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1|pit_droid_01:left_2_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2|pit_droid_01:left_2_finger_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2|pit_droid_01:left_2_finger_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1|pit_droid_01:left_3_finger_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1|pit_droid_01:left_3_finger_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2|pit_droid_01:left_3_finger_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2|pit_droid_01:left_3_finger_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg|pit_droid_01:lef_lower_legShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg|pit_droid_01:lef_lower_legShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot|pit_droid_01:left_footShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot|pit_droid_01:left_footShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2|pit_droid_01:left_toe_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2|pit_droid_01:left_toe_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1|pit_droid_01:left_toe_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1|pit_droid_01:left_toe_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1|pit_droid_01:hips_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1|pit_droid_01:hips_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2|pit_droid_01:hips_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2|pit_droid_01:hips_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg|pit_droid_01:left_upper_legShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg|pit_droid_01:left_upper_legShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor|pit_droid_01:right_foorShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor|pit_droid_01:right_foorShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1|pit_droid_01:right_toe_Shape1" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1|pit_droid_01:right_toe_Shape1" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2|pit_droid_01:right_toe_Shape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2|pit_droid_01:right_toe_Shape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg|pit_droid_01:right_lower_legShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg|pit_droid_01:right_lower_legShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg|pit_droid_01:right_upper_legShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg|pit_droid_01:right_upper_legShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2|pit_droid_01:right_1_finger_2Shape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2|pit_droid_01:right_1_finger_2Shape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist|pit_droid_01:right_wristShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist|pit_droid_01:right_wristShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist|pit_droid_01:left_wristShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist|pit_droid_01:left_wristShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2|pit_droid_01:left_1_finger_2Shape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2|pit_droid_01:left_1_finger_2Shape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "visibility" 
		" 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main|pit_droid_01:body_mainShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main|pit_droid_01:body_mainShape" 
		"vertexColorSource" " 2"
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_headShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[1]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye|pit_droid_01:camera_eyeShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[2]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2|pit_droid_01:camera_accesorieShape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[3]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1|pit_droid_01:camera_accesorie1Shape.worldMesh" 
		"pit_droid_01RN.placeHolderList[4]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie|pit_droid_01:camera_accesorieShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[5]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:neck|pit_droid_01:neckShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[6]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_arm|pit_droid_01:right_upper_armShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[7]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_arm|pit_droid_01:left_upper_armShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[8]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_2|pit_droid_01:right_3_finger_2Shape.worldMesh" 
		"pit_droid_01RN.placeHolderList[9]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_3_finger_1|pit_droid_01:right_3_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[10]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_2|pit_droid_01:right_2_finger_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[11]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_2_finger_1|pit_droid_01:right_2_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[12]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_1|pit_droid_01:right_1_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[13]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm|pit_droid_01:right_lower_armShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[14]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_lower_arm|pit_droid_01:left_lower_armShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[15]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_1|pit_droid_01:left_1_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[16]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_1|pit_droid_01:left_2_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[17]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_2_finger_2|pit_droid_01:left_2_finger_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[18]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_1|pit_droid_01:left_3_finger_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[19]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_3_finger_2|pit_droid_01:left_3_finger_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[20]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg|pit_droid_01:lef_lower_legShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[21]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot|pit_droid_01:left_footShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[22]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_2|pit_droid_01:left_toe_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[23]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_toe_1|pit_droid_01:left_toe_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[24]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1|pit_droid_01:hips_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[25]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_2|pit_droid_01:hips_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[26]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg|pit_droid_01:left_upper_legShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[27]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_foor|pit_droid_01:right_foorShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[28]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_1|pit_droid_01:right_toe_Shape1.worldMesh" 
		"pit_droid_01RN.placeHolderList[29]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_toe_2|pit_droid_01:right_toe_Shape2.worldMesh" 
		"pit_droid_01RN.placeHolderList[30]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_leg|pit_droid_01:right_lower_legShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[31]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_upper_leg|pit_droid_01:right_upper_legShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[32]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_1_finger_2|pit_droid_01:right_1_finger_2Shape.worldMesh" 
		"pit_droid_01RN.placeHolderList[33]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_wrist|pit_droid_01:right_wristShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[34]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_wrist|pit_droid_01:left_wristShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[35]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_1_finger_2|pit_droid_01:left_1_finger_2Shape.worldMesh" 
		"pit_droid_01RN.placeHolderList[36]" ""
		5 3 "pit_droid_01RN" "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main|pit_droid_01:body_mainShape.worldMesh" 
		"pit_droid_01RN.placeHolderList[37]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[38]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[39]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[40]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[41]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[42]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:Head_mia_matierial_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[43]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[44]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[45]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[46]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[47]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[48]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[49]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[50]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[51]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:main_body_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[52]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[53]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[54]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[55]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[56]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[57]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[58]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[59]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[60]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[61]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[62]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[63]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[64]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[65]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[66]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[67]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[68]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[69]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[70]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[71]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[72]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[73]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[74]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[75]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[76]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[77]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[78]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[79]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[80]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[81]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[82]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[83]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[84]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[85]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[86]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[87]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[88]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[89]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[90]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[91]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[92]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[93]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[94]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[95]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[96]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[97]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[98]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[99]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[100]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[101]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[102]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[103]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[104]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[105]" 
		""
		5 4 "pit_droid_01RN" "pit_droid_01:arms_pit_droid_SG.groupNodes" "pit_droid_01RN.placeHolderList[106]" 
		""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[107]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[108]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[109]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[110]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[111]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[112]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[113]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[114]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[115]" ""
		5 3 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.memberWireframeColor" 
		"pit_droid_01RN.placeHolderList[116]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[117]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[118]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[119]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[120]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[121]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[122]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[123]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[124]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[125]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[126]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[127]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[128]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[129]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[130]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[131]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[132]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[133]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[134]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[135]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:leg_pit_droid_mia_material_SG.groupNodes" 
		"pit_droid_01RN.placeHolderList[136]" "";
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
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
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
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n"
		+ "                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1371\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1371\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 15 100 -ps 2 85 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1371\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1371\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".ktv[0]"  0 55.792896555523143;
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
createNode skinCluster -n "skinCluster1";
	rename -uid "079E14F0-4B1A-1589-8185-DA925CBD03F6";
	setAttr -s 568 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".wl[482].w[0]"  1;
	setAttr ".wl[483].w[0]"  1;
	setAttr ".wl[484].w[0]"  1;
	setAttr ".wl[485].w[0]"  1;
	setAttr ".wl[486].w[0]"  1;
	setAttr ".wl[487].w[0]"  1;
	setAttr ".wl[488].w[0]"  1;
	setAttr ".wl[489].w[0]"  1;
	setAttr ".wl[490].w[0]"  1;
	setAttr ".wl[491].w[0]"  1;
	setAttr ".wl[492].w[0]"  1;
	setAttr ".wl[493].w[0]"  1;
	setAttr ".wl[494].w[0]"  1;
	setAttr ".wl[495].w[0]"  1;
	setAttr ".wl[496].w[0]"  1;
	setAttr ".wl[497].w[0]"  1;
	setAttr ".wl[498].w[0]"  1;
	setAttr ".wl[499].w[0]"  1;
	setAttr ".wl[500].w[0]"  1;
	setAttr ".wl[501].w[0]"  1;
	setAttr ".wl[502].w[0]"  1;
	setAttr ".wl[503].w[0]"  1;
	setAttr ".wl[504].w[0]"  1;
	setAttr ".wl[505].w[0]"  1;
	setAttr ".wl[506].w[0]"  1;
	setAttr ".wl[507].w[0]"  1;
	setAttr ".wl[508].w[0]"  1;
	setAttr ".wl[509].w[0]"  1;
	setAttr ".wl[510].w[0]"  1;
	setAttr ".wl[511].w[0]"  1;
	setAttr ".wl[512].w[0]"  1;
	setAttr ".wl[513].w[0]"  1;
	setAttr ".wl[514].w[0]"  1;
	setAttr ".wl[515].w[0]"  1;
	setAttr ".wl[516].w[0]"  1;
	setAttr ".wl[517].w[0]"  1;
	setAttr ".wl[518].w[0]"  1;
	setAttr ".wl[519].w[0]"  1;
	setAttr ".wl[520].w[0]"  1;
	setAttr ".wl[521].w[0]"  1;
	setAttr ".wl[522].w[0]"  1;
	setAttr ".wl[523].w[0]"  1;
	setAttr ".wl[524].w[0]"  1;
	setAttr ".wl[525].w[0]"  1;
	setAttr ".wl[526].w[0]"  1;
	setAttr ".wl[527].w[0]"  1;
	setAttr ".wl[528].w[0]"  1;
	setAttr ".wl[529].w[0]"  1;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr ".wl[533].w[0]"  1;
	setAttr ".wl[534].w[0]"  1;
	setAttr ".wl[535].w[0]"  1;
	setAttr ".wl[536].w[0]"  1;
	setAttr ".wl[537].w[0]"  1;
	setAttr ".wl[538].w[0]"  1;
	setAttr ".wl[539].w[0]"  1;
	setAttr ".wl[540].w[0]"  1;
	setAttr ".wl[541].w[0]"  1;
	setAttr ".wl[542].w[0]"  1;
	setAttr ".wl[543].w[0]"  1;
	setAttr ".wl[544].w[0]"  1;
	setAttr ".wl[545].w[0]"  1;
	setAttr ".wl[546].w[0]"  1;
	setAttr ".wl[547].w[0]"  1;
	setAttr ".wl[548].w[0]"  1;
	setAttr ".wl[549].w[0]"  1;
	setAttr ".wl[550].w[0]"  1;
	setAttr ".wl[551].w[0]"  1;
	setAttr ".wl[552].w[0]"  1;
	setAttr ".wl[553].w[0]"  1;
	setAttr ".wl[554].w[0]"  1;
	setAttr ".wl[555].w[0]"  1;
	setAttr ".wl[556].w[0]"  1;
	setAttr ".wl[557].w[0]"  1;
	setAttr ".wl[558].w[0]"  1;
	setAttr ".wl[559].w[0]"  1;
	setAttr ".wl[560].w[0]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 0
		 -0.00054188052904291279 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	rename -uid "67B0C48D-48A0-EEC0-294D-EEA267296FD5";
createNode objectSet -n "skinCluster1Set";
	rename -uid "29CB0DDD-4F05-C2DE-16A5-D39BE3E9B212";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "7C75AF35-466F-5C20-CFF9-E9AA6CFF89C5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "DC4DC6D6-44ED-7541-5451-329293C4CF9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "26635549-410A-029E-9158-CEAC4E7768AF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "364990A0-40D1-2796-BE9D-648627E7678E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C81F82DD-4A38-F74D-B9B1-3B97EC8EED70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "379EC2DB-49C7-7D8E-5AAC-A3AC69C92063";
	setAttr -s 6 ".wm";
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.4270601946365207e-016 -3.5415591209739587e-017
		 -1.1102230246251563e-016 0 0.54477555261311572 4.4408920985006262e-016 1.942122135854818e-012 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99450666551436295 0.10467326424404154 9.1644373744515447e-013 8.7071843229536268e-012 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 2.3592239273284279e-013 -1.1102230874177066e-016
		 5.3231530294795e-011 0 1.5696911732837915 -0.010976165142302596 -5.9512131725435527e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000018483929864 0.49999981516063313 -0.49999981516051523 0.50000018483941655 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "5779D180-4454-D586-C14B-82B2163B410F";
	setAttr -s 769 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".wl[482].w[0]"  1;
	setAttr ".wl[483].w[0]"  1;
	setAttr ".wl[484].w[0]"  1;
	setAttr ".wl[485].w[0]"  1;
	setAttr ".wl[486].w[0]"  1;
	setAttr ".wl[487].w[0]"  1;
	setAttr ".wl[488].w[0]"  1;
	setAttr ".wl[489].w[0]"  1;
	setAttr ".wl[490].w[0]"  1;
	setAttr ".wl[491].w[0]"  1;
	setAttr ".wl[492].w[0]"  1;
	setAttr ".wl[493].w[0]"  1;
	setAttr ".wl[494].w[0]"  1;
	setAttr ".wl[495].w[0]"  1;
	setAttr ".wl[496].w[0]"  1;
	setAttr ".wl[497].w[0]"  1;
	setAttr ".wl[498].w[0]"  1;
	setAttr ".wl[499].w[0]"  1;
	setAttr ".wl[500].w[0]"  1;
	setAttr ".wl[501].w[0]"  1;
	setAttr ".wl[502].w[0]"  1;
	setAttr ".wl[503].w[0]"  1;
	setAttr ".wl[504].w[0]"  1;
	setAttr ".wl[505].w[0]"  1;
	setAttr ".wl[506].w[0]"  1;
	setAttr ".wl[507].w[0]"  1;
	setAttr ".wl[508].w[0]"  1;
	setAttr ".wl[509].w[0]"  1;
	setAttr ".wl[510].w[0]"  1;
	setAttr ".wl[511].w[0]"  1;
	setAttr ".wl[512].w[0]"  1;
	setAttr ".wl[513].w[0]"  1;
	setAttr ".wl[514].w[0]"  1;
	setAttr ".wl[515].w[0]"  1;
	setAttr ".wl[516].w[0]"  1;
	setAttr ".wl[517].w[0]"  1;
	setAttr ".wl[518].w[0]"  1;
	setAttr ".wl[519].w[0]"  1;
	setAttr ".wl[520].w[0]"  1;
	setAttr ".wl[521].w[0]"  1;
	setAttr ".wl[522].w[0]"  1;
	setAttr ".wl[523].w[0]"  1;
	setAttr ".wl[524].w[0]"  1;
	setAttr ".wl[525].w[0]"  1;
	setAttr ".wl[526].w[0]"  1;
	setAttr ".wl[527].w[0]"  1;
	setAttr ".wl[528].w[0]"  1;
	setAttr ".wl[529].w[0]"  1;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr ".wl[533].w[0]"  1;
	setAttr ".wl[534].w[0]"  1;
	setAttr ".wl[535].w[0]"  1;
	setAttr ".wl[536].w[0]"  1;
	setAttr ".wl[537].w[0]"  1;
	setAttr ".wl[538].w[0]"  1;
	setAttr ".wl[539].w[0]"  1;
	setAttr ".wl[540].w[0]"  1;
	setAttr ".wl[541].w[0]"  1;
	setAttr ".wl[542].w[0]"  1;
	setAttr ".wl[543].w[0]"  1;
	setAttr ".wl[544].w[0]"  1;
	setAttr ".wl[545].w[0]"  1;
	setAttr ".wl[546].w[0]"  1;
	setAttr ".wl[547].w[0]"  1;
	setAttr ".wl[548].w[0]"  1;
	setAttr ".wl[549].w[0]"  1;
	setAttr ".wl[550].w[0]"  1;
	setAttr ".wl[551].w[0]"  1;
	setAttr ".wl[552].w[0]"  1;
	setAttr ".wl[553].w[0]"  1;
	setAttr ".wl[554].w[0]"  1;
	setAttr ".wl[555].w[0]"  1;
	setAttr ".wl[556].w[0]"  1;
	setAttr ".wl[557].w[0]"  1;
	setAttr ".wl[558].w[0]"  1;
	setAttr ".wl[559].w[0]"  1;
	setAttr ".wl[560].w[0]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".wl[568].w[0]"  1;
	setAttr ".wl[569].w[0]"  1;
	setAttr ".wl[570].w[0]"  1;
	setAttr ".wl[571].w[0]"  1;
	setAttr ".wl[572].w[0]"  1;
	setAttr ".wl[573].w[0]"  1;
	setAttr ".wl[574].w[0]"  1;
	setAttr ".wl[575].w[0]"  1;
	setAttr ".wl[576].w[0]"  1;
	setAttr ".wl[577].w[0]"  1;
	setAttr ".wl[578].w[0]"  1;
	setAttr ".wl[579].w[0]"  1;
	setAttr ".wl[580].w[0]"  1;
	setAttr ".wl[581].w[0]"  1;
	setAttr ".wl[582].w[0]"  1;
	setAttr ".wl[583].w[0]"  1;
	setAttr ".wl[584].w[0]"  1;
	setAttr ".wl[585].w[0]"  1;
	setAttr ".wl[586].w[0]"  1;
	setAttr ".wl[587].w[0]"  1;
	setAttr ".wl[588].w[0]"  1;
	setAttr ".wl[589].w[0]"  1;
	setAttr ".wl[590].w[0]"  1;
	setAttr ".wl[591].w[0]"  1;
	setAttr ".wl[592].w[0]"  1;
	setAttr ".wl[593].w[0]"  1;
	setAttr ".wl[594].w[0]"  1;
	setAttr ".wl[595].w[0]"  1;
	setAttr ".wl[596].w[0]"  1;
	setAttr ".wl[597].w[0]"  1;
	setAttr ".wl[598].w[0]"  1;
	setAttr ".wl[599].w[0]"  1;
	setAttr ".wl[600].w[0]"  1;
	setAttr ".wl[601].w[0]"  1;
	setAttr ".wl[602].w[0]"  1;
	setAttr ".wl[603].w[0]"  1;
	setAttr ".wl[604].w[0]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr ".wl[606].w[0]"  1;
	setAttr ".wl[607].w[0]"  1;
	setAttr ".wl[608].w[0]"  1;
	setAttr ".wl[609].w[0]"  1;
	setAttr ".wl[610].w[0]"  1;
	setAttr ".wl[611].w[0]"  1;
	setAttr ".wl[612].w[0]"  1;
	setAttr ".wl[613].w[0]"  1;
	setAttr ".wl[614].w[0]"  1;
	setAttr ".wl[615].w[0]"  1;
	setAttr ".wl[616].w[0]"  1;
	setAttr ".wl[617].w[0]"  1;
	setAttr ".wl[618].w[0]"  1;
	setAttr ".wl[619].w[0]"  1;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[0]"  1;
	setAttr ".wl[623].w[0]"  1;
	setAttr ".wl[624].w[0]"  1;
	setAttr ".wl[625].w[0]"  1;
	setAttr ".wl[626].w[0]"  1;
	setAttr ".wl[627].w[0]"  1;
	setAttr ".wl[628].w[0]"  1;
	setAttr ".wl[629].w[0]"  1;
	setAttr ".wl[630].w[0]"  1;
	setAttr ".wl[631].w[0]"  1;
	setAttr ".wl[632].w[0]"  1;
	setAttr ".wl[633].w[0]"  1;
	setAttr ".wl[634].w[0]"  1;
	setAttr ".wl[635].w[0]"  1;
	setAttr ".wl[636].w[0]"  1;
	setAttr ".wl[637].w[0]"  1;
	setAttr ".wl[638].w[0]"  1;
	setAttr ".wl[639].w[0]"  1;
	setAttr ".wl[640].w[0]"  1;
	setAttr ".wl[641].w[0]"  1;
	setAttr ".wl[642].w[0]"  1;
	setAttr ".wl[643].w[0]"  1;
	setAttr ".wl[644].w[0]"  1;
	setAttr ".wl[645].w[0]"  1;
	setAttr ".wl[646].w[0]"  1;
	setAttr ".wl[647].w[0]"  1;
	setAttr ".wl[648].w[0]"  1;
	setAttr ".wl[649].w[0]"  1;
	setAttr ".wl[650].w[0]"  1;
	setAttr ".wl[651].w[0]"  1;
	setAttr ".wl[652].w[0]"  1;
	setAttr ".wl[653].w[0]"  1;
	setAttr ".wl[654].w[0]"  1;
	setAttr ".wl[655].w[0]"  1;
	setAttr ".wl[656].w[0]"  1;
	setAttr ".wl[657].w[0]"  1;
	setAttr ".wl[658].w[0]"  1;
	setAttr ".wl[659].w[0]"  1;
	setAttr ".wl[660].w[0]"  1;
	setAttr ".wl[661].w[0]"  1;
	setAttr ".wl[662].w[0]"  1;
	setAttr ".wl[663].w[0]"  1;
	setAttr ".wl[664].w[0]"  1;
	setAttr ".wl[665].w[0]"  1;
	setAttr ".wl[666].w[0]"  1;
	setAttr ".wl[667].w[0]"  1;
	setAttr ".wl[668].w[0]"  1;
	setAttr ".wl[669].w[0]"  1;
	setAttr ".wl[670].w[0]"  1;
	setAttr ".wl[671].w[0]"  1;
	setAttr ".wl[672].w[0]"  1;
	setAttr ".wl[673].w[0]"  1;
	setAttr ".wl[674].w[0]"  1;
	setAttr ".wl[675].w[0]"  1;
	setAttr ".wl[676].w[0]"  1;
	setAttr ".wl[677].w[0]"  1;
	setAttr ".wl[678].w[0]"  1;
	setAttr ".wl[679].w[0]"  1;
	setAttr ".wl[680].w[0]"  1;
	setAttr ".wl[681].w[0]"  1;
	setAttr ".wl[682].w[0]"  1;
	setAttr ".wl[683].w[0]"  1;
	setAttr ".wl[684].w[0]"  1;
	setAttr ".wl[685].w[0]"  1;
	setAttr ".wl[686].w[0]"  1;
	setAttr ".wl[687].w[0]"  1;
	setAttr ".wl[688].w[0]"  1;
	setAttr ".wl[689].w[0]"  1;
	setAttr ".wl[690].w[0]"  1;
	setAttr ".wl[691].w[0]"  1;
	setAttr ".wl[692].w[0]"  1;
	setAttr ".wl[693].w[0]"  1;
	setAttr ".wl[694].w[0]"  1;
	setAttr ".wl[695].w[0]"  1;
	setAttr ".wl[696].w[0]"  1;
	setAttr ".wl[697].w[0]"  1;
	setAttr ".wl[698].w[0]"  1;
	setAttr ".wl[699].w[0]"  1;
	setAttr ".wl[700].w[0]"  1;
	setAttr ".wl[701].w[0]"  1;
	setAttr ".wl[702].w[0]"  1;
	setAttr ".wl[703].w[0]"  1;
	setAttr ".wl[704].w[0]"  1;
	setAttr ".wl[705].w[0]"  1;
	setAttr ".wl[706].w[0]"  1;
	setAttr ".wl[707].w[0]"  1;
	setAttr ".wl[708].w[0]"  1;
	setAttr ".wl[709].w[0]"  1;
	setAttr ".wl[710].w[0]"  1;
	setAttr ".wl[711].w[0]"  1;
	setAttr ".wl[712].w[0]"  1;
	setAttr ".wl[713].w[0]"  1;
	setAttr ".wl[714].w[0]"  1;
	setAttr ".wl[715].w[0]"  1;
	setAttr ".wl[716].w[0]"  1;
	setAttr ".wl[717].w[0]"  1;
	setAttr ".wl[718].w[0]"  1;
	setAttr ".wl[719].w[0]"  1;
	setAttr ".wl[720].w[0]"  1;
	setAttr ".wl[721].w[0]"  1;
	setAttr ".wl[722].w[0]"  1;
	setAttr ".wl[723].w[0]"  1;
	setAttr ".wl[724].w[0]"  1;
	setAttr ".wl[725].w[0]"  1;
	setAttr ".wl[726].w[0]"  1;
	setAttr ".wl[727].w[0]"  1;
	setAttr ".wl[728].w[0]"  1;
	setAttr ".wl[729].w[0]"  1;
	setAttr ".wl[730].w[0]"  1;
	setAttr ".wl[731].w[0]"  1;
	setAttr ".wl[732].w[0]"  1;
	setAttr ".wl[733].w[0]"  1;
	setAttr ".wl[734].w[0]"  1;
	setAttr ".wl[735].w[0]"  1;
	setAttr ".wl[736].w[0]"  1;
	setAttr ".wl[737].w[0]"  1;
	setAttr ".wl[738].w[0]"  1;
	setAttr ".wl[739].w[0]"  1;
	setAttr ".wl[740].w[0]"  1;
	setAttr ".wl[741].w[0]"  1;
	setAttr ".wl[742].w[0]"  1;
	setAttr ".wl[743].w[0]"  1;
	setAttr ".wl[744].w[0]"  1;
	setAttr ".wl[745].w[0]"  1;
	setAttr ".wl[746].w[0]"  1;
	setAttr ".wl[747].w[0]"  1;
	setAttr ".wl[748].w[0]"  1;
	setAttr ".wl[749].w[0]"  1;
	setAttr ".wl[750].w[0]"  1;
	setAttr ".wl[751].w[0]"  1;
	setAttr ".wl[752].w[0]"  1;
	setAttr ".wl[753].w[0]"  1;
	setAttr ".wl[754].w[0]"  1;
	setAttr ".wl[755].w[0]"  1;
	setAttr ".wl[756].w[0]"  1;
	setAttr ".wl[757].w[0]"  1;
	setAttr ".wl[758].w[0]"  1;
	setAttr ".wl[759].w[0]"  1;
	setAttr ".wl[760].w[0]"  1;
	setAttr ".wl[761].w[0]"  1;
	setAttr ".wl[762].w[0]"  1;
	setAttr ".wl[763].w[0]"  1;
	setAttr ".wl[764].w[0]"  1;
	setAttr ".wl[765].w[0]"  1;
	setAttr ".wl[766].w[0]"  1;
	setAttr ".wl[767].w[0]"  1;
	setAttr ".wl[768].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 0
		 -0.00054188052904291279 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "97091C61-47C6-82CD-3198-318A8C6C34ED";
createNode objectSet -n "skinCluster2Set";
	rename -uid "C3D8954B-4D12-3B8D-006C-4286DC6E32A8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "4E448E7B-48B3-BC26-C65F-E9A08556A6EF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "693BE40D-4F44-86B1-19BB-1D94B74BD4A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "4C0F9875-48BE-0278-CC4D-B4BFE360EF26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "A66B8BFC-4D1E-59AD-8C7D-828710E32846";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "D4B5BB77-42D3-9BBF-69C2-F3AAEC56AF98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "854ED6D0-4393-53A4-431E-09BDC534D3F9";
	setAttr -s 262 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 0
		 -0.00054188052904291279 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.065935015602858194 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak3";
	rename -uid "E9BE5393-4DD8-0992-C834-4599A3E47622";
createNode objectSet -n "skinCluster3Set";
	rename -uid "163398FD-4A25-7DB9-EC55-D98FB4573C21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "6084B053-4841-2F0A-F1FD-E886C1B26BB4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "1D050DEF-4EDC-1C40-C449-F5A16ED87FAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "E0316E7C-4A56-5D41-834B-3383D660435A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "D2F29468-4BBC-0C14-FA95-C4BB882F6F3E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "648E8FC8-44D9-C5FF-0E64-D4BCD68B34DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "8757F35F-4D59-7BBB-CB75-7DB5AC656B22";
	setAttr -s 162 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 0
		 -0.00054188052904291279 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1149268398596759 -8.8817841970012523e-016 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
	rename -uid "95F96E5D-4049-7069-8035-A29F3E2BA9C4";
createNode objectSet -n "skinCluster4Set";
	rename -uid "9AC34CAC-4B75-C374-5DAC-3FAFC9ED6E34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "E054E517-4CB3-47D7-46BD-0E80D7ED54A9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "BD56B30A-4888-6A6C-F730-6E87E736F93B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "0A067D8F-4678-CE18-6866-76BE82650881";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "B089BD99-4655-0FF0-8313-719909271888";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "4E5BB41E-4774-7CEC-A91D-0BA2429BBB27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "27ABD560-41D5-6217-79B9-BF92EF710F2A";
	setAttr -s 482 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 0
		 -0.00054188052904291279 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263786235 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
	rename -uid "49951791-484E-FC0C-2C07-A0B8BF41A249";
createNode objectSet -n "skinCluster5Set";
	rename -uid "4F925D99-4C9E-F1F2-B6DA-E992B6CE8AE3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "4E5970E6-4E1B-BF38-2462-9A8DBD535E1C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "FB3630C7-4AF4-F2D9-1B7C-E587E00CFFDC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "8979BB93-450A-5745-4C84-10BFC5703A33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "C9250AF7-4CEE-40E5-DED5-478B0D8AB08C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "606CFD82-46CA-8B2A-5935-EDA6C7D5C411";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "F8E1F02F-4925-3118-5026-EDA5D0E18E6A";
	setAttr -s 110 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -1.6653343317014785e-016 -7.394107984667257e-007 -0.99999999999972655 0
		 0.99999999999999978 -1.1102250331411547e-016 -2.7163732251376168e-016 0 2.7755698755171339e-017 -0.99999999999972622 7.3941079828336149e-007 0
		 -13.958286459864219 -0.244892549274903 0.0005303402891514528 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak6";
	rename -uid "A3AF9ADB-4620-0236-61A0-589E3BD3FAD2";
createNode objectSet -n "skinCluster6Set";
	rename -uid "6CB1D821-466C-799A-89DC-569BC59B8FFB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "C119581F-4BC4-87BF-36B5-F3A73DA0C3F6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "508B73BA-44DB-87A8-A460-4AB042A9DF44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "4A2F91BF-4CB2-7CAE-0D9C-67A980CBDFD6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "690FC3FD-4840-8CE6-AC27-46AC9CBF9E94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "AE9AA7D1-4BBE-8721-E4B9-A6B58B3467EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "2D6F4D84-4D31-AC62-6B1E-3393854724C7";
	setAttr -s 639 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".wl[482].w[0]"  1;
	setAttr ".wl[483].w[0]"  1;
	setAttr ".wl[484].w[0]"  1;
	setAttr ".wl[485].w[0]"  1;
	setAttr ".wl[486].w[0]"  1;
	setAttr ".wl[487].w[0]"  1;
	setAttr ".wl[488].w[0]"  1;
	setAttr ".wl[489].w[0]"  1;
	setAttr ".wl[490].w[0]"  1;
	setAttr ".wl[491].w[0]"  1;
	setAttr ".wl[492].w[0]"  1;
	setAttr ".wl[493].w[0]"  1;
	setAttr ".wl[494].w[0]"  1;
	setAttr ".wl[495].w[0]"  1;
	setAttr ".wl[496].w[0]"  1;
	setAttr ".wl[497].w[0]"  1;
	setAttr ".wl[498].w[0]"  1;
	setAttr ".wl[499].w[0]"  1;
	setAttr ".wl[500].w[0]"  1;
	setAttr ".wl[501].w[0]"  1;
	setAttr ".wl[502].w[0]"  1;
	setAttr ".wl[503].w[0]"  1;
	setAttr ".wl[504].w[0]"  1;
	setAttr ".wl[505].w[0]"  1;
	setAttr ".wl[506].w[0]"  1;
	setAttr ".wl[507].w[0]"  1;
	setAttr ".wl[508].w[0]"  1;
	setAttr ".wl[509].w[0]"  1;
	setAttr ".wl[510].w[0]"  1;
	setAttr ".wl[511].w[0]"  1;
	setAttr ".wl[512].w[0]"  1;
	setAttr ".wl[513].w[0]"  1;
	setAttr ".wl[514].w[0]"  1;
	setAttr ".wl[515].w[0]"  1;
	setAttr ".wl[516].w[0]"  1;
	setAttr ".wl[517].w[0]"  1;
	setAttr ".wl[518].w[0]"  1;
	setAttr ".wl[519].w[0]"  1;
	setAttr ".wl[520].w[0]"  1;
	setAttr ".wl[521].w[0]"  1;
	setAttr ".wl[522].w[0]"  1;
	setAttr ".wl[523].w[0]"  1;
	setAttr ".wl[524].w[0]"  1;
	setAttr ".wl[525].w[0]"  1;
	setAttr ".wl[526].w[0]"  1;
	setAttr ".wl[527].w[0]"  1;
	setAttr ".wl[528].w[0]"  1;
	setAttr ".wl[529].w[0]"  1;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr ".wl[533].w[0]"  1;
	setAttr ".wl[534].w[0]"  1;
	setAttr ".wl[535].w[0]"  1;
	setAttr ".wl[536].w[0]"  1;
	setAttr ".wl[537].w[0]"  1;
	setAttr ".wl[538].w[0]"  1;
	setAttr ".wl[539].w[0]"  1;
	setAttr ".wl[540].w[0]"  1;
	setAttr ".wl[541].w[0]"  1;
	setAttr ".wl[542].w[0]"  1;
	setAttr ".wl[543].w[0]"  1;
	setAttr ".wl[544].w[0]"  1;
	setAttr ".wl[545].w[0]"  1;
	setAttr ".wl[546].w[0]"  1;
	setAttr ".wl[547].w[0]"  1;
	setAttr ".wl[548].w[0]"  1;
	setAttr ".wl[549].w[0]"  1;
	setAttr ".wl[550].w[0]"  1;
	setAttr ".wl[551].w[0]"  1;
	setAttr ".wl[552].w[0]"  1;
	setAttr ".wl[553].w[0]"  1;
	setAttr ".wl[554].w[0]"  1;
	setAttr ".wl[555].w[0]"  1;
	setAttr ".wl[556].w[0]"  1;
	setAttr ".wl[557].w[0]"  1;
	setAttr ".wl[558].w[0]"  1;
	setAttr ".wl[559].w[0]"  1;
	setAttr ".wl[560].w[0]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".wl[568].w[0]"  1;
	setAttr ".wl[569].w[0]"  1;
	setAttr ".wl[570].w[0]"  1;
	setAttr ".wl[571].w[0]"  1;
	setAttr ".wl[572].w[0]"  1;
	setAttr ".wl[573].w[0]"  1;
	setAttr ".wl[574].w[0]"  1;
	setAttr ".wl[575].w[0]"  1;
	setAttr ".wl[576].w[0]"  1;
	setAttr ".wl[577].w[0]"  1;
	setAttr ".wl[578].w[0]"  1;
	setAttr ".wl[579].w[0]"  1;
	setAttr ".wl[580].w[0]"  1;
	setAttr ".wl[581].w[0]"  1;
	setAttr ".wl[582].w[0]"  1;
	setAttr ".wl[583].w[0]"  1;
	setAttr ".wl[584].w[0]"  1;
	setAttr ".wl[585].w[0]"  1;
	setAttr ".wl[586].w[0]"  1;
	setAttr ".wl[587].w[0]"  1;
	setAttr ".wl[588].w[0]"  1;
	setAttr ".wl[589].w[0]"  1;
	setAttr ".wl[590].w[0]"  1;
	setAttr ".wl[591].w[0]"  1;
	setAttr ".wl[592].w[0]"  1;
	setAttr ".wl[593].w[0]"  1;
	setAttr ".wl[594].w[0]"  1;
	setAttr ".wl[595].w[0]"  1;
	setAttr ".wl[596].w[0]"  1;
	setAttr ".wl[597].w[0]"  1;
	setAttr ".wl[598].w[0]"  1;
	setAttr ".wl[599].w[0]"  1;
	setAttr ".wl[600].w[0]"  1;
	setAttr ".wl[601].w[0]"  1;
	setAttr ".wl[602].w[0]"  1;
	setAttr ".wl[603].w[0]"  1;
	setAttr ".wl[604].w[0]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr ".wl[606].w[0]"  1;
	setAttr ".wl[607].w[0]"  1;
	setAttr ".wl[608].w[0]"  1;
	setAttr ".wl[609].w[0]"  1;
	setAttr ".wl[610].w[0]"  1;
	setAttr ".wl[611].w[0]"  1;
	setAttr ".wl[612].w[0]"  1;
	setAttr ".wl[613].w[0]"  1;
	setAttr ".wl[614].w[0]"  1;
	setAttr ".wl[615].w[0]"  1;
	setAttr ".wl[616].w[0]"  1;
	setAttr ".wl[617].w[0]"  1;
	setAttr ".wl[618].w[0]"  1;
	setAttr ".wl[619].w[0]"  1;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[0]"  1;
	setAttr ".wl[623].w[0]"  1;
	setAttr ".wl[624].w[0]"  1;
	setAttr ".wl[625].w[0]"  1;
	setAttr ".wl[626].w[0]"  1;
	setAttr ".wl[627].w[0]"  1;
	setAttr ".wl[628].w[0]"  1;
	setAttr ".wl[629].w[0]"  1;
	setAttr ".wl[630].w[0]"  1;
	setAttr ".wl[631].w[0]"  1;
	setAttr ".wl[632].w[0]"  1;
	setAttr ".wl[633].w[0]"  1;
	setAttr ".wl[634].w[0]"  1;
	setAttr ".wl[635].w[0]"  1;
	setAttr ".wl[636].w[0]"  1;
	setAttr ".wl[637].w[0]"  1;
	setAttr ".wl[638].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -2.1132119580060456e-008 7.3912627994963784e-007 0.99999999999972644 0
		 0.99959153704469972 0.028578996984048501 2.7163733843047623e-016 0 -0.028578996984040528 0.99959153704442638 -7.3942830884337032e-007 0
		 -9.4550603266803233 -0.25226737943801369 -0.00053034028986518645 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak7";
	rename -uid "E99E5096-4736-23CD-A6FF-A5BEC3657924";
createNode objectSet -n "skinCluster7Set";
	rename -uid "5097E156-4F74-68C6-6F32-A68D157E303C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "38456659-489B-E2BE-15E6-DB97B451D5E9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "FAFB8420-4C49-2535-C90D-879F32CDFE69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "84BBA639-47B4-E5FA-7F83-EBBFFF44F748";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "FB287A3F-4465-092B-BC7C-748688268E91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "89E5CE3C-4642-A0CC-F685-869C87392AA1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId15";
	rename -uid "48E6D6E0-424C-2F75-F88A-81BD108C33E2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "4FE1C8F5-4678-188A-20F5-63BE4A138A25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:631]";
createNode tweak -n "tweak8";
	rename -uid "BE32EFA5-4156-B2A5-DD1D-9CAA2300454D";
createNode objectSet -n "tweakSet8";
	rename -uid "C473C162-4776-F383-3FE3-E0B132D0CDAA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId17";
	rename -uid "90FFE42B-4A1C-409E-F4B0-3DBA1A437C5B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "9A7C2DB9-4859-8C9F-134C-2580D5272790";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId18";
	rename -uid "CE2F263C-4B6B-B043-6F16-46924F346C7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "234EC7F7-4070-1BE4-A89D-5C826B7E2FC0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1015]";
createNode skinCluster -n "skinCluster8";
	rename -uid "9D583CF5-4B1C-0F8D-D477-F8A8C8B8C3F4";
	setAttr -s 1076 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".wl[482].w[0]"  1;
	setAttr ".wl[483].w[0]"  1;
	setAttr ".wl[484].w[0]"  1;
	setAttr ".wl[485].w[0]"  1;
	setAttr ".wl[486].w[0]"  1;
	setAttr ".wl[487].w[0]"  1;
	setAttr ".wl[488].w[0]"  1;
	setAttr ".wl[489].w[0]"  1;
	setAttr ".wl[490].w[0]"  1;
	setAttr ".wl[491].w[0]"  1;
	setAttr ".wl[492].w[0]"  1;
	setAttr ".wl[493].w[0]"  1;
	setAttr ".wl[494].w[0]"  1;
	setAttr ".wl[495].w[0]"  1;
	setAttr ".wl[496].w[0]"  1;
	setAttr ".wl[497].w[0]"  1;
	setAttr ".wl[498].w[0]"  1;
	setAttr ".wl[499].w[0]"  1;
	setAttr ".wl[500].w[0]"  1;
	setAttr ".wl[501].w[0]"  1;
	setAttr ".wl[502].w[0]"  1;
	setAttr ".wl[503].w[0]"  1;
	setAttr ".wl[504].w[0]"  1;
	setAttr ".wl[505].w[0]"  1;
	setAttr ".wl[506].w[0]"  1;
	setAttr ".wl[507].w[0]"  1;
	setAttr ".wl[508].w[0]"  1;
	setAttr ".wl[509].w[0]"  1;
	setAttr ".wl[510].w[0]"  1;
	setAttr ".wl[511].w[0]"  1;
	setAttr ".wl[512].w[0]"  1;
	setAttr ".wl[513].w[0]"  1;
	setAttr ".wl[514].w[0]"  1;
	setAttr ".wl[515].w[0]"  1;
	setAttr ".wl[516].w[0]"  1;
	setAttr ".wl[517].w[0]"  1;
	setAttr ".wl[518].w[0]"  1;
	setAttr ".wl[519].w[0]"  1;
	setAttr ".wl[520].w[0]"  1;
	setAttr ".wl[521].w[0]"  1;
	setAttr ".wl[522].w[0]"  1;
	setAttr ".wl[523].w[0]"  1;
	setAttr ".wl[524].w[0]"  1;
	setAttr ".wl[525].w[0]"  1;
	setAttr ".wl[526].w[0]"  1;
	setAttr ".wl[527].w[0]"  1;
	setAttr ".wl[528].w[0]"  1;
	setAttr ".wl[529].w[0]"  1;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr ".wl[533].w[0]"  1;
	setAttr ".wl[534].w[0]"  1;
	setAttr ".wl[535].w[0]"  1;
	setAttr ".wl[536].w[0]"  1;
	setAttr ".wl[537].w[0]"  1;
	setAttr ".wl[538].w[0]"  1;
	setAttr ".wl[539].w[0]"  1;
	setAttr ".wl[540].w[0]"  1;
	setAttr ".wl[541].w[0]"  1;
	setAttr ".wl[542].w[0]"  1;
	setAttr ".wl[543].w[0]"  1;
	setAttr ".wl[544].w[0]"  1;
	setAttr ".wl[545].w[0]"  1;
	setAttr ".wl[546].w[0]"  1;
	setAttr ".wl[547].w[0]"  1;
	setAttr ".wl[548].w[0]"  1;
	setAttr ".wl[549].w[0]"  1;
	setAttr ".wl[550].w[0]"  1;
	setAttr ".wl[551].w[0]"  1;
	setAttr ".wl[552].w[0]"  1;
	setAttr ".wl[553].w[0]"  1;
	setAttr ".wl[554].w[0]"  1;
	setAttr ".wl[555].w[0]"  1;
	setAttr ".wl[556].w[0]"  1;
	setAttr ".wl[557].w[0]"  1;
	setAttr ".wl[558].w[0]"  1;
	setAttr ".wl[559].w[0]"  1;
	setAttr ".wl[560].w[0]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".wl[568].w[0]"  1;
	setAttr ".wl[569].w[0]"  1;
	setAttr ".wl[570].w[0]"  1;
	setAttr ".wl[571].w[0]"  1;
	setAttr ".wl[572].w[0]"  1;
	setAttr ".wl[573].w[0]"  1;
	setAttr ".wl[574].w[0]"  1;
	setAttr ".wl[575].w[0]"  1;
	setAttr ".wl[576].w[0]"  1;
	setAttr ".wl[577].w[0]"  1;
	setAttr ".wl[578].w[0]"  1;
	setAttr ".wl[579].w[0]"  1;
	setAttr ".wl[580].w[0]"  1;
	setAttr ".wl[581].w[0]"  1;
	setAttr ".wl[582].w[0]"  1;
	setAttr ".wl[583].w[0]"  1;
	setAttr ".wl[584].w[0]"  1;
	setAttr ".wl[585].w[0]"  1;
	setAttr ".wl[586].w[0]"  1;
	setAttr ".wl[587].w[0]"  1;
	setAttr ".wl[588].w[0]"  1;
	setAttr ".wl[589].w[0]"  1;
	setAttr ".wl[590].w[0]"  1;
	setAttr ".wl[591].w[0]"  1;
	setAttr ".wl[592].w[0]"  1;
	setAttr ".wl[593].w[0]"  1;
	setAttr ".wl[594].w[0]"  1;
	setAttr ".wl[595].w[0]"  1;
	setAttr ".wl[596].w[0]"  1;
	setAttr ".wl[597].w[0]"  1;
	setAttr ".wl[598].w[0]"  1;
	setAttr ".wl[599].w[0]"  1;
	setAttr ".wl[600].w[0]"  1;
	setAttr ".wl[601].w[0]"  1;
	setAttr ".wl[602].w[0]"  1;
	setAttr ".wl[603].w[0]"  1;
	setAttr ".wl[604].w[0]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr ".wl[606].w[0]"  1;
	setAttr ".wl[607].w[0]"  1;
	setAttr ".wl[608].w[0]"  1;
	setAttr ".wl[609].w[0]"  1;
	setAttr ".wl[610].w[0]"  1;
	setAttr ".wl[611].w[0]"  1;
	setAttr ".wl[612].w[0]"  1;
	setAttr ".wl[613].w[0]"  1;
	setAttr ".wl[614].w[0]"  1;
	setAttr ".wl[615].w[0]"  1;
	setAttr ".wl[616].w[0]"  1;
	setAttr ".wl[617].w[0]"  1;
	setAttr ".wl[618].w[0]"  1;
	setAttr ".wl[619].w[0]"  1;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[0]"  1;
	setAttr ".wl[623].w[0]"  1;
	setAttr ".wl[624].w[0]"  1;
	setAttr ".wl[625].w[0]"  1;
	setAttr ".wl[626].w[0]"  1;
	setAttr ".wl[627].w[0]"  1;
	setAttr ".wl[628].w[0]"  1;
	setAttr ".wl[629].w[0]"  1;
	setAttr ".wl[630].w[0]"  1;
	setAttr ".wl[631].w[0]"  1;
	setAttr ".wl[632].w[0]"  1;
	setAttr ".wl[633].w[0]"  1;
	setAttr ".wl[634].w[0]"  1;
	setAttr ".wl[635].w[0]"  1;
	setAttr ".wl[636].w[0]"  1;
	setAttr ".wl[637].w[0]"  1;
	setAttr ".wl[638].w[0]"  1;
	setAttr ".wl[639].w[0]"  1;
	setAttr ".wl[640].w[0]"  1;
	setAttr ".wl[641].w[0]"  1;
	setAttr ".wl[642].w[0]"  1;
	setAttr ".wl[643].w[0]"  1;
	setAttr ".wl[644].w[0]"  1;
	setAttr ".wl[645].w[0]"  1;
	setAttr ".wl[646].w[0]"  1;
	setAttr ".wl[647].w[0]"  1;
	setAttr ".wl[648].w[0]"  1;
	setAttr ".wl[649].w[0]"  1;
	setAttr ".wl[650].w[0]"  1;
	setAttr ".wl[651].w[0]"  1;
	setAttr ".wl[652].w[0]"  1;
	setAttr ".wl[653].w[0]"  1;
	setAttr ".wl[654].w[0]"  1;
	setAttr ".wl[655].w[0]"  1;
	setAttr ".wl[656].w[0]"  1;
	setAttr ".wl[657].w[0]"  1;
	setAttr ".wl[658].w[0]"  1;
	setAttr ".wl[659].w[0]"  1;
	setAttr ".wl[660].w[0]"  1;
	setAttr ".wl[661].w[0]"  1;
	setAttr ".wl[662].w[0]"  1;
	setAttr ".wl[663].w[0]"  1;
	setAttr ".wl[664].w[0]"  1;
	setAttr ".wl[665].w[0]"  1;
	setAttr ".wl[666].w[0]"  1;
	setAttr ".wl[667].w[0]"  1;
	setAttr ".wl[668].w[0]"  1;
	setAttr ".wl[669].w[0]"  1;
	setAttr ".wl[670].w[0]"  1;
	setAttr ".wl[671].w[0]"  1;
	setAttr ".wl[672].w[0]"  1;
	setAttr ".wl[673].w[0]"  1;
	setAttr ".wl[674].w[0]"  1;
	setAttr ".wl[675].w[0]"  1;
	setAttr ".wl[676].w[0]"  1;
	setAttr ".wl[677].w[0]"  1;
	setAttr ".wl[678].w[0]"  1;
	setAttr ".wl[679].w[0]"  1;
	setAttr ".wl[680].w[0]"  1;
	setAttr ".wl[681].w[0]"  1;
	setAttr ".wl[682].w[0]"  1;
	setAttr ".wl[683].w[0]"  1;
	setAttr ".wl[684].w[0]"  1;
	setAttr ".wl[685].w[0]"  1;
	setAttr ".wl[686].w[0]"  1;
	setAttr ".wl[687].w[0]"  1;
	setAttr ".wl[688].w[0]"  1;
	setAttr ".wl[689].w[0]"  1;
	setAttr ".wl[690].w[0]"  1;
	setAttr ".wl[691].w[0]"  1;
	setAttr ".wl[692].w[0]"  1;
	setAttr ".wl[693].w[0]"  1;
	setAttr ".wl[694].w[0]"  1;
	setAttr ".wl[695].w[0]"  1;
	setAttr ".wl[696].w[0]"  1;
	setAttr ".wl[697].w[0]"  1;
	setAttr ".wl[698].w[0]"  1;
	setAttr ".wl[699].w[0]"  1;
	setAttr ".wl[700].w[0]"  1;
	setAttr ".wl[701].w[0]"  1;
	setAttr ".wl[702].w[0]"  1;
	setAttr ".wl[703].w[0]"  1;
	setAttr ".wl[704].w[0]"  1;
	setAttr ".wl[705].w[0]"  1;
	setAttr ".wl[706].w[0]"  1;
	setAttr ".wl[707].w[0]"  1;
	setAttr ".wl[708].w[0]"  1;
	setAttr ".wl[709].w[0]"  1;
	setAttr ".wl[710].w[0]"  1;
	setAttr ".wl[711].w[0]"  1;
	setAttr ".wl[712].w[0]"  1;
	setAttr ".wl[713].w[0]"  1;
	setAttr ".wl[714].w[0]"  1;
	setAttr ".wl[715].w[0]"  1;
	setAttr ".wl[716].w[0]"  1;
	setAttr ".wl[717].w[0]"  1;
	setAttr ".wl[718].w[0]"  1;
	setAttr ".wl[719].w[0]"  1;
	setAttr ".wl[720].w[0]"  1;
	setAttr ".wl[721].w[0]"  1;
	setAttr ".wl[722].w[0]"  1;
	setAttr ".wl[723].w[0]"  1;
	setAttr ".wl[724].w[0]"  1;
	setAttr ".wl[725].w[0]"  1;
	setAttr ".wl[726].w[0]"  1;
	setAttr ".wl[727].w[0]"  1;
	setAttr ".wl[728].w[0]"  1;
	setAttr ".wl[729].w[0]"  1;
	setAttr ".wl[730].w[0]"  1;
	setAttr ".wl[731].w[0]"  1;
	setAttr ".wl[732].w[0]"  1;
	setAttr ".wl[733].w[0]"  1;
	setAttr ".wl[734].w[0]"  1;
	setAttr ".wl[735].w[0]"  1;
	setAttr ".wl[736].w[0]"  1;
	setAttr ".wl[737].w[0]"  1;
	setAttr ".wl[738].w[0]"  1;
	setAttr ".wl[739].w[0]"  1;
	setAttr ".wl[740].w[0]"  1;
	setAttr ".wl[741].w[0]"  1;
	setAttr ".wl[742].w[0]"  1;
	setAttr ".wl[743].w[0]"  1;
	setAttr ".wl[744].w[0]"  1;
	setAttr ".wl[745].w[0]"  1;
	setAttr ".wl[746].w[0]"  1;
	setAttr ".wl[747].w[0]"  1;
	setAttr ".wl[748].w[0]"  1;
	setAttr ".wl[749].w[0]"  1;
	setAttr ".wl[750].w[0]"  1;
	setAttr ".wl[751].w[0]"  1;
	setAttr ".wl[752].w[0]"  1;
	setAttr ".wl[753].w[0]"  1;
	setAttr ".wl[754].w[0]"  1;
	setAttr ".wl[755].w[0]"  1;
	setAttr ".wl[756].w[0]"  1;
	setAttr ".wl[757].w[0]"  1;
	setAttr ".wl[758].w[0]"  1;
	setAttr ".wl[759].w[0]"  1;
	setAttr ".wl[760].w[0]"  1;
	setAttr ".wl[761].w[0]"  1;
	setAttr ".wl[762].w[0]"  1;
	setAttr ".wl[763].w[0]"  1;
	setAttr ".wl[764].w[0]"  1;
	setAttr ".wl[765].w[0]"  1;
	setAttr ".wl[766].w[0]"  1;
	setAttr ".wl[767].w[0]"  1;
	setAttr ".wl[768].w[0]"  1;
	setAttr ".wl[769].w[0]"  1;
	setAttr ".wl[770].w[0]"  1;
	setAttr ".wl[771].w[0]"  1;
	setAttr ".wl[772].w[0]"  1;
	setAttr ".wl[773].w[0]"  1;
	setAttr ".wl[774].w[0]"  1;
	setAttr ".wl[775].w[0]"  1;
	setAttr ".wl[776].w[0]"  1;
	setAttr ".wl[777].w[0]"  1;
	setAttr ".wl[778].w[0]"  1;
	setAttr ".wl[779].w[0]"  1;
	setAttr ".wl[780].w[0]"  1;
	setAttr ".wl[781].w[0]"  1;
	setAttr ".wl[782].w[0]"  1;
	setAttr ".wl[783].w[0]"  1;
	setAttr ".wl[784].w[0]"  1;
	setAttr ".wl[785].w[0]"  1;
	setAttr ".wl[786].w[0]"  1;
	setAttr ".wl[787].w[0]"  1;
	setAttr ".wl[788].w[0]"  1;
	setAttr ".wl[789].w[0]"  1;
	setAttr ".wl[790].w[0]"  1;
	setAttr ".wl[791].w[0]"  1;
	setAttr ".wl[792].w[0]"  1;
	setAttr ".wl[793].w[0]"  1;
	setAttr ".wl[794].w[0]"  1;
	setAttr ".wl[795].w[0]"  1;
	setAttr ".wl[796].w[0]"  1;
	setAttr ".wl[797].w[0]"  1;
	setAttr ".wl[798].w[0]"  1;
	setAttr ".wl[799].w[0]"  1;
	setAttr ".wl[800].w[0]"  1;
	setAttr ".wl[801].w[0]"  1;
	setAttr ".wl[802].w[0]"  1;
	setAttr ".wl[803].w[0]"  1;
	setAttr ".wl[804].w[0]"  1;
	setAttr ".wl[805].w[0]"  1;
	setAttr ".wl[806].w[0]"  1;
	setAttr ".wl[807].w[0]"  1;
	setAttr ".wl[808].w[0]"  1;
	setAttr ".wl[809].w[0]"  1;
	setAttr ".wl[810].w[0]"  1;
	setAttr ".wl[811].w[0]"  1;
	setAttr ".wl[812].w[0]"  1;
	setAttr ".wl[813].w[0]"  1;
	setAttr ".wl[814].w[0]"  1;
	setAttr ".wl[815].w[0]"  1;
	setAttr ".wl[816].w[0]"  1;
	setAttr ".wl[817].w[0]"  1;
	setAttr ".wl[818].w[0]"  1;
	setAttr ".wl[819].w[0]"  1;
	setAttr ".wl[820].w[0]"  1;
	setAttr ".wl[821].w[0]"  1;
	setAttr ".wl[822].w[0]"  1;
	setAttr ".wl[823].w[0]"  1;
	setAttr ".wl[824].w[0]"  1;
	setAttr ".wl[825].w[0]"  1;
	setAttr ".wl[826].w[0]"  1;
	setAttr ".wl[827].w[0]"  1;
	setAttr ".wl[828].w[0]"  1;
	setAttr ".wl[829].w[0]"  1;
	setAttr ".wl[830].w[0]"  1;
	setAttr ".wl[831].w[0]"  1;
	setAttr ".wl[832].w[0]"  1;
	setAttr ".wl[833].w[0]"  1;
	setAttr ".wl[834].w[0]"  1;
	setAttr ".wl[835].w[0]"  1;
	setAttr ".wl[836].w[0]"  1;
	setAttr ".wl[837].w[0]"  1;
	setAttr ".wl[838].w[0]"  1;
	setAttr ".wl[839].w[0]"  1;
	setAttr ".wl[840].w[0]"  1;
	setAttr ".wl[841].w[0]"  1;
	setAttr ".wl[842].w[0]"  1;
	setAttr ".wl[843].w[0]"  1;
	setAttr ".wl[844].w[0]"  1;
	setAttr ".wl[845].w[0]"  1;
	setAttr ".wl[846].w[0]"  1;
	setAttr ".wl[847].w[0]"  1;
	setAttr ".wl[848].w[0]"  1;
	setAttr ".wl[849].w[0]"  1;
	setAttr ".wl[850].w[0]"  1;
	setAttr ".wl[851].w[0]"  1;
	setAttr ".wl[852].w[0]"  1;
	setAttr ".wl[853].w[0]"  1;
	setAttr ".wl[854].w[0]"  1;
	setAttr ".wl[855].w[0]"  1;
	setAttr ".wl[856].w[0]"  1;
	setAttr ".wl[857].w[0]"  1;
	setAttr ".wl[858].w[0]"  1;
	setAttr ".wl[859].w[0]"  1;
	setAttr ".wl[860].w[0]"  1;
	setAttr ".wl[861].w[0]"  1;
	setAttr ".wl[862].w[0]"  1;
	setAttr ".wl[863].w[0]"  1;
	setAttr ".wl[864].w[0]"  1;
	setAttr ".wl[865].w[0]"  1;
	setAttr ".wl[866].w[0]"  1;
	setAttr ".wl[867].w[0]"  1;
	setAttr ".wl[868].w[0]"  1;
	setAttr ".wl[869].w[0]"  1;
	setAttr ".wl[870].w[0]"  1;
	setAttr ".wl[871].w[0]"  1;
	setAttr ".wl[872].w[0]"  1;
	setAttr ".wl[873].w[0]"  1;
	setAttr ".wl[874].w[0]"  1;
	setAttr ".wl[875].w[0]"  1;
	setAttr ".wl[876].w[0]"  1;
	setAttr ".wl[877].w[0]"  1;
	setAttr ".wl[878].w[0]"  1;
	setAttr ".wl[879].w[0]"  1;
	setAttr ".wl[880].w[0]"  1;
	setAttr ".wl[881].w[0]"  1;
	setAttr ".wl[882].w[0]"  1;
	setAttr ".wl[883].w[0]"  1;
	setAttr ".wl[884].w[0]"  1;
	setAttr ".wl[885].w[0]"  1;
	setAttr ".wl[886].w[0]"  1;
	setAttr ".wl[887].w[0]"  1;
	setAttr ".wl[888].w[0]"  1;
	setAttr ".wl[889].w[0]"  1;
	setAttr ".wl[890].w[0]"  1;
	setAttr ".wl[891].w[0]"  1;
	setAttr ".wl[892].w[0]"  1;
	setAttr ".wl[893].w[0]"  1;
	setAttr ".wl[894].w[0]"  1;
	setAttr ".wl[895].w[0]"  1;
	setAttr ".wl[896].w[0]"  1;
	setAttr ".wl[897].w[0]"  1;
	setAttr ".wl[898].w[0]"  1;
	setAttr ".wl[899].w[0]"  1;
	setAttr ".wl[900].w[0]"  1;
	setAttr ".wl[901].w[0]"  1;
	setAttr ".wl[902].w[0]"  1;
	setAttr ".wl[903].w[0]"  1;
	setAttr ".wl[904].w[0]"  1;
	setAttr ".wl[905].w[0]"  1;
	setAttr ".wl[906].w[0]"  1;
	setAttr ".wl[907].w[0]"  1;
	setAttr ".wl[908].w[0]"  1;
	setAttr ".wl[909].w[0]"  1;
	setAttr ".wl[910].w[0]"  1;
	setAttr ".wl[911].w[0]"  1;
	setAttr ".wl[912].w[0]"  1;
	setAttr ".wl[913].w[0]"  1;
	setAttr ".wl[914].w[0]"  1;
	setAttr ".wl[915].w[0]"  1;
	setAttr ".wl[916].w[0]"  1;
	setAttr ".wl[917].w[0]"  1;
	setAttr ".wl[918].w[0]"  1;
	setAttr ".wl[919].w[0]"  1;
	setAttr ".wl[920].w[0]"  1;
	setAttr ".wl[921].w[0]"  1;
	setAttr ".wl[922].w[0]"  1;
	setAttr ".wl[923].w[0]"  1;
	setAttr ".wl[924].w[0]"  1;
	setAttr ".wl[925].w[0]"  1;
	setAttr ".wl[926].w[0]"  1;
	setAttr ".wl[927].w[0]"  1;
	setAttr ".wl[928].w[0]"  1;
	setAttr ".wl[929].w[0]"  1;
	setAttr ".wl[930].w[0]"  1;
	setAttr ".wl[931].w[0]"  1;
	setAttr ".wl[932].w[0]"  1;
	setAttr ".wl[933].w[0]"  1;
	setAttr ".wl[934].w[0]"  1;
	setAttr ".wl[935].w[0]"  1;
	setAttr ".wl[936].w[0]"  1;
	setAttr ".wl[937].w[0]"  1;
	setAttr ".wl[938].w[0]"  1;
	setAttr ".wl[939].w[0]"  1;
	setAttr ".wl[940].w[0]"  1;
	setAttr ".wl[941].w[0]"  1;
	setAttr ".wl[942].w[0]"  1;
	setAttr ".wl[943].w[0]"  1;
	setAttr ".wl[944].w[0]"  1;
	setAttr ".wl[945].w[0]"  1;
	setAttr ".wl[946].w[0]"  1;
	setAttr ".wl[947].w[0]"  1;
	setAttr ".wl[948].w[0]"  1;
	setAttr ".wl[949].w[0]"  1;
	setAttr ".wl[950].w[0]"  1;
	setAttr ".wl[951].w[0]"  1;
	setAttr ".wl[952].w[0]"  1;
	setAttr ".wl[953].w[0]"  1;
	setAttr ".wl[954].w[0]"  1;
	setAttr ".wl[955].w[0]"  1;
	setAttr ".wl[956].w[0]"  1;
	setAttr ".wl[957].w[0]"  1;
	setAttr ".wl[958].w[0]"  1;
	setAttr ".wl[959].w[0]"  1;
	setAttr ".wl[960].w[0]"  1;
	setAttr ".wl[961].w[0]"  1;
	setAttr ".wl[962].w[0]"  1;
	setAttr ".wl[963].w[0]"  1;
	setAttr ".wl[964].w[0]"  1;
	setAttr ".wl[965].w[0]"  1;
	setAttr ".wl[966].w[0]"  1;
	setAttr ".wl[967].w[0]"  1;
	setAttr ".wl[968].w[0]"  1;
	setAttr ".wl[969].w[0]"  1;
	setAttr ".wl[970].w[0]"  1;
	setAttr ".wl[971].w[0]"  1;
	setAttr ".wl[972].w[0]"  1;
	setAttr ".wl[973].w[0]"  1;
	setAttr ".wl[974].w[0]"  1;
	setAttr ".wl[975].w[0]"  1;
	setAttr ".wl[976].w[0]"  1;
	setAttr ".wl[977].w[0]"  1;
	setAttr ".wl[978].w[0]"  1;
	setAttr ".wl[979].w[0]"  1;
	setAttr ".wl[980].w[0]"  1;
	setAttr ".wl[981].w[0]"  1;
	setAttr ".wl[982].w[0]"  1;
	setAttr ".wl[983].w[0]"  1;
	setAttr ".wl[984].w[0]"  1;
	setAttr ".wl[985].w[0]"  1;
	setAttr ".wl[986].w[0]"  1;
	setAttr ".wl[987].w[0]"  1;
	setAttr ".wl[988].w[0]"  1;
	setAttr ".wl[989].w[0]"  1;
	setAttr ".wl[990].w[0]"  1;
	setAttr ".wl[991].w[0]"  1;
	setAttr ".wl[992].w[0]"  1;
	setAttr ".wl[993].w[0]"  1;
	setAttr ".wl[994].w[0]"  1;
	setAttr ".wl[995].w[0]"  1;
	setAttr ".wl[996].w[0]"  1;
	setAttr ".wl[997].w[0]"  1;
	setAttr ".wl[998].w[0]"  1;
	setAttr ".wl[999].w[0]"  1;
	setAttr ".wl[1000].w[0]"  1;
	setAttr ".wl[1001].w[0]"  1;
	setAttr ".wl[1002].w[0]"  1;
	setAttr ".wl[1003].w[0]"  1;
	setAttr ".wl[1004].w[0]"  1;
	setAttr ".wl[1005].w[0]"  1;
	setAttr ".wl[1006].w[0]"  1;
	setAttr ".wl[1007].w[0]"  1;
	setAttr ".wl[1008].w[0]"  1;
	setAttr ".wl[1009].w[0]"  1;
	setAttr ".wl[1010].w[0]"  1;
	setAttr ".wl[1011].w[0]"  1;
	setAttr ".wl[1012].w[0]"  1;
	setAttr ".wl[1013].w[0]"  1;
	setAttr ".wl[1014].w[0]"  1;
	setAttr ".wl[1015].w[0]"  1;
	setAttr ".wl[1016].w[0]"  1;
	setAttr ".wl[1017].w[0]"  1;
	setAttr ".wl[1018].w[0]"  1;
	setAttr ".wl[1019].w[0]"  1;
	setAttr ".wl[1020].w[0]"  1;
	setAttr ".wl[1021].w[0]"  1;
	setAttr ".wl[1022].w[0]"  1;
	setAttr ".wl[1023].w[0]"  1;
	setAttr ".wl[1024].w[0]"  1;
	setAttr ".wl[1025].w[0]"  1;
	setAttr ".wl[1026].w[0]"  1;
	setAttr ".wl[1027].w[0]"  1;
	setAttr ".wl[1028].w[0]"  1;
	setAttr ".wl[1029].w[0]"  1;
	setAttr ".wl[1030].w[0]"  1;
	setAttr ".wl[1031].w[0]"  1;
	setAttr ".wl[1032].w[0]"  1;
	setAttr ".wl[1033].w[0]"  1;
	setAttr ".wl[1034].w[0]"  1;
	setAttr ".wl[1035].w[0]"  1;
	setAttr ".wl[1036].w[0]"  1;
	setAttr ".wl[1037].w[0]"  1;
	setAttr ".wl[1038].w[0]"  1;
	setAttr ".wl[1039].w[0]"  1;
	setAttr ".wl[1040].w[0]"  1;
	setAttr ".wl[1041].w[0]"  1;
	setAttr ".wl[1042].w[0]"  1;
	setAttr ".wl[1043].w[0]"  1;
	setAttr ".wl[1044].w[0]"  1;
	setAttr ".wl[1045].w[0]"  1;
	setAttr ".wl[1046].w[0]"  1;
	setAttr ".wl[1047].w[0]"  1;
	setAttr ".wl[1048].w[0]"  1;
	setAttr ".wl[1049].w[0]"  1;
	setAttr ".wl[1050].w[0]"  1;
	setAttr ".wl[1051].w[0]"  1;
	setAttr ".wl[1052].w[0]"  1;
	setAttr ".wl[1053].w[0]"  1;
	setAttr ".wl[1054].w[0]"  1;
	setAttr ".wl[1055].w[0]"  1;
	setAttr ".wl[1056].w[0]"  1;
	setAttr ".wl[1057].w[0]"  1;
	setAttr ".wl[1058].w[0]"  1;
	setAttr ".wl[1059].w[0]"  1;
	setAttr ".wl[1060].w[0]"  1;
	setAttr ".wl[1061].w[0]"  1;
	setAttr ".wl[1062].w[0]"  1;
	setAttr ".wl[1063].w[0]"  1;
	setAttr ".wl[1064].w[0]"  1;
	setAttr ".wl[1065].w[0]"  1;
	setAttr ".wl[1066].w[0]"  1;
	setAttr ".wl[1067].w[0]"  1;
	setAttr ".wl[1068].w[0]"  1;
	setAttr ".wl[1069].w[0]"  1;
	setAttr ".wl[1070].w[0]"  1;
	setAttr ".wl[1071].w[0]"  1;
	setAttr ".wl[1072].w[0]"  1;
	setAttr ".wl[1073].w[0]"  1;
	setAttr ".wl[1074].w[0]"  1;
	setAttr ".wl[1075].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -2.1132119580060456e-008 7.3912627994963784e-007 0.99999999999972644 0
		 0.99959153704469972 0.028578996984048501 2.7163733843047623e-016 0 -0.028578996984040528 0.99959153704442638 -7.3942830884337032e-007 0
		 -9.4550603266803215 -0.25226737943801369 -0.00053034028986518635 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode objectSet -n "skinCluster8Set";
	rename -uid "8F065182-4326-9FBA-7A7E-338C909C52C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "8619A5D2-46A5-6474-A1AF-2D9EAF98D18F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "D9E8D9EE-4CBB-70B5-1EB3-BEA0040EFE6E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "20A19BCE-42E9-E586-918D-B181B083C88D";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830715 9.4584078334728794 -0.018051803393654715 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 -1.7763568394002505e-015 0 -1.0842021724855044e-019 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "23DDB65B-44E8-4F2F-2F23-CEA3856607EB";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 1.07639e-005;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "9EB672B0-4141-0915-46CA-CEB7253808BC";
	setAttr ".txf" -type "matrix" 1.493125106211536 0 0 0 0 1.493125106211536 0 0 0 0 1.493125106211536 0
		 0 9.4828914508607998 0 1;
createNode skinCluster -n "skinCluster9";
	rename -uid "19167164-4055-C5E7-4120-55A7ED0CAA67";
	setAttr -s 469 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.99999999999799638 1.9924912123408904e-006 -1.9166180825718549e-007 0
		 1.9761405539766816e-006 0.99795000020985203 0.063998414646385129 0 3.1878518030293805e-007 0.063998414645878673 -0.99795000021179014 0
		 -1.2861862943219464 -13.28998156192724 -0.96971708039436433 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak9";
	rename -uid "2844A2BB-4FA7-D309-C08C-C19251108C29";
createNode objectSet -n "skinCluster9Set";
	rename -uid "A35DC18A-41D4-C6FC-1046-7C9758AEFFBE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "98C8837C-49B1-2CF6-821C-9784F4BF7075";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "9B50153A-42E8-805C-9D51-5E9EE3B788C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "48C97545-4AFB-695A-C05A-B99A12D76284";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "2866E1F9-491E-27A7-6F26-E2992540FBFB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "A139BE3B-42FB-5822-263F-F78941F1FFBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "EFC4C735-48AE-6E26-1D92-FFA727C447AC";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId21";
	rename -uid "0A42B784-44BF-68ED-24AC-1BBD31C2AC96";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "77808606-4EA3-76E3-775B-01AEF8FD8C44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:487]";
createNode skinCluster -n "skinCluster10";
	rename -uid "1289141F-48A9-4CAF-6E92-3F8D7623362E";
	setAttr -s 420 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[2]"  1;
	setAttr ".wl[17].w[2]"  1;
	setAttr ".wl[18].w[2]"  1;
	setAttr ".wl[19].w[2]"  1;
	setAttr ".wl[20].w[2]"  1;
	setAttr ".wl[21].w[2]"  1;
	setAttr ".wl[22].w[2]"  1;
	setAttr ".wl[23].w[2]"  1;
	setAttr ".wl[24].w[2]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[1]"  1;
	setAttr ".wl[31].w[1]"  1;
	setAttr ".wl[32].w[1]"  1;
	setAttr ".wl[33].w[1]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[1]"  1;
	setAttr ".wl[39].w[1]"  1;
	setAttr ".wl[40].w[1]"  1;
	setAttr ".wl[41].w[1]"  1;
	setAttr ".wl[42].w[1]"  1;
	setAttr ".wl[43].w[1]"  1;
	setAttr ".wl[44].w[1]"  1;
	setAttr ".wl[45].w[1]"  1;
	setAttr ".wl[46].w[1]"  1;
	setAttr ".wl[47].w[1]"  1;
	setAttr ".wl[48].w[1]"  1;
	setAttr ".wl[49].w[1]"  1;
	setAttr ".wl[50].w[1]"  1;
	setAttr ".wl[51].w[1]"  1;
	setAttr ".wl[52].w[1]"  1;
	setAttr ".wl[53].w[1]"  1;
	setAttr ".wl[54].w[1]"  1;
	setAttr ".wl[55].w[1]"  1;
	setAttr ".wl[56].w[1]"  1;
	setAttr ".wl[57].w[1]"  1;
	setAttr ".wl[58].w[1]"  1;
	setAttr ".wl[59].w[1]"  1;
	setAttr ".wl[60].w[1]"  1;
	setAttr ".wl[61].w[1]"  1;
	setAttr ".wl[62].w[1]"  1;
	setAttr ".wl[63].w[1]"  1;
	setAttr ".wl[64].w[1]"  1;
	setAttr ".wl[65].w[1]"  1;
	setAttr ".wl[66].w[1]"  1;
	setAttr ".wl[67].w[1]"  1;
	setAttr ".wl[68].w[1]"  1;
	setAttr ".wl[69].w[1]"  1;
	setAttr ".wl[70].w[1]"  1;
	setAttr ".wl[71].w[1]"  1;
	setAttr ".wl[72].w[1]"  1;
	setAttr ".wl[73].w[1]"  1;
	setAttr ".wl[74].w[1]"  1;
	setAttr ".wl[75].w[1]"  1;
	setAttr ".wl[76].w[1]"  1;
	setAttr ".wl[77].w[1]"  1;
	setAttr ".wl[78].w[1]"  1;
	setAttr ".wl[79].w[1]"  1;
	setAttr ".wl[80].w[1]"  1;
	setAttr ".wl[81].w[1]"  1;
	setAttr ".wl[82].w[1]"  1;
	setAttr ".wl[83].w[1]"  1;
	setAttr ".wl[84].w[1]"  1;
	setAttr ".wl[85].w[1]"  1;
	setAttr ".wl[86].w[1]"  1;
	setAttr ".wl[87].w[1]"  1;
	setAttr ".wl[88].w[1]"  1;
	setAttr ".wl[89].w[1]"  1;
	setAttr ".wl[90].w[1]"  1;
	setAttr ".wl[91].w[1]"  1;
	setAttr ".wl[92].w[1]"  1;
	setAttr ".wl[93].w[1]"  1;
	setAttr ".wl[94].w[1]"  1;
	setAttr ".wl[95].w[1]"  1;
	setAttr ".wl[96].w[1]"  1;
	setAttr ".wl[97].w[1]"  1;
	setAttr ".wl[98].w[1]"  1;
	setAttr ".wl[99].w[1]"  1;
	setAttr ".wl[100].w[1]"  1;
	setAttr ".wl[101].w[1]"  1;
	setAttr ".wl[102].w[1]"  1;
	setAttr ".wl[103].w[1]"  1;
	setAttr ".wl[104].w[1]"  1;
	setAttr ".wl[105].w[1]"  1;
	setAttr ".wl[106].w[1]"  1;
	setAttr ".wl[107].w[1]"  1;
	setAttr ".wl[108].w[1]"  1;
	setAttr ".wl[109].w[1]"  1;
	setAttr ".wl[110].w[1]"  1;
	setAttr ".wl[111].w[1]"  1;
	setAttr ".wl[112].w[1]"  1;
	setAttr ".wl[113].w[1]"  1;
	setAttr ".wl[114].w[1]"  1;
	setAttr ".wl[115].w[1]"  1;
	setAttr ".wl[116].w[1]"  1;
	setAttr ".wl[117].w[1]"  1;
	setAttr ".wl[118].w[1]"  1;
	setAttr ".wl[119].w[1]"  1;
	setAttr ".wl[120].w[1]"  1;
	setAttr ".wl[121].w[1]"  1;
	setAttr ".wl[122].w[1]"  1;
	setAttr ".wl[123].w[1]"  1;
	setAttr ".wl[124].w[1]"  1;
	setAttr ".wl[125].w[1]"  1;
	setAttr ".wl[126].w[1]"  1;
	setAttr ".wl[127].w[1]"  1;
	setAttr ".wl[128].w[1]"  1;
	setAttr ".wl[129].w[1]"  1;
	setAttr ".wl[130].w[1]"  1;
	setAttr ".wl[131].w[1]"  1;
	setAttr ".wl[132].w[1]"  1;
	setAttr ".wl[133].w[1]"  1;
	setAttr ".wl[134].w[1]"  1;
	setAttr -s 2 ".wl[135].w[1:2]"  0.8527168482542038 0.1472831517457962;
	setAttr -s 2 ".wl[136].w[1:2]"  0.85155254602432251 0.14844745397567749;
	setAttr -s 2 ".wl[137].w[1:2]"  0.85213468968868256 0.14786531031131744;
	setAttr ".wl[138].w[1]"  1;
	setAttr ".wl[139].w[1]"  1;
	setAttr ".wl[140].w[1]"  1;
	setAttr ".wl[141].w[1]"  1;
	setAttr ".wl[142].w[1]"  1;
	setAttr ".wl[143].w[1]"  1;
	setAttr ".wl[144].w[1]"  1;
	setAttr ".wl[145].w[1]"  1;
	setAttr ".wl[146].w[1]"  1;
	setAttr ".wl[147].w[1]"  1;
	setAttr ".wl[148].w[1]"  1;
	setAttr ".wl[149].w[1]"  1;
	setAttr ".wl[150].w[1]"  1;
	setAttr ".wl[151].w[1]"  1;
	setAttr ".wl[152].w[1]"  1;
	setAttr ".wl[153].w[1]"  1;
	setAttr ".wl[154].w[1]"  1;
	setAttr ".wl[155].w[1]"  1;
	setAttr ".wl[156].w[1]"  1;
	setAttr ".wl[157].w[1]"  1;
	setAttr ".wl[158].w[1]"  1;
	setAttr ".wl[159].w[1]"  1;
	setAttr ".wl[160].w[1]"  1;
	setAttr ".wl[161].w[1]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr -s 2 ".wl[380].w[1:2]"  0.85155254602432251 0.14844745397567749;
	setAttr -s 2 ".wl[381].w[1:2]"  0.85213468968868256 0.14786531031131744;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr -s 2 ".wl[386].w[1:2]"  0.85446327924728394 0.14553672075271606;
	setAttr -s 2 ".wl[387].w[1:2]"  0.85213468968868256 0.14786531031131744;
	setAttr ".wl[388].w[2]"  1;
	setAttr ".wl[389].w[2]"  1;
	setAttr ".wl[390].w[2]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[2]"  1;
	setAttr ".wl[393].w[2]"  1;
	setAttr ".wl[394].w[2]"  1;
	setAttr ".wl[395].w[2]"  1;
	setAttr ".wl[396].w[2]"  1;
	setAttr ".wl[397].w[2]"  1;
	setAttr ".wl[398].w[2]"  1;
	setAttr ".wl[399].w[2]"  1;
	setAttr ".wl[400].w[2]"  1;
	setAttr ".wl[401].w[2]"  1;
	setAttr ".wl[402].w[2]"  1;
	setAttr ".wl[403].w[2]"  1;
	setAttr ".wl[404].w[2]"  1;
	setAttr ".wl[405].w[2]"  1;
	setAttr ".wl[406].w[2]"  1;
	setAttr ".wl[407].w[2]"  1;
	setAttr ".wl[408].w[2]"  1;
	setAttr ".wl[409].w[2]"  1;
	setAttr ".wl[410].w[2]"  1;
	setAttr ".wl[411].w[2]"  1;
	setAttr ".wl[412].w[2]"  1;
	setAttr ".wl[413].w[2]"  1;
	setAttr ".wl[414].w[2]"  1;
	setAttr ".wl[415].w[2]"  1;
	setAttr ".wl[416].w[2]"  1;
	setAttr ".wl[417].w[2]"  1;
	setAttr ".wl[418].w[2]"  1;
	setAttr ".wl[419].w[2]"  1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.052888969877536121 -0.0082179205119257848 0.99856658398313747 0
		 -0.15283316255057219 0.98825200377347355 3.8242700034650816e-005 0 -0.98683574179803735 -0.15261206643045386 -0.053523601240416788 0
		 1.3461618089085461 -10.720744539513163 1.8873702218103505 1;
	setAttr ".pm[1]" -type "matrix" 1.8793889990328989e-006 0.99999999999735378 -1.3263586681972478e-006 0
		 0.99999974558710869 -1.8784424056790744e-006 0.00071331773299166128 0 0.00071331773049858706 -1.327698932384501e-006 -0.99999974558799332 0
		 -10.702909504111592 1.9351403546545962 -0.84031614617994954 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999735356 -1.8793890003651659e-006 -1.3263586681972478e-006 0
		 -1.8784424070113414e-006 -0.99999974558710847 0.00071331773299166128 0 -1.327698932385451e-006 -0.00071331773049858696 -0.99999974558799332 0
		 1.8991001232329827 7.9080913990064738 -0.87495814617994183 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  1 1 1;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak10";
	rename -uid "7C7D2A26-4285-937F-2EF9-0286BD692BF7";
createNode objectSet -n "skinCluster10Set";
	rename -uid "9962A81C-408B-8335-9299-E9A4C59C6633";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "0B52A1F2-467E-4E7B-C10C-FA9DD161E7C9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "3BD35FC3-4DA5-0E8B-A27E-44AC0BB3797F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "FA2A9484-4942-771B-0CC2-79BC1B424F99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId23";
	rename -uid "0EA7A77B-4D03-BFBE-40E5-97A0C362550D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "1C92AA5B-44D1-E725-B374-15A15CF38A3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	rename -uid "B4AF3E8F-46FD-5B37-9DF5-F9B90051BB17";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819313993 -0.0069873780442604172 -1.2866902536424234 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886781
		 -1.1938418165158282e-006 9.843149378907512e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678608 -4.7396531144272558e-012 1.6608936448392342e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460657 -1.7763568394002505e-015
		 -4.4408920985006262e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051124 0.036040231421623714 0.034641999999992512 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes no no no no no;
	setAttr ".bp" yes;
createNode groupId -n "groupId24";
	rename -uid "97E30E35-43D2-58DA-F04A-BEA0756533CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "28444C94-4A06-74CC-7A78-FB83DDCEF1C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:437]";
createNode skinCluster -n "skinCluster11";
	rename -uid "B7E4814C-431F-67C1-B0A6-F9B415574A9F";
	setAttr -s 310 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999735356 -1.8793890003651659e-006 -1.3263586681972478e-006 0
		 -1.8784424070113414e-006 -0.99999974558710847 0.00071331773299166128 0 -1.327698932385451e-006 -0.00071331773049858696 -0.99999974558799332 0
		 1.8991001232329827 7.9080913990064738 -0.87495814617994183 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak11";
	rename -uid "E4E7D468-4591-BAE9-2AE9-EFAB40B219C8";
createNode objectSet -n "skinCluster11Set";
	rename -uid "8B5F9062-4DAD-68DD-7B52-9280B4FCC258";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "3FBB76C9-416B-FF3E-701D-43B7782DB3FE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "405948D8-44B0-29FD-842D-5CA39886B398";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "808655D7-4B38-5A84-89D1-74AADE8AEAC0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "C9F506DE-44B4-74AD-FF37-6D887A64D603";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "C3EDDB85-49BB-6805-6628-E1A14E08650B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId27";
	rename -uid "AE34B737-4706-32D5-588D-3790B809C90A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "CB801ACA-42A4-C5A6-5EEB-0ABEF19EFD95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:313]";
createNode skinCluster -n "skinCluster12";
	rename -uid "E1A269F5-4DA5-6D51-936A-BDA8DFEBB0F8";
	setAttr -s 24 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.63774739888518672 0.77018775420013463 -0.0094381404593460293 0
		 -0.77022699927444793 0.63776924884495412 -0.00086880171521180828 0 0.0053502153093657693 0.0078235866387562705 0.99995508233532537 0
		 7.1476155652792102 -3.405488466673622 0.73112935985878191 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak12";
	rename -uid "77BF840E-4479-D064-0669-3AADA96DD502";
createNode objectSet -n "skinCluster12Set";
	rename -uid "A3DAC798-4C18-3A05-97A0-C0AD5B31DE45";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "D319CB2D-45E0-11E6-BF5E-5B8D96BDC1C9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "B84091A8-483F-2D5C-E04C-D5B6663B7DC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "A91DB779-496B-1CB4-C0D9-C4A55DA84553";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId29";
	rename -uid "EEC05FD4-49A2-A2FD-741C-BC930496E403";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "7AFB848C-4AD6-9934-4690-40B8EB0B333E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	rename -uid "0C642D7F-4B10-00F3-3D14-339233779EA1";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" 0.63774739888518728 -0.77022699927444949 0.0053502153093660937 0
		 0.77018775420013574 0.63776924884495567 0.0078235866387561925 0 -0.0094381404593459114 -0.0008688017152121137 0.99995508233532726 0
		 -1.9286072192939741 7.6778375165948374 -0.74269466739187762 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.90138015499087565 -0.4330028617551227 0.0042602355661824423 0.0020465320470653323 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId30";
	rename -uid "07470E9B-4AE5-2AFA-9182-2393FB252D3E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "082DE828-4197-FE81-E41A-E6BBD7640E69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode skinCluster -n "skinCluster13";
	rename -uid "39CBE0DA-49DF-E893-3967-1B827FED1A52";
	setAttr -s 106 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99986447625744812 0.016462956829283826 -1.3071143509793988e-005 0
		 0.016462961964812287 -0.99986422188417778 0.00071321756158705164 0 -1.3276988083841207e-006 -0.0007133360934125924 -0.99999974557489379 0
		 1.5651046938224964 7.4121959958719996 -0.74595682576262423 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak13";
	rename -uid "854AEC05-4E30-E54C-24DF-A283203609E3";
createNode objectSet -n "skinCluster13Set";
	rename -uid "60F98920-453C-916F-3423-CC9FF253D1E4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster13GroupId";
	rename -uid "2E3827F5-4F63-3033-F993-E8A544495A39";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster13GroupParts";
	rename -uid "559BED12-419F-B0E7-C91E-7E91A1580063";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "FFF8CA14-4D76-DD29-7033-E09376B2A241";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "8562E823-4D2C-5859-51FE-ACA3BAA04B45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "B00FF92E-452A-6605-DF4B-16A9D85AF3F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose6";
	rename -uid "A37261F4-46F4-CA96-617C-4CBFBD37D31D";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" 0.63774739888518728 -0.77022699927444949 0.0053502153093660937 0
		 0.77018775420013574 0.63776924884495567 0.0078235866387561925 0 -0.0094381404593459114 -0.0008688017152121137 0.99995508233532726 0
		 -1.9286072192939741 7.6778375165948374 -0.74269466739187762 1;
	setAttr ".wm[10]" -type "matrix" 0.99986447625744945 0.016462961964812794 -1.3276988082618763e-006 0
		 0.016462956829283393 -0.99986422188418045 -0.0007133360934122924 0 -1.3071143509920877e-005 0.00071321756158735337 -0.99999974557489646 0
		 -1.686928998175856 7.3859553523285646 -0.74066717104954327 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.90138015499087565 -0.4330028617551227 0.0042602355661824423 0.0020465320470653323 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.3789560279517924 4.2273042705209818e-016
		 1.0046651011119678e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.90138015497208446 0.4330028617942403 -0.0042602395419581458 0.0020465237707103187 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId33";
	rename -uid "8335FA40-4D6D-F48A-7F8F-3E967EE5675F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "F5C7DD88-48E6-C401-0A59-E1960ECD93F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:109]";
createNode skinCluster -n "skinCluster14";
	rename -uid "13846821-4F8C-ECE8-7AAB-7A9F822AA445";
	setAttr -s 46 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.23774624092595009 -0.97132730053247407 -1.2879284895092018e-005 0
		 -0.97132705592799684 0.23774617160204697 0.00071295919871717085 0 -0.00068945473320322713 0.00018201336730839029 -0.99999974576161965 0
		 6.9986601399240369 -3.6985501394999538 -0.74819330253592842 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak14";
	rename -uid "78221A64-4988-01DE-52A0-73A9CF5A5B34";
createNode objectSet -n "skinCluster14Set";
	rename -uid "1BD47810-4C49-8257-C2C4-EB9598C1A64B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster14GroupId";
	rename -uid "9D3D4277-4C8F-5CDB-854B-2FAC9CC5BABE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster14GroupParts";
	rename -uid "96FAC73A-4AD2-BD12-EC4B-508A7A9259F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "42482D54-431E-A269-990F-AAAEBDCA63AA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId35";
	rename -uid "27D98E6C-4D19-DD25-8DE7-46ACD42EC47B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "F899E19E-4871-D901-6DAC-51A9878BC206";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose7";
	rename -uid "C22D9288-4AD7-C1C9-9BFA-3C87BCE2C350";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" -0.23774624092595023 -0.97132705592799795 -0.00068945473320296616 0
		 -0.97132730053247496 0.23774617160204728 0.00018201336730819275 0 -1.2879284895221914e-005 0.00071295919871747291 -0.99999974576162076 0
		 -1.9286072192939741 7.6778375165948374 -0.74269466739187762 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.5353747283093768e-007 0.79174015306772128 0.61085802771206776 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId36";
	rename -uid "91A4AACD-4FE1-69D8-5481-C4A0F8035CC9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "66214231-49D1-E7BA-EB77-B3844043D82F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode skinCluster -n "skinCluster15";
	rename -uid "BF4B6CD6-4606-C0C9-B9C7-08A94CC0D246";
	setAttr -s 50 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.66961193330173874 0.73255190474729592 0.12242371351586825 0
		 -0.73821218623191531 0.67456731127688419 0.0013079202461183908 0 -0.081624915795379546 -0.091250476205786538 0.99247706457812557 0
		 6.5579969271042469 -3.3277753571739854 0.98213909828826818 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak15";
	rename -uid "D36B4F42-4261-3FFC-7CF8-14B40179F99F";
createNode objectSet -n "skinCluster15Set";
	rename -uid "C5665E97-4D89-05D5-DC8E-6D89D03B039A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster15GroupId";
	rename -uid "218AE213-45B1-EC0C-B087-24A5214F19B5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster15GroupParts";
	rename -uid "72A2B75C-486E-970A-0C43-CFA61543E15D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "54E0ADCD-4309-DD48-D3E6-1EB42DDE64E3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "363FE550-4DF6-A596-5CD7-B1BC6D804337";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "9256018A-4318-2376-2944-C3937698AE31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose8";
	rename -uid "FF0DDF80-4047-0FE0-C2A3-C28E1DFB395A";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" -0.23774624092595023 -0.97132705592799795 -0.00068945473320296616 0
		 -0.97132730053247496 0.23774617160204728 0.00018201336730819275 0 -1.2879284895221914e-005 0.00071295919871747291 -0.99999974576162076 0
		 -1.9286072192939741 7.6778375165948374 -0.74269466739187762 1;
	setAttr ".wm[10]" -type "matrix" 0.66961193330173951 -0.7382121862319162 -0.08162491579537938 0
		 0.73255190474729692 0.67456731127688496 -0.091250476205786801 0 0.12242371351586856 0.0013079202461181063 0.99247706457812734 0
		 -2.0737819400777981 7.0847171644709874 -0.74311566836331666 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.5353747283093768e-007 0.79174015306772128 0.61085802771206776 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61062887984437686 -3.9741859040198411e-016
		 -1.1102215687872784e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.8805637341860586 -0.46994280320113829 0.014203824717295237 0.059661739156353956 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId39";
	rename -uid "FF8D6B5C-4BA6-69BF-09F2-7195EE714250";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "C25144FB-4097-93F5-0F0B-01A7ED22AFE5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode skinCluster -n "skinCluster16";
	rename -uid "47453C0C-4F25-5187-728F-EFB6F35DB403";
	setAttr -s 46 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.29240955290878112 -0.95629318370616556 -1.2837908842417021e-005 0
		 -0.9562929434613312 0.29240946987786587 0.00071288975838585734 0 -0.00067797769055962941 0.00022073257715787313 -0.99999974581165751 0
		 6.7873384324945789 -4.0542032001925365 -0.99934772522481208 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak16";
	rename -uid "848CE574-49AB-FB99-6F17-94BA88D3B3ED";
createNode objectSet -n "skinCluster16Set";
	rename -uid "87F601DE-496B-CEF5-B285-5ABB45B37958";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster16GroupId";
	rename -uid "F086E790-4522-2BE5-68CD-78B1B6EBFB4A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster16GroupParts";
	rename -uid "D3B1BCFA-4EB0-163E-3C0C-BA9A384E3484";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet16";
	rename -uid "ADE26275-43B1-A3A0-39A3-A5AD76448259";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId41";
	rename -uid "E841DE36-4098-49F7-EE66-42A1B401548B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "F9D464EA-4DEC-2A50-77F9-C2B98B6E7C68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose9";
	rename -uid "64B17AE6-4DCF-4909-5EFB-8DBC22C9EC77";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" -0.2924095529087814 -0.95629294346133231 -0.00067797769055938004 0
		 -0.95629318370616634 0.29240946987786615 0.00022073257715766106 0 -1.2837908842546861e-005 0.0007128897583861594 -0.99999974581165851 0
		 -1.8923371187525175 7.6768836811822929 -0.99385091244606416 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0029318889128923252
		 0.23200186608138476 0.1243710288127297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.936571491715624e-007 0.80873770091478714 0.58816947482764437 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId42";
	rename -uid "404DD7A0-44BE-23BE-2D4B-F5B4C4347986";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "EF3F8B90-4E95-9EC4-EFAF-3F935B0E13CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode skinCluster -n "skinCluster17";
	rename -uid "DF2E4AE9-4F16-D256-B41C-98A2D74E4B3A";
	setAttr -s 50 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.66029724883622631 0.73834508809234856 -0.13731013826084282 0
		 -0.74567638922376944 0.66630166963794613 -0.0029677587309967727 0 0.089298744299741911 0.10434853102744887 0.99052365864672898 0
		 6.7427556707050176 -3.0891968816483262 0.72133731322907468 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak17";
	rename -uid "2EF7668A-4C7A-DA16-5BE6-F7A8A234E101";
createNode objectSet -n "skinCluster17Set";
	rename -uid "7552DA91-442B-94CF-2CD9-B69E279A7972";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster17GroupId";
	rename -uid "CB848E1F-4282-25A7-5E55-F5A75CFFB7EF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster17GroupParts";
	rename -uid "CCB75944-4670-38DD-5AB3-84BFEF77A288";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet17";
	rename -uid "26B5B5CC-4A24-98DA-C97E-229F6FB55202";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	rename -uid "4B000472-4E46-0E23-448E-289429969973";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "138C52F3-4327-D06B-CEE2-26813B20440D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose10";
	rename -uid "E2039299-4E49-63B8-B5BF-3791B890889D";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[5]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[6]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[7]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[8]" -type "matrix" 0.99986447626030694 0.016462961791251753 -1.3276989322550907e-006 0
		 0.016462956655962781 -0.99986422190013402 -0.00071331773049810069 0 -1.3070841202159352e-005 0.00071319920116200142 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[9]" -type "matrix" -0.2924095529087814 -0.95629294346133231 -0.00067797769055938004 0
		 -0.95629318370616634 0.29240946987786615 0.00022073257715766106 0 -1.2837908842546861e-005 0.0007128897583861594 -0.99999974581165851 0
		 -1.8923371187525175 7.6768836811822929 -0.99385091244606416 1;
	setAttr ".wm[10]" -type "matrix" 0.66029724883622709 -0.74567638922377055 0.089298744299742314 0
		 0.73834508809234911 0.6663016696379469 0.10434853102744888 0 -0.13731013826084285 -0.0029677587309970581 0.9905236586467302 0
		 -2.0722827490139593 7.0883914971413686 -0.99426813247741164 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4833170970849855e-008 -1.174484226289624e-005
		 -0.016465579792955921 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0029318889128923252
		 0.23200186608138476 0.1243710288127297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.936571491715624e-007 0.80873770091478714 0.58816947482764437 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61538902703899312 -3.3612654836834538e-016
		 -5.2939559203393771e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.86915037347827695 0.48973411987632276 0.013668950454221149 0.067463174436245429 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId45";
	rename -uid "FD4E7F20-46B8-9EA4-1797-8CB56DBFBC4F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "C4BD1548-4504-7CE2-CA37-B08443C53B2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode skinCluster -n "skinCluster18";
	rename -uid "E1E087E9-477F-1108-63C2-24B1C6F56292";
	setAttr -s 469 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr ".wl[448].w[0]"  1;
	setAttr ".wl[449].w[0]"  1;
	setAttr ".wl[450].w[0]"  1;
	setAttr ".wl[451].w[0]"  1;
	setAttr ".wl[452].w[0]"  1;
	setAttr ".wl[453].w[0]"  1;
	setAttr ".wl[454].w[0]"  1;
	setAttr ".wl[455].w[0]"  1;
	setAttr ".wl[456].w[0]"  1;
	setAttr ".wl[457].w[0]"  1;
	setAttr ".wl[458].w[0]"  1;
	setAttr ".wl[459].w[0]"  1;
	setAttr ".wl[460].w[0]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999933931 -7.2315603643060348e-007 8.9335998005631295e-007 0
		 7.2315603654689168e-007 0.99999999999973854 1.1259337380003276e-013 0 -8.9335997980850193e-007 5.3382286986477055e-013 0.99999999999960087 0
		 -1.2872279664450348 -13.324770592997455 0.11719011131113126 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak18";
	rename -uid "44170445-4E67-EF7E-2441-C39E77B4A380";
createNode objectSet -n "skinCluster18Set";
	rename -uid "66569840-40E2-24C6-45E3-DB8761BADF78";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster18GroupId";
	rename -uid "66345A21-4F1E-1B23-1DC5-60B6DBE712EB";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster18GroupParts";
	rename -uid "23D6F6A0-4CA6-07BD-1856-B196B745A175";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet18";
	rename -uid "6B7BE70F-48E8-2CB1-6673-4D9F5FF36564";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId47";
	rename -uid "2831261B-4BD1-EE9C-E99A-9FB63E067397";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "552AB6D7-4962-047E-0847-308F76E21C2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose11";
	rename -uid "A724E946-4067-198E-CE87-299AE68D0968";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId48";
	rename -uid "EA560F3B-4B1F-BB4D-9DCD-BC8930704C27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "15E305CA-405C-D6B6-6169-DBABDEFFE998";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:487]";
createNode skinCluster -n "skinCluster19";
	rename -uid "CB83B3DA-4968-3727-0265-C0BEBB09453D";
	setAttr -s 623 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[2]"  1;
	setAttr ".wl[66].w[2]"  1;
	setAttr ".wl[67].w[2]"  1;
	setAttr ".wl[68].w[2]"  1;
	setAttr ".wl[69].w[2]"  1;
	setAttr ".wl[70].w[2]"  1;
	setAttr ".wl[71].w[2]"  1;
	setAttr ".wl[72].w[2]"  1;
	setAttr ".wl[73].w[2]"  1;
	setAttr ".wl[74].w[2]"  1;
	setAttr ".wl[75].w[2]"  1;
	setAttr ".wl[76].w[2]"  1;
	setAttr ".wl[77].w[2]"  1;
	setAttr ".wl[78].w[2]"  1;
	setAttr ".wl[79].w[2]"  1;
	setAttr ".wl[80].w[2]"  1;
	setAttr ".wl[81].w[2]"  1;
	setAttr ".wl[82].w[2]"  1;
	setAttr ".wl[83].w[2]"  1;
	setAttr ".wl[84].w[2]"  1;
	setAttr ".wl[85].w[2]"  1;
	setAttr ".wl[86].w[2]"  1;
	setAttr ".wl[87].w[2]"  1;
	setAttr ".wl[88].w[2]"  1;
	setAttr ".wl[89].w[2]"  1;
	setAttr ".wl[90].w[2]"  1;
	setAttr ".wl[91].w[2]"  1;
	setAttr ".wl[92].w[2]"  1;
	setAttr ".wl[93].w[2]"  1;
	setAttr ".wl[94].w[2]"  1;
	setAttr ".wl[95].w[2]"  1;
	setAttr ".wl[96].w[2]"  1;
	setAttr ".wl[97].w[2]"  1;
	setAttr ".wl[98].w[2]"  1;
	setAttr ".wl[99].w[2]"  1;
	setAttr ".wl[100].w[2]"  1;
	setAttr ".wl[101].w[2]"  1;
	setAttr ".wl[102].w[2]"  1;
	setAttr ".wl[103].w[2]"  1;
	setAttr ".wl[104].w[2]"  1;
	setAttr ".wl[105].w[2]"  1;
	setAttr ".wl[106].w[2]"  1;
	setAttr ".wl[107].w[2]"  1;
	setAttr ".wl[108].w[2]"  1;
	setAttr ".wl[109].w[2]"  1;
	setAttr ".wl[110].w[2]"  1;
	setAttr ".wl[111].w[2]"  1;
	setAttr ".wl[112].w[2]"  1;
	setAttr ".wl[113].w[2]"  1;
	setAttr ".wl[114].w[2]"  1;
	setAttr ".wl[115].w[2]"  1;
	setAttr ".wl[116].w[2]"  1;
	setAttr ".wl[117].w[2]"  1;
	setAttr ".wl[118].w[2]"  1;
	setAttr ".wl[119].w[2]"  1;
	setAttr ".wl[120].w[2]"  1;
	setAttr ".wl[121].w[2]"  1;
	setAttr ".wl[122].w[2]"  1;
	setAttr ".wl[123].w[2]"  1;
	setAttr ".wl[124].w[2]"  1;
	setAttr ".wl[125].w[2]"  1;
	setAttr ".wl[126].w[2]"  1;
	setAttr ".wl[127].w[2]"  1;
	setAttr ".wl[128].w[2]"  1;
	setAttr ".wl[129].w[2]"  1;
	setAttr ".wl[130].w[2]"  1;
	setAttr ".wl[131].w[2]"  1;
	setAttr ".wl[132].w[2]"  1;
	setAttr ".wl[133].w[2]"  1;
	setAttr ".wl[134].w[2]"  1;
	setAttr ".wl[135].w[2]"  1;
	setAttr ".wl[136].w[2]"  1;
	setAttr ".wl[137].w[2]"  1;
	setAttr ".wl[138].w[2]"  1;
	setAttr ".wl[139].w[2]"  1;
	setAttr ".wl[140].w[2]"  1;
	setAttr ".wl[141].w[2]"  1;
	setAttr ".wl[142].w[2]"  1;
	setAttr ".wl[143].w[2]"  1;
	setAttr ".wl[144].w[2]"  1;
	setAttr ".wl[145].w[2]"  1;
	setAttr ".wl[146].w[2]"  1;
	setAttr ".wl[147].w[2]"  1;
	setAttr ".wl[148].w[2]"  1;
	setAttr ".wl[149].w[2]"  1;
	setAttr ".wl[150].w[2]"  1;
	setAttr ".wl[151].w[2]"  1;
	setAttr ".wl[152].w[2]"  1;
	setAttr ".wl[153].w[2]"  1;
	setAttr ".wl[154].w[2]"  1;
	setAttr ".wl[155].w[2]"  1;
	setAttr ".wl[156].w[2]"  1;
	setAttr ".wl[157].w[2]"  1;
	setAttr ".wl[158].w[2]"  1;
	setAttr ".wl[159].w[2]"  1;
	setAttr ".wl[160].w[2]"  1;
	setAttr ".wl[161].w[2]"  1;
	setAttr ".wl[162].w[2]"  1;
	setAttr ".wl[163].w[2]"  1;
	setAttr ".wl[164].w[2]"  1;
	setAttr ".wl[165].w[2]"  1;
	setAttr ".wl[166].w[2]"  1;
	setAttr ".wl[167].w[2]"  1;
	setAttr ".wl[168].w[2]"  1;
	setAttr ".wl[169].w[2]"  1;
	setAttr ".wl[170].w[2]"  1;
	setAttr ".wl[171].w[2]"  1;
	setAttr ".wl[172].w[2]"  1;
	setAttr ".wl[173].w[2]"  1;
	setAttr ".wl[174].w[2]"  1;
	setAttr ".wl[175].w[2]"  1;
	setAttr ".wl[176].w[2]"  1;
	setAttr ".wl[177].w[2]"  1;
	setAttr ".wl[178].w[2]"  1;
	setAttr ".wl[179].w[2]"  1;
	setAttr ".wl[180].w[2]"  1;
	setAttr ".wl[181].w[2]"  1;
	setAttr ".wl[182].w[2]"  1;
	setAttr ".wl[183].w[2]"  1;
	setAttr ".wl[184].w[2]"  1;
	setAttr ".wl[185].w[2]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[1]"  1;
	setAttr ".wl[240].w[1]"  1;
	setAttr ".wl[241].w[1]"  1;
	setAttr ".wl[242].w[1]"  1;
	setAttr ".wl[243].w[1]"  1;
	setAttr ".wl[244].w[1]"  1;
	setAttr ".wl[245].w[1]"  1;
	setAttr ".wl[246].w[1]"  1;
	setAttr ".wl[247].w[1]"  1;
	setAttr ".wl[248].w[1]"  1;
	setAttr ".wl[249].w[1]"  1;
	setAttr ".wl[250].w[1]"  1;
	setAttr ".wl[251].w[1]"  1;
	setAttr ".wl[252].w[1]"  1;
	setAttr ".wl[253].w[1]"  1;
	setAttr ".wl[254].w[1]"  1;
	setAttr ".wl[255].w[1]"  1;
	setAttr ".wl[256].w[1]"  1;
	setAttr ".wl[257].w[1]"  1;
	setAttr ".wl[258].w[1]"  1;
	setAttr ".wl[259].w[1]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[1]"  1;
	setAttr ".wl[310].w[1]"  1;
	setAttr ".wl[311].w[1]"  1;
	setAttr ".wl[312].w[1]"  1;
	setAttr ".wl[313].w[1]"  1;
	setAttr ".wl[314].w[1]"  1;
	setAttr ".wl[315].w[1]"  1;
	setAttr ".wl[316].w[1]"  1;
	setAttr ".wl[317].w[1]"  1;
	setAttr ".wl[318].w[1]"  1;
	setAttr ".wl[319].w[1]"  1;
	setAttr ".wl[320].w[1]"  1;
	setAttr ".wl[321].w[1]"  1;
	setAttr ".wl[322].w[1]"  1;
	setAttr ".wl[323].w[1]"  1;
	setAttr ".wl[324].w[1]"  1;
	setAttr ".wl[325].w[1]"  1;
	setAttr ".wl[326].w[1]"  1;
	setAttr ".wl[327].w[1]"  1;
	setAttr ".wl[328].w[1]"  1;
	setAttr ".wl[329].w[1]"  1;
	setAttr ".wl[330].w[1]"  1;
	setAttr ".wl[331].w[1]"  1;
	setAttr ".wl[332].w[1]"  1;
	setAttr ".wl[333].w[1]"  1;
	setAttr ".wl[334].w[1]"  1;
	setAttr ".wl[335].w[1]"  1;
	setAttr ".wl[336].w[1]"  1;
	setAttr ".wl[337].w[1]"  1;
	setAttr ".wl[338].w[1]"  1;
	setAttr ".wl[339].w[1]"  1;
	setAttr ".wl[340].w[1]"  1;
	setAttr ".wl[341].w[1]"  1;
	setAttr ".wl[342].w[1]"  1;
	setAttr ".wl[343].w[1]"  1;
	setAttr ".wl[344].w[1]"  1;
	setAttr ".wl[345].w[1]"  1;
	setAttr ".wl[346].w[1]"  1;
	setAttr ".wl[347].w[1]"  1;
	setAttr ".wl[348].w[1]"  1;
	setAttr ".wl[349].w[1]"  1;
	setAttr ".wl[350].w[1]"  1;
	setAttr ".wl[351].w[1]"  1;
	setAttr ".wl[352].w[1]"  1;
	setAttr ".wl[353].w[1]"  1;
	setAttr ".wl[354].w[1]"  1;
	setAttr ".wl[355].w[1]"  1;
	setAttr ".wl[356].w[1]"  1;
	setAttr ".wl[357].w[1]"  1;
	setAttr ".wl[358].w[1]"  1;
	setAttr ".wl[359].w[1]"  1;
	setAttr ".wl[360].w[1]"  1;
	setAttr ".wl[361].w[1]"  1;
	setAttr ".wl[362].w[1]"  1;
	setAttr ".wl[363].w[1]"  1;
	setAttr ".wl[364].w[1]"  1;
	setAttr ".wl[365].w[1]"  1;
	setAttr ".wl[366].w[1]"  1;
	setAttr ".wl[367].w[1]"  1;
	setAttr ".wl[368].w[1]"  1;
	setAttr ".wl[369].w[1]"  1;
	setAttr ".wl[370].w[1]"  1;
	setAttr ".wl[371].w[1]"  1;
	setAttr ".wl[372].w[1]"  1;
	setAttr ".wl[373].w[1]"  1;
	setAttr ".wl[374].w[1]"  1;
	setAttr ".wl[375].w[1]"  1;
	setAttr ".wl[376].w[1]"  1;
	setAttr ".wl[377].w[1]"  1;
	setAttr ".wl[378].w[1]"  1;
	setAttr ".wl[379].w[1]"  1;
	setAttr ".wl[380].w[1]"  1;
	setAttr ".wl[381].w[1]"  1;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr ".wl[386].w[1]"  1;
	setAttr ".wl[387].w[1]"  1;
	setAttr ".wl[388].w[1]"  1;
	setAttr ".wl[389].w[1]"  1;
	setAttr ".wl[390].w[1]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[1]"  1;
	setAttr ".wl[393].w[1]"  1;
	setAttr ".wl[394].w[1]"  1;
	setAttr ".wl[395].w[1]"  1;
	setAttr ".wl[396].w[1]"  1;
	setAttr ".wl[397].w[1]"  1;
	setAttr ".wl[398].w[1]"  1;
	setAttr ".wl[399].w[1]"  1;
	setAttr ".wl[400].w[1]"  1;
	setAttr ".wl[401].w[1]"  1;
	setAttr ".wl[402].w[1]"  1;
	setAttr ".wl[403].w[1]"  1;
	setAttr ".wl[404].w[1]"  1;
	setAttr ".wl[405].w[1]"  1;
	setAttr ".wl[406].w[1]"  1;
	setAttr ".wl[407].w[1]"  1;
	setAttr ".wl[408].w[1]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".wl[418].w[0]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[0]"  1;
	setAttr ".wl[434].w[0]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[0]"  1;
	setAttr ".wl[437].w[0]"  1;
	setAttr ".wl[438].w[0]"  1;
	setAttr ".wl[439].w[0]"  1;
	setAttr ".wl[440].w[0]"  1;
	setAttr ".wl[441].w[2]"  1;
	setAttr ".wl[442].w[2]"  1;
	setAttr ".wl[443].w[2]"  1;
	setAttr ".wl[444].w[2]"  1;
	setAttr ".wl[445].w[2]"  1;
	setAttr ".wl[446].w[2]"  1;
	setAttr ".wl[447].w[2]"  1;
	setAttr ".wl[448].w[2]"  1;
	setAttr ".wl[449].w[2]"  1;
	setAttr ".wl[450].w[2]"  1;
	setAttr ".wl[451].w[2]"  1;
	setAttr ".wl[452].w[2]"  1;
	setAttr ".wl[453].w[2]"  1;
	setAttr ".wl[454].w[2]"  1;
	setAttr ".wl[455].w[2]"  1;
	setAttr ".wl[456].w[2]"  1;
	setAttr ".wl[457].w[2]"  1;
	setAttr ".wl[458].w[2]"  1;
	setAttr ".wl[459].w[2]"  1;
	setAttr ".wl[460].w[2]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr ".wl[462].w[0]"  1;
	setAttr ".wl[463].w[0]"  1;
	setAttr ".wl[464].w[0]"  1;
	setAttr ".wl[465].w[0]"  1;
	setAttr ".wl[466].w[0]"  1;
	setAttr ".wl[467].w[0]"  1;
	setAttr ".wl[468].w[0]"  1;
	setAttr ".wl[469].w[0]"  1;
	setAttr ".wl[470].w[0]"  1;
	setAttr ".wl[471].w[0]"  1;
	setAttr ".wl[472].w[0]"  1;
	setAttr ".wl[473].w[0]"  1;
	setAttr ".wl[474].w[0]"  1;
	setAttr ".wl[475].w[0]"  1;
	setAttr ".wl[476].w[0]"  1;
	setAttr ".wl[477].w[0]"  1;
	setAttr ".wl[478].w[0]"  1;
	setAttr ".wl[479].w[0]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[2]"  1;
	setAttr ".wl[482].w[2]"  1;
	setAttr ".wl[483].w[2]"  1;
	setAttr ".wl[484].w[2]"  1;
	setAttr ".wl[485].w[2]"  1;
	setAttr ".wl[486].w[2]"  1;
	setAttr ".wl[487].w[2]"  1;
	setAttr ".wl[488].w[2]"  1;
	setAttr ".wl[489].w[2]"  1;
	setAttr ".wl[490].w[2]"  1;
	setAttr ".wl[491].w[2]"  1;
	setAttr ".wl[492].w[2]"  1;
	setAttr ".wl[493].w[2]"  1;
	setAttr ".wl[494].w[2]"  1;
	setAttr ".wl[495].w[2]"  1;
	setAttr ".wl[496].w[2]"  1;
	setAttr ".wl[497].w[2]"  1;
	setAttr ".wl[498].w[2]"  1;
	setAttr ".wl[499].w[2]"  1;
	setAttr ".wl[500].w[2]"  1;
	setAttr ".wl[501].w[1]"  1;
	setAttr ".wl[502].w[1]"  1;
	setAttr ".wl[503].w[1]"  1;
	setAttr ".wl[504].w[1]"  1;
	setAttr ".wl[505].w[1]"  1;
	setAttr ".wl[506].w[1]"  1;
	setAttr ".wl[507].w[1]"  1;
	setAttr ".wl[508].w[1]"  1;
	setAttr ".wl[509].w[1]"  1;
	setAttr ".wl[510].w[1]"  1;
	setAttr ".wl[511].w[1]"  1;
	setAttr ".wl[512].w[1]"  1;
	setAttr ".wl[513].w[1]"  1;
	setAttr ".wl[514].w[1]"  1;
	setAttr ".wl[515].w[1]"  1;
	setAttr ".wl[516].w[1]"  1;
	setAttr ".wl[517].w[1]"  1;
	setAttr ".wl[518].w[1]"  1;
	setAttr ".wl[519].w[1]"  1;
	setAttr ".wl[520].w[1]"  1;
	setAttr ".wl[521].w[0]"  1;
	setAttr ".wl[522].w[0]"  1;
	setAttr ".wl[523].w[0]"  1;
	setAttr ".wl[524].w[0]"  1;
	setAttr ".wl[525].w[0]"  1;
	setAttr ".wl[526].w[0]"  1;
	setAttr ".wl[527].w[0]"  1;
	setAttr ".wl[528].w[0]"  1;
	setAttr ".wl[529].w[0]"  1;
	setAttr ".wl[530].w[0]"  1;
	setAttr ".wl[531].w[0]"  1;
	setAttr ".wl[532].w[0]"  1;
	setAttr ".wl[533].w[0]"  1;
	setAttr ".wl[534].w[0]"  1;
	setAttr ".wl[535].w[0]"  1;
	setAttr ".wl[536].w[0]"  1;
	setAttr ".wl[537].w[0]"  1;
	setAttr ".wl[538].w[0]"  1;
	setAttr ".wl[539].w[0]"  1;
	setAttr ".wl[540].w[0]"  1;
	setAttr ".wl[541].w[1]"  1;
	setAttr ".wl[542].w[1]"  1;
	setAttr ".wl[543].w[1]"  1;
	setAttr ".wl[544].w[1]"  1;
	setAttr ".wl[545].w[1]"  1;
	setAttr ".wl[546].w[1]"  1;
	setAttr ".wl[547].w[1]"  1;
	setAttr ".wl[548].w[1]"  1;
	setAttr ".wl[549].w[1]"  1;
	setAttr ".wl[550].w[1]"  1;
	setAttr ".wl[551].w[1]"  1;
	setAttr ".wl[552].w[1]"  1;
	setAttr ".wl[553].w[1]"  1;
	setAttr ".wl[554].w[1]"  1;
	setAttr ".wl[555].w[1]"  1;
	setAttr ".wl[556].w[1]"  1;
	setAttr ".wl[557].w[1]"  1;
	setAttr ".wl[558].w[1]"  1;
	setAttr ".wl[559].w[1]"  1;
	setAttr ".wl[560].w[1]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".wl[568].w[0]"  1;
	setAttr ".wl[569].w[0]"  1;
	setAttr ".wl[570].w[0]"  1;
	setAttr ".wl[571].w[0]"  1;
	setAttr ".wl[572].w[0]"  1;
	setAttr ".wl[573].w[0]"  1;
	setAttr ".wl[574].w[0]"  1;
	setAttr ".wl[575].w[0]"  1;
	setAttr ".wl[576].w[0]"  1;
	setAttr ".wl[577].w[0]"  1;
	setAttr ".wl[578].w[0]"  1;
	setAttr ".wl[579].w[0]"  1;
	setAttr ".wl[580].w[0]"  1;
	setAttr ".wl[581].w[0]"  1;
	setAttr ".wl[582].w[0]"  1;
	setAttr ".wl[583].w[0]"  1;
	setAttr ".wl[584].w[0]"  1;
	setAttr ".wl[585].w[0]"  1;
	setAttr ".wl[586].w[0]"  1;
	setAttr ".wl[587].w[0]"  1;
	setAttr ".wl[588].w[0]"  1;
	setAttr ".wl[589].w[0]"  1;
	setAttr ".wl[590].w[0]"  1;
	setAttr ".wl[591].w[0]"  1;
	setAttr ".wl[592].w[0]"  1;
	setAttr ".wl[593].w[0]"  1;
	setAttr ".wl[594].w[0]"  1;
	setAttr ".wl[595].w[0]"  1;
	setAttr ".wl[596].w[0]"  1;
	setAttr ".wl[597].w[0]"  1;
	setAttr ".wl[598].w[0]"  1;
	setAttr ".wl[599].w[0]"  1;
	setAttr ".wl[600].w[0]"  1;
	setAttr ".wl[601].w[0]"  1;
	setAttr ".wl[602].w[0]"  1;
	setAttr ".wl[603].w[0]"  1;
	setAttr ".wl[604].w[0]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr ".wl[606].w[0]"  1;
	setAttr ".wl[607].w[0]"  1;
	setAttr ".wl[608].w[0]"  1;
	setAttr ".wl[609].w[0]"  1;
	setAttr ".wl[610].w[0]"  1;
	setAttr ".wl[611].w[0]"  1;
	setAttr ".wl[612].w[0]"  1;
	setAttr ".wl[613].w[0]"  1;
	setAttr ".wl[614].w[0]"  1;
	setAttr ".wl[615].w[0]"  1;
	setAttr ".wl[616].w[0]"  1;
	setAttr ".wl[617].w[0]"  1;
	setAttr ".wl[618].w[0]"  1;
	setAttr ".wl[619].w[0]"  1;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[0]"  1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.8267420692649305e-009 7.3942290586606137e-007 0.99999999999972644 0
		 0.99999269278715597 0.0038228748726884432 2.7163733801688592e-016 0 -0.0038228748726872402 0.99999269278688252 -7.3942830884337032e-007 0
		 -8.6273507831450598 -0.018106638549078614 -0.00053034028986496094 1;
	setAttr ".pm[1]" -type "matrix" -0.99999999999962108 4.6162884070981341e-007 -7.3766354677944475e-007 0
		 4.6162884077031237e-007 0.99999999999989309 -1.977259085852811e-014 0 7.3766354672906302e-007 -3.6001118199244062e-013 -0.99999999999972755 0
		 -0.65373598326114712 -8.6287096982175377 -4.8223409519637043e-007 1;
	setAttr ".pm[2]" -type "matrix" 0.99982041881291239 0.018950728857267441 7.4225478058171697e-007 0
		 -0.018950728857272458 0.99982041881318784 2.3713413346518194e-013 0 -7.4212148086043878e-007 -1.4066505965240194e-008 0.99999999999972444 0
		 -0.49108692097988216 -8.6467510697691505 -4.8607573058437887e-007 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  1 1 1;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak19";
	rename -uid "BC96DA49-4FAF-1B74-24D3-86939BB8184A";
createNode objectSet -n "skinCluster19Set";
	rename -uid "23EE4211-4742-9CC9-5548-F6B9BC87DC75";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster19GroupId";
	rename -uid "BE095590-43C2-FB42-1B18-DA9384540AC4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster19GroupParts";
	rename -uid "1B9C1EF8-47BF-130A-3F79-32AC35504B43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet19";
	rename -uid "484FE632-4036-D830-1522-0E90399A129F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	rename -uid "C5A4316B-4117-00E5-419F-A69743FBF5BB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "C70F2AB4-41D9-B2C1-372E-97AC7AE443A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId51";
	rename -uid "EBE4FC86-4790-E714-D5C6-EA9B5418BA06";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "702209C1-4398-3047-7CD0-0E9798416E64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:635]";
createNode skinCluster -n "skinCluster20";
	rename -uid "9CED3AE4-44A5-00F8-6579-59B108FCEBDC";
	setAttr -s 242 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 7.3937328576645368e-007 0.99999999999942368 7.7823037178808419e-007 0
		 -0.99999999999972644 7.3937328595384988e-007 2.6373352455231711e-013 0 -3.1188089499100275e-013 -7.7823037155101269e-007 0.99999999999969713 0
		 8.6287051701076543 -1.0339871075085894 -5.2327402807678338e-007 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak20";
	rename -uid "D82DF584-438F-C353-6586-418093BD093F";
createNode objectSet -n "skinCluster20Set";
	rename -uid "B7C70E54-456B-0E82-CA73-B4AD980FBD66";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster20GroupId";
	rename -uid "BDEFA4DC-48BA-3BBE-88DB-0E90CFA8E48C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster20GroupParts";
	rename -uid "A42515DE-4C8A-1436-4B5E-BAB369062097";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet20";
	rename -uid "478A2794-48CA-BDD5-D23A-36B00FA701C4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId53";
	rename -uid "6DC4F1D7-4FB4-615C-9AFE-DAB731AB7149";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "9D9B93FF-4611-530C-9A3A-648DF5C7EB84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose12";
	rename -uid "7404DBA7-4F69-06B4-F527-109525B1716D";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[3]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId54";
	rename -uid "861F4C45-43B0-84C4-45F9-AD973197FFDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "1591CF6A-453D-DCDE-D73D-7AA186BFA183";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode skinCluster -n "skinCluster21";
	rename -uid "52C87504-4A20-5C28-0FC1-84AAFB9AC8FC";
	setAttr -s 418 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 7.3937328576645368e-007 0.99999999999942368 7.7823037178808419e-007 0
		 -0.99999999999972644 7.3937328595384988e-007 2.6373352455231711e-013 0 -3.1188089499100275e-013 -7.7823037155101269e-007 0.99999999999969713 0
		 5.1329414232017738 -1.0339871075085885 -0.12660919753124156 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak21";
	rename -uid "0F909CC3-4050-437F-759E-24889080D95D";
createNode objectSet -n "skinCluster21Set";
	rename -uid "A56E42C8-4D28-B843-24AD-76982F1BAA99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster21GroupId";
	rename -uid "C64E202E-4FA7-1C21-6D56-4982F76E127D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster21GroupParts";
	rename -uid "459B52FF-4176-FFD1-770A-B284FDAB1F35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet21";
	rename -uid "65603A2F-4AA8-E67F-8E6C-41BC937C5951";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	rename -uid "CFD43ACC-4BB5-95A6-3A03-38A7B27BF33A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "000459EB-489C-22EC-E999-01B7A0384ED8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose13";
	rename -uid "D3637CEE-4C76-5AEA-80BE-47B61C459578";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[3]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId57";
	rename -uid "CA90F074-4048-75FA-75F2-86A27973C6DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "69BE8C16-436C-EEDA-5C0C-8F8B305341F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:437]";
createNode skinCluster -n "skinCluster22";
	rename -uid "DE654ED4-43B6-662B-9369-DCAD6F0EEF2C";
	setAttr -s 242 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 4.5986894780985201e-007 -0.9999999999998731 -2.0372800967317241e-007 0
		 -0.99999999999989386 -4.5986894774941732e-007 2.2576778275662996e-013 0 -3.1974414498975323e-013 2.0372800962275275e-007 -0.99999999999997891 0
		 8.6287103006299759 -1.0329160319240842 5.4662672956236113e-008 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.44282275769181 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak22";
	rename -uid "095005C8-4283-6E98-E896-25A371F0651C";
createNode objectSet -n "skinCluster22Set";
	rename -uid "064573AB-4F91-3E6B-AB3E-7DB70927EB38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster22GroupId";
	rename -uid "DE9B3EEC-4451-3128-5511-76BC438A2375";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster22GroupParts";
	rename -uid "B0ABB287-41BC-3B96-05F6-DD8B3E498456";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet22";
	rename -uid "9FE34957-4704-D533-57D1-3B84494A16FF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId59";
	rename -uid "9F6C7271-4CAA-6760-30DA-CFA3C23C825E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "5110B768-4563-BA0C-CA5F-BFB10D4311DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose14";
	rename -uid "3C3A4834-4EAD-E690-8761-E380AE4093B7";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[3]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId60";
	rename -uid "1FAD1A75-419F-BF3E-070F-94987B1E699D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "283D0F09-4374-0868-AE17-61B63A559710";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:251]";
createNode skinCluster -n "skinCluster23";
	rename -uid "1005961F-4E6E-9EA4-04C2-17A61084CC7C";
	setAttr -s 418 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".wl[416].w[0]"  1;
	setAttr ".wl[417].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 4.5687226271178041e-007 3.1510342289237686e-005 0.99999999950344454 0
		 -0.99989526317921718 0.014472825286146079 7.8073264360585392e-010 0 -0.01447282527893521 -0.99989526268271456 3.1513654228653465e-005 0
		 5.1324026935733089 0.032843566891461562 1.0329183878736046 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.44282275769181 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak23";
	rename -uid "64282BCD-4AF2-0105-1FC3-A79B186829C8";
createNode objectSet -n "skinCluster23Set";
	rename -uid "A90D1331-427E-1867-6B02-5EAA4DB49AD0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster23GroupId";
	rename -uid "BF349EEF-4841-C20F-5F0D-74A7A4383488";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster23GroupParts";
	rename -uid "D35144B3-47A7-2B40-41C5-7981758CF0D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet23";
	rename -uid "69448992-4ADD-4B21-7AF2-738419470683";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId62";
	rename -uid "3EFF78D7-4785-7A4B-1584-239E6057B007";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "2DFC09B0-4018-AD0E-49C5-33AEBD964DB4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose15";
	rename -uid "37EDD587-4494-267F-1A07-44B1AA768FD0";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[3]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[4]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId63";
	rename -uid "DEBC841C-465A-1D93-38C6-77A5C2D5BEA3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "5A900B06-4B28-49C1-E751-3B9F3CE10389";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:437]";
createNode skinCluster -n "skinCluster24";
	rename -uid "32A98878-4DEC-1CCD-8A3F-7185380A0DC7";
	setAttr -s 420 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[1]"  1;
	setAttr ".wl[240].w[1]"  1;
	setAttr ".wl[241].w[1]"  1;
	setAttr ".wl[242].w[1]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[1]"  1;
	setAttr ".wl[248].w[1]"  1;
	setAttr ".wl[249].w[1]"  1;
	setAttr ".wl[250].w[1]"  1;
	setAttr ".wl[251].w[1]"  1;
	setAttr ".wl[252].w[1]"  1;
	setAttr ".wl[253].w[1]"  1;
	setAttr ".wl[254].w[1]"  1;
	setAttr ".wl[255].w[1]"  1;
	setAttr ".wl[256].w[1]"  1;
	setAttr ".wl[257].w[1]"  1;
	setAttr ".wl[258].w[1]"  1;
	setAttr ".wl[259].w[1]"  1;
	setAttr ".wl[260].w[1]"  1;
	setAttr ".wl[261].w[1]"  1;
	setAttr ".wl[262].w[1]"  1;
	setAttr ".wl[263].w[1]"  1;
	setAttr ".wl[264].w[1]"  1;
	setAttr ".wl[265].w[1]"  1;
	setAttr ".wl[266].w[1]"  1;
	setAttr ".wl[267].w[1]"  1;
	setAttr ".wl[268].w[1]"  1;
	setAttr ".wl[269].w[1]"  1;
	setAttr ".wl[270].w[1]"  1;
	setAttr ".wl[271].w[1]"  1;
	setAttr ".wl[272].w[1]"  1;
	setAttr ".wl[273].w[1]"  1;
	setAttr ".wl[274].w[1]"  1;
	setAttr ".wl[275].w[1]"  1;
	setAttr ".wl[276].w[1]"  1;
	setAttr ".wl[277].w[1]"  1;
	setAttr ".wl[278].w[1]"  1;
	setAttr ".wl[279].w[1]"  1;
	setAttr ".wl[280].w[1]"  1;
	setAttr ".wl[281].w[1]"  1;
	setAttr ".wl[282].w[1]"  1;
	setAttr ".wl[283].w[1]"  1;
	setAttr ".wl[284].w[1]"  1;
	setAttr ".wl[285].w[1]"  1;
	setAttr ".wl[286].w[1]"  1;
	setAttr ".wl[287].w[1]"  1;
	setAttr ".wl[288].w[1]"  1;
	setAttr ".wl[289].w[1]"  1;
	setAttr ".wl[290].w[1]"  1;
	setAttr ".wl[291].w[1]"  1;
	setAttr ".wl[292].w[1]"  1;
	setAttr ".wl[293].w[1]"  1;
	setAttr ".wl[294].w[1]"  1;
	setAttr ".wl[295].w[1]"  1;
	setAttr ".wl[296].w[1]"  1;
	setAttr ".wl[297].w[1]"  1;
	setAttr ".wl[298].w[1]"  1;
	setAttr ".wl[299].w[1]"  1;
	setAttr ".wl[300].w[1]"  1;
	setAttr ".wl[301].w[1]"  1;
	setAttr ".wl[302].w[1]"  1;
	setAttr ".wl[303].w[1]"  1;
	setAttr ".wl[304].w[1]"  1;
	setAttr ".wl[305].w[1]"  1;
	setAttr ".wl[306].w[1]"  1;
	setAttr ".wl[307].w[1]"  1;
	setAttr ".wl[308].w[1]"  1;
	setAttr ".wl[309].w[1]"  1;
	setAttr ".wl[310].w[1]"  1;
	setAttr ".wl[311].w[1]"  1;
	setAttr ".wl[312].w[1]"  1;
	setAttr ".wl[313].w[1]"  1;
	setAttr ".wl[314].w[1]"  1;
	setAttr ".wl[315].w[1]"  1;
	setAttr ".wl[316].w[1]"  1;
	setAttr ".wl[317].w[1]"  1;
	setAttr ".wl[318].w[1]"  1;
	setAttr ".wl[319].w[1]"  1;
	setAttr ".wl[320].w[1]"  1;
	setAttr ".wl[321].w[1]"  1;
	setAttr ".wl[322].w[1]"  1;
	setAttr ".wl[323].w[1]"  1;
	setAttr ".wl[324].w[1]"  1;
	setAttr ".wl[325].w[1]"  1;
	setAttr ".wl[326].w[1]"  1;
	setAttr ".wl[327].w[1]"  1;
	setAttr ".wl[328].w[1]"  1;
	setAttr ".wl[329].w[1]"  1;
	setAttr ".wl[330].w[1]"  1;
	setAttr ".wl[331].w[1]"  1;
	setAttr ".wl[332].w[1]"  1;
	setAttr ".wl[333].w[1]"  1;
	setAttr ".wl[334].w[1]"  1;
	setAttr ".wl[335].w[1]"  1;
	setAttr ".wl[336].w[1]"  1;
	setAttr ".wl[337].w[1]"  1;
	setAttr ".wl[338].w[1]"  1;
	setAttr ".wl[339].w[2]"  1;
	setAttr ".wl[340].w[2]"  1;
	setAttr ".wl[341].w[2]"  1;
	setAttr ".wl[342].w[2]"  1;
	setAttr ".wl[343].w[2]"  1;
	setAttr ".wl[344].w[2]"  1;
	setAttr ".wl[345].w[2]"  1;
	setAttr ".wl[346].w[2]"  1;
	setAttr ".wl[347].w[2]"  1;
	setAttr ".wl[348].w[1]"  1;
	setAttr ".wl[349].w[1]"  1;
	setAttr ".wl[350].w[1]"  1;
	setAttr ".wl[351].w[1]"  1;
	setAttr ".wl[352].w[1]"  1;
	setAttr ".wl[353].w[1]"  1;
	setAttr ".wl[354].w[1]"  1;
	setAttr ".wl[355].w[1]"  1;
	setAttr ".wl[356].w[1]"  1;
	setAttr ".wl[357].w[1]"  1;
	setAttr ".wl[358].w[1]"  1;
	setAttr ".wl[359].w[1]"  1;
	setAttr ".wl[360].w[1]"  1;
	setAttr ".wl[361].w[1]"  1;
	setAttr ".wl[362].w[1]"  1;
	setAttr ".wl[363].w[1]"  1;
	setAttr ".wl[364].w[1]"  1;
	setAttr ".wl[365].w[1]"  1;
	setAttr ".wl[366].w[1]"  1;
	setAttr ".wl[367].w[1]"  1;
	setAttr ".wl[368].w[1]"  1;
	setAttr ".wl[369].w[1]"  1;
	setAttr ".wl[370].w[1]"  1;
	setAttr ".wl[371].w[1]"  1;
	setAttr ".wl[372].w[1]"  1;
	setAttr ".wl[373].w[1]"  1;
	setAttr ".wl[374].w[1]"  1;
	setAttr ".wl[375].w[1]"  1;
	setAttr ".wl[376].w[1]"  1;
	setAttr ".wl[377].w[1]"  1;
	setAttr ".wl[378].w[1]"  1;
	setAttr ".wl[379].w[1]"  1;
	setAttr ".wl[380].w[1]"  1;
	setAttr ".wl[381].w[1]"  1;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr ".wl[386].w[1]"  1;
	setAttr ".wl[387].w[1]"  1;
	setAttr ".wl[388].w[2]"  1;
	setAttr ".wl[389].w[2]"  1;
	setAttr ".wl[390].w[2]"  1;
	setAttr ".wl[391].w[2]"  1;
	setAttr ".wl[392].w[1]"  1;
	setAttr ".wl[393].w[2]"  1;
	setAttr ".wl[394].w[2]"  1;
	setAttr ".wl[395].w[2]"  1;
	setAttr ".wl[396].w[2]"  1;
	setAttr ".wl[397].w[2]"  1;
	setAttr ".wl[398].w[2]"  1;
	setAttr ".wl[399].w[2]"  1;
	setAttr ".wl[400].w[2]"  1;
	setAttr ".wl[401].w[2]"  1;
	setAttr ".wl[402].w[2]"  1;
	setAttr ".wl[403].w[2]"  1;
	setAttr ".wl[404].w[2]"  1;
	setAttr ".wl[405].w[2]"  1;
	setAttr ".wl[406].w[2]"  1;
	setAttr ".wl[407].w[2]"  1;
	setAttr ".wl[408].w[2]"  1;
	setAttr ".wl[409].w[2]"  1;
	setAttr ".wl[410].w[2]"  1;
	setAttr ".wl[411].w[2]"  1;
	setAttr ".wl[412].w[2]"  1;
	setAttr ".wl[413].w[2]"  1;
	setAttr ".wl[414].w[2]"  1;
	setAttr ".wl[415].w[2]"  1;
	setAttr ".wl[416].w[2]"  1;
	setAttr ".wl[417].w[2]"  1;
	setAttr ".wl[418].w[2]"  1;
	setAttr ".wl[419].w[2]"  1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.052892848437871218 0.0082175476920648138 0.99856638161619271 0
		 -0.15352042487343728 0.9881454746881545 4.9266146717741262e-016 0 -0.98672885116976661 -0.15330033517004865 0.053527390240352642 0
		 1.3553159776999582 -10.719443474053945 -1.8889349762745813 1;
	setAttr ".pm[1]" -type "matrix" 7.2315603678084769e-007 0.99999999999933886 8.9335997994364995e-007 0
		 -0.99999999999973799 7.2315603686211193e-007 1.1179748264308113e-013 0 -5.3449745861052683e-013 -8.9335997973517746e-007 0.99999999999960076 0
		 10.703047611199064 -1.9361902640964028 0.83080768655617077 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999933886 -7.2315603655880319e-007 8.9335997994365016e-007 0
		 7.2315603664006743e-007 0.99999999999973799 1.117974826430812e-013 0 -8.9335997973517746e-007 5.344974584121611e-013 0.99999999999960099 0
		 -1.8969606169229849 -7.8924680110565406 0.86544976270559415 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  1 1 1;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak24";
	rename -uid "ACE169C5-4DD9-2ED0-CC85-2ABCA88CCB5D";
createNode objectSet -n "skinCluster24Set";
	rename -uid "50865D58-46A1-83F6-9283-5A9974E4F0B3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster24GroupId";
	rename -uid "20CAFC88-4296-46E7-1BAC-B1B7C7C32F68";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster24GroupParts";
	rename -uid "830C3CE2-4A4C-BE57-F320-FCBC3506B14B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet24";
	rename -uid "7A3C4C02-439D-18EC-6EDA-CF820A35DFF6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId65";
	rename -uid "E11096E1-4CD4-1696-B414-FE9BF84465A6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "25AE94AA-4BB5-80FA-1E0A-89A9985619B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose16";
	rename -uid "5E1EC14A-4F4D-18E9-9886-A0AEE0CE2415";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850593 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011528 -2.2204460492503131e-016 -0.08766332910313214 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425265 -0.039229647173416149 -0.034642076149422829 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes yes yes yes yes yes no no no;
	setAttr ".bp" yes;
createNode groupId -n "groupId66";
	rename -uid "A1E0A789-46F5-58DC-E64B-7CBBD63DB4A4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "526C7187-4216-AECC-5E73-56BEA225770E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:437]";
createNode skinCluster -n "skinCluster25";
	rename -uid "CB308A39-46B7-EAA3-379F-1EAD14DB6E1E";
	setAttr -s 310 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999933886 -7.2315603655880319e-007 8.9335997994365016e-007 0
		 7.2315603664006743e-007 0.99999999999973799 1.117974826430812e-013 0 -8.9335997973517746e-007 5.344974584121611e-013 0.99999999999960099 0
		 -1.8969606169229849 -7.8924680110565406 0.86544976270559415 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak25";
	rename -uid "F36B7339-42D2-932E-EA51-6BB40624FEC1";
createNode objectSet -n "skinCluster25Set";
	rename -uid "303F95D2-42CB-A728-3AC9-BB9F86122235";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster25GroupId";
	rename -uid "8BCBFAE9-45B5-F2A8-69CF-59A7F5D07DC9";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster25GroupParts";
	rename -uid "0672BC34-48B3-1757-3F38-E682B12674FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet25";
	rename -uid "1E7B0EBE-4B16-E2FC-8D50-2C89930D8CD7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId68";
	rename -uid "EB4F0D41-4571-EC98-11A8-C2A0408D9C69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "4F08DAB9-4CAA-F9DD-B1E1-C79CC3A99EBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId69";
	rename -uid "F543C807-4719-4432-789E-3E86A3C0C67F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	rename -uid "D1D48B94-4B90-D091-D89A-2B81102C7DD6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:313]";
createNode skinCluster -n "skinCluster26";
	rename -uid "58C40E3B-4403-D277-CDDF-70987CED4EE0";
	setAttr -s 46 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.30811515407309331 0.95134906939026043 8.9335997994364995e-007 0
		 -0.95134906939064012 0.30811515407321638 1.1179748271658496e-013 0 -2.7525764168437643e-007 -8.4989721971958316e-007 0.99999999999960087 0
		 6.7181642118276201 -4.1700552938413233 0.98981995719053217 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak26";
	rename -uid "9300F40A-4511-3F1A-ED57-49ACA1A199C7";
createNode objectSet -n "skinCluster26Set";
	rename -uid "05056BAD-4DCE-E532-A515-28BFE99D62A5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster26GroupId";
	rename -uid "7BF9ECD4-450F-30AA-9B56-CFB76ACED0D4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster26GroupParts";
	rename -uid "4DB5E9AF-46D1-872D-55A1-119D077748DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet26";
	rename -uid "3F79C9BF-4355-329D-2BD8-5BB6C823DCA5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId71";
	rename -uid "953A888A-405E-D113-6A26-1DB089605E88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	rename -uid "02B411CB-4CF0-699F-E34F-A8BAD080AED7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose17";
	rename -uid "6F8F2025-4ADD-1308-0AE7-9599E992EA5B";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[9]" -type "matrix" 0.30811515407309381 -0.95134906939064123 -2.7525764150475245e-007 0
		 0.95134906939026165 0.30811515407321666 -8.4989721999673202e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8972091376207283 7.6761765002913593 -0.98982165208250261 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00025495603691472982
		 -0.21629288274596228 -0.12437019448493848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.58816899523040422 0.80873804971057017 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId72";
	rename -uid "F7AD5887-4869-5E32-D644-37B504CB9AE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "5C2A4F23-4670-0D13-6A92-B2BEA8A9FD25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode skinCluster -n "skinCluster27";
	rename -uid "D33A8D42-4B4C-07CC-AE86-10BEBC4ED906";
	setAttr -s 50 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.64792692778972516 -0.74921802629554235 -0.13734280220957842 0
		 -0.75638585938013791 0.65412570025169436 -3.7470027081098999e-016 0 0.089839456669870421 0.10388415347896814 -0.99052357603502861 0
		 6.8043565960773575 -2.9719157010427901 -0.69383211599913819 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak27";
	rename -uid "14770906-4FCC-2772-CA77-099A5FBAB938";
createNode objectSet -n "skinCluster27Set";
	rename -uid "C325623D-4027-1352-B8AB-039560E6C9E9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster27GroupId";
	rename -uid "22A6D840-474B-9CA0-7DBF-27A0D36F539C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster27GroupParts";
	rename -uid "5C1C356E-4579-9D49-995C-6083C044AAE6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet27";
	rename -uid "61021155-4BAC-50F2-CB02-F5BAE8775418";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId74";
	rename -uid "7FB6A5C0-4A29-70E4-8055-5DB0EFAB9214";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "AEA4CAED-47E4-7503-0020-13829829FB88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose18";
	rename -uid "6585DA4F-471B-CC92-0D43-D7A1A89D1F39";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[9]" -type "matrix" 0.30811515407309381 -0.95134906939064123 -2.7525764150475245e-007 0
		 0.95134906939026165 0.30811515407321666 -8.4989721999673202e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8972091376207283 7.6761765002913593 -0.98982165208250261 1;
	setAttr ".wm[10]" -type "matrix" -0.64792692778972594 -0.75638585938013869 0.089839456669870782 0
		 -0.74921802629554302 0.65412570025169481 0.10388415347896809 0 -0.13734280220957831 -1.0028147972439158e-016 -0.99052357603502827 0
		 2.0868202019558222 7.0907255504865079 -0.98982182147337383 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00025495603691472982
		 -0.21629288274596228 -0.12437019448493848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.58816899523040422 0.80873804971057017 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6153902585723291 -1.9428902930940239e-016
		 1.4917725379013234e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86915137802642295 -0.48973230589819983 0.013669008939276948 0.067463388804742869 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId75";
	rename -uid "154CBF42-48C7-5DFB-43B7-FBAB3E12C14E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "47169627-4539-497F-F2C0-4EBAFC3493AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode skinCluster -n "skinCluster28";
	rename -uid "C29C3D45-477C-2F2A-CAAD-A48761239AA3";
	setAttr -s 50 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.65736565943841563 -0.74356033540544297 0.12242719225254328 0
		 -0.74919616560278302 0.66234817539273583 -9.1593399531575316e-016 0 -0.081089427406927497 -0.091721983001120874 -0.99247749727495549 0
		 6.6226834474664606 -3.2091464551852784 -0.98878524251174382 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak28";
	rename -uid "68D90756-4602-40D0-BDA4-778D9ACB0FD5";
createNode objectSet -n "skinCluster28Set";
	rename -uid "3A06B1E7-4AF7-5076-28CC-49B7AECA519E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster28GroupId";
	rename -uid "30EEAD67-4C75-5E3C-338F-4FB1514F7F80";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster28GroupParts";
	rename -uid "AFA84932-49A6-4189-9DEB-F0B1A6E7DD90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet28";
	rename -uid "2DDD8427-432D-AE38-43CF-C3B84A10BEA1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId77";
	rename -uid "5436F0C5-4F83-1EB3-249C-DE86B614D8D5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	rename -uid "3765F7A5-48B6-7390-41B6-23ADC2FED8CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose19";
	rename -uid "829E8E62-4214-C593-BD3C-15B7A6FBD092";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[9]" -type "matrix" 0.25370981709555573 -0.96728037750658913 -2.2665408897257206e-007 0
		 0.9672803775062031 0.25370981709565693 -8.6412960701329159e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr ".wm[10]" -type "matrix" -0.65736565943841641 -0.74919616560278379 -0.081089427406927136 0
		 -0.74356033540544375 0.6623481753927366 -0.091721983001120874 0 0.12242719225254366 -6.5820412300006521e-016 -0.99247749727495516 0
		 2.0883848580943809 7.0872613440029335 -0.73866677078868692 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850593 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011528 -2.2204460492503131e-016 -0.08766332910313214 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425265 -0.039229647173416149 -0.034642076149422829 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910342439 -0.21456077893849912
		 0.12678485759744895 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.61085631796644846 0.79174147219939994 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61062676349890488 8.8817841970012523e-016
		 -1.1102230246251565e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.88056332015213212 0.46994354251777526 0.01420363760993034 0.059662071093310037 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId78";
	rename -uid "9B30EC23-4287-F67A-19CB-8690ABC0AE4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "27E279EC-4812-D8B6-B6C9-63A8795342A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode skinCluster -n "skinCluster29";
	rename -uid "DE0523D1-448F-AF91-AE93-168922A60F2F";
	setAttr -s 46 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.25370981709555535 0.96728037750620188 8.9335997994365006e-007 0
		 -0.9672803775065878 0.25370981709565665 1.1179748263717563e-013 0 -2.2665408916761262e-007 -8.6412960674676695e-007 0.99999999999960087 0
		 6.9361516840198121 -3.8181621115156972 0.73866490510814464 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak29";
	rename -uid "8062F2E5-4C30-0AB7-9DDF-9295EB5704EB";
createNode objectSet -n "skinCluster29Set";
	rename -uid "F3F160E7-4109-068E-1C2B-2CA6DEFE5151";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster29GroupId";
	rename -uid "9CDE842B-46C0-5924-164C-8E84D47A9C25";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster29GroupParts";
	rename -uid "52EBE43F-40AD-7A28-AC26-6C9DCB2489D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet29";
	rename -uid "2EFC2DA6-47F1-C095-5DA9-B3A3C85056AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId80";
	rename -uid "B1BB6202-4F9D-6FD0-6E57-A983C2D1B030";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "7A4D140B-4143-15E3-FF11-AEAD97DF544E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId81";
	rename -uid "A1599B3E-4DB1-1C4C-C125-088A8AC76DCC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	rename -uid "88F0CAF3-4438-1CED-5ED4-14B939BA61F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode skinCluster -n "skinCluster30";
	rename -uid "90FC2583-4016-F24B-7151-AAAE97268504";
	setAttr -s 24 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.62498466325934288 -0.78057979584124237 -0.0094526723760305926 0
		 -0.78061467175758315 0.62501258726268805 -5.7991805801904574e-015 0 0.0059080392182936257 0.0073788947440434766 -0.99995532249443608 0
		 7.2062368271620922 -3.2841169549286717 -0.72035723969857823 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak30";
	rename -uid "55E8961E-4DE4-2806-93E5-D3BA49422490";
createNode objectSet -n "skinCluster30Set";
	rename -uid "14B8F0C8-4DFC-D820-8CB5-B9B9B34AD7AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster30GroupId";
	rename -uid "A5D5AD99-4E77-B2D6-CDFA-ABBCCFE30998";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster30GroupParts";
	rename -uid "63F839E7-406F-53E5-F16A-B4AADDA4FB5E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet30";
	rename -uid "A5E604E1-49CF-0019-A97A-378006B49C6C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId83";
	rename -uid "2A87A852-4E50-730B-5697-A7BBC5A3DEEF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	rename -uid "92AFAC94-42D1-58AE-EEB5-9AB2CCA055C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose20";
	rename -uid "AFEAE1D4-45B7-5266-FEF6-5E9CD32AB2E7";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[9]" -type "matrix" -0.62498466325934399 -0.78061467175758437 0.005908039218293957 0
		 -0.7805797958412436 0.62501258726268893 0.0073788947440434809 0 -0.0094526723760303966 -5.5442962807354933e-015 -0.99995532249443597 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801 -0.21456077893850048
		 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43300027313848405 -0.90138140036908687 -0.0020463602415014292 0.0042599225842652379 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId84";
	rename -uid "33D7F08C-44B7-F3E2-186B-5780EFC7DC01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "B667D989-4DBF-C5C8-400E-969767533E17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode skinCluster -n "skinCluster31";
	rename -uid "1E053EB7-4E15-C53C-9C00-3EA75BE90613";
	setAttr -s 106 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999933831 -7.2309142528892466e-007 8.9335998495703881e-007 0
		 7.2309143112069664e-007 0.99999999999973765 -6.8347999492501802e-009 0 -8.9335997980105714e-007 6.8354461877768874e-009 0.99999999999960076 0
		 -1.6966262786074029 -7.382087682319324 0.73642627189480769 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak31";
	rename -uid "E36B2121-4370-E0D6-7310-BEB0A54A00EC";
createNode objectSet -n "skinCluster31Set";
	rename -uid "BD63BB52-44EE-4FB2-F569-E18EAD7223B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster31GroupId";
	rename -uid "37BDBE0B-4942-9EBE-6F07-60AB0AA56491";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster31GroupParts";
	rename -uid "2C6B4A8D-4666-037D-3C7C-5096494CB404";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet31";
	rename -uid "ABDE3D36-4531-A848-863C-9987E7DB9051";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId86";
	rename -uid "0DFC0FA3-4B83-A2B5-D264-BEB398F372CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "EB6B8697-42C3-0BDB-4B89-6BBB84E3D794";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose21";
	rename -uid "90CA763F-4CB2-74C9-6985-B29E647D3264";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[3]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[4]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[5]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[6]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[7]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434978e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[8]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[9]" -type "matrix" -0.62498466325934399 -0.78061467175758437 0.005908039218293957 0
		 -0.7805797958412436 0.62501258726268893 0.0073788947440434809 0 -0.0094526723760303966 -5.5442962807354933e-015 -0.99995532249443597 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr ".wm[10]" -type "matrix" 0.99999999999934075 7.2309143139515183e-007 -8.9335998001462136e-007 0
		 -7.2309142501447297e-007 0.99999999999973954 6.8354459301957025e-009 0 8.9335998474347755e-007 -6.8348002068312906e-009 0.99999999999960121 0
		 1.6966202827882195 7.3820889141666513 -0.73642773713267107 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801 -0.21456077893850048
		 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43300027313848405 -0.90138140036908687 -0.0020463602415014292 0.0042599225842652379 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37895741247481257 -1.3820528380580066e-016
		 1.3782378016635732e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.43300027315304296 0.90138140036209324 0.0020463571609326469 0.0042599240640906373 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId87";
	rename -uid "FA16CE68-4D1E-7B58-258F-DEAA7BA33277";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	rename -uid "2438CB94-4ADE-1C6B-72E9-C8BE7509B8A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:109]";
createNode skinCluster -n "skinCluster32";
	rename -uid "472BB593-49A2-4D59-06AA-14B3A4D7C670";
	setAttr -s 416 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999509837 -2.9344208664359076e-006 -1.0917288651495401e-006 0
		 -2.9344202519209854e-006 -0.99999999999553579 5.6284244410178821e-007 0 -1.0917305167621708e-006 -5.6283924063844809e-007 -0.9999999999992456 0
		 1.0329188581493973 0.84788075969951215 -0.062024702719331165 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak32";
	rename -uid "3A98E90B-48F1-E392-2E41-B78CDEF7ED3E";
createNode objectSet -n "skinCluster32Set";
	rename -uid "A088EA14-4176-6D60-8C3C-DDB5A8CFDD2A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster32GroupId";
	rename -uid "F5D33658-40D3-3422-A818-4BB0F5961EF1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster32GroupParts";
	rename -uid "EC7451E7-4A7E-90B8-A116-3A9D5D460110";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet32";
	rename -uid "4D8A8A40-4E7A-D068-D033-BE9041B62F89";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId89";
	rename -uid "F8273A24-41A7-D989-F00B-BBB310B4EF3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	rename -uid "02D4FCC3-4B31-D40B-ECEC-AA819CBECA38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose22";
	rename -uid "C4BD82CD-4527-4EE4-3B1B-BDA4DE4AF5AB";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[3]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[4]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId90";
	rename -uid "4E956B08-4705-289D-7FFA-C2A62E2BEA16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	rename -uid "90C397BB-432C-4CC1-4547-10B68B87B0C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:425]";
createNode skinCluster -n "skinCluster33";
	rename -uid "18EFF69B-454D-29A6-898F-D78900C624F2";
	setAttr -s 222 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 1.4144082121680508e-006 2.566980703574496e-006 -0.99999999999570477 0
		 -5.6284339097856953e-007 0.99999999999654654 2.5669799074414793e-006 0 0.99999999999884137 5.6283976034940073e-007 1.4144096568611378e-006 0
		 -1.3120738290240792 -0.18457394872972938 -1.1501951456072157 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak33";
	rename -uid "E98FEB0A-418A-DCD8-93DC-3EAE40C79835";
createNode objectSet -n "skinCluster33Set";
	rename -uid "D0F00447-4125-3B6A-4BFF-A39E09E3E285";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster33GroupId";
	rename -uid "075FFF5A-41F6-69EC-20C2-DFBB48E85F0A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster33GroupParts";
	rename -uid "273FF97E-48F9-9CAF-97A4-B2901DD90A41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet33";
	rename -uid "BD0FFA42-4E36-522C-3679-4B929EE8284D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId92";
	rename -uid "F84B5C0E-4CCE-87C7-31CA-8B83F777897A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	rename -uid "B00B64D5-4E5A-8005-AD4A-9095A49BD1A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose23";
	rename -uid "D1515BC6-48A1-86E7-9A0C-A9B98157E3BA";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[3]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[4]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr ".wm[6]" -type "matrix" 1.4144082120578982e-006 -5.6284339110927974e-007 0.99999999999884137 0
		 2.5669807035296342e-006 0.99999999999654732 5.6283976021869084e-007 0 -0.99999999999570532 2.5669799074863445e-006 1.4144096569712908e-006 0
		 -1.1501928159965125 0.18457616276483724 1.3120755597552374 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 5.1859901224117146e-011 7.9121933346520139e-012
		 -6.27498968852046e-010 0 -0.11727593189843633 0.66330723359768695 -1.3740989028875825 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710689527090365 1.2990969446082539e-007 0.70710666710214931 1.2990973638000751e-007 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId93";
	rename -uid "3704D92D-4339-BD86-A1EB-5D8281146A90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	rename -uid "B4F370F1-40C4-A446-5834-27955E26E7E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
createNode skinCluster -n "skinCluster34";
	rename -uid "1B0F9C6A-4325-5DD7-8ABB-14946339272B";
	setAttr -s 222 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 1.4144082121680508e-006 2.566980703574496e-006 -0.99999999999570477 0
		 -5.6284339097856953e-007 0.99999999999654654 2.5669799074414793e-006 0 0.99999999999884137 5.6283976034940073e-007 1.4144096568611378e-006 0
		 -1.3120738820780313 -0.1845739487297294 -0.9143068054598783 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak34";
	rename -uid "71FB0734-4BB9-1EE2-0786-45BF05D8C916";
createNode objectSet -n "skinCluster34Set";
	rename -uid "691EF44A-44A6-151C-33C6-8599572023EF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster34GroupId";
	rename -uid "7D177F13-4F96-7B3E-5C32-2EA895F046EE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster34GroupParts";
	rename -uid "B28C27DD-4C2B-D4B0-DCD0-1D8F54FE8925";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet34";
	rename -uid "E618BA7A-479E-91FD-8DA2-A3BCC89EE2AC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId95";
	rename -uid "1CF379B5-4775-EF11-3B90-5E9AFB5C01E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	rename -uid "76E568B3-48E7-85A6-A51B-07B3B3DB1B1B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose24";
	rename -uid "A3EBCE21-444D-4F6E-3B41-C9A858515388";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[3]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[4]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr ".wm[6]" -type "matrix" 1.4144082120578982e-006 -5.6284339110927974e-007 0.99999999999884137 0
		 2.5669807035296342e-006 0.99999999999654732 5.6283976021869084e-007 0 -0.99999999999570532 2.5669799074863445e-006 1.4144096569712908e-006 0
		 -0.9143044758501131 0.18457555724417785 1.3120752791664432 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.0447644014578294e-011 4.7062688417369088e-012
		 2.1056421167334591e-010 0 0.11861240824888997 0.66330714692283677 -1.3740988798252389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710689527090365 1.2990969446082539e-007 0.70710666710214931 1.2990973638000751e-007 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId96";
	rename -uid "66DE12C3-4376-FB67-ED97-E9A25A0EB5E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	rename -uid "B323F334-4D55-C90C-B063-CEAD60E0EFA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
createNode skinCluster -n "skinCluster35";
	rename -uid "998C3FB8-4DAE-2792-64FC-989F79B2421C";
	setAttr -s 416 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".wl[400].w[0]"  1;
	setAttr ".wl[401].w[0]"  1;
	setAttr ".wl[402].w[0]"  1;
	setAttr ".wl[403].w[0]"  1;
	setAttr ".wl[404].w[0]"  1;
	setAttr ".wl[405].w[0]"  1;
	setAttr ".wl[406].w[0]"  1;
	setAttr ".wl[407].w[0]"  1;
	setAttr ".wl[408].w[0]"  1;
	setAttr ".wl[409].w[0]"  1;
	setAttr ".wl[410].w[0]"  1;
	setAttr ".wl[411].w[0]"  1;
	setAttr ".wl[412].w[0]"  1;
	setAttr ".wl[413].w[0]"  1;
	setAttr ".wl[414].w[0]"  1;
	setAttr ".wl[415].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.999999999955693 -9.2326191221678472e-006 -1.8363763127006766e-006 0
		 9.232620350105087e-006 0.99999999995715561 6.6863531319748767e-007 0 1.8363701396038759e-006 -6.6865226752150698e-007 0.99999999999809008 0
		 -1.0339941465821902 -0.84787421819079578 0.062025003212039631 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak35";
	rename -uid "333246CC-45D0-6418-4C6C-F98F49F7FA37";
createNode objectSet -n "skinCluster35Set";
	rename -uid "86924399-4501-5488-C908-D0A30A12B2AC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster35GroupId";
	rename -uid "5A4C887E-4327-EBB2-6D38-AC90276CBA67";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster35GroupParts";
	rename -uid "FFC6AE74-4A86-4E6D-4B08-F4B9832BF47F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet35";
	rename -uid "35BA4EDE-4395-348D-3561-5E81BA1BC6D9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId98";
	rename -uid "4FE76703-40DA-00DB-E95B-2D8CD5D70759";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	rename -uid "AB3760F6-4053-E893-B536-9B80BA787F12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose25";
	rename -uid "95DA41F0-451E-36E5-BFC8-EA92DB2EF0EF";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[3]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId99";
	rename -uid "20544FAB-4C2B-E49B-CAC3-7685B40B913D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	rename -uid "6A619491-4E16-95EF-0EB9-45BA2079555D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:425]";
createNode skinCluster -n "skinCluster36";
	rename -uid "32C8CFB4-40F9-4A05-BAA2-F281CE492714";
	setAttr -s 222 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -1.7386083738491407e-006 -8.8651789290221054e-006 -0.99999999995919298 0
		 6.6863621585174649e-007 0.99999999996048072 -8.8651800915877326e-006 0 0.99999999999826505 -6.6865162868913354e-007 -1.7386024464378029e-006 0
		 -1.2777400378460755 -0.18456740295827395 0.92883365683580821 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak36";
	rename -uid "129C10A1-4C4C-7537-9A67-DCBCCA48E62A";
createNode objectSet -n "skinCluster36Set";
	rename -uid "618AE7BD-495D-C8C8-A634-838AE4D5607C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster36GroupId";
	rename -uid "EEA367A1-4AE3-7AA1-6F50-B79540BAB9DB";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster36GroupParts";
	rename -uid "A86F4BB5-48F8-ABAF-E991-EB840C2487BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet36";
	rename -uid "244D8E0E-407A-E7CC-A3AD-91B6B9050CC5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId101";
	rename -uid "D891CD56-4FFE-6F01-830B-0E8D4D2D1AEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	rename -uid "CE9C6E10-4D4D-DE37-11A0-5FABAE6612E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose26";
	rename -uid "20B9A19F-40C5-2B2F-E7BC-1393EE117F5B";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[3]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr ".wm[6]" -type "matrix" -1.7386083740862015e-006 6.6863621564007381e-007 0.99999999999826517 0
		 -8.8651789290797934e-006 0.99999999996048095 -6.6865162890080442e-007 0 -0.99999999995919298 -8.865180091530048e-006 -1.7386024462007404e-006 0
		 0.92882979908532382 0.18457649157188638 1.277741529305032 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -8.3190467765807017e-012 -1.3225054955210248e-013
		 1.0515238767570121e-010 0 -0.10516029700695718 -0.66330715652335259 1.3397649502479498 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.2990973248294355e-007 -0.70710674662034856 -1.299097197819374e-007 0.70710681575272105 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId102";
	rename -uid "AAFAEF8D-4ED1-4D5B-BF07-2193EB48BE87";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	rename -uid "9C493427-46FD-914A-C144-FD80E678633F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
createNode skinCluster -n "skinCluster37";
	rename -uid "FAB7B65B-45B7-47F2-E955-9DAA856C29FD";
	setAttr -s 222 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -1.7386083738491407e-006 -8.8651789290221054e-006 -0.99999999995919298 0
		 6.6863621585174649e-007 0.99999999996048072 -8.8651800915877326e-006 0 0.99999999999826505 -6.6865162868913354e-007 -1.7386024464378029e-006 0
		 -1.2777400839707092 -0.18456740295827392 1.164721996983147 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak37";
	rename -uid "1011D795-4203-2EE9-C35D-249FE9A17B3C";
createNode objectSet -n "skinCluster37Set";
	rename -uid "59D8DBD3-4CE6-12DB-CBE7-5FA69D8DE6D6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster37GroupId";
	rename -uid "92BA6211-492F-8011-C0F8-1FA4B7008151";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster37GroupParts";
	rename -uid "3C3F8944-45F9-0AAF-9102-FAA18188A4F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet37";
	rename -uid "47EFBCB0-422D-67CD-D5D8-1F993F87197F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId104";
	rename -uid "10854FDF-4BC6-D683-F8FE-AE81F4C6DB24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	rename -uid "8A15E6D3-431F-A4B8-E184-FEABE5139713";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose27";
	rename -uid "A00B57C2-4049-BCB7-FD71-C89F1E93696C";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[1]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[2]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[3]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr ".wm[6]" -type "matrix" -1.7386083740862015e-006 6.6863621564007381e-007 0.99999999999826517 0
		 -8.8651789290797934e-006 0.99999999996048095 -6.6865162890080442e-007 0 -0.99999999995919298 -8.865180091530048e-006 -1.7386024462007404e-006 0
		 1.1647181392229564 0.18457858276453409 1.2777419855457111 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 9.7427067589101152e-012 -9.642729821860627e-013
		 1.0474060848141148e-010 0 0.13072804314036904 -0.66330724319820988 1.3397649733102668 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.2990973248294355e-007 -0.70710674662034856 -1.299097197819374e-007 0.70710681575272105 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode groupId -n "groupId105";
	rename -uid "47CCEF64-45E3-0271-DCCE-3FB2E9A46D43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	rename -uid "0CA447D8-4867-3B63-F340-4D8FDFD8EB46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:219]";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 36 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 22 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
	setAttr ".hyp[12].isc" yes;
	setAttr ".hyp[14].isc" yes;
	setAttr ".hyp[15].isc" yes;
connectAttr "pit_droid_01RN.phl[1]" "groupParts2.ig";
connectAttr "pit_droid_01RN.phl[2]" "groupParts4.ig";
connectAttr "pit_droid_01RN.phl[3]" "groupParts6.ig";
connectAttr "pit_droid_01RN.phl[4]" "groupParts8.ig";
connectAttr "pit_droid_01RN.phl[5]" "groupParts10.ig";
connectAttr "pit_droid_01RN.phl[6]" "groupParts12.ig";
connectAttr "pit_droid_01RN.phl[7]" "groupParts20.ig";
connectAttr "pit_droid_01RN.phl[8]" "groupParts47.ig";
connectAttr "pit_droid_01RN.phl[9]" "groupParts44.ig";
connectAttr "pit_droid_01RN.phl[10]" "groupParts41.ig";
connectAttr "pit_droid_01RN.phl[11]" "groupParts38.ig";
connectAttr "pit_droid_01RN.phl[12]" "groupParts35.ig";
connectAttr "pit_droid_01RN.phl[13]" "groupParts29.ig";
connectAttr "pit_droid_01RN.phl[14]" "groupParts23.ig";
connectAttr "pit_droid_01RN.phl[15]" "groupParts65.ig";
connectAttr "pit_droid_01RN.phl[16]" "groupParts83.ig";
connectAttr "pit_droid_01RN.phl[17]" "groupParts80.ig";
connectAttr "pit_droid_01RN.phl[18]" "groupParts77.ig";
connectAttr "pit_droid_01RN.phl[19]" "groupParts71.ig";
connectAttr "pit_droid_01RN.phl[20]" "groupParts74.ig";
connectAttr "pit_droid_01RN.phl[21]" "groupParts56.ig";
connectAttr "pit_droid_01RN.phl[22]" "groupParts98.ig";
connectAttr "pit_droid_01RN.phl[23]" "groupParts101.ig";
connectAttr "pit_droid_01RN.phl[24]" "groupParts104.ig";
connectAttr "pit_droid_01RN.phl[25]" "groupParts14.ig";
connectAttr "pit_droid_01RN.phl[26]" "groupParts50.ig";
connectAttr "pit_droid_01RN.phl[27]" "groupParts53.ig";
connectAttr "pit_droid_01RN.phl[28]" "groupParts89.ig";
connectAttr "pit_droid_01RN.phl[29]" "groupParts92.ig";
connectAttr "pit_droid_01RN.phl[30]" "groupParts95.ig";
connectAttr "pit_droid_01RN.phl[31]" "groupParts62.ig";
connectAttr "pit_droid_01RN.phl[32]" "groupParts59.ig";
connectAttr "pit_droid_01RN.phl[33]" "groupParts32.ig";
connectAttr "pit_droid_01RN.phl[34]" "groupParts26.ig";
connectAttr "pit_droid_01RN.phl[35]" "groupParts68.ig";
connectAttr "pit_droid_01RN.phl[36]" "groupParts86.ig";
connectAttr "pit_droid_01RN.phl[37]" "groupParts17.ig";
connectAttr "camera_headShapeDeformed.iog" "pit_droid_01RN.phl[38]";
connectAttr "camera_eyeShapeDeformed.iog" "pit_droid_01RN.phl[39]";
connectAttr "camera_accesorieShape2Deformed.iog" "pit_droid_01RN.phl[40]";
connectAttr "camera_accesorie1ShapeDeformed.iog" "pit_droid_01RN.phl[41]";
connectAttr "camera_accesorieShapeDeformed.iog" "pit_droid_01RN.phl[42]";
connectAttr "neckShapeDeformed.iog" "pit_droid_01RN.phl[43]";
connectAttr "pit_droid_01RN.phl[44]" "hips_Shape1Deformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[45]" "body_mainShapeDeformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[46]" "hips_Shape2Deformed.iog.og[2].gco";
connectAttr "hips_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[47]";
connectAttr "body_mainShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[48]";
connectAttr "hips_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[49]";
connectAttr "groupId15.msg" "pit_droid_01RN.phl[50]";
connectAttr "groupId18.msg" "pit_droid_01RN.phl[51]";
connectAttr "groupId51.msg" "pit_droid_01RN.phl[52]";
connectAttr "pit_droid_01RN.phl[53]" "right_upper_armShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[54]" "right_lower_armShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[55]" "right_wristShapeDeformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[56]" "right_1_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[57]" "right_1_finger_2ShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[58]" "right_2_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[59]" "right_2_finger_Shape2Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[60]" "right_3_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[61]" "right_3_finger_2ShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[62]" "left_upper_armShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[63]" "left_lower_armShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[64]" "left_wristShapeDeformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[65]" "left_3_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[66]" "left_3_finger_Shape2Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[67]" "left_2_finger_Shape2Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[68]" "left_2_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[69]" "left_1_finger_Shape1Deformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[70]" "left_1_finger_2ShapeDeformed.iog.og[2].gco"
		;
connectAttr "right_upper_armShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[71]";
connectAttr "right_lower_armShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[72]";
connectAttr "right_wristShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[73]";
connectAttr "right_1_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[74]";
connectAttr "right_1_finger_2ShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[75]";
connectAttr "right_2_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[76]";
connectAttr "right_2_finger_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[77]";
connectAttr "right_3_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[78]";
connectAttr "right_3_finger_2ShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[79]";
connectAttr "left_upper_armShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[80]";
connectAttr "left_lower_armShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[81]";
connectAttr "left_wristShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[82]";
connectAttr "left_3_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[83]";
connectAttr "left_3_finger_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[84]";
connectAttr "left_2_finger_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[85]";
connectAttr "left_2_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[86]";
connectAttr "left_1_finger_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[87]";
connectAttr "left_1_finger_2ShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[88]";
connectAttr "groupId21.msg" "pit_droid_01RN.phl[89]";
connectAttr "groupId24.msg" "pit_droid_01RN.phl[90]";
connectAttr "groupId27.msg" "pit_droid_01RN.phl[91]";
connectAttr "groupId30.msg" "pit_droid_01RN.phl[92]";
connectAttr "groupId33.msg" "pit_droid_01RN.phl[93]";
connectAttr "groupId36.msg" "pit_droid_01RN.phl[94]";
connectAttr "groupId39.msg" "pit_droid_01RN.phl[95]";
connectAttr "groupId42.msg" "pit_droid_01RN.phl[96]";
connectAttr "groupId45.msg" "pit_droid_01RN.phl[97]";
connectAttr "groupId48.msg" "pit_droid_01RN.phl[98]";
connectAttr "groupId66.msg" "pit_droid_01RN.phl[99]";
connectAttr "groupId69.msg" "pit_droid_01RN.phl[100]";
connectAttr "groupId72.msg" "pit_droid_01RN.phl[101]";
connectAttr "groupId75.msg" "pit_droid_01RN.phl[102]";
connectAttr "groupId78.msg" "pit_droid_01RN.phl[103]";
connectAttr "groupId81.msg" "pit_droid_01RN.phl[104]";
connectAttr "groupId84.msg" "pit_droid_01RN.phl[105]";
connectAttr "groupId87.msg" "pit_droid_01RN.phl[106]";
connectAttr "pit_droid_01RN.phl[107]" "left_upper_legShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[108]" "lef_lower_legShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[109]" "right_upper_legShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[110]" "right_lower_legShapeDeformed.iog.og[2].gco"
		;
connectAttr "pit_droid_01RN.phl[111]" "right_foorShapeDeformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[112]" "right_toe_Shape1Deformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[113]" "right_toe_Shape2Deformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[114]" "left_footShapeDeformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[115]" "left_toe_Shape2Deformed.iog.og[2].gco";
connectAttr "pit_droid_01RN.phl[116]" "left_toe_Shape1Deformed.iog.og[2].gco";
connectAttr "left_upper_legShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[117]";
connectAttr "lef_lower_legShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[118]";
connectAttr "right_upper_legShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[119]";
connectAttr "right_lower_legShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[120]";
connectAttr "right_foorShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[121]";
connectAttr "right_toe_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[122]";
connectAttr "right_toe_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[123]";
connectAttr "left_footShapeDeformed.iog.og[2]" "pit_droid_01RN.phl[124]";
connectAttr "left_toe_Shape2Deformed.iog.og[2]" "pit_droid_01RN.phl[125]";
connectAttr "left_toe_Shape1Deformed.iog.og[2]" "pit_droid_01RN.phl[126]";
connectAttr "groupId54.msg" "pit_droid_01RN.phl[127]";
connectAttr "groupId57.msg" "pit_droid_01RN.phl[128]";
connectAttr "groupId60.msg" "pit_droid_01RN.phl[129]";
connectAttr "groupId63.msg" "pit_droid_01RN.phl[130]";
connectAttr "groupId90.msg" "pit_droid_01RN.phl[131]";
connectAttr "groupId93.msg" "pit_droid_01RN.phl[132]";
connectAttr "groupId96.msg" "pit_droid_01RN.phl[133]";
connectAttr "groupId99.msg" "pit_droid_01RN.phl[134]";
connectAttr "groupId102.msg" "pit_droid_01RN.phl[135]";
connectAttr "groupId105.msg" "pit_droid_01RN.phl[136]";
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
connectAttr "hips_jnt.s" "hips_2_jnt.is";
connectAttr "hips_2_jnt_parentConstraint1.ctx" "hips_2_jnt.tx";
connectAttr "hips_2_jnt_parentConstraint1.cty" "hips_2_jnt.ty";
connectAttr "hips_2_jnt_parentConstraint1.ctz" "hips_2_jnt.tz";
connectAttr "hips_2_jnt_parentConstraint1.crx" "hips_2_jnt.rx";
connectAttr "hips_2_jnt_parentConstraint1.cry" "hips_2_jnt.ry";
connectAttr "hips_2_jnt_parentConstraint1.crz" "hips_2_jnt.rz";
connectAttr "hips_2_jnt.ro" "hips_2_jnt_parentConstraint1.cro";
connectAttr "hips_2_jnt.pim" "hips_2_jnt_parentConstraint1.cpim";
connectAttr "hips_2_jnt.rp" "hips_2_jnt_parentConstraint1.crp";
connectAttr "hips_2_jnt.rpt" "hips_2_jnt_parentConstraint1.crt";
connectAttr "hips_2_jnt.jo" "hips_2_jnt_parentConstraint1.cjo";
connectAttr "hips_2_cntrl.t" "hips_2_jnt_parentConstraint1.tg[0].tt";
connectAttr "hips_2_cntrl.rp" "hips_2_jnt_parentConstraint1.tg[0].trp";
connectAttr "hips_2_cntrl.rpt" "hips_2_jnt_parentConstraint1.tg[0].trt";
connectAttr "hips_2_cntrl.r" "hips_2_jnt_parentConstraint1.tg[0].tr";
connectAttr "hips_2_cntrl.ro" "hips_2_jnt_parentConstraint1.tg[0].tro";
connectAttr "hips_2_cntrl.s" "hips_2_jnt_parentConstraint1.tg[0].ts";
connectAttr "hips_2_cntrl.pm" "hips_2_jnt_parentConstraint1.tg[0].tpm";
connectAttr "hips_2_jnt_parentConstraint1.w0" "hips_2_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_jnt.s" "hips_rotaion_L_jnt.is";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.ctx" "hips_rotaion_L_jnt.tx";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.cty" "hips_rotaion_L_jnt.ty";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.ctz" "hips_rotaion_L_jnt.tz";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.crx" "hips_rotaion_L_jnt.rx";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.cry" "hips_rotaion_L_jnt.ry";
connectAttr "hips_rotaion_L_jnt_parentConstraint1.crz" "hips_rotaion_L_jnt.rz";
connectAttr "hips_rotaion_L_jnt.s" "upper_leg_L_jnt.is";
connectAttr "upper_leg_L_jnt.s" "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.is"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.s" "ankle_L_jnt.is"
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
connectAttr "upper_leg_R_jnt.s" "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.is"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.s" "ankle_R_jnt.is"
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
connectAttr "transformGeometry4.og" "hips_2_cntrlShape.cr";
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
connectAttr "groupId17.id" "body_mainShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "body_mainShapeDeformed.iog.og[1].gco";
connectAttr "groupId18.id" "body_mainShapeDeformed.iog.og[2].gid";
connectAttr "skinCluster8GroupId.id" "body_mainShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster8Set.mwc" "body_mainShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster8.og[0]" "body_mainShapeDeformed.i";
connectAttr "tweak8.vl[0].vt[0]" "body_mainShapeDeformed.twl";
connectAttr "skinCluster31GroupId.id" "left_1_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster31Set.mwc" "left_1_finger_2ShapeDeformed.iog.og[0].gco";
connectAttr "groupId86.id" "left_1_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet31.mwc" "left_1_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "groupId87.id" "left_1_finger_2ShapeDeformed.iog.og[2].gid";
connectAttr "groupParts87.og" "left_1_finger_2ShapeDeformed.i";
connectAttr "tweak31.vl[0].vt[0]" "left_1_finger_2ShapeDeformed.twl";
connectAttr "skinCluster25GroupId.id" "left_wristShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster25Set.mwc" "left_wristShapeDeformed.iog.og[0].gco";
connectAttr "groupId68.id" "left_wristShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet25.mwc" "left_wristShapeDeformed.iog.og[1].gco";
connectAttr "groupId69.id" "left_wristShapeDeformed.iog.og[2].gid";
connectAttr "groupParts69.og" "left_wristShapeDeformed.i";
connectAttr "tweak25.vl[0].vt[0]" "left_wristShapeDeformed.twl";
connectAttr "skinCluster11GroupId.id" "right_wristShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "right_wristShapeDeformed.iog.og[0].gco";
connectAttr "groupId26.id" "right_wristShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "right_wristShapeDeformed.iog.og[1].gco";
connectAttr "groupId27.id" "right_wristShapeDeformed.iog.og[2].gid";
connectAttr "groupParts27.og" "right_wristShapeDeformed.i";
connectAttr "tweak11.vl[0].vt[0]" "right_wristShapeDeformed.twl";
connectAttr "skinCluster13GroupId.id" "right_1_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster13Set.mwc" "right_1_finger_2ShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId32.id" "right_1_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "right_1_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "groupId33.id" "right_1_finger_2ShapeDeformed.iog.og[2].gid";
connectAttr "groupParts33.og" "right_1_finger_2ShapeDeformed.i";
connectAttr "tweak13.vl[0].vt[0]" "right_1_finger_2ShapeDeformed.twl";
connectAttr "skinCluster22GroupId.id" "right_upper_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster22Set.mwc" "right_upper_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId59.id" "right_upper_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "right_upper_legShapeDeformed.iog.og[1].gco";
connectAttr "groupId60.id" "right_upper_legShapeDeformed.iog.og[2].gid";
connectAttr "groupParts60.og" "right_upper_legShapeDeformed.i";
connectAttr "tweak22.vl[0].vt[0]" "right_upper_legShapeDeformed.twl";
connectAttr "skinCluster23GroupId.id" "right_lower_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster23Set.mwc" "right_lower_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId62.id" "right_lower_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet23.mwc" "right_lower_legShapeDeformed.iog.og[1].gco";
connectAttr "groupId63.id" "right_lower_legShapeDeformed.iog.og[2].gid";
connectAttr "groupParts63.og" "right_lower_legShapeDeformed.i";
connectAttr "tweak23.vl[0].vt[0]" "right_lower_legShapeDeformed.twl";
connectAttr "skinCluster34GroupId.id" "right_toe_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster34Set.mwc" "right_toe_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId95.id" "right_toe_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet34.mwc" "right_toe_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId96.id" "right_toe_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts96.og" "right_toe_Shape2Deformed.i";
connectAttr "tweak34.vl[0].vt[0]" "right_toe_Shape2Deformed.twl";
connectAttr "skinCluster33GroupId.id" "right_toe_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster33Set.mwc" "right_toe_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId92.id" "right_toe_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet33.mwc" "right_toe_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId93.id" "right_toe_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts93.og" "right_toe_Shape1Deformed.i";
connectAttr "tweak33.vl[0].vt[0]" "right_toe_Shape1Deformed.twl";
connectAttr "skinCluster32GroupId.id" "right_foorShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster32Set.mwc" "right_foorShapeDeformed.iog.og[0].gco";
connectAttr "groupId89.id" "right_foorShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet32.mwc" "right_foorShapeDeformed.iog.og[1].gco";
connectAttr "groupId90.id" "right_foorShapeDeformed.iog.og[2].gid";
connectAttr "groupParts90.og" "right_foorShapeDeformed.i";
connectAttr "tweak32.vl[0].vt[0]" "right_foorShapeDeformed.twl";
connectAttr "skinCluster20GroupId.id" "left_upper_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster20Set.mwc" "left_upper_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId53.id" "left_upper_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "left_upper_legShapeDeformed.iog.og[1].gco";
connectAttr "groupId54.id" "left_upper_legShapeDeformed.iog.og[2].gid";
connectAttr "groupParts54.og" "left_upper_legShapeDeformed.i";
connectAttr "tweak20.vl[0].vt[0]" "left_upper_legShapeDeformed.twl";
connectAttr "skinCluster19GroupId.id" "hips_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster19Set.mwc" "hips_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId50.id" "hips_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "hips_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId51.id" "hips_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts51.og" "hips_Shape2Deformed.i";
connectAttr "tweak19.vl[0].vt[0]" "hips_Shape2Deformed.twl";
connectAttr "skinCluster7GroupId.id" "hips_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster7Set.mwc" "hips_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId14.id" "hips_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "hips_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId15.id" "hips_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts15.og" "hips_Shape1Deformed.i";
connectAttr "tweak7.vl[0].vt[0]" "hips_Shape1Deformed.twl";
connectAttr "skinCluster37GroupId.id" "left_toe_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster37Set.mwc" "left_toe_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId104.id" "left_toe_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet37.mwc" "left_toe_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId105.id" "left_toe_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts105.og" "left_toe_Shape1Deformed.i";
connectAttr "tweak37.vl[0].vt[0]" "left_toe_Shape1Deformed.twl";
connectAttr "skinCluster36GroupId.id" "left_toe_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster36Set.mwc" "left_toe_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId101.id" "left_toe_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet36.mwc" "left_toe_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId102.id" "left_toe_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts102.og" "left_toe_Shape2Deformed.i";
connectAttr "tweak36.vl[0].vt[0]" "left_toe_Shape2Deformed.twl";
connectAttr "skinCluster35GroupId.id" "left_footShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster35Set.mwc" "left_footShapeDeformed.iog.og[0].gco";
connectAttr "groupId98.id" "left_footShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet35.mwc" "left_footShapeDeformed.iog.og[1].gco";
connectAttr "groupId99.id" "left_footShapeDeformed.iog.og[2].gid";
connectAttr "groupParts99.og" "left_footShapeDeformed.i";
connectAttr "tweak35.vl[0].vt[0]" "left_footShapeDeformed.twl";
connectAttr "skinCluster21GroupId.id" "lef_lower_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster21Set.mwc" "lef_lower_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId56.id" "lef_lower_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "lef_lower_legShapeDeformed.iog.og[1].gco";
connectAttr "groupId57.id" "lef_lower_legShapeDeformed.iog.og[2].gid";
connectAttr "groupParts57.og" "lef_lower_legShapeDeformed.i";
connectAttr "tweak21.vl[0].vt[0]" "lef_lower_legShapeDeformed.twl";
connectAttr "skinCluster27GroupId.id" "left_3_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster27Set.mwc" "left_3_finger_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId74.id" "left_3_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet27.mwc" "left_3_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId75.id" "left_3_finger_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts75.og" "left_3_finger_Shape2Deformed.i";
connectAttr "tweak27.vl[0].vt[0]" "left_3_finger_Shape2Deformed.twl";
connectAttr "skinCluster26GroupId.id" "left_3_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster26Set.mwc" "left_3_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId71.id" "left_3_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet26.mwc" "left_3_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId72.id" "left_3_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts72.og" "left_3_finger_Shape1Deformed.i";
connectAttr "tweak26.vl[0].vt[0]" "left_3_finger_Shape1Deformed.twl";
connectAttr "skinCluster28GroupId.id" "left_2_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster28Set.mwc" "left_2_finger_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId77.id" "left_2_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet28.mwc" "left_2_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId78.id" "left_2_finger_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts78.og" "left_2_finger_Shape2Deformed.i";
connectAttr "tweak28.vl[0].vt[0]" "left_2_finger_Shape2Deformed.twl";
connectAttr "skinCluster29GroupId.id" "left_2_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster29Set.mwc" "left_2_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId80.id" "left_2_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet29.mwc" "left_2_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId81.id" "left_2_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts81.og" "left_2_finger_Shape1Deformed.i";
connectAttr "tweak29.vl[0].vt[0]" "left_2_finger_Shape1Deformed.twl";
connectAttr "skinCluster30GroupId.id" "left_1_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster30Set.mwc" "left_1_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId83.id" "left_1_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet30.mwc" "left_1_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId84.id" "left_1_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts84.og" "left_1_finger_Shape1Deformed.i";
connectAttr "tweak30.vl[0].vt[0]" "left_1_finger_Shape1Deformed.twl";
connectAttr "skinCluster24GroupId.id" "left_lower_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster24Set.mwc" "left_lower_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId65.id" "left_lower_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet24.mwc" "left_lower_armShapeDeformed.iog.og[1].gco";
connectAttr "groupId66.id" "left_lower_armShapeDeformed.iog.og[2].gid";
connectAttr "groupParts66.og" "left_lower_armShapeDeformed.i";
connectAttr "tweak24.vl[0].vt[0]" "left_lower_armShapeDeformed.twl";
connectAttr "skinCluster10GroupId.id" "right_lower_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster10Set.mwc" "right_lower_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId23.id" "right_lower_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "right_lower_armShapeDeformed.iog.og[1].gco";
connectAttr "groupId24.id" "right_lower_armShapeDeformed.iog.og[2].gid";
connectAttr "groupParts24.og" "right_lower_armShapeDeformed.i";
connectAttr "tweak10.vl[0].vt[0]" "right_lower_armShapeDeformed.twl";
connectAttr "skinCluster12GroupId.id" "right_1_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster12Set.mwc" "right_1_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId29.id" "right_1_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "right_1_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId30.id" "right_1_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts30.og" "right_1_finger_Shape1Deformed.i";
connectAttr "tweak12.vl[0].vt[0]" "right_1_finger_Shape1Deformed.twl";
connectAttr "skinCluster14GroupId.id" "right_2_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster14Set.mwc" "right_2_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId35.id" "right_2_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet14.mwc" "right_2_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId36.id" "right_2_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts36.og" "right_2_finger_Shape1Deformed.i";
connectAttr "tweak14.vl[0].vt[0]" "right_2_finger_Shape1Deformed.twl";
connectAttr "skinCluster15GroupId.id" "right_2_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster15Set.mwc" "right_2_finger_Shape2Deformed.iog.og[0].gco"
		;
connectAttr "groupId38.id" "right_2_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "right_2_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "groupId39.id" "right_2_finger_Shape2Deformed.iog.og[2].gid";
connectAttr "groupParts39.og" "right_2_finger_Shape2Deformed.i";
connectAttr "tweak15.vl[0].vt[0]" "right_2_finger_Shape2Deformed.twl";
connectAttr "skinCluster16GroupId.id" "right_3_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster16Set.mwc" "right_3_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId41.id" "right_3_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "right_3_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "groupId42.id" "right_3_finger_Shape1Deformed.iog.og[2].gid";
connectAttr "groupParts42.og" "right_3_finger_Shape1Deformed.i";
connectAttr "tweak16.vl[0].vt[0]" "right_3_finger_Shape1Deformed.twl";
connectAttr "skinCluster17GroupId.id" "right_3_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster17Set.mwc" "right_3_finger_2ShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId44.id" "right_3_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "right_3_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "groupId45.id" "right_3_finger_2ShapeDeformed.iog.og[2].gid";
connectAttr "groupParts45.og" "right_3_finger_2ShapeDeformed.i";
connectAttr "tweak17.vl[0].vt[0]" "right_3_finger_2ShapeDeformed.twl";
connectAttr "skinCluster18GroupId.id" "left_upper_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster18Set.mwc" "left_upper_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId47.id" "left_upper_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "left_upper_armShapeDeformed.iog.og[1].gco";
connectAttr "groupId48.id" "left_upper_armShapeDeformed.iog.og[2].gid";
connectAttr "groupParts48.og" "left_upper_armShapeDeformed.i";
connectAttr "tweak18.vl[0].vt[0]" "left_upper_armShapeDeformed.twl";
connectAttr "skinCluster9GroupId.id" "right_upper_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster9Set.mwc" "right_upper_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId20.id" "right_upper_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "right_upper_armShapeDeformed.iog.og[1].gco";
connectAttr "groupId21.id" "right_upper_armShapeDeformed.iog.og[2].gid";
connectAttr "groupParts21.og" "right_upper_armShapeDeformed.i";
connectAttr "tweak9.vl[0].vt[0]" "right_upper_armShapeDeformed.twl";
connectAttr "skinCluster6GroupId.id" "neckShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "neckShapeDeformed.iog.og[0].gco";
connectAttr "groupId12.id" "neckShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "neckShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster6.og[0]" "neckShapeDeformed.i";
connectAttr "tweak6.vl[0].vt[0]" "neckShapeDeformed.twl";
connectAttr "skinCluster1GroupId.id" "camera_headShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "camera_headShapeDeformed.iog.og[0].gco";
connectAttr "groupId2.id" "camera_headShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "camera_headShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "camera_headShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "camera_headShapeDeformed.twl";
connectAttr "skinCluster5GroupId.id" "camera_accesorieShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster5Set.mwc" "camera_accesorieShapeDeformed.iog.og[0].gco";
connectAttr "groupId10.id" "camera_accesorieShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "camera_accesorieShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster5.og[0]" "camera_accesorieShapeDeformed.i";
connectAttr "tweak5.vl[0].vt[0]" "camera_accesorieShapeDeformed.twl";
connectAttr "skinCluster4GroupId.id" "camera_accesorie1ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster4Set.mwc" "camera_accesorie1ShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId8.id" "camera_accesorie1ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "camera_accesorie1ShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster4.og[0]" "camera_accesorie1ShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "camera_accesorie1ShapeDeformed.twl";
connectAttr "skinCluster3GroupId.id" "camera_accesorieShape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster3Set.mwc" "camera_accesorieShape2Deformed.iog.og[0].gco"
		;
connectAttr "groupId6.id" "camera_accesorieShape2Deformed.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "camera_accesorieShape2Deformed.iog.og[1].gco";
connectAttr "skinCluster3.og[0]" "camera_accesorieShape2Deformed.i";
connectAttr "tweak3.vl[0].vt[0]" "camera_accesorieShape2Deformed.twl";
connectAttr "skinCluster2GroupId.id" "camera_eyeShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "camera_eyeShapeDeformed.iog.og[0].gco";
connectAttr "groupId4.id" "camera_eyeShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "camera_eyeShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "camera_eyeShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "camera_eyeShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pit_droid_01RNfosterParent1.msg" "pit_droid_01RN.fp";
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
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "head_jnt.wm" "skinCluster1.ma[0]";
connectAttr "head_jnt.liw" "skinCluster1.lw[0]";
connectAttr "head_jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "camera_headShapeDeformed.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "camera_headShapeDeformed.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "root_jnt.msg" "bindPose1.m[0]";
connectAttr "base_jnt.msg" "bindPose1.m[1]";
connectAttr "hips_jnt.msg" "bindPose1.m[2]";
connectAttr "spine_jnt.msg" "bindPose1.m[3]";
connectAttr "neck_jnt.msg" "bindPose1.m[4]";
connectAttr "head_jnt.msg" "bindPose1.m[5]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "root_jnt.bps" "bindPose1.wm[0]";
connectAttr "base_jnt.bps" "bindPose1.wm[1]";
connectAttr "hips_jnt.bps" "bindPose1.wm[2]";
connectAttr "spine_jnt.bps" "bindPose1.wm[3]";
connectAttr "neck_jnt.bps" "bindPose1.wm[4]";
connectAttr "head_jnt.bps" "bindPose1.wm[5]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "head_jnt.wm" "skinCluster2.ma[0]";
connectAttr "head_jnt.liw" "skinCluster2.lw[0]";
connectAttr "head_jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "camera_eyeShapeDeformed.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "camera_eyeShapeDeformed.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "head_jnt.wm" "skinCluster3.ma[0]";
connectAttr "head_jnt.liw" "skinCluster3.lw[0]";
connectAttr "head_jnt.obcc" "skinCluster3.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "camera_accesorieShape2Deformed.iog.og[0]" "skinCluster3Set.dsm" -na
		;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "camera_accesorieShape2Deformed.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "head_jnt.wm" "skinCluster4.ma[0]";
connectAttr "head_jnt.liw" "skinCluster4.lw[0]";
connectAttr "head_jnt.obcc" "skinCluster4.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "camera_accesorie1ShapeDeformed.iog.og[0]" "skinCluster4Set.dsm" -na
		;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "camera_accesorie1ShapeDeformed.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "head_jnt.wm" "skinCluster5.ma[0]";
connectAttr "head_jnt.liw" "skinCluster5.lw[0]";
connectAttr "head_jnt.obcc" "skinCluster5.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "camera_accesorieShapeDeformed.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "camera_accesorieShapeDeformed.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "neck_jnt.wm" "skinCluster6.ma[0]";
connectAttr "neck_jnt.liw" "skinCluster6.lw[0]";
connectAttr "neck_jnt.obcc" "skinCluster6.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "neckShapeDeformed.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "neckShapeDeformed.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "hips_jnt.wm" "skinCluster7.ma[0]";
connectAttr "hips_jnt.liw" "skinCluster7.lw[0]";
connectAttr "hips_jnt.obcc" "skinCluster7.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "hips_Shape1Deformed.iog.og[0]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "hips_Shape1Deformed.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "skinCluster7.og[0]" "groupParts15.ig";
connectAttr "groupId15.id" "groupParts15.gi";
connectAttr "groupParts17.og" "tweak8.ip[0].ig";
connectAttr "groupId17.id" "tweak8.ip[0].gi";
connectAttr "groupId17.msg" "tweakSet8.gn" -na;
connectAttr "body_mainShapeDeformed.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupId17.id" "groupParts17.gi";
connectAttr "tweak8.og[0]" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster8.bp";
connectAttr "hips_2_jnt.wm" "skinCluster8.ma[0]";
connectAttr "hips_2_jnt.liw" "skinCluster8.lw[0]";
connectAttr "hips_2_jnt.obcc" "skinCluster8.ifcl[0]";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "body_mainShapeDeformed.iog.og[3]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "groupParts18.og" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "root_jnt.msg" "bindPose2.m[0]";
connectAttr "base_jnt.msg" "bindPose2.m[1]";
connectAttr "hips_jnt.msg" "bindPose2.m[2]";
connectAttr "hips_2_jnt.msg" "bindPose2.m[3]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "makeNurbCircle6.oc" "transformGeometry4.ig";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster9.bp";
connectAttr "shoulder_rotaion_R_jnt.wm" "skinCluster9.ma[0]";
connectAttr "shoulder_rotaion_R_jnt.liw" "skinCluster9.lw[0]";
connectAttr "shoulder_rotaion_R_jnt.obcc" "skinCluster9.ifcl[0]";
connectAttr "groupParts20.og" "tweak9.ip[0].ig";
connectAttr "groupId20.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "right_upper_armShapeDeformed.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet9.gn" -na;
connectAttr "right_upper_armShapeDeformed.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "root_jnt.msg" "bindPose3.m[0]";
connectAttr "base_jnt.msg" "bindPose3.m[1]";
connectAttr "hips_jnt.msg" "bindPose3.m[2]";
connectAttr "spine_jnt.msg" "bindPose3.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose3.m[4]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "skinCluster9.og[0]" "groupParts21.ig";
connectAttr "groupId21.id" "groupParts21.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster10.bp";
connectAttr "elbow_R_1_jnt.wm" "skinCluster10.ma[0]";
connectAttr "elbow_R_2_jnt.wm" "skinCluster10.ma[1]";
connectAttr "wrist_R_jnt.wm" "skinCluster10.ma[2]";
connectAttr "elbow_R_1_jnt.liw" "skinCluster10.lw[0]";
connectAttr "elbow_R_2_jnt.liw" "skinCluster10.lw[1]";
connectAttr "wrist_R_jnt.liw" "skinCluster10.lw[2]";
connectAttr "elbow_R_1_jnt.obcc" "skinCluster10.ifcl[0]";
connectAttr "elbow_R_2_jnt.obcc" "skinCluster10.ifcl[1]";
connectAttr "wrist_R_jnt.obcc" "skinCluster10.ifcl[2]";
connectAttr "wrist_R_jnt.msg" "skinCluster10.ptt";
connectAttr "groupParts23.og" "tweak10.ip[0].ig";
connectAttr "groupId23.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "right_lower_armShapeDeformed.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId23.msg" "tweakSet10.gn" -na;
connectAttr "right_lower_armShapeDeformed.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "groupId23.id" "groupParts23.gi";
connectAttr "root_jnt.msg" "bindPose4.m[0]";
connectAttr "base_jnt.msg" "bindPose4.m[1]";
connectAttr "hips_jnt.msg" "bindPose4.m[2]";
connectAttr "spine_jnt.msg" "bindPose4.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose4.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose4.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose4.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose4.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose4.m[8]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose4.m[9]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose4.m[10]";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "bindPose4.m[5]" "bindPose4.p[6]";
connectAttr "bindPose4.m[6]" "bindPose4.p[7]";
connectAttr "bindPose4.m[7]" "bindPose4.p[8]";
connectAttr "bindPose4.m[1]" "bindPose4.p[9]";
connectAttr "bindPose4.m[1]" "bindPose4.p[10]";
connectAttr "hips_rotaion_R_jnt.bps" "bindPose4.wm[9]";
connectAttr "hips_rotaion_L_jnt.bps" "bindPose4.wm[10]";
connectAttr "skinCluster10.og[0]" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "wrist_R_jnt.wm" "skinCluster11.ma[0]";
connectAttr "wrist_R_jnt.liw" "skinCluster11.lw[0]";
connectAttr "wrist_R_jnt.obcc" "skinCluster11.ifcl[0]";
connectAttr "bindPose4.msg" "skinCluster11.bp";
connectAttr "groupParts26.og" "tweak11.ip[0].ig";
connectAttr "groupId26.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "right_wristShapeDeformed.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet11.gn" -na;
connectAttr "right_wristShapeDeformed.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "skinCluster11.og[0]" "groupParts27.ig";
connectAttr "groupId27.id" "groupParts27.gi";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster12.bp";
connectAttr "finger_3_R_1_jnt.wm" "skinCluster12.ma[0]";
connectAttr "finger_3_R_1_jnt.liw" "skinCluster12.lw[0]";
connectAttr "finger_3_R_1_jnt.obcc" "skinCluster12.ifcl[0]";
connectAttr "groupParts29.og" "tweak12.ip[0].ig";
connectAttr "groupId29.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "right_1_finger_Shape1Deformed.iog.og[0]" "skinCluster12Set.dsm" -na
		;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId29.msg" "tweakSet12.gn" -na;
connectAttr "right_1_finger_Shape1Deformed.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "groupId29.id" "groupParts29.gi";
connectAttr "root_jnt.msg" "bindPose5.m[0]";
connectAttr "base_jnt.msg" "bindPose5.m[1]";
connectAttr "hips_jnt.msg" "bindPose5.m[2]";
connectAttr "spine_jnt.msg" "bindPose5.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose5.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose5.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose5.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose5.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose5.m[8]";
connectAttr "finger_3_R_1_jnt.msg" "bindPose5.m[9]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "bindPose5.m[6]" "bindPose5.p[7]";
connectAttr "bindPose5.m[7]" "bindPose5.p[8]";
connectAttr "bindPose5.m[8]" "bindPose5.p[9]";
connectAttr "skinCluster12.og[0]" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "skinCluster13GroupParts.og" "skinCluster13.ip[0].ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13.ip[0].gi";
connectAttr "bindPose6.msg" "skinCluster13.bp";
connectAttr "finger_3_R_2_jnt.wm" "skinCluster13.ma[0]";
connectAttr "finger_3_R_2_jnt.liw" "skinCluster13.lw[0]";
connectAttr "finger_3_R_2_jnt.obcc" "skinCluster13.ifcl[0]";
connectAttr "groupParts32.og" "tweak13.ip[0].ig";
connectAttr "groupId32.id" "tweak13.ip[0].gi";
connectAttr "skinCluster13GroupId.msg" "skinCluster13Set.gn" -na;
connectAttr "right_1_finger_2ShapeDeformed.iog.og[0]" "skinCluster13Set.dsm" -na
		;
connectAttr "skinCluster13.msg" "skinCluster13Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster13GroupParts.ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet13.gn" -na;
connectAttr "right_1_finger_2ShapeDeformed.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "root_jnt.msg" "bindPose6.m[0]";
connectAttr "base_jnt.msg" "bindPose6.m[1]";
connectAttr "hips_jnt.msg" "bindPose6.m[2]";
connectAttr "spine_jnt.msg" "bindPose6.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose6.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose6.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose6.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose6.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose6.m[8]";
connectAttr "finger_3_R_1_jnt.msg" "bindPose6.m[9]";
connectAttr "finger_3_R_2_jnt.msg" "bindPose6.m[10]";
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "bindPose6.m[2]" "bindPose6.p[3]";
connectAttr "bindPose6.m[3]" "bindPose6.p[4]";
connectAttr "bindPose6.m[4]" "bindPose6.p[5]";
connectAttr "bindPose6.m[5]" "bindPose6.p[6]";
connectAttr "bindPose6.m[6]" "bindPose6.p[7]";
connectAttr "bindPose6.m[7]" "bindPose6.p[8]";
connectAttr "bindPose6.m[8]" "bindPose6.p[9]";
connectAttr "bindPose6.m[9]" "bindPose6.p[10]";
connectAttr "skinCluster13.og[0]" "groupParts33.ig";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "skinCluster14GroupParts.og" "skinCluster14.ip[0].ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14.ip[0].gi";
connectAttr "bindPose7.msg" "skinCluster14.bp";
connectAttr "finger_1_R_1_jnt.wm" "skinCluster14.ma[0]";
connectAttr "finger_1_R_1_jnt.liw" "skinCluster14.lw[0]";
connectAttr "finger_1_R_1_jnt.obcc" "skinCluster14.ifcl[0]";
connectAttr "groupParts35.og" "tweak14.ip[0].ig";
connectAttr "groupId35.id" "tweak14.ip[0].gi";
connectAttr "skinCluster14GroupId.msg" "skinCluster14Set.gn" -na;
connectAttr "right_2_finger_Shape1Deformed.iog.og[0]" "skinCluster14Set.dsm" -na
		;
connectAttr "skinCluster14.msg" "skinCluster14Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster14GroupParts.ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14GroupParts.gi";
connectAttr "groupId35.msg" "tweakSet14.gn" -na;
connectAttr "right_2_finger_Shape1Deformed.iog.og[1]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "groupId35.id" "groupParts35.gi";
connectAttr "root_jnt.msg" "bindPose7.m[0]";
connectAttr "base_jnt.msg" "bindPose7.m[1]";
connectAttr "hips_jnt.msg" "bindPose7.m[2]";
connectAttr "spine_jnt.msg" "bindPose7.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose7.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose7.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose7.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose7.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose7.m[8]";
connectAttr "finger_1_R_1_jnt.msg" "bindPose7.m[9]";
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.m[0]" "bindPose7.p[1]";
connectAttr "bindPose7.m[1]" "bindPose7.p[2]";
connectAttr "bindPose7.m[2]" "bindPose7.p[3]";
connectAttr "bindPose7.m[3]" "bindPose7.p[4]";
connectAttr "bindPose7.m[4]" "bindPose7.p[5]";
connectAttr "bindPose7.m[5]" "bindPose7.p[6]";
connectAttr "bindPose7.m[6]" "bindPose7.p[7]";
connectAttr "bindPose7.m[7]" "bindPose7.p[8]";
connectAttr "bindPose7.m[8]" "bindPose7.p[9]";
connectAttr "skinCluster14.og[0]" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "skinCluster15GroupParts.og" "skinCluster15.ip[0].ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster15.bp";
connectAttr "finger_1_R_2_jnt.wm" "skinCluster15.ma[0]";
connectAttr "finger_1_R_2_jnt.liw" "skinCluster15.lw[0]";
connectAttr "finger_1_R_2_jnt.obcc" "skinCluster15.ifcl[0]";
connectAttr "groupParts38.og" "tweak15.ip[0].ig";
connectAttr "groupId38.id" "tweak15.ip[0].gi";
connectAttr "skinCluster15GroupId.msg" "skinCluster15Set.gn" -na;
connectAttr "right_2_finger_Shape2Deformed.iog.og[0]" "skinCluster15Set.dsm" -na
		;
connectAttr "skinCluster15.msg" "skinCluster15Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster15GroupParts.ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet15.gn" -na;
connectAttr "right_2_finger_Shape2Deformed.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "root_jnt.msg" "bindPose8.m[0]";
connectAttr "base_jnt.msg" "bindPose8.m[1]";
connectAttr "hips_jnt.msg" "bindPose8.m[2]";
connectAttr "spine_jnt.msg" "bindPose8.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose8.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose8.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose8.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose8.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose8.m[8]";
connectAttr "finger_1_R_1_jnt.msg" "bindPose8.m[9]";
connectAttr "finger_1_R_2_jnt.msg" "bindPose8.m[10]";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.m[2]" "bindPose8.p[3]";
connectAttr "bindPose8.m[3]" "bindPose8.p[4]";
connectAttr "bindPose8.m[4]" "bindPose8.p[5]";
connectAttr "bindPose8.m[5]" "bindPose8.p[6]";
connectAttr "bindPose8.m[6]" "bindPose8.p[7]";
connectAttr "bindPose8.m[7]" "bindPose8.p[8]";
connectAttr "bindPose8.m[8]" "bindPose8.p[9]";
connectAttr "bindPose8.m[9]" "bindPose8.p[10]";
connectAttr "skinCluster15.og[0]" "groupParts39.ig";
connectAttr "groupId39.id" "groupParts39.gi";
connectAttr "skinCluster16GroupParts.og" "skinCluster16.ip[0].ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster16.bp";
connectAttr "finger_2_R_1_jnt.wm" "skinCluster16.ma[0]";
connectAttr "finger_2_R_1_jnt.liw" "skinCluster16.lw[0]";
connectAttr "finger_2_R_1_jnt.obcc" "skinCluster16.ifcl[0]";
connectAttr "groupParts41.og" "tweak16.ip[0].ig";
connectAttr "groupId41.id" "tweak16.ip[0].gi";
connectAttr "skinCluster16GroupId.msg" "skinCluster16Set.gn" -na;
connectAttr "right_3_finger_Shape1Deformed.iog.og[0]" "skinCluster16Set.dsm" -na
		;
connectAttr "skinCluster16.msg" "skinCluster16Set.ub[0]";
connectAttr "tweak16.og[0]" "skinCluster16GroupParts.ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16GroupParts.gi";
connectAttr "groupId41.msg" "tweakSet16.gn" -na;
connectAttr "right_3_finger_Shape1Deformed.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "groupId41.id" "groupParts41.gi";
connectAttr "root_jnt.msg" "bindPose9.m[0]";
connectAttr "base_jnt.msg" "bindPose9.m[1]";
connectAttr "hips_jnt.msg" "bindPose9.m[2]";
connectAttr "spine_jnt.msg" "bindPose9.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose9.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose9.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose9.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose9.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose9.m[8]";
connectAttr "finger_2_R_1_jnt.msg" "bindPose9.m[9]";
connectAttr "bindPose9.w" "bindPose9.p[0]";
connectAttr "bindPose9.m[0]" "bindPose9.p[1]";
connectAttr "bindPose9.m[1]" "bindPose9.p[2]";
connectAttr "bindPose9.m[2]" "bindPose9.p[3]";
connectAttr "bindPose9.m[3]" "bindPose9.p[4]";
connectAttr "bindPose9.m[4]" "bindPose9.p[5]";
connectAttr "bindPose9.m[5]" "bindPose9.p[6]";
connectAttr "bindPose9.m[6]" "bindPose9.p[7]";
connectAttr "bindPose9.m[7]" "bindPose9.p[8]";
connectAttr "bindPose9.m[8]" "bindPose9.p[9]";
connectAttr "skinCluster16.og[0]" "groupParts42.ig";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "skinCluster17GroupParts.og" "skinCluster17.ip[0].ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17.ip[0].gi";
connectAttr "bindPose10.msg" "skinCluster17.bp";
connectAttr "finger_2_R_2_jnt.wm" "skinCluster17.ma[0]";
connectAttr "finger_2_R_2_jnt.liw" "skinCluster17.lw[0]";
connectAttr "finger_2_R_2_jnt.obcc" "skinCluster17.ifcl[0]";
connectAttr "groupParts44.og" "tweak17.ip[0].ig";
connectAttr "groupId44.id" "tweak17.ip[0].gi";
connectAttr "skinCluster17GroupId.msg" "skinCluster17Set.gn" -na;
connectAttr "right_3_finger_2ShapeDeformed.iog.og[0]" "skinCluster17Set.dsm" -na
		;
connectAttr "skinCluster17.msg" "skinCluster17Set.ub[0]";
connectAttr "tweak17.og[0]" "skinCluster17GroupParts.ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet17.gn" -na;
connectAttr "right_3_finger_2ShapeDeformed.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "root_jnt.msg" "bindPose10.m[0]";
connectAttr "base_jnt.msg" "bindPose10.m[1]";
connectAttr "hips_jnt.msg" "bindPose10.m[2]";
connectAttr "spine_jnt.msg" "bindPose10.m[3]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose10.m[4]";
connectAttr "shoulder_R_jnt.msg" "bindPose10.m[5]";
connectAttr "elbow_R_1_jnt.msg" "bindPose10.m[6]";
connectAttr "elbow_R_2_jnt.msg" "bindPose10.m[7]";
connectAttr "wrist_R_jnt.msg" "bindPose10.m[8]";
connectAttr "finger_2_R_1_jnt.msg" "bindPose10.m[9]";
connectAttr "finger_2_R_2_jnt.msg" "bindPose10.m[10]";
connectAttr "bindPose10.w" "bindPose10.p[0]";
connectAttr "bindPose10.m[0]" "bindPose10.p[1]";
connectAttr "bindPose10.m[1]" "bindPose10.p[2]";
connectAttr "bindPose10.m[2]" "bindPose10.p[3]";
connectAttr "bindPose10.m[3]" "bindPose10.p[4]";
connectAttr "bindPose10.m[4]" "bindPose10.p[5]";
connectAttr "bindPose10.m[5]" "bindPose10.p[6]";
connectAttr "bindPose10.m[6]" "bindPose10.p[7]";
connectAttr "bindPose10.m[7]" "bindPose10.p[8]";
connectAttr "bindPose10.m[8]" "bindPose10.p[9]";
connectAttr "bindPose10.m[9]" "bindPose10.p[10]";
connectAttr "skinCluster17.og[0]" "groupParts45.ig";
connectAttr "groupId45.id" "groupParts45.gi";
connectAttr "skinCluster18GroupParts.og" "skinCluster18.ip[0].ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18.ip[0].gi";
connectAttr "bindPose11.msg" "skinCluster18.bp";
connectAttr "shoulder_rotaion_L_jnt.wm" "skinCluster18.ma[0]";
connectAttr "shoulder_rotaion_L_jnt.liw" "skinCluster18.lw[0]";
connectAttr "shoulder_rotaion_L_jnt.obcc" "skinCluster18.ifcl[0]";
connectAttr "groupParts47.og" "tweak18.ip[0].ig";
connectAttr "groupId47.id" "tweak18.ip[0].gi";
connectAttr "skinCluster18GroupId.msg" "skinCluster18Set.gn" -na;
connectAttr "left_upper_armShapeDeformed.iog.og[0]" "skinCluster18Set.dsm" -na;
connectAttr "skinCluster18.msg" "skinCluster18Set.ub[0]";
connectAttr "tweak18.og[0]" "skinCluster18GroupParts.ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18GroupParts.gi";
connectAttr "groupId47.msg" "tweakSet18.gn" -na;
connectAttr "left_upper_armShapeDeformed.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "groupId47.id" "groupParts47.gi";
connectAttr "root_jnt.msg" "bindPose11.m[0]";
connectAttr "base_jnt.msg" "bindPose11.m[1]";
connectAttr "hips_jnt.msg" "bindPose11.m[2]";
connectAttr "spine_jnt.msg" "bindPose11.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose11.m[4]";
connectAttr "bindPose11.w" "bindPose11.p[0]";
connectAttr "bindPose11.m[0]" "bindPose11.p[1]";
connectAttr "bindPose11.m[1]" "bindPose11.p[2]";
connectAttr "bindPose11.m[2]" "bindPose11.p[3]";
connectAttr "bindPose11.m[3]" "bindPose11.p[4]";
connectAttr "skinCluster18.og[0]" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "skinCluster19GroupParts.og" "skinCluster19.ip[0].ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19.ip[0].gi";
connectAttr "base_jnt.wm" "skinCluster19.ma[0]";
connectAttr "hips_rotaion_R_jnt.wm" "skinCluster19.ma[1]";
connectAttr "hips_rotaion_L_jnt.wm" "skinCluster19.ma[2]";
connectAttr "base_jnt.liw" "skinCluster19.lw[0]";
connectAttr "hips_rotaion_R_jnt.liw" "skinCluster19.lw[1]";
connectAttr "hips_rotaion_L_jnt.liw" "skinCluster19.lw[2]";
connectAttr "base_jnt.obcc" "skinCluster19.ifcl[0]";
connectAttr "hips_rotaion_R_jnt.obcc" "skinCluster19.ifcl[1]";
connectAttr "hips_rotaion_L_jnt.obcc" "skinCluster19.ifcl[2]";
connectAttr "bindPose4.msg" "skinCluster19.bp";
connectAttr "groupParts50.og" "tweak19.ip[0].ig";
connectAttr "groupId50.id" "tweak19.ip[0].gi";
connectAttr "skinCluster19GroupId.msg" "skinCluster19Set.gn" -na;
connectAttr "hips_Shape2Deformed.iog.og[0]" "skinCluster19Set.dsm" -na;
connectAttr "skinCluster19.msg" "skinCluster19Set.ub[0]";
connectAttr "tweak19.og[0]" "skinCluster19GroupParts.ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19GroupParts.gi";
connectAttr "groupId50.msg" "tweakSet19.gn" -na;
connectAttr "hips_Shape2Deformed.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "groupId50.id" "groupParts50.gi";
connectAttr "skinCluster19.og[0]" "groupParts51.ig";
connectAttr "groupId51.id" "groupParts51.gi";
connectAttr "skinCluster20GroupParts.og" "skinCluster20.ip[0].ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20.ip[0].gi";
connectAttr "bindPose12.msg" "skinCluster20.bp";
connectAttr "upper_leg_L_jnt.wm" "skinCluster20.ma[0]";
connectAttr "upper_leg_L_jnt.liw" "skinCluster20.lw[0]";
connectAttr "upper_leg_L_jnt.obcc" "skinCluster20.ifcl[0]";
connectAttr "groupParts53.og" "tweak20.ip[0].ig";
connectAttr "groupId53.id" "tweak20.ip[0].gi";
connectAttr "skinCluster20GroupId.msg" "skinCluster20Set.gn" -na;
connectAttr "left_upper_legShapeDeformed.iog.og[0]" "skinCluster20Set.dsm" -na;
connectAttr "skinCluster20.msg" "skinCluster20Set.ub[0]";
connectAttr "tweak20.og[0]" "skinCluster20GroupParts.ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20GroupParts.gi";
connectAttr "groupId53.msg" "tweakSet20.gn" -na;
connectAttr "left_upper_legShapeDeformed.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "groupId53.id" "groupParts53.gi";
connectAttr "root_jnt.msg" "bindPose12.m[0]";
connectAttr "base_jnt.msg" "bindPose12.m[1]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose12.m[2]";
connectAttr "upper_leg_L_jnt.msg" "bindPose12.m[3]";
connectAttr "bindPose12.w" "bindPose12.p[0]";
connectAttr "bindPose12.m[0]" "bindPose12.p[1]";
connectAttr "bindPose12.m[1]" "bindPose12.p[2]";
connectAttr "bindPose12.m[2]" "bindPose12.p[3]";
connectAttr "skinCluster20.og[0]" "groupParts54.ig";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "skinCluster21GroupParts.og" "skinCluster21.ip[0].ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21.ip[0].gi";
connectAttr "bindPose13.msg" "skinCluster21.bp";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.wm" "skinCluster21.ma[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.liw" "skinCluster21.lw[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.obcc" "skinCluster21.ifcl[0]"
		;
connectAttr "groupParts56.og" "tweak21.ip[0].ig";
connectAttr "groupId56.id" "tweak21.ip[0].gi";
connectAttr "skinCluster21GroupId.msg" "skinCluster21Set.gn" -na;
connectAttr "lef_lower_legShapeDeformed.iog.og[0]" "skinCluster21Set.dsm" -na;
connectAttr "skinCluster21.msg" "skinCluster21Set.ub[0]";
connectAttr "tweak21.og[0]" "skinCluster21GroupParts.ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21GroupParts.gi";
connectAttr "groupId56.msg" "tweakSet21.gn" -na;
connectAttr "lef_lower_legShapeDeformed.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "root_jnt.msg" "bindPose13.m[0]";
connectAttr "base_jnt.msg" "bindPose13.m[1]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose13.m[2]";
connectAttr "upper_leg_L_jnt.msg" "bindPose13.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose13.m[4]"
		;
connectAttr "bindPose13.w" "bindPose13.p[0]";
connectAttr "bindPose13.m[0]" "bindPose13.p[1]";
connectAttr "bindPose13.m[1]" "bindPose13.p[2]";
connectAttr "bindPose13.m[2]" "bindPose13.p[3]";
connectAttr "bindPose13.m[3]" "bindPose13.p[4]";
connectAttr "skinCluster21.og[0]" "groupParts57.ig";
connectAttr "groupId57.id" "groupParts57.gi";
connectAttr "skinCluster22GroupParts.og" "skinCluster22.ip[0].ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22.ip[0].gi";
connectAttr "bindPose14.msg" "skinCluster22.bp";
connectAttr "upper_leg_R_jnt.wm" "skinCluster22.ma[0]";
connectAttr "upper_leg_R_jnt.liw" "skinCluster22.lw[0]";
connectAttr "upper_leg_R_jnt.obcc" "skinCluster22.ifcl[0]";
connectAttr "groupParts59.og" "tweak22.ip[0].ig";
connectAttr "groupId59.id" "tweak22.ip[0].gi";
connectAttr "skinCluster22GroupId.msg" "skinCluster22Set.gn" -na;
connectAttr "right_upper_legShapeDeformed.iog.og[0]" "skinCluster22Set.dsm" -na;
connectAttr "skinCluster22.msg" "skinCluster22Set.ub[0]";
connectAttr "tweak22.og[0]" "skinCluster22GroupParts.ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22GroupParts.gi";
connectAttr "groupId59.msg" "tweakSet22.gn" -na;
connectAttr "right_upper_legShapeDeformed.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "groupId59.id" "groupParts59.gi";
connectAttr "root_jnt.msg" "bindPose14.m[0]";
connectAttr "base_jnt.msg" "bindPose14.m[1]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose14.m[2]";
connectAttr "upper_leg_R_jnt.msg" "bindPose14.m[3]";
connectAttr "bindPose14.w" "bindPose14.p[0]";
connectAttr "bindPose14.m[0]" "bindPose14.p[1]";
connectAttr "bindPose14.m[1]" "bindPose14.p[2]";
connectAttr "bindPose14.m[2]" "bindPose14.p[3]";
connectAttr "skinCluster22.og[0]" "groupParts60.ig";
connectAttr "groupId60.id" "groupParts60.gi";
connectAttr "skinCluster23GroupParts.og" "skinCluster23.ip[0].ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23.ip[0].gi";
connectAttr "bindPose15.msg" "skinCluster23.bp";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.wm" "skinCluster23.ma[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.liw" "skinCluster23.lw[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.obcc" "skinCluster23.ifcl[0]"
		;
connectAttr "groupParts62.og" "tweak23.ip[0].ig";
connectAttr "groupId62.id" "tweak23.ip[0].gi";
connectAttr "skinCluster23GroupId.msg" "skinCluster23Set.gn" -na;
connectAttr "right_lower_legShapeDeformed.iog.og[0]" "skinCluster23Set.dsm" -na;
connectAttr "skinCluster23.msg" "skinCluster23Set.ub[0]";
connectAttr "tweak23.og[0]" "skinCluster23GroupParts.ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23GroupParts.gi";
connectAttr "groupId62.msg" "tweakSet23.gn" -na;
connectAttr "right_lower_legShapeDeformed.iog.og[1]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "groupId62.id" "groupParts62.gi";
connectAttr "root_jnt.msg" "bindPose15.m[0]";
connectAttr "base_jnt.msg" "bindPose15.m[1]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose15.m[2]";
connectAttr "upper_leg_R_jnt.msg" "bindPose15.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose15.m[4]"
		;
connectAttr "bindPose15.w" "bindPose15.p[0]";
connectAttr "bindPose15.m[0]" "bindPose15.p[1]";
connectAttr "bindPose15.m[1]" "bindPose15.p[2]";
connectAttr "bindPose15.m[2]" "bindPose15.p[3]";
connectAttr "bindPose15.m[3]" "bindPose15.p[4]";
connectAttr "skinCluster23.og[0]" "groupParts63.ig";
connectAttr "groupId63.id" "groupParts63.gi";
connectAttr "skinCluster24GroupParts.og" "skinCluster24.ip[0].ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24.ip[0].gi";
connectAttr "bindPose16.msg" "skinCluster24.bp";
connectAttr "elbow_L_1_jnt.wm" "skinCluster24.ma[0]";
connectAttr "elbow_L_2_jnt.wm" "skinCluster24.ma[1]";
connectAttr "wrist_L_jnt.wm" "skinCluster24.ma[2]";
connectAttr "elbow_L_1_jnt.liw" "skinCluster24.lw[0]";
connectAttr "elbow_L_2_jnt.liw" "skinCluster24.lw[1]";
connectAttr "wrist_L_jnt.liw" "skinCluster24.lw[2]";
connectAttr "elbow_L_1_jnt.obcc" "skinCluster24.ifcl[0]";
connectAttr "elbow_L_2_jnt.obcc" "skinCluster24.ifcl[1]";
connectAttr "wrist_L_jnt.obcc" "skinCluster24.ifcl[2]";
connectAttr "groupParts65.og" "tweak24.ip[0].ig";
connectAttr "groupId65.id" "tweak24.ip[0].gi";
connectAttr "skinCluster24GroupId.msg" "skinCluster24Set.gn" -na;
connectAttr "left_lower_armShapeDeformed.iog.og[0]" "skinCluster24Set.dsm" -na;
connectAttr "skinCluster24.msg" "skinCluster24Set.ub[0]";
connectAttr "tweak24.og[0]" "skinCluster24GroupParts.ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24GroupParts.gi";
connectAttr "groupId65.msg" "tweakSet24.gn" -na;
connectAttr "left_lower_armShapeDeformed.iog.og[1]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "groupId65.id" "groupParts65.gi";
connectAttr "root_jnt.msg" "bindPose16.m[0]";
connectAttr "base_jnt.msg" "bindPose16.m[1]";
connectAttr "hips_jnt.msg" "bindPose16.m[2]";
connectAttr "spine_jnt.msg" "bindPose16.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose16.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose16.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose16.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose16.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose16.m[8]";
connectAttr "bindPose16.w" "bindPose16.p[0]";
connectAttr "bindPose16.m[0]" "bindPose16.p[1]";
connectAttr "bindPose16.m[1]" "bindPose16.p[2]";
connectAttr "bindPose16.m[2]" "bindPose16.p[3]";
connectAttr "bindPose16.m[3]" "bindPose16.p[4]";
connectAttr "bindPose16.m[4]" "bindPose16.p[5]";
connectAttr "bindPose16.m[5]" "bindPose16.p[6]";
connectAttr "bindPose16.m[6]" "bindPose16.p[7]";
connectAttr "bindPose16.m[7]" "bindPose16.p[8]";
connectAttr "skinCluster24.og[0]" "groupParts66.ig";
connectAttr "groupId66.id" "groupParts66.gi";
connectAttr "skinCluster25GroupParts.og" "skinCluster25.ip[0].ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25.ip[0].gi";
connectAttr "wrist_L_jnt.wm" "skinCluster25.ma[0]";
connectAttr "wrist_L_jnt.liw" "skinCluster25.lw[0]";
connectAttr "wrist_L_jnt.obcc" "skinCluster25.ifcl[0]";
connectAttr "bindPose16.msg" "skinCluster25.bp";
connectAttr "groupParts68.og" "tweak25.ip[0].ig";
connectAttr "groupId68.id" "tweak25.ip[0].gi";
connectAttr "skinCluster25GroupId.msg" "skinCluster25Set.gn" -na;
connectAttr "left_wristShapeDeformed.iog.og[0]" "skinCluster25Set.dsm" -na;
connectAttr "skinCluster25.msg" "skinCluster25Set.ub[0]";
connectAttr "tweak25.og[0]" "skinCluster25GroupParts.ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25GroupParts.gi";
connectAttr "groupId68.msg" "tweakSet25.gn" -na;
connectAttr "left_wristShapeDeformed.iog.og[1]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "groupId68.id" "groupParts68.gi";
connectAttr "skinCluster25.og[0]" "groupParts69.ig";
connectAttr "groupId69.id" "groupParts69.gi";
connectAttr "skinCluster26GroupParts.og" "skinCluster26.ip[0].ig";
connectAttr "skinCluster26GroupId.id" "skinCluster26.ip[0].gi";
connectAttr "bindPose17.msg" "skinCluster26.bp";
connectAttr "finger_2_L_1_jnt.wm" "skinCluster26.ma[0]";
connectAttr "finger_2_L_1_jnt.liw" "skinCluster26.lw[0]";
connectAttr "finger_2_L_1_jnt.obcc" "skinCluster26.ifcl[0]";
connectAttr "groupParts71.og" "tweak26.ip[0].ig";
connectAttr "groupId71.id" "tweak26.ip[0].gi";
connectAttr "skinCluster26GroupId.msg" "skinCluster26Set.gn" -na;
connectAttr "left_3_finger_Shape1Deformed.iog.og[0]" "skinCluster26Set.dsm" -na;
connectAttr "skinCluster26.msg" "skinCluster26Set.ub[0]";
connectAttr "tweak26.og[0]" "skinCluster26GroupParts.ig";
connectAttr "skinCluster26GroupId.id" "skinCluster26GroupParts.gi";
connectAttr "groupId71.msg" "tweakSet26.gn" -na;
connectAttr "left_3_finger_Shape1Deformed.iog.og[1]" "tweakSet26.dsm" -na;
connectAttr "tweak26.msg" "tweakSet26.ub[0]";
connectAttr "groupId71.id" "groupParts71.gi";
connectAttr "root_jnt.msg" "bindPose17.m[0]";
connectAttr "base_jnt.msg" "bindPose17.m[1]";
connectAttr "hips_jnt.msg" "bindPose17.m[2]";
connectAttr "spine_jnt.msg" "bindPose17.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose17.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose17.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose17.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose17.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose17.m[8]";
connectAttr "finger_2_L_1_jnt.msg" "bindPose17.m[9]";
connectAttr "bindPose17.w" "bindPose17.p[0]";
connectAttr "bindPose17.m[0]" "bindPose17.p[1]";
connectAttr "bindPose17.m[1]" "bindPose17.p[2]";
connectAttr "bindPose17.m[2]" "bindPose17.p[3]";
connectAttr "bindPose17.m[3]" "bindPose17.p[4]";
connectAttr "bindPose17.m[4]" "bindPose17.p[5]";
connectAttr "bindPose17.m[5]" "bindPose17.p[6]";
connectAttr "bindPose17.m[6]" "bindPose17.p[7]";
connectAttr "bindPose17.m[7]" "bindPose17.p[8]";
connectAttr "bindPose17.m[8]" "bindPose17.p[9]";
connectAttr "skinCluster26.og[0]" "groupParts72.ig";
connectAttr "groupId72.id" "groupParts72.gi";
connectAttr "skinCluster27GroupParts.og" "skinCluster27.ip[0].ig";
connectAttr "skinCluster27GroupId.id" "skinCluster27.ip[0].gi";
connectAttr "bindPose18.msg" "skinCluster27.bp";
connectAttr "finger_2_L_2_jnt.wm" "skinCluster27.ma[0]";
connectAttr "finger_2_L_2_jnt.liw" "skinCluster27.lw[0]";
connectAttr "finger_2_L_2_jnt.obcc" "skinCluster27.ifcl[0]";
connectAttr "groupParts74.og" "tweak27.ip[0].ig";
connectAttr "groupId74.id" "tweak27.ip[0].gi";
connectAttr "skinCluster27GroupId.msg" "skinCluster27Set.gn" -na;
connectAttr "left_3_finger_Shape2Deformed.iog.og[0]" "skinCluster27Set.dsm" -na;
connectAttr "skinCluster27.msg" "skinCluster27Set.ub[0]";
connectAttr "tweak27.og[0]" "skinCluster27GroupParts.ig";
connectAttr "skinCluster27GroupId.id" "skinCluster27GroupParts.gi";
connectAttr "groupId74.msg" "tweakSet27.gn" -na;
connectAttr "left_3_finger_Shape2Deformed.iog.og[1]" "tweakSet27.dsm" -na;
connectAttr "tweak27.msg" "tweakSet27.ub[0]";
connectAttr "groupId74.id" "groupParts74.gi";
connectAttr "root_jnt.msg" "bindPose18.m[0]";
connectAttr "base_jnt.msg" "bindPose18.m[1]";
connectAttr "hips_jnt.msg" "bindPose18.m[2]";
connectAttr "spine_jnt.msg" "bindPose18.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose18.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose18.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose18.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose18.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose18.m[8]";
connectAttr "finger_2_L_1_jnt.msg" "bindPose18.m[9]";
connectAttr "finger_2_L_2_jnt.msg" "bindPose18.m[10]";
connectAttr "bindPose18.w" "bindPose18.p[0]";
connectAttr "bindPose18.m[0]" "bindPose18.p[1]";
connectAttr "bindPose18.m[1]" "bindPose18.p[2]";
connectAttr "bindPose18.m[2]" "bindPose18.p[3]";
connectAttr "bindPose18.m[3]" "bindPose18.p[4]";
connectAttr "bindPose18.m[4]" "bindPose18.p[5]";
connectAttr "bindPose18.m[5]" "bindPose18.p[6]";
connectAttr "bindPose18.m[6]" "bindPose18.p[7]";
connectAttr "bindPose18.m[7]" "bindPose18.p[8]";
connectAttr "bindPose18.m[8]" "bindPose18.p[9]";
connectAttr "bindPose18.m[9]" "bindPose18.p[10]";
connectAttr "skinCluster27.og[0]" "groupParts75.ig";
connectAttr "groupId75.id" "groupParts75.gi";
connectAttr "skinCluster28GroupParts.og" "skinCluster28.ip[0].ig";
connectAttr "skinCluster28GroupId.id" "skinCluster28.ip[0].gi";
connectAttr "bindPose19.msg" "skinCluster28.bp";
connectAttr "finger_1_L_2_jnt.wm" "skinCluster28.ma[0]";
connectAttr "finger_1_L_2_jnt.liw" "skinCluster28.lw[0]";
connectAttr "finger_1_L_2_jnt.obcc" "skinCluster28.ifcl[0]";
connectAttr "groupParts77.og" "tweak28.ip[0].ig";
connectAttr "groupId77.id" "tweak28.ip[0].gi";
connectAttr "skinCluster28GroupId.msg" "skinCluster28Set.gn" -na;
connectAttr "left_2_finger_Shape2Deformed.iog.og[0]" "skinCluster28Set.dsm" -na;
connectAttr "skinCluster28.msg" "skinCluster28Set.ub[0]";
connectAttr "tweak28.og[0]" "skinCluster28GroupParts.ig";
connectAttr "skinCluster28GroupId.id" "skinCluster28GroupParts.gi";
connectAttr "groupId77.msg" "tweakSet28.gn" -na;
connectAttr "left_2_finger_Shape2Deformed.iog.og[1]" "tweakSet28.dsm" -na;
connectAttr "tweak28.msg" "tweakSet28.ub[0]";
connectAttr "groupId77.id" "groupParts77.gi";
connectAttr "root_jnt.msg" "bindPose19.m[0]";
connectAttr "base_jnt.msg" "bindPose19.m[1]";
connectAttr "hips_jnt.msg" "bindPose19.m[2]";
connectAttr "spine_jnt.msg" "bindPose19.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose19.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose19.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose19.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose19.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose19.m[8]";
connectAttr "finger_1_L_1_jnt.msg" "bindPose19.m[9]";
connectAttr "finger_1_L_2_jnt.msg" "bindPose19.m[10]";
connectAttr "bindPose19.w" "bindPose19.p[0]";
connectAttr "bindPose19.m[0]" "bindPose19.p[1]";
connectAttr "bindPose19.m[1]" "bindPose19.p[2]";
connectAttr "bindPose19.m[2]" "bindPose19.p[3]";
connectAttr "bindPose19.m[3]" "bindPose19.p[4]";
connectAttr "bindPose19.m[4]" "bindPose19.p[5]";
connectAttr "bindPose19.m[5]" "bindPose19.p[6]";
connectAttr "bindPose19.m[6]" "bindPose19.p[7]";
connectAttr "bindPose19.m[7]" "bindPose19.p[8]";
connectAttr "bindPose19.m[8]" "bindPose19.p[9]";
connectAttr "bindPose19.m[9]" "bindPose19.p[10]";
connectAttr "skinCluster28.og[0]" "groupParts78.ig";
connectAttr "groupId78.id" "groupParts78.gi";
connectAttr "skinCluster29GroupParts.og" "skinCluster29.ip[0].ig";
connectAttr "skinCluster29GroupId.id" "skinCluster29.ip[0].gi";
connectAttr "finger_1_L_1_jnt.wm" "skinCluster29.ma[0]";
connectAttr "finger_1_L_1_jnt.liw" "skinCluster29.lw[0]";
connectAttr "finger_1_L_1_jnt.obcc" "skinCluster29.ifcl[0]";
connectAttr "bindPose19.msg" "skinCluster29.bp";
connectAttr "groupParts80.og" "tweak29.ip[0].ig";
connectAttr "groupId80.id" "tweak29.ip[0].gi";
connectAttr "skinCluster29GroupId.msg" "skinCluster29Set.gn" -na;
connectAttr "left_2_finger_Shape1Deformed.iog.og[0]" "skinCluster29Set.dsm" -na;
connectAttr "skinCluster29.msg" "skinCluster29Set.ub[0]";
connectAttr "tweak29.og[0]" "skinCluster29GroupParts.ig";
connectAttr "skinCluster29GroupId.id" "skinCluster29GroupParts.gi";
connectAttr "groupId80.msg" "tweakSet29.gn" -na;
connectAttr "left_2_finger_Shape1Deformed.iog.og[1]" "tweakSet29.dsm" -na;
connectAttr "tweak29.msg" "tweakSet29.ub[0]";
connectAttr "groupId80.id" "groupParts80.gi";
connectAttr "skinCluster29.og[0]" "groupParts81.ig";
connectAttr "groupId81.id" "groupParts81.gi";
connectAttr "skinCluster30GroupParts.og" "skinCluster30.ip[0].ig";
connectAttr "skinCluster30GroupId.id" "skinCluster30.ip[0].gi";
connectAttr "bindPose20.msg" "skinCluster30.bp";
connectAttr "finger_3_L_1_jnt.wm" "skinCluster30.ma[0]";
connectAttr "finger_3_L_1_jnt.liw" "skinCluster30.lw[0]";
connectAttr "finger_3_L_1_jnt.obcc" "skinCluster30.ifcl[0]";
connectAttr "groupParts83.og" "tweak30.ip[0].ig";
connectAttr "groupId83.id" "tweak30.ip[0].gi";
connectAttr "skinCluster30GroupId.msg" "skinCluster30Set.gn" -na;
connectAttr "left_1_finger_Shape1Deformed.iog.og[0]" "skinCluster30Set.dsm" -na;
connectAttr "skinCluster30.msg" "skinCluster30Set.ub[0]";
connectAttr "tweak30.og[0]" "skinCluster30GroupParts.ig";
connectAttr "skinCluster30GroupId.id" "skinCluster30GroupParts.gi";
connectAttr "groupId83.msg" "tweakSet30.gn" -na;
connectAttr "left_1_finger_Shape1Deformed.iog.og[1]" "tweakSet30.dsm" -na;
connectAttr "tweak30.msg" "tweakSet30.ub[0]";
connectAttr "groupId83.id" "groupParts83.gi";
connectAttr "root_jnt.msg" "bindPose20.m[0]";
connectAttr "base_jnt.msg" "bindPose20.m[1]";
connectAttr "hips_jnt.msg" "bindPose20.m[2]";
connectAttr "spine_jnt.msg" "bindPose20.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose20.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose20.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose20.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose20.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose20.m[8]";
connectAttr "finger_3_L_1_jnt.msg" "bindPose20.m[9]";
connectAttr "bindPose20.w" "bindPose20.p[0]";
connectAttr "bindPose20.m[0]" "bindPose20.p[1]";
connectAttr "bindPose20.m[1]" "bindPose20.p[2]";
connectAttr "bindPose20.m[2]" "bindPose20.p[3]";
connectAttr "bindPose20.m[3]" "bindPose20.p[4]";
connectAttr "bindPose20.m[4]" "bindPose20.p[5]";
connectAttr "bindPose20.m[5]" "bindPose20.p[6]";
connectAttr "bindPose20.m[6]" "bindPose20.p[7]";
connectAttr "bindPose20.m[7]" "bindPose20.p[8]";
connectAttr "bindPose20.m[8]" "bindPose20.p[9]";
connectAttr "skinCluster30.og[0]" "groupParts84.ig";
connectAttr "groupId84.id" "groupParts84.gi";
connectAttr "skinCluster31GroupParts.og" "skinCluster31.ip[0].ig";
connectAttr "skinCluster31GroupId.id" "skinCluster31.ip[0].gi";
connectAttr "bindPose21.msg" "skinCluster31.bp";
connectAttr "finger_3_L_2_jnt.wm" "skinCluster31.ma[0]";
connectAttr "finger_3_L_2_jnt.liw" "skinCluster31.lw[0]";
connectAttr "finger_3_L_2_jnt.obcc" "skinCluster31.ifcl[0]";
connectAttr "groupParts86.og" "tweak31.ip[0].ig";
connectAttr "groupId86.id" "tweak31.ip[0].gi";
connectAttr "skinCluster31GroupId.msg" "skinCluster31Set.gn" -na;
connectAttr "left_1_finger_2ShapeDeformed.iog.og[0]" "skinCluster31Set.dsm" -na;
connectAttr "skinCluster31.msg" "skinCluster31Set.ub[0]";
connectAttr "tweak31.og[0]" "skinCluster31GroupParts.ig";
connectAttr "skinCluster31GroupId.id" "skinCluster31GroupParts.gi";
connectAttr "groupId86.msg" "tweakSet31.gn" -na;
connectAttr "left_1_finger_2ShapeDeformed.iog.og[1]" "tweakSet31.dsm" -na;
connectAttr "tweak31.msg" "tweakSet31.ub[0]";
connectAttr "groupId86.id" "groupParts86.gi";
connectAttr "root_jnt.msg" "bindPose21.m[0]";
connectAttr "base_jnt.msg" "bindPose21.m[1]";
connectAttr "hips_jnt.msg" "bindPose21.m[2]";
connectAttr "spine_jnt.msg" "bindPose21.m[3]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose21.m[4]";
connectAttr "shoulder_L_jnt.msg" "bindPose21.m[5]";
connectAttr "elbow_L_1_jnt.msg" "bindPose21.m[6]";
connectAttr "elbow_L_2_jnt.msg" "bindPose21.m[7]";
connectAttr "wrist_L_jnt.msg" "bindPose21.m[8]";
connectAttr "finger_3_L_1_jnt.msg" "bindPose21.m[9]";
connectAttr "finger_3_L_2_jnt.msg" "bindPose21.m[10]";
connectAttr "bindPose21.w" "bindPose21.p[0]";
connectAttr "bindPose21.m[0]" "bindPose21.p[1]";
connectAttr "bindPose21.m[1]" "bindPose21.p[2]";
connectAttr "bindPose21.m[2]" "bindPose21.p[3]";
connectAttr "bindPose21.m[3]" "bindPose21.p[4]";
connectAttr "bindPose21.m[4]" "bindPose21.p[5]";
connectAttr "bindPose21.m[5]" "bindPose21.p[6]";
connectAttr "bindPose21.m[6]" "bindPose21.p[7]";
connectAttr "bindPose21.m[7]" "bindPose21.p[8]";
connectAttr "bindPose21.m[8]" "bindPose21.p[9]";
connectAttr "bindPose21.m[9]" "bindPose21.p[10]";
connectAttr "skinCluster31.og[0]" "groupParts87.ig";
connectAttr "groupId87.id" "groupParts87.gi";
connectAttr "skinCluster32GroupParts.og" "skinCluster32.ip[0].ig";
connectAttr "skinCluster32GroupId.id" "skinCluster32.ip[0].gi";
connectAttr "bindPose22.msg" "skinCluster32.bp";
connectAttr "ankle_R_jnt.wm" "skinCluster32.ma[0]";
connectAttr "ankle_R_jnt.liw" "skinCluster32.lw[0]";
connectAttr "ankle_R_jnt.obcc" "skinCluster32.ifcl[0]";
connectAttr "groupParts89.og" "tweak32.ip[0].ig";
connectAttr "groupId89.id" "tweak32.ip[0].gi";
connectAttr "skinCluster32GroupId.msg" "skinCluster32Set.gn" -na;
connectAttr "right_foorShapeDeformed.iog.og[0]" "skinCluster32Set.dsm" -na;
connectAttr "skinCluster32.msg" "skinCluster32Set.ub[0]";
connectAttr "tweak32.og[0]" "skinCluster32GroupParts.ig";
connectAttr "skinCluster32GroupId.id" "skinCluster32GroupParts.gi";
connectAttr "groupId89.msg" "tweakSet32.gn" -na;
connectAttr "right_foorShapeDeformed.iog.og[1]" "tweakSet32.dsm" -na;
connectAttr "tweak32.msg" "tweakSet32.ub[0]";
connectAttr "groupId89.id" "groupParts89.gi";
connectAttr "root_jnt.msg" "bindPose22.m[0]";
connectAttr "base_jnt.msg" "bindPose22.m[1]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose22.m[2]";
connectAttr "upper_leg_R_jnt.msg" "bindPose22.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose22.m[4]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose22.m[5]";
connectAttr "bindPose22.w" "bindPose22.p[0]";
connectAttr "bindPose22.m[0]" "bindPose22.p[1]";
connectAttr "bindPose22.m[1]" "bindPose22.p[2]";
connectAttr "bindPose22.m[2]" "bindPose22.p[3]";
connectAttr "bindPose22.m[3]" "bindPose22.p[4]";
connectAttr "bindPose22.m[4]" "bindPose22.p[5]";
connectAttr "skinCluster32.og[0]" "groupParts90.ig";
connectAttr "groupId90.id" "groupParts90.gi";
connectAttr "skinCluster33GroupParts.og" "skinCluster33.ip[0].ig";
connectAttr "skinCluster33GroupId.id" "skinCluster33.ip[0].gi";
connectAttr "bindPose23.msg" "skinCluster33.bp";
connectAttr "toe_2_R_1_jnt.wm" "skinCluster33.ma[0]";
connectAttr "toe_2_R_1_jnt.liw" "skinCluster33.lw[0]";
connectAttr "toe_2_R_1_jnt.obcc" "skinCluster33.ifcl[0]";
connectAttr "groupParts92.og" "tweak33.ip[0].ig";
connectAttr "groupId92.id" "tweak33.ip[0].gi";
connectAttr "skinCluster33GroupId.msg" "skinCluster33Set.gn" -na;
connectAttr "right_toe_Shape1Deformed.iog.og[0]" "skinCluster33Set.dsm" -na;
connectAttr "skinCluster33.msg" "skinCluster33Set.ub[0]";
connectAttr "tweak33.og[0]" "skinCluster33GroupParts.ig";
connectAttr "skinCluster33GroupId.id" "skinCluster33GroupParts.gi";
connectAttr "groupId92.msg" "tweakSet33.gn" -na;
connectAttr "right_toe_Shape1Deformed.iog.og[1]" "tweakSet33.dsm" -na;
connectAttr "tweak33.msg" "tweakSet33.ub[0]";
connectAttr "groupId92.id" "groupParts92.gi";
connectAttr "root_jnt.msg" "bindPose23.m[0]";
connectAttr "base_jnt.msg" "bindPose23.m[1]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose23.m[2]";
connectAttr "upper_leg_R_jnt.msg" "bindPose23.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose23.m[4]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose23.m[5]";
connectAttr "toe_2_R_1_jnt.msg" "bindPose23.m[6]";
connectAttr "bindPose23.w" "bindPose23.p[0]";
connectAttr "bindPose23.m[0]" "bindPose23.p[1]";
connectAttr "bindPose23.m[1]" "bindPose23.p[2]";
connectAttr "bindPose23.m[2]" "bindPose23.p[3]";
connectAttr "bindPose23.m[3]" "bindPose23.p[4]";
connectAttr "bindPose23.m[4]" "bindPose23.p[5]";
connectAttr "bindPose23.m[5]" "bindPose23.p[6]";
connectAttr "skinCluster33.og[0]" "groupParts93.ig";
connectAttr "groupId93.id" "groupParts93.gi";
connectAttr "skinCluster34GroupParts.og" "skinCluster34.ip[0].ig";
connectAttr "skinCluster34GroupId.id" "skinCluster34.ip[0].gi";
connectAttr "bindPose24.msg" "skinCluster34.bp";
connectAttr "toe_1_R_1_jnt.wm" "skinCluster34.ma[0]";
connectAttr "toe_1_R_1_jnt.liw" "skinCluster34.lw[0]";
connectAttr "toe_1_R_1_jnt.obcc" "skinCluster34.ifcl[0]";
connectAttr "groupParts95.og" "tweak34.ip[0].ig";
connectAttr "groupId95.id" "tweak34.ip[0].gi";
connectAttr "skinCluster34GroupId.msg" "skinCluster34Set.gn" -na;
connectAttr "right_toe_Shape2Deformed.iog.og[0]" "skinCluster34Set.dsm" -na;
connectAttr "skinCluster34.msg" "skinCluster34Set.ub[0]";
connectAttr "tweak34.og[0]" "skinCluster34GroupParts.ig";
connectAttr "skinCluster34GroupId.id" "skinCluster34GroupParts.gi";
connectAttr "groupId95.msg" "tweakSet34.gn" -na;
connectAttr "right_toe_Shape2Deformed.iog.og[1]" "tweakSet34.dsm" -na;
connectAttr "tweak34.msg" "tweakSet34.ub[0]";
connectAttr "groupId95.id" "groupParts95.gi";
connectAttr "root_jnt.msg" "bindPose24.m[0]";
connectAttr "base_jnt.msg" "bindPose24.m[1]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose24.m[2]";
connectAttr "upper_leg_R_jnt.msg" "bindPose24.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose24.m[4]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose24.m[5]";
connectAttr "toe_1_R_1_jnt.msg" "bindPose24.m[6]";
connectAttr "bindPose24.w" "bindPose24.p[0]";
connectAttr "bindPose24.m[0]" "bindPose24.p[1]";
connectAttr "bindPose24.m[1]" "bindPose24.p[2]";
connectAttr "bindPose24.m[2]" "bindPose24.p[3]";
connectAttr "bindPose24.m[3]" "bindPose24.p[4]";
connectAttr "bindPose24.m[4]" "bindPose24.p[5]";
connectAttr "bindPose24.m[5]" "bindPose24.p[6]";
connectAttr "skinCluster34.og[0]" "groupParts96.ig";
connectAttr "groupId96.id" "groupParts96.gi";
connectAttr "skinCluster35GroupParts.og" "skinCluster35.ip[0].ig";
connectAttr "skinCluster35GroupId.id" "skinCluster35.ip[0].gi";
connectAttr "bindPose25.msg" "skinCluster35.bp";
connectAttr "ankle_L_jnt.wm" "skinCluster35.ma[0]";
connectAttr "ankle_L_jnt.liw" "skinCluster35.lw[0]";
connectAttr "ankle_L_jnt.obcc" "skinCluster35.ifcl[0]";
connectAttr "groupParts98.og" "tweak35.ip[0].ig";
connectAttr "groupId98.id" "tweak35.ip[0].gi";
connectAttr "skinCluster35GroupId.msg" "skinCluster35Set.gn" -na;
connectAttr "left_footShapeDeformed.iog.og[0]" "skinCluster35Set.dsm" -na;
connectAttr "skinCluster35.msg" "skinCluster35Set.ub[0]";
connectAttr "tweak35.og[0]" "skinCluster35GroupParts.ig";
connectAttr "skinCluster35GroupId.id" "skinCluster35GroupParts.gi";
connectAttr "groupId98.msg" "tweakSet35.gn" -na;
connectAttr "left_footShapeDeformed.iog.og[1]" "tweakSet35.dsm" -na;
connectAttr "tweak35.msg" "tweakSet35.ub[0]";
connectAttr "groupId98.id" "groupParts98.gi";
connectAttr "root_jnt.msg" "bindPose25.m[0]";
connectAttr "base_jnt.msg" "bindPose25.m[1]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose25.m[2]";
connectAttr "upper_leg_L_jnt.msg" "bindPose25.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose25.m[4]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose25.m[5]";
connectAttr "bindPose25.w" "bindPose25.p[0]";
connectAttr "bindPose25.m[0]" "bindPose25.p[1]";
connectAttr "bindPose25.m[1]" "bindPose25.p[2]";
connectAttr "bindPose25.m[2]" "bindPose25.p[3]";
connectAttr "bindPose25.m[3]" "bindPose25.p[4]";
connectAttr "bindPose25.m[4]" "bindPose25.p[5]";
connectAttr "skinCluster35.og[0]" "groupParts99.ig";
connectAttr "groupId99.id" "groupParts99.gi";
connectAttr "skinCluster36GroupParts.og" "skinCluster36.ip[0].ig";
connectAttr "skinCluster36GroupId.id" "skinCluster36.ip[0].gi";
connectAttr "bindPose26.msg" "skinCluster36.bp";
connectAttr "toe_2_L_1_jnt.wm" "skinCluster36.ma[0]";
connectAttr "toe_2_L_1_jnt.liw" "skinCluster36.lw[0]";
connectAttr "toe_2_L_1_jnt.obcc" "skinCluster36.ifcl[0]";
connectAttr "groupParts101.og" "tweak36.ip[0].ig";
connectAttr "groupId101.id" "tweak36.ip[0].gi";
connectAttr "skinCluster36GroupId.msg" "skinCluster36Set.gn" -na;
connectAttr "left_toe_Shape2Deformed.iog.og[0]" "skinCluster36Set.dsm" -na;
connectAttr "skinCluster36.msg" "skinCluster36Set.ub[0]";
connectAttr "tweak36.og[0]" "skinCluster36GroupParts.ig";
connectAttr "skinCluster36GroupId.id" "skinCluster36GroupParts.gi";
connectAttr "groupId101.msg" "tweakSet36.gn" -na;
connectAttr "left_toe_Shape2Deformed.iog.og[1]" "tweakSet36.dsm" -na;
connectAttr "tweak36.msg" "tweakSet36.ub[0]";
connectAttr "groupId101.id" "groupParts101.gi";
connectAttr "root_jnt.msg" "bindPose26.m[0]";
connectAttr "base_jnt.msg" "bindPose26.m[1]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose26.m[2]";
connectAttr "upper_leg_L_jnt.msg" "bindPose26.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose26.m[4]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose26.m[5]";
connectAttr "toe_2_L_1_jnt.msg" "bindPose26.m[6]";
connectAttr "bindPose26.w" "bindPose26.p[0]";
connectAttr "bindPose26.m[0]" "bindPose26.p[1]";
connectAttr "bindPose26.m[1]" "bindPose26.p[2]";
connectAttr "bindPose26.m[2]" "bindPose26.p[3]";
connectAttr "bindPose26.m[3]" "bindPose26.p[4]";
connectAttr "bindPose26.m[4]" "bindPose26.p[5]";
connectAttr "bindPose26.m[5]" "bindPose26.p[6]";
connectAttr "skinCluster36.og[0]" "groupParts102.ig";
connectAttr "groupId102.id" "groupParts102.gi";
connectAttr "skinCluster37GroupParts.og" "skinCluster37.ip[0].ig";
connectAttr "skinCluster37GroupId.id" "skinCluster37.ip[0].gi";
connectAttr "bindPose27.msg" "skinCluster37.bp";
connectAttr "toe_1_L_1_jnt.wm" "skinCluster37.ma[0]";
connectAttr "toe_1_L_1_jnt.liw" "skinCluster37.lw[0]";
connectAttr "toe_1_L_1_jnt.obcc" "skinCluster37.ifcl[0]";
connectAttr "groupParts104.og" "tweak37.ip[0].ig";
connectAttr "groupId104.id" "tweak37.ip[0].gi";
connectAttr "skinCluster37GroupId.msg" "skinCluster37Set.gn" -na;
connectAttr "left_toe_Shape1Deformed.iog.og[0]" "skinCluster37Set.dsm" -na;
connectAttr "skinCluster37.msg" "skinCluster37Set.ub[0]";
connectAttr "tweak37.og[0]" "skinCluster37GroupParts.ig";
connectAttr "skinCluster37GroupId.id" "skinCluster37GroupParts.gi";
connectAttr "groupId104.msg" "tweakSet37.gn" -na;
connectAttr "left_toe_Shape1Deformed.iog.og[1]" "tweakSet37.dsm" -na;
connectAttr "tweak37.msg" "tweakSet37.ub[0]";
connectAttr "groupId104.id" "groupParts104.gi";
connectAttr "root_jnt.msg" "bindPose27.m[0]";
connectAttr "base_jnt.msg" "bindPose27.m[1]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose27.m[2]";
connectAttr "upper_leg_L_jnt.msg" "bindPose27.m[3]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose27.m[4]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose27.m[5]";
connectAttr "toe_1_L_1_jnt.msg" "bindPose27.m[6]";
connectAttr "bindPose27.w" "bindPose27.p[0]";
connectAttr "bindPose27.m[0]" "bindPose27.p[1]";
connectAttr "bindPose27.m[1]" "bindPose27.p[2]";
connectAttr "bindPose27.m[2]" "bindPose27.p[3]";
connectAttr "bindPose27.m[3]" "bindPose27.p[4]";
connectAttr "bindPose27.m[4]" "bindPose27.p[5]";
connectAttr "bindPose27.m[5]" "bindPose27.p[6]";
connectAttr "skinCluster37.og[0]" "groupParts105.ig";
connectAttr "groupId105.id" "groupParts105.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "finger_1_L_3_jnt.msg" ":hyperGraphLayout.hyp[12].dn";
connectAttr "finger_2_L_3_jnt.msg" ":hyperGraphLayout.hyp[14].dn";
connectAttr "finger_3_L_2_jnt.msg" ":hyperGraphLayout.hyp[15].dn";
// End of pit_droid_rig.ma
