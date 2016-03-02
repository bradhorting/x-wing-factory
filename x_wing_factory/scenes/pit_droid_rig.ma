//Maya ASCII 2016 scene
//Name: pit_droid_rig.ma
//Last modified: Wed, Mar 02, 2016 01:47:26 PM
//Codeset: 1252
file -rdi 1 -ns "pit_droid_01" -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/10629559/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
file -r -ns "pit_droid_01" -dr 1 -rfn "pit_droid_01RN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/10629559/Documents/x-wing-factory/x_wing_factory//scenes/pit_droid_01.ma";
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
	setAttr ".t" -type "double3" -21.501876203188679 41.011518204258145 57.048705724284183 ;
	setAttr ".r" -type "double3" -26.138352721506831 -742.59999999991692 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "88BDCA63-4928-5184-1A46-AC87F8242895";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 70.217024095452331;
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
		 0.0005301592129521636 13.958286459864222 -0.24489254966697707 1;
	setAttr ".radi" 0.53363015781001755;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "DD322B67-4DE3-51C4-F711-5585BAF1E584";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999986485 89.999957637931871 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999945333 7.3935756700338494e-007 -7.39410798466524e-007 0
		 -7.393575670529496e-007 0.99999999999972689 3.1076657607342491e-013 0 7.3941079828336181e-007 2.3578361485476469e-013 0.999999999999727 0
		 0.00053022684097849264 15.527977633148014 -0.23391638452472163 1;
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
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "50206B54-48CF-D3F1-E557-18B9E909BFFB";
createNode mesh -n "body_mainShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "A5E69503-447D-AA49-A76F-F784712663CB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_1_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "D10BD567-411A-388E-990D-28997FDF9DF4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_wristShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "B63C27F6-4EBD-F2BE-F3D0-2C8A9BC7F6B2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_wristShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "DF84E6A4-41E0-D440-4657-BB98A6F4589B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_1_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "68F42F29-47E4-6966-D4A0-C99D92E19E01";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_upper_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "883F85F3-4F67-7CBE-1353-91A3996B30CB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_lower_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "06377ECC-4AAF-0050-0753-4C8931007617";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_toe_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "219F3605-4F50-2BD9-46F1-D6AA2E3AA727";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_toe_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "38737369-464E-6294-7A25-D5A12FAA3E7B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_foorShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "5D206D19-49FC-44B7-9174-79AB948EF600";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_upper_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "A1022885-4D30-BA10-7D53-32B2FAE26EEE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "hips_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "AFEA3A1E-4160-E6EF-A784-64A4F6DEACF4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "hips_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "94D12788-4FC5-EEB7-2E47-10870CE29B9E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_toe_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "0AE5D4B8-4A0F-3027-EF7E-9DBDB87B344F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_toe_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "E4E6FD75-4B4F-8E14-7956-B084B81CFC3C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_footShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "EEDEE5F4-4FFF-723F-802C-E9AFE6D2BE4E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "lef_lower_legShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "0594182A-40B5-A80D-A0D6-ABB52E0BF411";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_3_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "9B2E9C96-4641-51AC-632D-58A39004FCEF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_3_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "0843ADE1-4A11-F397-44C2-50BD915DF7C7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_2_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "FC1F18B3-423C-AA30-3346-C8B144F00AC8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_2_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "73879CE2-4FDF-83DC-F950-2BA764A6F378";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_1_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "4EA17CAE-454A-4D6B-25B5-8D912CD3B65B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_lower_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "90255835-46C4-5341-902B-63803472ED9C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_lower_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "80C43D65-41FE-6AC1-1E7C-AC8C87164501";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_1_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "5C239A2E-4576-5032-5A87-0B812A45F78D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_2_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "EE7655A0-466C-8E6D-0719-E4B1ED289F75";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_2_finger_Shape2Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "93FE2000-4154-48E3-12DF-58B307B88A1C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_3_finger_Shape1Deformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "39724B76-4DBE-33A0-C6F0-0184BF6DAA52";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_3_finger_2ShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "02915CA3-4FDF-19E3-E561-3C8E4D5DFBF0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "left_upper_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "362ADD8C-4B9A-3106-0028-A38A54D60104";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "right_upper_armShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "A8B5F377-4260-7BF3-C9A2-7F87F73194B7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "neckShapeDeformed" -p "pit_droid_01RNfosterParent1";
	rename -uid "CE5CAF9D-4872-9332-1064-6EBF791B2E9E";
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
	rename -uid "8DD67EE4-4D61-C851-B870-189CE5AAD7A3";
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
	rename -uid "879E32EF-498C-58B1-262B-5CBC68605700";
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
	rename -uid "B967BC32-445C-3301-3601-00BD13E2955F";
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
	rename -uid "ED2FE8D8-4ECB-B8A7-90F2-D3A4063BD433";
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
	rename -uid "C068B5DC-494D-8D47-B524-BD9C1F35B7EF";
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
	rename -uid "A1CD97BE-4AD4-A77C-21FE-A2B3C3FB193E";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D5747F02-4ECA-CDD6-BB4D-FF83D7A13D9E";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "14319512-458D-FA03-175B-D1830E2650B2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3BC51D27-4DB7-640A-A576-E0885BD6E982";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8CECA02D-46D4-F07A-5F9B-A4800CA252E1";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "7CC3F203-467E-6299-6441-AA9BF8D6BBFA";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "9D7F7410-46D9-5681-E1AA-67A61319527E";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "441F9D11-478C-89EC-3756-C88AB880CFC8";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 82 ".stringOptions";
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
	setAttr ".stringOptions[81].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[81].value" -type "string" "0";
	setAttr ".stringOptions[81].type" -type "string" "integer";
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
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 798\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 798\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 798\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1090\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1090\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 32 100 -ps 2 68 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1090\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1090\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "23DDB65B-44E8-4F2F-2F23-CEA3856607EB";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 1.07639e-005;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "9EB672B0-4141-0915-46CA-CEB7253808BC";
	setAttr ".txf" -type "matrix" 1.493125106211536 0 0 0 0 1.493125106211536 0 0 0 0 1.493125106211536 0
		 0 9.4828914508607998 0 1;
createNode reference -n "pit_droid_01RN";
	rename -uid "A2801ADB-4843-5AA3-2327-E9A566D6E7B7";
	setAttr -s 74 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"pit_droid_01RN"
		"pit_droid_01RN" 0
		"pit_droid_01RN" 572
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
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_headShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_headShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye|pit_droid_01:camera_eyeShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_eye|pit_droid_01:camera_eyeShape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2|pit_droid_01:camera_accesorieShape2" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie2|pit_droid_01:camera_accesorieShape2" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1|pit_droid_01:camera_accesorie1Shape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie1|pit_droid_01:camera_accesorie1Shape" 
		"vertexColorSource" " 2"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie|pit_droid_01:camera_accesorieShape" 
		"intermediateObject" " 1"
		2 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:camera_head|pit_droid_01:camera_accesorie|pit_droid_01:camera_accesorieShape" 
		"vertexColorSource" " 2"
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
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[38]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[39]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[40]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[41]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[42]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_head_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[43]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[44]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[45]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[46]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[47]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[48]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[49]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[50]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[51]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[52]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[53]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[54]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[55]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[56]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[57]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[58]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[59]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[60]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_arms_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[61]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[62]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[63]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[64]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[65]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[66]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[67]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[68]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[69]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[70]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_legs_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[71]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_body_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[72]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_body_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[73]" ""
		5 4 "pit_droid_01RN" "pit_droid_01:pit_droid_body_phong_SG.dagSetMembers" 
		"pit_droid_01RN.placeHolderList[74]" ""
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
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "translateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "rotateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:right_lower_arm" "scaleZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "translateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "rotateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:lef_lower_leg" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_foot" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:hips_1" "scaleZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "translateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "rotateZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleX"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleY"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:left_upper_leg" "scaleZ"
		
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "translateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "rotateZ"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleX"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleY"
		9 "|pit_droid_01:pit_droid_mesh_grp|pit_droid_01:body_main" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode skinCluster -n "skinCluster1";
	rename -uid "C0019063-4EC8-7CDD-F8D7-EBAD532FB0FC";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 -0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 -0
		 -0.00054188052904291311 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	rename -uid "004907B4-4C35-C5A8-F921-769FEEFE9679";
createNode objectSet -n "skinCluster1Set";
	rename -uid "CED9018B-4299-5B5B-0CBB-E083753100A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "68C5E4D2-4511-51B1-AF1E-E2A15503C435";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "56067CA1-4382-5AB0-9728-44876ABBC6F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "B9241CC8-4BE1-D12C-084E-EF950126107E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "9C9DD857-46E2-6A49-B50F-3A9B26684A0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "D698D2D4-46C6-173F-830D-1DA8C15A2B82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5D8B2AE7-457A-68B1-BD81-4897F4040F02";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.4270601946365207e-016 -3.5415591209739587e-017
		 -1.1102230246251563e-016 0 0.54477555261311572 4.4408920985006262e-016 1.9421224611154697e-012 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99450666551436295 0.10467326424404154 9.1644373744515447e-013 8.7071843229536268e-012 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.3592239273284279e-013 -1.1102230874177066e-016
		 5.3231530294795e-011 0 1.5696911732837915 -0.010976165142302596 -5.9512131725327107e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000018483929864 0.49999981516063313 -0.49999981516051523 0.50000018483941655 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "7E4F3542-4A48-CB3C-F5E6-3482DBE277EC";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 -0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 -0
		 -0.00054188052904291311 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "15CBEE5B-4FCD-E95D-9386-2C8503A513F0";
createNode objectSet -n "skinCluster2Set";
	rename -uid "00E1A402-47D5-2A0C-1588-78ABF4756754";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "A7897C50-497D-3F28-3CE3-678E60CBBE6E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "5F78D2C3-4CCC-DCC8-5C73-E3AA9C92A2A1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "27446940-4F87-DE03-C148-B7A2BE4D3244";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "D343BF65-480C-92DA-FA8E-FF8381AEF6B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "5B99CBE0-40B6-DCBC-3D6E-6BBD81E18BD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "92D2783D-4EC8-5B69-6A76-B29D5AFD3FB0";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 -0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 -0
		 -0.00054188052904291311 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.065935015602858194 -0.080033318263788011 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak3";
	rename -uid "C891B27A-4030-6324-B854-45A899C79400";
createNode objectSet -n "skinCluster3Set";
	rename -uid "02CE33ED-4720-8931-A018-B58DAD682F1D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "FA134549-4063-889B-E35D-70AEC081CA2E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "0732B139-487B-32BE-4DB4-249E94D861F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "CE7FF3F1-4239-9659-49F6-758D62B22EA7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "75779DBC-4B24-C9B0-D3B3-0B92E352A589";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "98A0E080-41E1-30C0-391E-338BBEE84300";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "61327214-4BD1-1C58-DD37-1FBBA3F98E22";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 -0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 -0
		 -0.00054188052904291311 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1149268398596759 -8.8817841970012523e-016 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
	rename -uid "8E9C3455-4A44-180F-81CB-7B8542144976";
createNode objectSet -n "skinCluster4Set";
	rename -uid "B3E1C248-4217-DF56-4895-2BA257159B58";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "895781C6-4562-31A8-3ED1-F885BE12AE36";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "E0501789-447D-4DC4-030B-25B70E49693A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "9C0212E1-42DA-4685-1689-9F823CA5FE0A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "A3FED5FF-4193-80E3-6CFD-64AFA0BEBB7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "2BBC8894-4521-049A-5803-069C58C05E07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "D49E7EA2-46EC-CC0F-29F1-5FA6457FE733";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999945322 -7.3935756700335699e-007 7.3941079846655132e-007 -0
		 7.3935756705297703e-007 0.99999999999972633 2.3592239293363285e-013 0 -7.3941079828333364e-007 3.1090535398018099e-013 0.99999999999972622 -0
		 -0.00054188052904291311 -15.527977632751664 0.23391638412893873 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263786235 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
	rename -uid "9BCBC155-4B9F-8F35-F979-3AA8A82560C8";
createNode objectSet -n "skinCluster5Set";
	rename -uid "626A3786-4282-3E5E-A19B-DDB8B4795AE0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "08DB7376-4DA4-F12C-2077-0B981D0EA7A1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "B4A8C60C-4D40-B538-FA86-2B8C8E7E5318";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "440D08C6-44DA-6CD1-BA0F-739847362107";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "D04FFE1A-40EF-A520-6E84-93B4A5C4589D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "B77A461E-4C1E-29F2-710B-A5B65203B384";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster6";
	rename -uid "B12262B3-46FC-5C05-8DDD-E6BE13866427";
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
	setAttr ".pm[0]" -type "matrix" -1.6653343317014785e-016 -7.394107984667257e-007 -0.99999999999972655 -0
		 0.99999999999999978 -1.1102250331411547e-016 -2.7163732251376168e-016 0 2.7755698755171339e-017 -0.99999999999972622 7.3941079828336149e-007 -0
		 -13.958286459864219 -0.244892549274903 0.00053034028915145313 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak6";
	rename -uid "750F3265-4408-E4DA-FCC0-6CB2F7ADDF35";
createNode objectSet -n "skinCluster6Set";
	rename -uid "3AE1B3B8-43FD-F25E-4A2F-7CAC3FA8272B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "B231FD1D-4D8E-DDC8-5194-E1A204DB5844";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "693B6FA5-4198-0B36-9B6D-0BBE31E1D28D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "D5EEB28E-46E3-EB13-4BA7-78A335AD3AAC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "5DBE6486-4245-9519-838F-F2A3671650C6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "856B107E-407D-B9F4-625D-0D9A687FA4E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	rename -uid "696D80C8-4EC9-58EC-ACD4-C6AE8A08878D";
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
	setAttr ".pm[0]" -type "matrix" -2.1132119580060456e-008 7.3912627994963784e-007 0.99999999999972644 -0
		 0.99959153704469972 0.028578996984048501 2.7163733843047623e-016 0 -0.028578996984040528 0.99959153704442638 -7.3942830884337032e-007 0
		 -9.4550603266803197 -0.25226737943801369 -0.00053034028986518635 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak7";
	rename -uid "3488D2CC-4DD4-F227-B506-EA8BAF384413";
createNode objectSet -n "skinCluster7Set";
	rename -uid "6CD3F4A8-4176-8739-AF2B-468A4ECB1BE3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "11022183-4E64-1E77-B4E8-4189D2A957B0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "734812A8-43D3-AB60-FE84-CAA4110A765D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "FC326EB3-40C6-3997-4E70-D9B2B14AE5FB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "C356536F-46C8-B9D4-3E1C-95B8463DBB12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "379D0237-4723-4FAE-D2F0-909DDE34AFD0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "E4229BD8-4AD0-3E4E-1087-8EB7F4E7D827";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830715 9.4584078334728776 -0.018051803393654666 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.6653345369377348e-016 -1.6653345369377348e-016
		 5.5511151231257815e-017 0 -3.5527136788005009e-015 0 -1.0842021724855044e-019 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	rename -uid "313E2D4B-4A7C-CDD7-98BF-0D9EDC37877E";
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
	setAttr ".pm[0]" -type "matrix" -2.1132119580060456e-008 7.3912627994963784e-007 0.99999999999972644 -0
		 0.99959153704469972 0.028578996984048501 2.7163733843047623e-016 0 -0.028578996984040528 0.99959153704442638 -7.3942830884337032e-007 0
		 -9.4550603266803233 -0.25226737943801369 -0.00053034028986518645 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak8";
	rename -uid "4D0A4F64-470A-206F-635D-579F4968EC8C";
createNode objectSet -n "skinCluster8Set";
	rename -uid "F03FACAB-47B7-D8FC-0BF9-BBB52E91C111";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "CE25109F-4647-4ADC-2FA3-5A8BA567B180";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "AAA3B5F1-43D9-44B5-B696-34889BA7706E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	rename -uid "B57C408D-4911-FDA4-3250-88B4984C2EAC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "00991787-49EA-D579-C7F2-7D8CBAD720F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "B0BAABF0-47F0-71B0-B232-5CA5DA1C29E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "B60D3864-4006-BB6E-767D-0095D93039A3";
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
	setAttr ".pm[0]" -type "matrix" 7.3937328576645368e-007 0.99999999999942368 7.7823037178808419e-007 -0
		 -0.99999999999972644 7.3937328595384988e-007 2.6373352455231711e-013 0 -3.1188089499100275e-013 -7.7823037155101269e-007 0.99999999999969713 -0
		 8.6287051701076543 -1.0339871075085894 -5.2327402807678338e-007 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak9";
	rename -uid "5BFE445A-4854-0CC2-E236-53B8C9006FFB";
createNode objectSet -n "skinCluster9Set";
	rename -uid "5D66ABB0-45A2-031C-2BB5-DC95FB47D705";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "28CD5D9A-4DE5-7753-4677-AEBDD8968C57";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "4ECAA584-418F-EB5E-2733-52A0FBB3E9F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "268834A5-4033-1F6B-F736-1AA70F9B7630";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "9A2DD6AC-44EA-5A3D-E24B-AC84609DA1AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "8DCC90D8-4830-4A00-4264-7CB483CEED51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "19EC398E-4C0A-0A61-26F0-258F8F09DB0C";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster10";
	rename -uid "1AC2AB38-41ED-7B45-1F89-E59AEAF2ABFC";
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
	setAttr ".pm[0]" -type "matrix" 7.3937328576645368e-007 0.99999999999942368 7.7823037178808419e-007 -0
		 -0.99999999999972644 7.3937328595384988e-007 2.6373352455231711e-013 0 -3.1188089499100275e-013 -7.7823037155101269e-007 0.99999999999969713 -0
		 5.1329414232017738 -1.0339871075085885 -0.12660919753124156 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak10";
	rename -uid "5E7A0016-4509-344A-1AFD-DCB748F62B45";
createNode objectSet -n "skinCluster10Set";
	rename -uid "514B86C8-470D-083C-3C83-1EA016B926EA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "A2411CC9-4029-7872-D0BA-90A2ADD0FC4E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "4774C715-471F-D315-3D4F-AC876C20D50A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "DF04C146-4004-6CC8-DE2E-35A29FCB09B7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "FCDDAAEC-465B-35CF-FD2D-83A42C40C5FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "B70F40EB-4BE4-2FF0-3E88-63BCC745CD83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	rename -uid "BF5933D9-4FEB-44ED-E1D2-5CB47CC631B7";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[5]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster11";
	rename -uid "7A4639D5-4590-D76D-A68B-6DA7B79E1F46";
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
	setAttr ".pm[0]" -type "matrix" 0.999999999955693 -9.2326191221678472e-006 -1.8363763127006766e-006 -0
		 9.232620350105087e-006 0.99999999995715561 6.6863531319748767e-007 -0 1.8363701396038759e-006 -6.6865226752150698e-007 0.99999999999809008 -0
		 -1.0339941465821902 -0.84787421819079578 0.062025003212039631 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak11";
	rename -uid "E8B16CAD-44AA-C33A-C02A-01946822553A";
createNode objectSet -n "skinCluster11Set";
	rename -uid "CF40AF35-4DD0-0D8D-F184-8E8ED706B5F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "2911F5EB-43A9-D7AB-FD41-18B7F002E032";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "F04956F1-4A51-3229-EE6A-21BFFD7E6141";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "3F77503E-4C40-73B6-BCF5-BF8963C10C9A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "5DC5701F-44E3-84AF-98B2-F183B29A31FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "D8160362-49F8-BD44-1079-A6B38AF26491";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	rename -uid "EAD8E6FE-42AC-9298-584D-1094B2DD9086";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[5]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster12";
	rename -uid "46AD7037-4768-9C8F-D3BF-019C2E44700F";
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
	setAttr ".pm[0]" -type "matrix" -1.7386083738491407e-006 -8.8651789290221054e-006 -0.99999999995919298 -0
		 6.6863621585174649e-007 0.99999999996048072 -8.8651800915877326e-006 -0 0.99999999999826505 -6.6865162868913354e-007 -1.7386024464378029e-006 -0
		 -1.2777400839707092 -0.18456740295827392 1.164721996983147 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak12";
	rename -uid "94A462B5-46B8-0DA1-149F-419F7476F224";
createNode objectSet -n "skinCluster12Set";
	rename -uid "42CB97D2-49D7-2216-1D17-EAB193F2025C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "24A05FF5-40B3-B763-0D2B-6F863939B9EE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "58760F85-4A1A-1AB3-8BF2-ED8EE0A13046";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "F65ABC3C-49BF-E63B-BB55-FD965200D6C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "F29DB3F8-4C40-C1A5-2509-82BD121C0690";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "116E402E-4ADA-8D89-8634-C69AF3798C67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose6";
	rename -uid "6B0D51FE-4538-1570-9391-64A719A9F559";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[5]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr ".wm[7]" -type "matrix" -1.7386083740862015e-006 6.6863621564007381e-007 0.99999999999826517 0
		 -8.8651789290797934e-006 0.99999999996048095 -6.6865162890080442e-007 0 -0.99999999995919298 -8.865180091530048e-006 -1.7386024462007404e-006 0
		 1.1647181392229564 0.18457858276453409 1.2777419855457111 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 9.7427067589101152e-012 -9.642729821860627e-013
		 1.0474060848141148e-010 0 0.13072804314036904 -0.66330724319820988 1.3397649733102668 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.2990973248294355e-007 -0.70710674662034856 -1.299097197819374e-007 0.70710681575272105 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster13";
	rename -uid "A539BE86-445C-1C1E-FC76-D297450F1E28";
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
	setAttr ".pm[0]" -type "matrix" -1.7386083738491407e-006 -8.8651789290221054e-006 -0.99999999995919298 -0
		 6.6863621585174649e-007 0.99999999996048072 -8.8651800915877326e-006 -0 0.99999999999826505 -6.6865162868913354e-007 -1.7386024464378029e-006 -0
		 -1.2777400378460755 -0.18456740295827395 0.92883365683580821 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak13";
	rename -uid "1204A389-4A19-C118-26BC-2AA9928E91F4";
createNode objectSet -n "skinCluster13Set";
	rename -uid "45FAFE09-4074-4482-BCA6-D280602857AD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster13GroupId";
	rename -uid "AB25ACB9-4006-7946-1D01-E28C0D523EDE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster13GroupParts";
	rename -uid "AA2713CE-486E-2F8E-6DAB-56ACBDE0E9E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "7779FE9E-4786-1BBE-310C-679CE68B107B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "4A70C04D-4752-7CC4-04A2-FCBAA4D9D3C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "0FD3DD99-4072-9171-2839-78B2B90008AF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose7";
	rename -uid "1AAAD98A-4158-972B-983A-75BAA3C1BF89";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" 0.99982041881291239 -0.018950728857272659 -7.4212148109343848e-007 0
		 0.018950728857267236 0.99982041881318784 -1.4066506181367018e-008 0 7.4225478034466368e-007 2.3692246081721709e-013 0.99999999999972478 0
		 0.65486096602749067 8.6358918208651279 6.9388939039072284e-017 1;
	setAttr ".wm[4]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339807276743058 8.6287059346077406 -2.8140345372201925e-007 1;
	setAttr ".wm[5]" -type "matrix" 7.3937328595383156e-007 -0.999999999999727 -3.1166922266587724e-013 0
		 0.99999999999942413 7.3937328576647285e-007 -7.7823037178806683e-007 0 7.782303715510309e-007 2.635218519060975e-013 0.99999999999969735 0
		 1.0339834108793489 5.1329421877028505 0.1266083928526319 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999995569344 9.2326203500474074e-006 1.8363701393668211e-006 0
		 -9.2326191222255387e-006 0.99999999995715605 -6.6865226773317797e-007 0 -1.8363763129377315e-006 6.6863531298581519e-007 0.99999999999809053 0
		 1.033986432337904 0.84788372315776162 -0.062023671348964887 1;
	setAttr ".wm[7]" -type "matrix" -1.7386083740862015e-006 6.6863621564007381e-007 0.99999999999826517 0
		 -8.8651789290797934e-006 0.99999999996048095 -6.6865162890080442e-007 0 -0.99999999995919298 -8.865180091530048e-006 -1.7386024462007404e-006 0
		 0.92882979908532382 0.18457649157188638 1.277741529305032 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3166266834124103e-013 2.7487838923384363e-013
		 -0.018952602689057244 0 0.0084779315693115365 0.014907779515360837 0.65433062573744905 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49904355061924305 -0.50095462186919015 -0.49904318164775358 0.50095499225391793 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.5975591206387508e-008 6.4862231454194833e-012
		 0.018952602710177728 0 0.37918785665224186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -8.4481764783759386e-026 -3.5201818355227074e-010
		 -8.1868469576577662e-026 0 3.4957637469058773 -9.6524873816869125e-016 0.12660867425721348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -6.6865918910639838e-007 -2.6146005111252823e-006
		 8.4932470648211568e-006 0 4.2850584645462089 -9.8448546069012666e-016 -0.18863206420031836 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -8.3190467765807017e-012 -1.3225054955210248e-013
		 1.0515238767570121e-010 0 -0.10516029700695718 -0.66330715652335259 1.3397649502479498 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.2990973248294355e-007 -0.70710674662034856 -1.299097197819374e-007 0.70710681575272105 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster14";
	rename -uid "C484D534-4E87-74A0-909F-5483F7F2C12A";
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
	setAttr ".pm[0]" -type "matrix" -2.8267420692649305e-009 7.3942290586606137e-007 0.99999999999972644 -0
		 0.99999269278715597 0.0038228748726884432 2.7163733801688592e-016 0 -0.0038228748726872402 0.99999269278688252 -7.3942830884337032e-007 0
		 -8.6273507831450598 -0.018106638549078614 -0.00053034028986496094 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak14";
	rename -uid "40A703D8-466F-7B68-02FC-07BE50A06245";
createNode objectSet -n "skinCluster14Set";
	rename -uid "EA137E23-4FE1-76E2-B93A-0E9C82CC472A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster14GroupId";
	rename -uid "731BAE34-4E5A-587D-CC44-798E3869A77C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster14GroupParts";
	rename -uid "F29F89FF-48C4-B033-FB36-3C98C7157EEC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "62F1DA55-426E-6BE6-302A-C08EAE5B226B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	rename -uid "296F6AC9-4144-8D7B-8175-B5B26EC70AD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "BBC69FA1-4447-22DB-FC69-8AB1B998D745";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster15";
	rename -uid "E8FFEC4E-476B-812B-D4D4-52A1D15B4689";
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
	setAttr ".pm[0]" -type "matrix" 4.5986894780985201e-007 -0.9999999999998731 -2.0372800967317241e-007 -0
		 -0.99999999999989386 -4.5986894774941732e-007 2.2576778275662996e-013 0 -3.1974414498975323e-013 2.0372800962275275e-007 -0.99999999999997891 -0
		 8.6287103006299759 -1.0329160319240842 5.4662672956236113e-008 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.44282275769181 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak15";
	rename -uid "3960413C-4D90-1020-DA3C-BB9A7BEEF8F5";
createNode objectSet -n "skinCluster15Set";
	rename -uid "CB7A5674-46EE-B0EC-9989-9C9D739FD329";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster15GroupId";
	rename -uid "1D87F9E6-4BF8-9FD7-6EAF-2A9743FE2BB3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster15GroupParts";
	rename -uid "09DE11F3-4EFE-0003-EED5-96A0B39F0763";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "E0E84643-47B9-40C8-5645-C8B88A13B6F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "814F08AF-4AA6-8CF5-4E60-039DDCACB633";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "CFB565FD-42A7-AC22-FA7C-1FBE8A3784A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose8";
	rename -uid "0ABE73A2-4BF4-F96F-226A-6D8D1C6992EA";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[4]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster16";
	rename -uid "DBC3AC78-4CEC-1A63-85F9-00B10D00622D";
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
	setAttr ".pm[0]" -type "matrix" 4.5687226271178041e-007 3.1510342289237686e-005 0.99999999950344454 -0
		 -0.99989526317921718 0.014472825286146079 7.8073264360585392e-010 0 -0.01447282527893521 -0.99989526268271456 3.1513654228653465e-005 -0
		 5.1324026935733089 0.032843566891461562 1.0329183878736046 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.44282275769181 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak16";
	rename -uid "D06B777A-48EE-B11D-23A9-90BED0EBB824";
createNode objectSet -n "skinCluster16Set";
	rename -uid "E073953B-44A9-2D81-FF8F-988C4656092E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster16GroupId";
	rename -uid "EAC600B8-4381-3682-FB4C-BC8B4E46D6F5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster16GroupParts";
	rename -uid "66E97A3C-4EDA-49EE-3163-45A1BD0BB23E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet16";
	rename -uid "0817F25F-42A7-CF55-00FA-5A9D83B3B907";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "D0D9DC24-403B-7343-DD4F-45B960EA2CFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "B4557053-41FA-25E7-09BE-E997C3576310";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose9";
	rename -uid "8C6BACD2-4CEA-0738-284E-CC905C487ABF";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[4]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[5]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster17";
	rename -uid "66754505-477B-7626-9D32-C7A41F333D70";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999509837 -2.9344208664359076e-006 -1.0917288651495401e-006 -0
		 -2.934420251920985e-006 -0.99999999999553579 5.6284244410178821e-007 0 -1.0917305167621708e-006 -5.6283924063844809e-007 -0.9999999999992456 -0
		 1.0329188581493973 0.84788075969951215 -0.062024702719331165 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak17";
	rename -uid "1D8738C0-4B3B-AB1E-5C58-04A736313F82";
createNode objectSet -n "skinCluster17Set";
	rename -uid "F673DC26-4A40-B554-620A-6A96CCC49FF6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster17GroupId";
	rename -uid "0C8C42EE-4027-C040-5473-06B02EB02F32";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster17GroupParts";
	rename -uid "CA04FED1-4813-8CCF-0C12-4AB753DB13B7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet17";
	rename -uid "ED9DF6FA-4543-F0FA-3108-CFBBA9FA34A5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	rename -uid "E3FDD561-4D52-16D9-8E39-1996608A5A3C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "8DBDDB01-4DD7-29E0-30AF-229ACBA531F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose10";
	rename -uid "48EB7D8F-43DD-A40C-10CD-48959435210C";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[4]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[5]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster18";
	rename -uid "0A58F77D-4B53-D1E9-68EC-E6926A5EDDAA";
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
	setAttr ".pm[0]" -type "matrix" 1.4144082121680508e-006 2.566980703574496e-006 -0.99999999999570477 -0
		 -5.6284339097856953e-007 0.99999999999654654 2.5669799074414793e-006 0 0.99999999999884137 5.6283976034940073e-007 1.4144096568611378e-006 -0
		 -1.3120738290240792 -0.18457394872972938 -1.1501951456072157 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak18";
	rename -uid "D7DD4985-41CD-7A5C-EBF5-48B9649EE311";
createNode objectSet -n "skinCluster18Set";
	rename -uid "B85A1C97-4C96-418A-2544-4F8F539A9EA6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster18GroupId";
	rename -uid "8771A39E-42CB-01D4-6896-279E037A409C";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster18GroupParts";
	rename -uid "0DE361B9-4802-705D-A233-A5A733E7A183";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet18";
	rename -uid "C8800B32-4615-7A1F-4AB4-08B88B66B04E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "47FA3D89-4E92-ED7B-9996-4093764C2857";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "655CD362-47B0-7ACB-3A85-19B3C941EEDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose11";
	rename -uid "CA65A4BB-402F-861D-5C07-6EA58774490C";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[4]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[5]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr ".wm[7]" -type "matrix" 1.4144082120578982e-006 -5.6284339110927974e-007 0.99999999999884137 0
		 2.5669807035296342e-006 0.99999999999654732 5.6283976021869084e-007 0 -0.99999999999570532 2.5669799074863445e-006 1.4144096569712908e-006 0
		 -1.1501928159965125 0.18457616276483724 1.3120755597552374 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 5.1859901224117146e-011 7.9121933346520139e-012
		 -6.27498968852046e-010 0 -0.11727593189843633 0.66330723359768695 -1.3740989028875825 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710689527090365 1.2990969446082539e-007 0.70710666710214931 1.2990973638000751e-007 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster19";
	rename -uid "A7654D2E-4B26-76EC-8BA3-9D8FCFE1FDDF";
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
	setAttr ".pm[0]" -type "matrix" 1.4144082121680508e-006 2.566980703574496e-006 -0.99999999999570477 -0
		 -5.6284339097856953e-007 0.99999999999654654 2.5669799074414793e-006 0 0.99999999999884137 5.6283976034940073e-007 1.4144096568611378e-006 -0
		 -1.3120738820780313 -0.1845739487297294 -0.9143068054598783 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1672965574913607 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak19";
	rename -uid "314A3E88-46E2-5189-D377-1FA08394A204";
createNode objectSet -n "skinCluster19Set";
	rename -uid "0E3FEC83-4D26-1868-873F-F68EFBE067F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster19GroupId";
	rename -uid "DF81859F-43F3-3544-6D42-04A8F6656081";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster19GroupParts";
	rename -uid "D8F32A8A-4E0F-4F00-A57C-DEB419F06828";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet19";
	rename -uid "28BEA2ED-4A38-1059-0106-68892989D57E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "AEE07E5B-4710-310C-7E91-E990027B0144";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "53D9FF75-4EBB-2E92-31F3-1F818B733C5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose12";
	rename -uid "BB375174-4A2E-2260-C382-CABB647EE417";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -0.99999999999962164 4.6162884070995365e-007 7.376635467793574e-007 0
		 4.616288407701725e-007 0.99999999999989375 -3.6029935883683311e-013 0 -7.37663546729151e-007 -1.9484414081877606e-014 -0.99999999999972822 0
		 -0.6537320000000002 8.6287100000000052 -4.5102810375396984e-017 1;
	setAttr ".wm[4]" -type "matrix" 4.5986894774936215e-007 -0.99999999999989464 -3.194559681920866e-013 0
		 -0.99999999999987388 -4.5986894780990796e-007 2.0372800967304721e-007 0 -2.037280096228784e-007 2.2605595956510219e-013 -0.99999999999997957 0
		 -1.0329199999998693 8.6287098256230568 2.6509935679251373e-007 1;
	setAttr ".wm[5]" -type "matrix" 4.5687226265108372e-007 -0.99989526317921795 -0.014472825278934927 0
		 3.1510342289291191e-005 0.014472825286146374 -0.99989526268271489 0 0.9999999995034452 7.8073270506150192e-010 3.1513654228600874e-005 0
		 -1.0329217671251703 5.131389802020383 0.10708794335667496 1;
	setAttr ".wm[6]" -type "matrix" 0.99999999999509892 -2.9344202519658506e-006 -1.0917305167612796e-006 0
		 -2.9344208663910458e-006 -0.99999999999553657 -5.628392405077382e-007 0 -1.0917288651504314e-006 5.6284244423249863e-007 -0.99999999999924571 0
		 -1.0329164378194997 0.84788382562387898 -0.062023097829682766 1;
	setAttr ".wm[7]" -type "matrix" 1.4144082120578982e-006 -5.6284339110927974e-007 0.99999999999884137 0
		 2.5669807035296342e-006 0.99999999999654732 5.6283976021869084e-007 0 -0.99999999999570532 2.5669799074863445e-006 1.4144096569712908e-006 0
		 -0.9143044758501131 0.18457555724417785 1.3120752791664432 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2743984137045688e-025 4.5915041768651577e-009
		 5.5511151231257827e-017 0 0.0012961668823372463 0.014879356709221758 -0.65426234028968411 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904348132071191 0.5009546914331906 -0.49904325094621782 0.50095492269006747 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 5.3393553710639447e-007 -9.0678702191282148e-016
		 4.2561647821625067e-009 0 0.3791879999998406 -3.4942106547715914e-007 1.4613808138566715e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710710698514001 0.70710645538780492 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 6.6180832354943483e-021 -2.6608601717072632e-019
		 -4.0560079167076377e-014 0 3.4973200236014557 3.3972509396225375e-006 -0.10708767825774548 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70709948049516491 -0.0051169692775051697 0.0051171315939503199 0.70707705115717845 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.553130473344307e-007 -9.318010926042218e-007
		 3.0268497179612246e-006 0 4.2855048501529955 0.10709889550895961 -3.3454832748788736e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50361308515041991 0.49637656799717178 0.50359717965816542 -0.49636080007285671 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 2.0447644014578294e-011 4.7062688417369088e-012
		 2.1056421167334591e-010 0 0.11861240824888997 0.66330714692283677 -1.3740988798252389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710689527090365 1.2990969446082539e-007 0.70710666710214931 1.2990973638000751e-007 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster20";
	rename -uid "78438588-4968-1EA3-641D-4EA5CAA6561E";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999799638 1.9924912123408904e-006 -1.9166180825718549e-007 -0
		 1.9761405539766816e-006 0.99795000020985203 0.063998414646385129 -0 3.1878518030293805e-007 0.063998414645878673 -0.99795000021179014 -0
		 -1.2861862943219464 -13.28998156192724 -0.96971708039436433 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak20";
	rename -uid "DB4F49F1-4533-4024-F4AB-4C8D80D749B8";
createNode objectSet -n "skinCluster20Set";
	rename -uid "72F433DF-435C-8499-5941-BA988836EBD5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster20GroupId";
	rename -uid "F162B176-4383-01C8-1E34-5C84D3D58686";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster20GroupParts";
	rename -uid "C0A9C437-43A0-99A9-FA0B-3A83AA0D6761";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet20";
	rename -uid "03AA5FF6-417D-4B16-2642-5494B96090B1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	rename -uid "57D7ED87-42A8-0635-3C36-B3A6BD209DAC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "0BBB612D-4676-AEBD-CBA0-DDBF9FE6B9FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose13";
	rename -uid "2DAD33C1-49FF-1821-0FFA-93B3259A2F73";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster21";
	rename -uid "DDC862A4-4463-05E4-10E9-8AB4DA7382A2";
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
	setAttr ".wl[135].w[1]"  1;
	setAttr ".wl[136].w[1]"  1;
	setAttr ".wl[137].w[1]"  1;
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
	setAttr ".pm[0]" -type "matrix" -0.052888969877536121 -0.0082179205119257848 0.99856658398313747 -0
		 -0.15283316255057219 0.98825200377347355 3.8242700034650816e-005 0 -0.98683574179803735 -0.15261206643045386 -0.053523601240416788 0
		 1.3461618089085461 -10.720744539513163 1.8873702218103505 1;
	setAttr ".pm[1]" -type "matrix" 1.8793889990328989e-006 0.99999999999735378 -1.3263586681972478e-006 -0
		 0.99999974558710869 -1.8784424056790744e-006 0.00071331773299166128 0 0.00071331773049858706 -1.327698932384501e-006 -0.99999974558799332 -0
		 -10.702909504111592 1.9351403546545962 -0.84031614617994954 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999735356 -1.8793890003651659e-006 -1.326358668197248e-006 -0
		 -1.8784424070113414e-006 -0.99999974558710847 0.00071331773299166128 0 -1.327698932385451e-006 -0.00071331773049858696 -0.99999974558799332 -0
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
createNode tweak -n "tweak21";
	rename -uid "2301C819-4575-39F4-74BF-EF93FCB42850";
createNode objectSet -n "skinCluster21Set";
	rename -uid "E64F308E-484A-D2CE-3EDF-9E802FFE08CB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster21GroupId";
	rename -uid "DE5B451B-4374-1F9C-8DE1-438040316320";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster21GroupParts";
	rename -uid "F5737F8B-4725-BADE-802B-1C843E0F3997";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet21";
	rename -uid "6598D9AB-480B-DBAC-B03C-358BA3A4ABE3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId42";
	rename -uid "08BD4031-47EC-CD5A-E656-B28D6319B736";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "945AFC19-4D05-204A-6C78-54A208C2B55C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose14";
	rename -uid "AC4559CE-4FEB-38BB-3438-FBA8485E870A";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819313993 -0.0069873780442604172 -1.2866902536424234 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886781
		 -1.1938418165158282e-006 9.843149378907512e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678608 -4.7396531144272558e-012 1.6608936448392342e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460657 -1.7763568394002505e-015
		 -4.4408920985006262e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051124 0.036040231421623714 0.034641999999992512 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster22";
	rename -uid "A9676106-4452-E877-FD00-B1B0E2ADA57A";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999735356 -1.8793890003651659e-006 -1.326358668197248e-006 -0
		 -1.8784424070113414e-006 -0.99999974558710847 0.00071331773299166128 0 -1.327698932385451e-006 -0.00071331773049858696 -0.99999974558799332 -0
		 1.8991001232329827 7.9080913990064738 -0.87495814617994183 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak22";
	rename -uid "66ACE05D-4CFF-6A2C-324A-2A8A1DD376CB";
createNode objectSet -n "skinCluster22Set";
	rename -uid "CB33C20E-4D7A-10B4-727C-6FA8D4EB6026";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster22GroupId";
	rename -uid "BF517D4D-412C-D88F-EA99-D68B8BC3406A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster22GroupParts";
	rename -uid "8410BD64-4BD9-AC31-0C44-2094525EF286";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet22";
	rename -uid "CB06B57E-4605-FF35-1C31-5B89534C582E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	rename -uid "AD018A8F-4DF8-E8E3-A970-A990C61C99F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "26F5F285-49AA-8039-F54E-08AB983BCF8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster23";
	rename -uid "51E0188B-48C9-F548-5C5F-1DBF0E8CF2EA";
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
	setAttr ".pm[0]" -type "matrix" -0.2537067578570309 -0.96728117991428719 -1.1387799294545962e-006 -0
		 -0.96728093420156036 0.25370669256989842 0.00071307460913664332 0 -0.00068945473320340342 0.00018201336730844217 -0.99999974576161965 -0
		 6.9363501069464863 -3.8170934515205865 -0.74817191905072378 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak23";
	rename -uid "9EE0E639-4920-EF73-23FF-4BB3399F9D68";
createNode objectSet -n "skinCluster23Set";
	rename -uid "2182B8FC-4592-969F-C3A4-77908A58A606";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster23GroupId";
	rename -uid "1A0BA963-45B5-C90E-8AFA-72B58A4D571E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster23GroupParts";
	rename -uid "3F5C7155-4E9A-2EE9-5157-65AC58C219DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet23";
	rename -uid "5B0330EB-40C4-EC07-D28A-369E40BB2F51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "C3AABB89-475C-713D-8BAF-A587A6487470";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "57E48BA1-4482-B9B4-D81D-05B37DB6A047";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose15";
	rename -uid "9A633DF7-48EC-78A3-BB70-7D8A82603E29";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" -0.25370675785703112 -0.96728093420156191 -0.00068945473320314603 0
		 -0.96728117991428875 0.25370669256989903 0.00018201336730824051 0 -1.1387799295844705e-006 0.00071307460913694538 -0.99999974576162076 0
		 -1.9324046126384387 7.6783548686105529 -0.74269466739187762 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.5353747283093768e-007 0.79174015306772128 0.61085802771206776 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster24";
	rename -uid "8707AEB3-475C-2BC8-2339-F78343D5B9C8";
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
	setAttr ".pm[0]" -type "matrix" 0.65736661876332902 0.74355924675431717 0.12242865310791527 -0
		 -0.7491371714559778 0.66241452064275252 -0.00070794390125535544 0 -0.081624915795379671 -0.091250476205786427 0.99247706457812535 -0
		 6.6211446337531603 -3.2107584806046021 0.99809137820890292 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak24";
	rename -uid "20C54F1A-4482-23AD-5A24-E1BC101D479F";
createNode objectSet -n "skinCluster24Set";
	rename -uid "904294EC-47D8-AF67-5B75-259A58F8985B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster24GroupId";
	rename -uid "25DEB88D-46F3-1146-7BA3-789A9601C9C0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster24GroupParts";
	rename -uid "4B567615-467E-23A9-42C2-5FB65BAD082D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet24";
	rename -uid "367E71A6-48EA-A008-A585-CE85CCE58275";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	rename -uid "0296BB40-406B-C59A-F9FD-C1A2154A47F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "CD0CB058-4372-713B-047E-AA8664AA12BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose16";
	rename -uid "5A8D64C2-4646-FFFB-9F8D-46B7D6ACDFAD";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" -0.25370675785703112 -0.96728093420156191 -0.00068945473320314603 0
		 -0.96728117991428875 0.25370669256989903 0.00018201336730824051 0 -1.1387799295844705e-006 0.00071307460913694538 -0.99999974576162076 0
		 -1.9324046126384387 7.6783548686105529 -0.74269466739187762 1;
	setAttr ".wm[11]" -type "matrix" 0.65736661876333058 -0.74913717145597936 -0.081624915795379518 0
		 0.74355924675431884 0.66241452064275375 -0.091250476205786676 0 0.12242865310791569 -0.0007079439012556575 0.99247706457812734 0
		 -2.0873252859976259 7.0877051952642312 -0.74311566836331677 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.5353747283093768e-007 0.79174015306772128 0.61085802771206776 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61062887984437686 -3.9741859040198411e-016
		 -1.1102215687872784e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.8805637341860586 -0.46994280320113829 0.014203824717295237 0.059661739156353956 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster25";
	rename -uid "5C4CDC6B-40EE-A777-40D0-23979B38517F";
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
	setAttr ".pm[0]" -type "matrix" -0.30811512571691085 -0.95134907857381368 -1.0985528094397378e-006 -0
		 -0.95134883699445494 0.30811504665284356 0.00071300449696820437 0 -0.00067797769055980256 0.00022073257715793498 -0.99999974581165751 -0
		 6.718410653186992 -4.1690248805237156 -0.99932633860816011 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak25";
	rename -uid "F90A1A2A-4116-3AE0-EA7F-E18DE6017948";
createNode objectSet -n "skinCluster25Set";
	rename -uid "D18010A2-42BC-332D-6E87-5A8290CAD003";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster25GroupId";
	rename -uid "23824AC0-4BB6-973C-60AE-C1BCD1134D32";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster25GroupParts";
	rename -uid "6C5A5658-4BF9-961A-9404-02BC2201BC62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet25";
	rename -uid "ABC95652-4554-86B6-CD26-5BBFFDFE143C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	rename -uid "551701A3-439E-34C7-88D6-1EB517DF88D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "8A58B707-412C-6FF4-F384-2DA32915EE48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose17";
	rename -uid "93C7E80A-49F8-0D1A-7684-7A978190DBAC";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" -0.30811512571691124 -0.95134883699445638 -0.00067797769055955677 0
		 -0.9513490785738149 0.308115046652844 0.00022073257715771893 0 -1.09855280956956e-006 0.00071300449696850643 -0.99999974581165851 0
		 -1.8961551334257554 7.6768039810934088 -0.99385091244606416 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0029318889128923252
		 0.23200186608138476 0.1243710288127297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.936571491715624e-007 0.80873770091478714 0.58816947482764437 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster26";
	rename -uid "8FBBE957-45FB-DD6A-DFD6-A689E1EF88B3";
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
	setAttr ".pm[0]" -type "matrix" 0.64793030003891983 0.74921555233943116 -0.13734038890361064 -0
		 -0.7564469978511138 0.65405461561335476 -0.00070656698348662964 0 0.089298744299741772 0.10434853102744898 0.99052365864672898 -0
		 6.8044514625576413 -2.971694445288307 0.70339673885490084 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak26";
	rename -uid "148AEB39-41E2-E8FA-3389-F5B2073AFBF2";
createNode objectSet -n "skinCluster26Set";
	rename -uid "20E6DD4D-4DEC-FFA4-A96F-1A96AFDE4AC1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster26GroupId";
	rename -uid "9B28703C-460A-AF16-3F31-049DCD3F10F4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster26GroupParts";
	rename -uid "7316FFBA-4E1C-3ADD-2814-B3B551C3936B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet26";
	rename -uid "09CA7129-4D6F-5F88-134F-FF96A77D2ADE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "621AF66C-46E3-D163-A6A8-DC9195022EFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "3ADEEBEE-465F-FFE8-F20B-C9AC9F0BA6BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose18";
	rename -uid "050F493B-479E-151B-612E-B5AB766468EC";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" -0.30811512571691124 -0.95134883699445638 -0.00067797769055955677 0
		 -0.9513490785738149 0.308115046652844 0.00022073257715771893 0 -1.09855280956956e-006 0.00071300449696850643 -0.99999974581165851 0
		 -1.8961551334257554 7.6768039810934088 -0.99385091244606416 1;
	setAttr ".wm[11]" -type "matrix" 0.64793030003892094 -0.75644699785111513 0.089298744299742175 0
		 0.74921555233943216 0.65405461561335576 0.104348531027449 0 -0.13734038890361075 -0.00070656698348690774 0.9905236586467302 0
		 -2.0857658008566822 7.0913543459207125 -0.99426813247741175 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0029318889128923252
		 0.23200186608138476 0.1243710288127297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3234889800848443e-023 1.936571491715624e-007 0.80873770091478714 0.58816947482764437 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61538902703899312 -3.3612654836834538e-016
		 -5.2939559203393771e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.86915037347827695 0.48973411987632276 0.013668950454221149 0.067463174436245429 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster27";
	rename -uid "55467901-45AB-66CB-0658-C08CF1B2B07C";
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
	setAttr ".pm[0]" -type "matrix" 0.62497928495937005 0.78058412028269841 -0.0094511657565894917 -0
		 -0.78062300028106779 0.62500177812114199 -0.00071328647272315146 0 0.0053502153093656244 0.0078235866387563798 0.99995508233532548 -0
		 7.2055868441961382 -3.2847705552636368 0.72987469763955615 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.41004272148193 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak27";
	rename -uid "B009EF48-4B68-D498-6992-BA92E06BE17A";
createNode objectSet -n "skinCluster27Set";
	rename -uid "C5A502AA-4CD9-BAB4-4DF9-87B492BEF4C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster27GroupId";
	rename -uid "85A5691A-4777-E8CB-5807-D3A2F0E460B6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster27GroupParts";
	rename -uid "8BB4A2A3-44DA-D2CF-E048-3FAEB1105265";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet27";
	rename -uid "FA7EFF8B-4ADF-2FFD-EAEC-ABA845A4A54F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	rename -uid "214AB50C-4FAE-778C-A0CF-99BF043C54DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "433400A1-4E03-3872-237D-94AB7F6A7925";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose19";
	rename -uid "93275945-4099-322B-9EEB-0F8C09504952";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" 0.62497928495937094 -0.78062300028106968 0.005350215309365948 0
		 0.78058412028270008 0.62500177812114388 0.0078235866387563087 0 -0.0094511657565893806 -0.00071328647272345461 0.99995508233532726 0
		 -1.9324046126384387 7.6783548686105529 -0.74269466739187762 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.90138015499087565 -0.4330028617551227 0.0042602355661824423 0.0020465320470653323 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster28";
	rename -uid "26AAA92C-4039-9BE1-7C57-C7AD76D9EE90";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999735378 -1.8792154398850996e-006 -1.3263586335167273e-006 -0
		 -1.8782688228765716e-006 -0.99999974557400928 0.00071333609590562184 0 -1.327698808388596e-006 -0.00071333609341277433 -0.99999974557489379 -0
		 1.6955778282523892 7.3819996678297963 -0.7459354588555337 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak28";
	rename -uid "C4BA2113-43D0-DDE3-981E-35944EEE5443";
createNode objectSet -n "skinCluster28Set";
	rename -uid "E1ACCA48-4675-85EE-1CB6-35863080DE46";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster28GroupId";
	rename -uid "DA28F489-475C-5BDD-1C4A-A58D2E5C8DD1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster28GroupParts";
	rename -uid "291B068D-43E5-CA0D-588D-5A81F9791CEB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet28";
	rename -uid "08EF51D1-4E46-3078-D349-FAAB8441AEC2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	rename -uid "14D0ED1C-48F6-1942-D9C1-3F88BC4C41C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "E9FF4C01-4F77-EEF2-00FB-C0BD17FBD8D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose20";
	rename -uid "DFE244F0-4AFF-8206-711D-0F971A37A9F2";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" -0.99999999999799694 1.9761405539009611e-006 3.1878518037715005e-007 0
		 1.9924912124117083e-006 0.99795000020985258 0.063998414645878202 0 -1.9166180817827889e-007 0.063998414646385671 -0.99795000021179081 0
		 -1.2861600000056237 13.324799999999884 -0.11719099993150769 1;
	setAttr ".wm[6]" -type "matrix" 1.9718851655111995e-008 -0.99937257761802722 -0.035418231253134133 0
		 -1.2603347963939817e-006 0.035418231253081613 -0.99937257761723464 0 0.99999999999920597 6.4345308986399901e-008 -1.2588456273116306e-006 0
		 -1.9015700000058258 13.324800087736698 -0.11719186244899585 1;
	setAttr ".wm[7]" -type "matrix" -0.052888969877536156 -0.15283316255057189 -0.98683574179803835 0
		 -0.0082179205119256894 0.98825200377347444 -0.15261206643045444 0 0.99856658398313802 3.824270003477268e-005 -0.053523601240416857 0
		 -1.9015699501973859 10.800463261544461 -0.20665553942844606 1;
	setAttr ".wm[8]" -type "matrix" 1.8793889989733199e-006 0.99999974558710991 0.00071331773049828663 0
		 0.99999999999735489 -1.87844240573875e-006 -1.3276989322547061e-006 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.935121354279703 10.703509828611544 -0.83267878799244943 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999735512 -1.8784424070710177e-006 -1.3276989322556567e-006 0
		 -1.879389000305588e-006 -0.99999974558711013 -0.00071331773049828674 0 -1.3263586683270878e-006 0.00071331773299196355 -0.99999974558799454 0
		 -1.8990864213562926 7.9087170775975899 -0.86931442033756701 1;
	setAttr ".wm[10]" -type "matrix" 0.62497928495937094 -0.78062300028106968 0.005350215309365948 0
		 0.78058412028270008 0.62500177812114388 0.0078235866387563087 0 -0.0094511657565893806 -0.00071328647272345461 0.99995508233532726 0
		 -1.9324046126384387 7.6783548686105529 -0.74269466739187762 1;
	setAttr ".wm[11]" -type "matrix" 0.99999999999735556 -1.8782688222794218e-006 -1.3276988082618763e-006 0
		 -1.8792154404823485e-006 -0.99999974557401239 -0.00071333609341247889 0 -1.3263586336430266e-006 0.00071333609590592151 -0.99999974557489646 0
		 -1.6955649452580839 7.3825330770962285 -0.74066717104954338 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.064042182783903029 2.1126743451508128e-016
		 -3.4000506244236102e-016 0 -0.10141614819314171 -0.0069873780442608613 -1.2866902536424232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44491715009273264 0.54958940967944092 -0.44491625117686784 0.54959052007861864 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -0.063328864991173572 0 0.61540999999886736
		 -1.1938418165166094e-006 9.8431493783158976e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.49124628277465154 -0.50860255140875499 -0.49124781285045044 0.5086021241896661 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -5.0306980803327406e-016 -1.0755285551056204e-016
		 -1.3769367590565879e-017 0 2.5259216459678573 -4.7395420921247933e-012 1.6564527527407336e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020025815479515437 0.01776628922994735 0.6370555198965645 0.7703528998132585 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63437431585460669 -2.6645352591003757e-015
		 -1.2490009027033011e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.44753774514555428 0.52244504155697757 0.55119847042765069 0.47216669876303125 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.8596381042588675e-016 -2.9921766789233182e-020
		 -2.2204460492503131e-016 0 -2.7948181051051133 0.036040231421623714 0.034641999999992401 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654802 0.70710678118654713 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.033317926672826362
		 0.23027189288295613 -0.12678399798891371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.90138015499087565 -0.4330028617551227 0.0042602355661824423 0.0020465320470653323 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.3789560279517924 4.2273042705209818e-016
		 1.0046651011119678e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.90138015497208446 0.4330028617942403 -0.0042602395419581458 0.0020465237707103187 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster29";
	rename -uid "4E7C379F-456C-8AAA-FD48-0F8811DE28F1";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999933886 -7.2315603655880319e-007 8.9335997994365016e-007 -0
		 7.2315603664006743e-007 0.99999999999973799 1.117974826430812e-013 0 -8.9335997973517746e-007 5.344974584121611e-013 0.99999999999960099 -0
		 -1.8969606169229849 -7.8924680110565406 0.86544976270559415 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak29";
	rename -uid "B715992A-4544-3DD3-6358-889E90EF3CD0";
createNode objectSet -n "skinCluster29Set";
	rename -uid "F523294B-497F-DA70-8BDF-96A4C26E95F7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster29GroupId";
	rename -uid "90A08941-4768-6515-2263-0B8C01E652C1";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster29GroupParts";
	rename -uid "84800CC0-4683-0991-9507-1C84AB4754D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet29";
	rename -uid "C8483F99-428E-7CF1-C663-53B6BBB0F4CE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId58";
	rename -uid "4E8D2AE0-4B25-C39A-E28C-B0A7BFCB104B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "165012F7-4A4C-BB3B-465C-C190EAFB80E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose21";
	rename -uid "798DCC08-4BA0-B4E4-741D-8A8F3F6DE46A";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster30";
	rename -uid "DAA90C04-43B4-15FD-9E6C-3BB72874A9A3";
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
	setAttr ".pm[0]" -type "matrix" 0.30811515407309331 0.95134906939026043 8.9335997994364995e-007 -0
		 -0.95134906939064012 0.30811515407321638 1.1179748271658496e-013 0 -2.7525764168437643e-007 -8.4989721971958316e-007 0.99999999999960087 -0
		 6.7181642118276201 -4.1700552938413233 0.98981995719053217 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak30";
	rename -uid "99048E02-48B7-9C40-1CCD-A8B15592B702";
createNode objectSet -n "skinCluster30Set";
	rename -uid "931585F2-4C66-EE74-8A87-ABA393015A98";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster30GroupId";
	rename -uid "B083E906-4F66-916B-97D9-F1A616BC34D4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster30GroupParts";
	rename -uid "82990F07-46E6-1E9B-94EE-6D8E7ECE7C75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet30";
	rename -uid "A4F44FD5-4139-3C26-BB9A-74A3D658971D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId60";
	rename -uid "1FB92305-4697-1417-6440-1889AE875815";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "4BCDCDDD-4670-0F30-AEB1-DA87E146E3D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose22";
	rename -uid "7CAF0A73-48FA-2BBA-7B26-29A431C28291";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" 0.30811515407309381 -0.95134906939064123 -2.7525764150475245e-007 0
		 0.95134906939026165 0.30811515407321666 -8.4989721999673202e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8972091376207283 7.6761765002913593 -0.98982165208250261 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00025495603691472982
		 -0.21629288274596228 -0.12437019448493848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.58816899523040422 0.80873804971057017 1 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster31";
	rename -uid "53350A9A-424C-FD80-99ED-07B7F1040421";
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
		 -0.75638585938013791 0.65412570025169436 -3.7470027081098999e-016 0 0.089839456669870421 0.10388415347896814 -0.99052357603502861 -0
		 6.8043565960773575 -2.9719157010427901 -0.69383211599913819 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak31";
	rename -uid "EBA121EF-4337-924D-4AF9-008CFCA9DF86";
createNode objectSet -n "skinCluster31Set";
	rename -uid "A43E74AE-4E3A-644C-8E25-D1915BFBFC18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster31GroupId";
	rename -uid "E540B19E-4058-2069-1E82-4FBA746061D3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster31GroupParts";
	rename -uid "6D357C9A-4B92-7C4C-8CB4-9880A1C1B059";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet31";
	rename -uid "1C7ED848-44C3-CFAF-44DC-8E9D7A5F2774";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId62";
	rename -uid "1DC61A75-4044-ABCC-DFDB-BB93E53417AF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "713B852F-49F8-BDF8-8BD8-198EAAE652C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose23";
	rename -uid "7077FA0B-4C24-F0FB-48F6-CDB62A4D70C8";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" 0.30811515407309381 -0.95134906939064123 -2.7525764150475245e-007 0
		 0.95134906939026165 0.30811515407321666 -8.4989721999673202e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8972091376207283 7.6761765002913593 -0.98982165208250261 1;
	setAttr ".wm[11]" -type "matrix" -0.64792692778972594 -0.75638585938013869 0.089839456669870782 0
		 -0.74921802629554302 0.65412570025169481 0.10388415347896809 0 -0.13734280220957831 -1.0028147972439158e-016 -0.99052357603502827 0
		 2.0868202019558222 7.0907255504865079 -0.98982182147337383 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271547 6.591949208711867e-017 2.2529721144248782e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365041 -9.8254737679326354e-015
		 1.6323499626644256e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850593 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011528 -2.2204460492503131e-016 -0.08766332910313214 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425265 -0.039229647173416149 -0.034642076149422829 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00025495603691538804
		 -0.21629288274596004 -0.12437019448493858 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.58816899523040422 0.80873804971057017 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6153902585723291 -1.9428902930940239e-016
		 1.4917725379013234e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86915137802642295 -0.48973230589819983 0.013669008939276948 0.067463388804742869 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster32";
	rename -uid "38FD1536-41E5-598C-E1EC-3481111604D8";
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
	setAttr ".pm[0]" -type "matrix" 0.25370981709555535 0.96728037750620188 8.9335997994365006e-007 -0
		 -0.9672803775065878 0.25370981709565665 1.1179748263717563e-013 0 -2.2665408916761262e-007 -8.6412960674676695e-007 0.99999999999960087 -0
		 6.9361516840198121 -3.8181621115156972 0.73866490510814464 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak32";
	rename -uid "CA0BAF21-49FA-F50C-B3C0-5CABC9314C0F";
createNode objectSet -n "skinCluster32Set";
	rename -uid "4AD1DB4F-497F-4166-C048-0D94CC401E08";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster32GroupId";
	rename -uid "59709D13-4025-C8E7-3B2E-388026AD2BB5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster32GroupParts";
	rename -uid "DA7F130F-4BCF-B4C9-6743-B9A76BCE2259";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet32";
	rename -uid "3A23BAAC-474D-A28C-B4E4-BD9F7BEC54A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId64";
	rename -uid "F6D423A8-4E2B-E9E0-881C-83A44D0CF021";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "D39CB5E6-465C-610B-F774-BC8E67D67920";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose24";
	rename -uid "647F65F6-4C9E-0465-CACD-A5BAAED8BB3D";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" 0.25370981709555573 -0.96728037750658913 -2.2665408897257206e-007 0
		 0.9672803775062031 0.25370981709565693 -8.6412960701329159e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801
		 -0.21456077893850048 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.61085631796644846 0.79174147219939994 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster33";
	rename -uid "CF55F021-4F39-ED1D-0626-0BA1806DFCDC";
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
	setAttr ".pm[0]" -type "matrix" -0.65736565943841563 -0.74356033540544297 0.12242719225254328 -0
		 -0.74919616560278302 0.66234817539273583 -9.1593399531575316e-016 0 -0.081089427406927497 -0.091721983001120874 -0.99247749727495549 0
		 6.6226834474664606 -3.2091464551852784 -0.98878524251174382 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak33";
	rename -uid "C72F64D1-460D-1602-E935-9A86FE8B19E5";
createNode objectSet -n "skinCluster33Set";
	rename -uid "F1C92183-411E-46EC-F74F-D7A4525B1308";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster33GroupId";
	rename -uid "D8FD88D3-4AF5-8CB6-2241-00BD1915661B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster33GroupParts";
	rename -uid "14C71C59-4251-AC23-74C1-59B14D8464F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet33";
	rename -uid "1AA7F1C9-46C2-DCC4-BD60-CCAD57C90243";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId66";
	rename -uid "91E4839D-4033-2A62-BDD0-068EEAD47BF1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "053EC332-475C-8CB5-56FF-7FAE6812C203";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose25";
	rename -uid "050CB63D-4471-9C2C-C069-1BB9D0841A5A";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" 0.25370981709555573 -0.96728037750658913 -2.2665408897257206e-007 0
		 0.9672803775062031 0.25370981709565693 -8.6412960701329159e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr ".wm[11]" -type "matrix" -0.65736565943841641 -0.74919616560278379 -0.081089427406927136 0
		 -0.74356033540544375 0.6623481753927366 -0.091721983001120874 0 0.12242719225254366 -6.5820412300006521e-016 -0.99247749727495516 0
		 2.0883848580943809 7.0872613440029335 -0.73866677078868692 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801
		 -0.21456077893850048 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.61085631796644846 0.79174147219939994 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61062676349890421 5.2735593669694936e-016
		 -1.1102225614383102e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.88056332015213212 0.46994354251777526 0.01420363760993034 0.059662071093310037 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster34";
	rename -uid "70E3E264-4D49-EF36-5CE0-6C9F33B34F14";
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
		 -0.78061467175758315 0.62501258726268805 -5.7991805801904574e-015 0 0.0059080392182936257 0.0073788947440434766 -0.99995532249443608 -0
		 7.2062368271620922 -3.2841169549286717 -0.72035723969857823 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak34";
	rename -uid "1847AF1A-4020-2FD7-8A51-D486C9046924";
createNode objectSet -n "skinCluster34Set";
	rename -uid "42AE1DFC-41D1-50EA-1E85-99B394DFE1FC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster34GroupId";
	rename -uid "4D08222F-4D54-B34C-899A-7ABC4EFE5B3D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster34GroupParts";
	rename -uid "2F7A049F-4C57-41C9-D68A-A393E6ED6DCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet34";
	rename -uid "7D939217-4529-B165-E7DB-DAB0F6410110";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId68";
	rename -uid "A55E6277-43DE-355D-2DF9-3EA3BEB38867";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "ED57A2DC-4322-7886-88CA-C488D6071F10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose26";
	rename -uid "134D0EC1-4437-EA56-5EC0-6C9C25AD8ACD";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" -0.62498466325934399 -0.78061467175758437 0.005908039218293957 0
		 -0.7805797958412436 0.62501258726268893 0.0073788947440434809 0 -0.0094526723760303966 -5.5442962807354933e-015 -0.99995532249443597 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801
		 -0.21456077893850048 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43300027313848405 -0.90138140036908687 -0.0020463602415014292 0.0042599225842652379 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster35";
	rename -uid "D7989295-4C96-568F-7FCB-DE8B66FF543A";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999933831 -7.2309142528892466e-007 8.9335998495703881e-007 -0
		 7.2309143112069664e-007 0.99999999999973765 -6.8347999492501802e-009 0 -8.9335997980105714e-007 6.8354461877768874e-009 0.99999999999960076 -0
		 -1.6966262786074029 -7.382087682319324 0.73642627189480769 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak35";
	rename -uid "B09B86B6-4588-159B-650D-B1B196747B0E";
createNode objectSet -n "skinCluster35Set";
	rename -uid "0E5598A9-4813-14BA-D236-0FB0C8116F84";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster35GroupId";
	rename -uid "F92B72F4-45E7-B1F3-DC27-7380653E81DF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster35GroupParts";
	rename -uid "6A326993-4080-250C-37E7-8FAE8F121739";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet35";
	rename -uid "1EFF9653-4ABB-C066-CC62-0891E4C954AC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId70";
	rename -uid "847CD714-4968-F922-D7DF-B9A75EF4D75B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "13745714-4322-60CC-B9F0-F3B8CE637599";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose27";
	rename -uid "E73873B0-4B9A-36AA-35AF-D2B79BE23188";
	setAttr -s 12 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00053032929103179855 8.6273569606701503 -0.014874776678881487 1;
	setAttr ".wm[2]" -type "matrix" -2.8267421736671849e-009 0.9999926927871563 -0.0038228748726873993 0
		 7.3942290568229673e-007 0.0038228748726882866 0.99999269278688296 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032929103179844 8.6273569606701503 -0.014874776678881927 1;
	setAttr ".wm[3]" -type "matrix" -2.1132119679881165e-008 0.99959153704470005 -0.028578996984040702 0
		 7.391262797633448e-007 0.028578996984048356 0.99959153704442683 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.00053032694184830726 9.4584078334728812 -0.018051803393654767 1;
	setAttr ".wm[4]" -type "matrix" -1.5394639946544417e-007 0.97808701550499422 -0.20819651798363437 0
		 7.2322522771996344e-007 0.2081965179836911 0.97808701550472676 0 0.99999999999972666 1.6653345369377353e-016 -7.3942830902673506e-007 0
		 0.0005302430772448827 13.425448565488777 -0.13147217653031618 1;
	setAttr ".wm[5]" -type "matrix" 0.99999999999933975 7.2315603643079206e-007 -8.9335998005616112e-007 0
		 -7.2315603654670396e-007 0.99999999999973865 5.3344528858717535e-013 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.2872182258629392 13.324771523860631 -0.11719126126192689 1;
	setAttr ".wm[6]" -type "matrix" 7.2315603676874878e-007 -0.99999999999973888 -5.3344528878554118e-013 0
		 0.99999999999933997 7.2315603665283687e-007 -8.9335998005616134e-007 0 8.9335997980865471e-007 1.1221579223962247e-013 0.9999999999996011 0
		 1.9026262325810392 13.324771968896645 -0.1171918110428115 1;
	setAttr ".wm[7]" -type "matrix" 0.052892848437871495 -0.15352042487343709 -0.98672885116976683 0
		 0.0082175476920647427 0.9881454746881555 -0.15330033517004904 0 0.99856638161619382 3.6057443472243954e-016 0.053527390240352454 0
		 1.9026279797533006 10.800438244796144 -0.20485514014725531 1;
	setAttr ".wm[8]" -type "matrix" 7.2315603686192399e-007 -0.99999999999973899 -5.3424117994425908e-013 0
		 0.99999999999933997 7.2315603678103743e-007 -8.933599799434977e-007 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.9361817819112943 10.703049011363857 -0.83080941626501681 1;
	setAttr ".wm[9]" -type "matrix" 0.99999999999934019 7.2315603655899303e-007 -8.9335997994349791e-007 0
		 -7.231560366398796e-007 0.99999999999973921 5.3424117974589346e-013 0 8.9335997973533088e-007 1.1154120375373602e-013 0.99999999999960099 0
		 1.8969541362776643 7.892469382852906 -0.86545145736973073 1;
	setAttr ".wm[10]" -type "matrix" -0.62498466325934399 -0.78061467175758437 0.005908039218293957 0
		 -0.7805797958412436 0.62501258726268893 0.0073788947440434809 0 -0.0094526723760303966 -5.5442962807354933e-015 -0.99995532249443597 0
		 1.9334628536134224 7.6779086303157804 -0.73866663238763408 1;
	setAttr ".wm[11]" -type "matrix" 0.99999999999934075 7.2309143139515183e-007 -8.9335998001462136e-007 0
		 -7.2309142501447297e-007 0.99999999999973954 6.8354459301957025e-009 0 8.9335998474347755e-007 -6.8348002068312906e-009 0.99999999999960121 0
		 1.6966202827882195 7.3820889141666513 -0.73642773713267107 1;
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00053032929103179855
		 8.6273569606701503 -0.014874776678881487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 8.3266726846886701e-016 5.5511151231257827e-017
		 -5.5511151231257778e-017 0 -1.0842021724855044e-019 0 -4.40619762898109e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49904355063683525 0.50095499227169582 0.49904318163004308 0.50095462185152995 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.1927874686885952e-016 -2.2477643187008981e-016
		 1.3877787807814481e-017 0 0.83105694551271725 6.9388939039072284e-017 2.2540563165973637e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012379686061470586 0.9999233687503355 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9686617833365037 -9.8948627131627401e-015
		 1.6323498535201684e-012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.090450122024114454 0.99590098675813288 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.1252110405529722e-013 1.4728274155824661e-011
		 6.919176342989967e-011 0 -0.10144434208942421 -0.0069917011491344994 1.2866879722256295 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44491686511141054 -0.54958976170740237 -0.44491653615888116 0.54959016805090177 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61540800671850637 -1.7763568394002505e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.8857805861880479e-016 -7.5496453819979645e-032
		 3.8857805861880479e-016 0 2.5243337241011492 -2.2204460492503131e-016 -0.087663329103132209 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52243989644176381 0.44754040426103675 0.47217301383286897 0.55119577843790879 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6343731364251618 -1.1518563880485999e-015
		 4.3021142204224816e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52243989644176392 -0.44754040426103653 -0.47217301383286869 0.5511957784379089 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.4603866214520331e-013 -4.1633255243649148e-017
		 -2.2204460492501787e-016 0 2.8105796001425247 -0.039229647173416371 -0.034642076149423051 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.036508448910341801
		 -0.21456077893850048 0.12678485759744912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43300027313848405 -0.90138140036908687 -0.0020463602415014292 0.0042599225842652379 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37895741247481257 -1.3820528380580066e-016
		 1.3782378016635732e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.43300027315304296 0.90138140036209324 0.0020463571609326469 0.0042599240640906373 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr -s 12 ".g[0:11]" yes yes yes yes yes yes yes yes yes yes yes 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster36";
	rename -uid "F29D10D5-42A4-F247-B2C9-FEAE8926AB38";
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
	setAttr ".pm[0]" -type "matrix" 0.99999999999933931 -7.2315603643060348e-007 8.9335998005631295e-007 -0
		 7.2315603654689168e-007 0.99999999999973854 1.1259337380003276e-013 0 -8.9335997980850193e-007 5.3382286986477055e-013 0.99999999999960087 -0
		 -1.2872279664450348 -13.324770592997455 0.11719011131113126 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.00044865774578717321 -0.080033318263787123 0 1;
	setAttr ".dpf[0]"  1;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak36";
	rename -uid "87CC124F-4F51-BC75-DD2E-919B743E31B8";
createNode objectSet -n "skinCluster36Set";
	rename -uid "8DE52D81-499D-BD92-961B-5FBC793AA5BD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster36GroupId";
	rename -uid "8C668213-4F25-CE9C-E9E6-C08CE77D4042";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster36GroupParts";
	rename -uid "1160019C-433F-120D-9A85-6CBDAECF6EFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet36";
	rename -uid "E373564C-4315-EED8-681A-E09B78B92F03";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId72";
	rename -uid "0FF87CCF-4654-B5AA-07F3-CFB4C1621ECF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "5503C788-407D-1E6B-7D44-6095043841B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster37";
	rename -uid "3DD5DED7-4DF5-8746-6537-249387503E65";
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
	setAttr ".pm[0]" -type "matrix" 0.052892848437871218 0.0082175476920648138 0.99856638161619271 -0
		 -0.15352042487343728 0.9881454746881545 4.9266146717741262e-016 0 -0.98672885116976661 -0.15330033517004865 0.053527390240352642 -0
		 1.3553159776999582 -10.719443474053945 -1.8889349762745813 1;
	setAttr ".pm[1]" -type "matrix" 7.2315603678084769e-007 0.99999999999933886 8.9335997994364995e-007 -0
		 -0.99999999999973799 7.2315603686211193e-007 1.1179748264308113e-013 0 -5.3449745861052683e-013 -8.9335997973517746e-007 0.99999999999960076 -0
		 10.703047611199064 -1.9361902640964028 0.83080768655617077 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999933886 -7.2315603655880319e-007 8.9335997994365016e-007 -0
		 7.2315603664006743e-007 0.99999999999973799 1.117974826430812e-013 0 -8.9335997973517746e-007 5.344974584121611e-013 0.99999999999960099 -0
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
createNode tweak -n "tweak37";
	rename -uid "8DDB0D05-48FE-0B3E-7FFE-A4A152C93C4A";
createNode objectSet -n "skinCluster37Set";
	rename -uid "18C60CFE-482C-76CD-82E7-6C8677A28603";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster37GroupId";
	rename -uid "4F26D260-4979-5DFD-88C4-CE9E317EF55F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster37GroupParts";
	rename -uid "70E3FCED-4A40-C215-7EF5-B180C26938F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet37";
	rename -uid "C5E88AE9-4F45-A950-AA2B-9590DC1C7028";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId74";
	rename -uid "74FD72DD-41E0-C5F7-613C-10A85211A83E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "A2CDF75A-41E7-0938-75CE-5284CB3D40BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 16 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 10 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
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
connectAttr "pit_droid_01RN.phl[1]" "groupParts2.ig";
connectAttr "pit_droid_01RN.phl[2]" "groupParts4.ig";
connectAttr "pit_droid_01RN.phl[3]" "groupParts6.ig";
connectAttr "pit_droid_01RN.phl[4]" "groupParts8.ig";
connectAttr "pit_droid_01RN.phl[5]" "groupParts10.ig";
connectAttr "pit_droid_01RN.phl[6]" "groupParts12.ig";
connectAttr "pit_droid_01RN.phl[7]" "groupParts40.ig";
connectAttr "pit_droid_01RN.phl[8]" "groupParts72.ig";
connectAttr "pit_droid_01RN.phl[9]" "groupParts52.ig";
connectAttr "pit_droid_01RN.phl[10]" "groupParts50.ig";
connectAttr "pit_droid_01RN.phl[11]" "groupParts48.ig";
connectAttr "pit_droid_01RN.phl[12]" "groupParts46.ig";
connectAttr "pit_droid_01RN.phl[13]" "groupParts54.ig";
connectAttr "pit_droid_01RN.phl[14]" "groupParts42.ig";
connectAttr "pit_droid_01RN.phl[15]" "groupParts74.ig";
connectAttr "pit_droid_01RN.phl[16]" "groupParts68.ig";
connectAttr "pit_droid_01RN.phl[17]" "groupParts64.ig";
connectAttr "pit_droid_01RN.phl[18]" "groupParts66.ig";
connectAttr "pit_droid_01RN.phl[19]" "groupParts60.ig";
connectAttr "pit_droid_01RN.phl[20]" "groupParts62.ig";
connectAttr "pit_droid_01RN.phl[21]" "groupParts20.ig";
connectAttr "pit_droid_01RN.phl[22]" "groupParts22.ig";
connectAttr "pit_droid_01RN.phl[23]" "groupParts26.ig";
connectAttr "pit_droid_01RN.phl[24]" "groupParts24.ig";
connectAttr "pit_droid_01RN.phl[25]" "groupParts16.ig";
connectAttr "pit_droid_01RN.phl[26]" "groupParts28.ig";
connectAttr "pit_droid_01RN.phl[27]" "groupParts18.ig";
connectAttr "pit_droid_01RN.phl[28]" "groupParts34.ig";
connectAttr "pit_droid_01RN.phl[29]" "groupParts36.ig";
connectAttr "pit_droid_01RN.phl[30]" "groupParts38.ig";
connectAttr "pit_droid_01RN.phl[31]" "groupParts32.ig";
connectAttr "pit_droid_01RN.phl[32]" "groupParts30.ig";
connectAttr "pit_droid_01RN.phl[33]" "groupParts56.ig";
connectAttr "pit_droid_01RN.phl[34]" "groupParts44.ig";
connectAttr "pit_droid_01RN.phl[35]" "groupParts58.ig";
connectAttr "pit_droid_01RN.phl[36]" "groupParts70.ig";
connectAttr "pit_droid_01RN.phl[37]" "groupParts14.ig";
connectAttr "camera_headShapeDeformed.iog" "pit_droid_01RN.phl[38]";
connectAttr "camera_eyeShapeDeformed.iog" "pit_droid_01RN.phl[39]";
connectAttr "camera_accesorieShape2Deformed.iog" "pit_droid_01RN.phl[40]";
connectAttr "camera_accesorie1ShapeDeformed.iog" "pit_droid_01RN.phl[41]";
connectAttr "camera_accesorieShapeDeformed.iog" "pit_droid_01RN.phl[42]";
connectAttr "neckShapeDeformed.iog" "pit_droid_01RN.phl[43]";
connectAttr "right_upper_armShapeDeformed.iog" "pit_droid_01RN.phl[44]";
connectAttr "right_lower_armShapeDeformed.iog" "pit_droid_01RN.phl[45]";
connectAttr "right_wristShapeDeformed.iog" "pit_droid_01RN.phl[46]";
connectAttr "right_2_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[47]";
connectAttr "right_2_finger_Shape2Deformed.iog" "pit_droid_01RN.phl[48]";
connectAttr "right_3_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[49]";
connectAttr "right_3_finger_2ShapeDeformed.iog" "pit_droid_01RN.phl[50]";
connectAttr "right_1_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[51]";
connectAttr "right_1_finger_2ShapeDeformed.iog" "pit_droid_01RN.phl[52]";
connectAttr "left_wristShapeDeformed.iog" "pit_droid_01RN.phl[53]";
connectAttr "left_3_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[54]";
connectAttr "left_3_finger_Shape2Deformed.iog" "pit_droid_01RN.phl[55]";
connectAttr "left_2_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[56]";
connectAttr "left_2_finger_Shape2Deformed.iog" "pit_droid_01RN.phl[57]";
connectAttr "left_1_finger_Shape1Deformed.iog" "pit_droid_01RN.phl[58]";
connectAttr "left_1_finger_2ShapeDeformed.iog" "pit_droid_01RN.phl[59]";
connectAttr "left_upper_armShapeDeformed.iog" "pit_droid_01RN.phl[60]";
connectAttr "left_lower_armShapeDeformed.iog" "pit_droid_01RN.phl[61]";
connectAttr "left_upper_legShapeDeformed.iog" "pit_droid_01RN.phl[62]";
connectAttr "lef_lower_legShapeDeformed.iog" "pit_droid_01RN.phl[63]";
connectAttr "left_footShapeDeformed.iog" "pit_droid_01RN.phl[64]";
connectAttr "left_toe_Shape1Deformed.iog" "pit_droid_01RN.phl[65]";
connectAttr "left_toe_Shape2Deformed.iog" "pit_droid_01RN.phl[66]";
connectAttr "right_upper_legShapeDeformed.iog" "pit_droid_01RN.phl[67]";
connectAttr "right_lower_legShapeDeformed.iog" "pit_droid_01RN.phl[68]";
connectAttr "right_foorShapeDeformed.iog" "pit_droid_01RN.phl[69]";
connectAttr "right_toe_Shape1Deformed.iog" "pit_droid_01RN.phl[70]";
connectAttr "right_toe_Shape2Deformed.iog" "pit_droid_01RN.phl[71]";
connectAttr "body_mainShapeDeformed.iog" "pit_droid_01RN.phl[72]";
connectAttr "hips_Shape1Deformed.iog" "pit_droid_01RN.phl[73]";
connectAttr "hips_Shape2Deformed.iog" "pit_droid_01RN.phl[74]";
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
connectAttr "skinCluster7GroupId.id" "body_mainShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster7Set.mwc" "body_mainShapeDeformed.iog.og[0].gco";
connectAttr "groupId14.id" "body_mainShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "body_mainShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster7.og[0]" "body_mainShapeDeformed.i";
connectAttr "tweak7.vl[0].vt[0]" "body_mainShapeDeformed.twl";
connectAttr "skinCluster35GroupId.id" "left_1_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster35Set.mwc" "left_1_finger_2ShapeDeformed.iog.og[0].gco";
connectAttr "groupId70.id" "left_1_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet35.mwc" "left_1_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster35.og[0]" "left_1_finger_2ShapeDeformed.i";
connectAttr "tweak35.vl[0].vt[0]" "left_1_finger_2ShapeDeformed.twl";
connectAttr "skinCluster29GroupId.id" "left_wristShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster29Set.mwc" "left_wristShapeDeformed.iog.og[0].gco";
connectAttr "groupId58.id" "left_wristShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet29.mwc" "left_wristShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster29.og[0]" "left_wristShapeDeformed.i";
connectAttr "tweak29.vl[0].vt[0]" "left_wristShapeDeformed.twl";
connectAttr "skinCluster22GroupId.id" "right_wristShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster22Set.mwc" "right_wristShapeDeformed.iog.og[0].gco";
connectAttr "groupId44.id" "right_wristShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "right_wristShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster22.og[0]" "right_wristShapeDeformed.i";
connectAttr "tweak22.vl[0].vt[0]" "right_wristShapeDeformed.twl";
connectAttr "skinCluster28GroupId.id" "right_1_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster28Set.mwc" "right_1_finger_2ShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId56.id" "right_1_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet28.mwc" "right_1_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster28.og[0]" "right_1_finger_2ShapeDeformed.i";
connectAttr "tweak28.vl[0].vt[0]" "right_1_finger_2ShapeDeformed.twl";
connectAttr "skinCluster15GroupId.id" "right_upper_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster15Set.mwc" "right_upper_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId30.id" "right_upper_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "right_upper_legShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster15.og[0]" "right_upper_legShapeDeformed.i";
connectAttr "tweak15.vl[0].vt[0]" "right_upper_legShapeDeformed.twl";
connectAttr "skinCluster16GroupId.id" "right_lower_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster16Set.mwc" "right_lower_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId32.id" "right_lower_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "right_lower_legShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster16.og[0]" "right_lower_legShapeDeformed.i";
connectAttr "tweak16.vl[0].vt[0]" "right_lower_legShapeDeformed.twl";
connectAttr "skinCluster19GroupId.id" "right_toe_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster19Set.mwc" "right_toe_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId38.id" "right_toe_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "right_toe_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster19.og[0]" "right_toe_Shape2Deformed.i";
connectAttr "tweak19.vl[0].vt[0]" "right_toe_Shape2Deformed.twl";
connectAttr "skinCluster18GroupId.id" "right_toe_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster18Set.mwc" "right_toe_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId36.id" "right_toe_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "right_toe_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster18.og[0]" "right_toe_Shape1Deformed.i";
connectAttr "tweak18.vl[0].vt[0]" "right_toe_Shape1Deformed.twl";
connectAttr "skinCluster17GroupId.id" "right_foorShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster17Set.mwc" "right_foorShapeDeformed.iog.og[0].gco";
connectAttr "groupId34.id" "right_foorShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "right_foorShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster17.og[0]" "right_foorShapeDeformed.i";
connectAttr "tweak17.vl[0].vt[0]" "right_foorShapeDeformed.twl";
connectAttr "skinCluster9GroupId.id" "left_upper_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster9Set.mwc" "left_upper_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId18.id" "left_upper_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "left_upper_legShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster9.og[0]" "left_upper_legShapeDeformed.i";
connectAttr "tweak9.vl[0].vt[0]" "left_upper_legShapeDeformed.twl";
connectAttr "skinCluster14GroupId.id" "hips_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster14Set.mwc" "hips_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId28.id" "hips_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet14.mwc" "hips_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster14.og[0]" "hips_Shape2Deformed.i";
connectAttr "tweak14.vl[0].vt[0]" "hips_Shape2Deformed.twl";
connectAttr "skinCluster8GroupId.id" "hips_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster8Set.mwc" "hips_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId16.id" "hips_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "hips_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster8.og[0]" "hips_Shape1Deformed.i";
connectAttr "tweak8.vl[0].vt[0]" "hips_Shape1Deformed.twl";
connectAttr "skinCluster12GroupId.id" "left_toe_Shape1Deformed.iog.og[0].gid";
connectAttr "skinCluster12Set.mwc" "left_toe_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId24.id" "left_toe_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "left_toe_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster12.og[0]" "left_toe_Shape1Deformed.i";
connectAttr "tweak12.vl[0].vt[0]" "left_toe_Shape1Deformed.twl";
connectAttr "skinCluster13GroupId.id" "left_toe_Shape2Deformed.iog.og[0].gid";
connectAttr "skinCluster13Set.mwc" "left_toe_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId26.id" "left_toe_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "left_toe_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster13.og[0]" "left_toe_Shape2Deformed.i";
connectAttr "tweak13.vl[0].vt[0]" "left_toe_Shape2Deformed.twl";
connectAttr "skinCluster11GroupId.id" "left_footShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "left_footShapeDeformed.iog.og[0].gco";
connectAttr "groupId22.id" "left_footShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "left_footShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster11.og[0]" "left_footShapeDeformed.i";
connectAttr "tweak11.vl[0].vt[0]" "left_footShapeDeformed.twl";
connectAttr "skinCluster10GroupId.id" "lef_lower_legShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster10Set.mwc" "lef_lower_legShapeDeformed.iog.og[0].gco";
connectAttr "groupId20.id" "lef_lower_legShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "lef_lower_legShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster10.og[0]" "lef_lower_legShapeDeformed.i";
connectAttr "tweak10.vl[0].vt[0]" "lef_lower_legShapeDeformed.twl";
connectAttr "skinCluster31GroupId.id" "left_3_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster31Set.mwc" "left_3_finger_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId62.id" "left_3_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet31.mwc" "left_3_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster31.og[0]" "left_3_finger_Shape2Deformed.i";
connectAttr "tweak31.vl[0].vt[0]" "left_3_finger_Shape2Deformed.twl";
connectAttr "skinCluster30GroupId.id" "left_3_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster30Set.mwc" "left_3_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId60.id" "left_3_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet30.mwc" "left_3_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster30.og[0]" "left_3_finger_Shape1Deformed.i";
connectAttr "tweak30.vl[0].vt[0]" "left_3_finger_Shape1Deformed.twl";
connectAttr "skinCluster33GroupId.id" "left_2_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster33Set.mwc" "left_2_finger_Shape2Deformed.iog.og[0].gco";
connectAttr "groupId66.id" "left_2_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet33.mwc" "left_2_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster33.og[0]" "left_2_finger_Shape2Deformed.i";
connectAttr "tweak33.vl[0].vt[0]" "left_2_finger_Shape2Deformed.twl";
connectAttr "skinCluster32GroupId.id" "left_2_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster32Set.mwc" "left_2_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId64.id" "left_2_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet32.mwc" "left_2_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster32.og[0]" "left_2_finger_Shape1Deformed.i";
connectAttr "tweak32.vl[0].vt[0]" "left_2_finger_Shape1Deformed.twl";
connectAttr "skinCluster34GroupId.id" "left_1_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster34Set.mwc" "left_1_finger_Shape1Deformed.iog.og[0].gco";
connectAttr "groupId68.id" "left_1_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet34.mwc" "left_1_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster34.og[0]" "left_1_finger_Shape1Deformed.i";
connectAttr "tweak34.vl[0].vt[0]" "left_1_finger_Shape1Deformed.twl";
connectAttr "skinCluster37GroupId.id" "left_lower_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster37Set.mwc" "left_lower_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId74.id" "left_lower_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet37.mwc" "left_lower_armShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster37.og[0]" "left_lower_armShapeDeformed.i";
connectAttr "tweak37.vl[0].vt[0]" "left_lower_armShapeDeformed.twl";
connectAttr "skinCluster21GroupId.id" "right_lower_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster21Set.mwc" "right_lower_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId42.id" "right_lower_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "right_lower_armShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster21.og[0]" "right_lower_armShapeDeformed.i";
connectAttr "tweak21.vl[0].vt[0]" "right_lower_armShapeDeformed.twl";
connectAttr "skinCluster27GroupId.id" "right_1_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster27Set.mwc" "right_1_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId54.id" "right_1_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet27.mwc" "right_1_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster27.og[0]" "right_1_finger_Shape1Deformed.i";
connectAttr "tweak27.vl[0].vt[0]" "right_1_finger_Shape1Deformed.twl";
connectAttr "skinCluster23GroupId.id" "right_2_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster23Set.mwc" "right_2_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId46.id" "right_2_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet23.mwc" "right_2_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster23.og[0]" "right_2_finger_Shape1Deformed.i";
connectAttr "tweak23.vl[0].vt[0]" "right_2_finger_Shape1Deformed.twl";
connectAttr "skinCluster24GroupId.id" "right_2_finger_Shape2Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster24Set.mwc" "right_2_finger_Shape2Deformed.iog.og[0].gco"
		;
connectAttr "groupId48.id" "right_2_finger_Shape2Deformed.iog.og[1].gid";
connectAttr "tweakSet24.mwc" "right_2_finger_Shape2Deformed.iog.og[1].gco";
connectAttr "skinCluster24.og[0]" "right_2_finger_Shape2Deformed.i";
connectAttr "tweak24.vl[0].vt[0]" "right_2_finger_Shape2Deformed.twl";
connectAttr "skinCluster25GroupId.id" "right_3_finger_Shape1Deformed.iog.og[0].gid"
		;
connectAttr "skinCluster25Set.mwc" "right_3_finger_Shape1Deformed.iog.og[0].gco"
		;
connectAttr "groupId50.id" "right_3_finger_Shape1Deformed.iog.og[1].gid";
connectAttr "tweakSet25.mwc" "right_3_finger_Shape1Deformed.iog.og[1].gco";
connectAttr "skinCluster25.og[0]" "right_3_finger_Shape1Deformed.i";
connectAttr "tweak25.vl[0].vt[0]" "right_3_finger_Shape1Deformed.twl";
connectAttr "skinCluster26GroupId.id" "right_3_finger_2ShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster26Set.mwc" "right_3_finger_2ShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId52.id" "right_3_finger_2ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet26.mwc" "right_3_finger_2ShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster26.og[0]" "right_3_finger_2ShapeDeformed.i";
connectAttr "tweak26.vl[0].vt[0]" "right_3_finger_2ShapeDeformed.twl";
connectAttr "skinCluster36GroupId.id" "left_upper_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster36Set.mwc" "left_upper_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId72.id" "left_upper_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet36.mwc" "left_upper_armShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster36.og[0]" "left_upper_armShapeDeformed.i";
connectAttr "tweak36.vl[0].vt[0]" "left_upper_armShapeDeformed.twl";
connectAttr "skinCluster20GroupId.id" "right_upper_armShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster20Set.mwc" "right_upper_armShapeDeformed.iog.og[0].gco";
connectAttr "groupId40.id" "right_upper_armShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "right_upper_armShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster20.og[0]" "right_upper_armShapeDeformed.i";
connectAttr "tweak20.vl[0].vt[0]" "right_upper_armShapeDeformed.twl";
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
connectAttr "makeNurbCircle6.oc" "transformGeometry4.ig";
connectAttr "pit_droid_01RNfosterParent1.msg" "pit_droid_01RN.fp";
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
connectAttr "Pit_droid_rig_grp.msg" "bindPose1.m[0]";
connectAttr "root_jnt.msg" "bindPose1.m[1]";
connectAttr "base_jnt.msg" "bindPose1.m[2]";
connectAttr "hips_jnt.msg" "bindPose1.m[3]";
connectAttr "spine_jnt.msg" "bindPose1.m[4]";
connectAttr "neck_jnt.msg" "bindPose1.m[5]";
connectAttr "head_jnt.msg" "bindPose1.m[6]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "root_jnt.bps" "bindPose1.wm[1]";
connectAttr "base_jnt.bps" "bindPose1.wm[2]";
connectAttr "hips_jnt.bps" "bindPose1.wm[3]";
connectAttr "spine_jnt.bps" "bindPose1.wm[4]";
connectAttr "neck_jnt.bps" "bindPose1.wm[5]";
connectAttr "head_jnt.bps" "bindPose1.wm[6]";
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
connectAttr "bindPose2.msg" "skinCluster7.bp";
connectAttr "hips_2_jnt.wm" "skinCluster7.ma[0]";
connectAttr "hips_2_jnt.liw" "skinCluster7.lw[0]";
connectAttr "hips_2_jnt.obcc" "skinCluster7.ifcl[0]";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "body_mainShapeDeformed.iog.og[0]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "body_mainShapeDeformed.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose2.m[0]";
connectAttr "root_jnt.msg" "bindPose2.m[1]";
connectAttr "base_jnt.msg" "bindPose2.m[2]";
connectAttr "hips_jnt.msg" "bindPose2.m[3]";
connectAttr "hips_2_jnt.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "hips_jnt.wm" "skinCluster8.ma[0]";
connectAttr "hips_jnt.liw" "skinCluster8.lw[0]";
connectAttr "hips_jnt.obcc" "skinCluster8.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "hips_Shape1Deformed.iog.og[0]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "hips_Shape1Deformed.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster9.bp";
connectAttr "upper_leg_L_jnt.wm" "skinCluster9.ma[0]";
connectAttr "upper_leg_L_jnt.liw" "skinCluster9.lw[0]";
connectAttr "upper_leg_L_jnt.obcc" "skinCluster9.ifcl[0]";
connectAttr "groupParts18.og" "tweak9.ip[0].ig";
connectAttr "groupId18.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "left_upper_legShapeDeformed.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet9.gn" -na;
connectAttr "left_upper_legShapeDeformed.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose3.m[0]";
connectAttr "root_jnt.msg" "bindPose3.m[1]";
connectAttr "base_jnt.msg" "bindPose3.m[2]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose3.m[3]";
connectAttr "upper_leg_L_jnt.msg" "bindPose3.m[4]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster10.bp";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.wm" "skinCluster10.ma[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.liw" "skinCluster10.lw[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.obcc" "skinCluster10.ifcl[0]"
		;
connectAttr "groupParts20.og" "tweak10.ip[0].ig";
connectAttr "groupId20.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "lef_lower_legShapeDeformed.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet10.gn" -na;
connectAttr "lef_lower_legShapeDeformed.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose4.m[0]";
connectAttr "root_jnt.msg" "bindPose4.m[1]";
connectAttr "base_jnt.msg" "bindPose4.m[2]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose4.m[3]";
connectAttr "upper_leg_L_jnt.msg" "bindPose4.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose4.m[5]"
		;
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster11.bp";
connectAttr "ankle_L_jnt.wm" "skinCluster11.ma[0]";
connectAttr "ankle_L_jnt.liw" "skinCluster11.lw[0]";
connectAttr "ankle_L_jnt.obcc" "skinCluster11.ifcl[0]";
connectAttr "groupParts22.og" "tweak11.ip[0].ig";
connectAttr "groupId22.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "left_footShapeDeformed.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet11.gn" -na;
connectAttr "left_footShapeDeformed.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose5.m[0]";
connectAttr "root_jnt.msg" "bindPose5.m[1]";
connectAttr "base_jnt.msg" "bindPose5.m[2]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose5.m[3]";
connectAttr "upper_leg_L_jnt.msg" "bindPose5.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose5.m[5]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose5.m[6]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "bindPose6.msg" "skinCluster12.bp";
connectAttr "toe_1_L_1_jnt.wm" "skinCluster12.ma[0]";
connectAttr "toe_1_L_1_jnt.liw" "skinCluster12.lw[0]";
connectAttr "toe_1_L_1_jnt.obcc" "skinCluster12.ifcl[0]";
connectAttr "groupParts24.og" "tweak12.ip[0].ig";
connectAttr "groupId24.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "left_toe_Shape1Deformed.iog.og[0]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet12.gn" -na;
connectAttr "left_toe_Shape1Deformed.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose6.m[0]";
connectAttr "root_jnt.msg" "bindPose6.m[1]";
connectAttr "base_jnt.msg" "bindPose6.m[2]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose6.m[3]";
connectAttr "upper_leg_L_jnt.msg" "bindPose6.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose6.m[5]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose6.m[6]";
connectAttr "toe_1_L_1_jnt.msg" "bindPose6.m[7]";
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "bindPose6.m[2]" "bindPose6.p[3]";
connectAttr "bindPose6.m[3]" "bindPose6.p[4]";
connectAttr "bindPose6.m[4]" "bindPose6.p[5]";
connectAttr "bindPose6.m[5]" "bindPose6.p[6]";
connectAttr "bindPose6.m[6]" "bindPose6.p[7]";
connectAttr "skinCluster13GroupParts.og" "skinCluster13.ip[0].ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13.ip[0].gi";
connectAttr "bindPose7.msg" "skinCluster13.bp";
connectAttr "toe_2_L_1_jnt.wm" "skinCluster13.ma[0]";
connectAttr "toe_2_L_1_jnt.liw" "skinCluster13.lw[0]";
connectAttr "toe_2_L_1_jnt.obcc" "skinCluster13.ifcl[0]";
connectAttr "groupParts26.og" "tweak13.ip[0].ig";
connectAttr "groupId26.id" "tweak13.ip[0].gi";
connectAttr "skinCluster13GroupId.msg" "skinCluster13Set.gn" -na;
connectAttr "left_toe_Shape2Deformed.iog.og[0]" "skinCluster13Set.dsm" -na;
connectAttr "skinCluster13.msg" "skinCluster13Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster13GroupParts.ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet13.gn" -na;
connectAttr "left_toe_Shape2Deformed.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose7.m[0]";
connectAttr "root_jnt.msg" "bindPose7.m[1]";
connectAttr "base_jnt.msg" "bindPose7.m[2]";
connectAttr "hips_rotaion_L_jnt.msg" "bindPose7.m[3]";
connectAttr "upper_leg_L_jnt.msg" "bindPose7.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_L_jnt|upper_leg_L_jnt|knee_l_jnt.msg" "bindPose7.m[5]"
		;
connectAttr "ankle_L_jnt.msg" "bindPose7.m[6]";
connectAttr "toe_2_L_1_jnt.msg" "bindPose7.m[7]";
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.m[0]" "bindPose7.p[1]";
connectAttr "bindPose7.m[1]" "bindPose7.p[2]";
connectAttr "bindPose7.m[2]" "bindPose7.p[3]";
connectAttr "bindPose7.m[3]" "bindPose7.p[4]";
connectAttr "bindPose7.m[4]" "bindPose7.p[5]";
connectAttr "bindPose7.m[5]" "bindPose7.p[6]";
connectAttr "bindPose7.m[6]" "bindPose7.p[7]";
connectAttr "skinCluster14GroupParts.og" "skinCluster14.ip[0].ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14.ip[0].gi";
connectAttr "base_jnt.wm" "skinCluster14.ma[0]";
connectAttr "base_jnt.liw" "skinCluster14.lw[0]";
connectAttr "base_jnt.obcc" "skinCluster14.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster14.bp";
connectAttr "groupParts28.og" "tweak14.ip[0].ig";
connectAttr "groupId28.id" "tweak14.ip[0].gi";
connectAttr "skinCluster14GroupId.msg" "skinCluster14Set.gn" -na;
connectAttr "hips_Shape2Deformed.iog.og[0]" "skinCluster14Set.dsm" -na;
connectAttr "skinCluster14.msg" "skinCluster14Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster14GroupParts.ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet14.gn" -na;
connectAttr "hips_Shape2Deformed.iog.og[1]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "skinCluster15GroupParts.og" "skinCluster15.ip[0].ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster15.bp";
connectAttr "upper_leg_R_jnt.wm" "skinCluster15.ma[0]";
connectAttr "upper_leg_R_jnt.liw" "skinCluster15.lw[0]";
connectAttr "upper_leg_R_jnt.obcc" "skinCluster15.ifcl[0]";
connectAttr "groupParts30.og" "tweak15.ip[0].ig";
connectAttr "groupId30.id" "tweak15.ip[0].gi";
connectAttr "skinCluster15GroupId.msg" "skinCluster15Set.gn" -na;
connectAttr "right_upper_legShapeDeformed.iog.og[0]" "skinCluster15Set.dsm" -na;
connectAttr "skinCluster15.msg" "skinCluster15Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster15GroupParts.ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet15.gn" -na;
connectAttr "right_upper_legShapeDeformed.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose8.m[0]";
connectAttr "root_jnt.msg" "bindPose8.m[1]";
connectAttr "base_jnt.msg" "bindPose8.m[2]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose8.m[3]";
connectAttr "upper_leg_R_jnt.msg" "bindPose8.m[4]";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.m[2]" "bindPose8.p[3]";
connectAttr "bindPose8.m[3]" "bindPose8.p[4]";
connectAttr "skinCluster16GroupParts.og" "skinCluster16.ip[0].ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster16.bp";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.wm" "skinCluster16.ma[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.liw" "skinCluster16.lw[0]"
		;
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.obcc" "skinCluster16.ifcl[0]"
		;
connectAttr "groupParts32.og" "tweak16.ip[0].ig";
connectAttr "groupId32.id" "tweak16.ip[0].gi";
connectAttr "skinCluster16GroupId.msg" "skinCluster16Set.gn" -na;
connectAttr "right_lower_legShapeDeformed.iog.og[0]" "skinCluster16Set.dsm" -na;
connectAttr "skinCluster16.msg" "skinCluster16Set.ub[0]";
connectAttr "tweak16.og[0]" "skinCluster16GroupParts.ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet16.gn" -na;
connectAttr "right_lower_legShapeDeformed.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose9.m[0]";
connectAttr "root_jnt.msg" "bindPose9.m[1]";
connectAttr "base_jnt.msg" "bindPose9.m[2]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose9.m[3]";
connectAttr "upper_leg_R_jnt.msg" "bindPose9.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose9.m[5]"
		;
connectAttr "bindPose9.w" "bindPose9.p[0]";
connectAttr "bindPose9.m[0]" "bindPose9.p[1]";
connectAttr "bindPose9.m[1]" "bindPose9.p[2]";
connectAttr "bindPose9.m[2]" "bindPose9.p[3]";
connectAttr "bindPose9.m[3]" "bindPose9.p[4]";
connectAttr "bindPose9.m[4]" "bindPose9.p[5]";
connectAttr "skinCluster17GroupParts.og" "skinCluster17.ip[0].ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17.ip[0].gi";
connectAttr "bindPose10.msg" "skinCluster17.bp";
connectAttr "ankle_R_jnt.wm" "skinCluster17.ma[0]";
connectAttr "ankle_R_jnt.liw" "skinCluster17.lw[0]";
connectAttr "ankle_R_jnt.obcc" "skinCluster17.ifcl[0]";
connectAttr "groupParts34.og" "tweak17.ip[0].ig";
connectAttr "groupId34.id" "tweak17.ip[0].gi";
connectAttr "skinCluster17GroupId.msg" "skinCluster17Set.gn" -na;
connectAttr "right_foorShapeDeformed.iog.og[0]" "skinCluster17Set.dsm" -na;
connectAttr "skinCluster17.msg" "skinCluster17Set.ub[0]";
connectAttr "tweak17.og[0]" "skinCluster17GroupParts.ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet17.gn" -na;
connectAttr "right_foorShapeDeformed.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose10.m[0]";
connectAttr "root_jnt.msg" "bindPose10.m[1]";
connectAttr "base_jnt.msg" "bindPose10.m[2]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose10.m[3]";
connectAttr "upper_leg_R_jnt.msg" "bindPose10.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose10.m[5]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose10.m[6]";
connectAttr "bindPose10.w" "bindPose10.p[0]";
connectAttr "bindPose10.m[0]" "bindPose10.p[1]";
connectAttr "bindPose10.m[1]" "bindPose10.p[2]";
connectAttr "bindPose10.m[2]" "bindPose10.p[3]";
connectAttr "bindPose10.m[3]" "bindPose10.p[4]";
connectAttr "bindPose10.m[4]" "bindPose10.p[5]";
connectAttr "bindPose10.m[5]" "bindPose10.p[6]";
connectAttr "skinCluster18GroupParts.og" "skinCluster18.ip[0].ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18.ip[0].gi";
connectAttr "bindPose11.msg" "skinCluster18.bp";
connectAttr "toe_2_R_1_jnt.wm" "skinCluster18.ma[0]";
connectAttr "toe_2_R_1_jnt.liw" "skinCluster18.lw[0]";
connectAttr "toe_2_R_1_jnt.obcc" "skinCluster18.ifcl[0]";
connectAttr "groupParts36.og" "tweak18.ip[0].ig";
connectAttr "groupId36.id" "tweak18.ip[0].gi";
connectAttr "skinCluster18GroupId.msg" "skinCluster18Set.gn" -na;
connectAttr "right_toe_Shape1Deformed.iog.og[0]" "skinCluster18Set.dsm" -na;
connectAttr "skinCluster18.msg" "skinCluster18Set.ub[0]";
connectAttr "tweak18.og[0]" "skinCluster18GroupParts.ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet18.gn" -na;
connectAttr "right_toe_Shape1Deformed.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose11.m[0]";
connectAttr "root_jnt.msg" "bindPose11.m[1]";
connectAttr "base_jnt.msg" "bindPose11.m[2]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose11.m[3]";
connectAttr "upper_leg_R_jnt.msg" "bindPose11.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose11.m[5]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose11.m[6]";
connectAttr "toe_2_R_1_jnt.msg" "bindPose11.m[7]";
connectAttr "bindPose11.w" "bindPose11.p[0]";
connectAttr "bindPose11.m[0]" "bindPose11.p[1]";
connectAttr "bindPose11.m[1]" "bindPose11.p[2]";
connectAttr "bindPose11.m[2]" "bindPose11.p[3]";
connectAttr "bindPose11.m[3]" "bindPose11.p[4]";
connectAttr "bindPose11.m[4]" "bindPose11.p[5]";
connectAttr "bindPose11.m[5]" "bindPose11.p[6]";
connectAttr "bindPose11.m[6]" "bindPose11.p[7]";
connectAttr "skinCluster19GroupParts.og" "skinCluster19.ip[0].ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19.ip[0].gi";
connectAttr "bindPose12.msg" "skinCluster19.bp";
connectAttr "toe_1_R_1_jnt.wm" "skinCluster19.ma[0]";
connectAttr "toe_1_R_1_jnt.liw" "skinCluster19.lw[0]";
connectAttr "toe_1_R_1_jnt.obcc" "skinCluster19.ifcl[0]";
connectAttr "groupParts38.og" "tweak19.ip[0].ig";
connectAttr "groupId38.id" "tweak19.ip[0].gi";
connectAttr "skinCluster19GroupId.msg" "skinCluster19Set.gn" -na;
connectAttr "right_toe_Shape2Deformed.iog.og[0]" "skinCluster19Set.dsm" -na;
connectAttr "skinCluster19.msg" "skinCluster19Set.ub[0]";
connectAttr "tweak19.og[0]" "skinCluster19GroupParts.ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet19.gn" -na;
connectAttr "right_toe_Shape2Deformed.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose12.m[0]";
connectAttr "root_jnt.msg" "bindPose12.m[1]";
connectAttr "base_jnt.msg" "bindPose12.m[2]";
connectAttr "hips_rotaion_R_jnt.msg" "bindPose12.m[3]";
connectAttr "upper_leg_R_jnt.msg" "bindPose12.m[4]";
connectAttr "|Pit_droid_rig_grp|root_jnt|base_jnt|hips_rotaion_R_jnt|upper_leg_R_jnt|knee_l_jnt.msg" "bindPose12.m[5]"
		;
connectAttr "ankle_R_jnt.msg" "bindPose12.m[6]";
connectAttr "toe_1_R_1_jnt.msg" "bindPose12.m[7]";
connectAttr "bindPose12.w" "bindPose12.p[0]";
connectAttr "bindPose12.m[0]" "bindPose12.p[1]";
connectAttr "bindPose12.m[1]" "bindPose12.p[2]";
connectAttr "bindPose12.m[2]" "bindPose12.p[3]";
connectAttr "bindPose12.m[3]" "bindPose12.p[4]";
connectAttr "bindPose12.m[4]" "bindPose12.p[5]";
connectAttr "bindPose12.m[5]" "bindPose12.p[6]";
connectAttr "bindPose12.m[6]" "bindPose12.p[7]";
connectAttr "skinCluster20GroupParts.og" "skinCluster20.ip[0].ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20.ip[0].gi";
connectAttr "bindPose13.msg" "skinCluster20.bp";
connectAttr "shoulder_rotaion_R_jnt.wm" "skinCluster20.ma[0]";
connectAttr "shoulder_rotaion_R_jnt.liw" "skinCluster20.lw[0]";
connectAttr "shoulder_rotaion_R_jnt.obcc" "skinCluster20.ifcl[0]";
connectAttr "groupParts40.og" "tweak20.ip[0].ig";
connectAttr "groupId40.id" "tweak20.ip[0].gi";
connectAttr "skinCluster20GroupId.msg" "skinCluster20Set.gn" -na;
connectAttr "right_upper_armShapeDeformed.iog.og[0]" "skinCluster20Set.dsm" -na;
connectAttr "skinCluster20.msg" "skinCluster20Set.ub[0]";
connectAttr "tweak20.og[0]" "skinCluster20GroupParts.ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20GroupParts.gi";
connectAttr "groupId40.msg" "tweakSet20.gn" -na;
connectAttr "right_upper_armShapeDeformed.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose13.m[0]";
connectAttr "root_jnt.msg" "bindPose13.m[1]";
connectAttr "base_jnt.msg" "bindPose13.m[2]";
connectAttr "hips_jnt.msg" "bindPose13.m[3]";
connectAttr "spine_jnt.msg" "bindPose13.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose13.m[5]";
connectAttr "bindPose13.w" "bindPose13.p[0]";
connectAttr "bindPose13.m[0]" "bindPose13.p[1]";
connectAttr "bindPose13.m[1]" "bindPose13.p[2]";
connectAttr "bindPose13.m[2]" "bindPose13.p[3]";
connectAttr "bindPose13.m[3]" "bindPose13.p[4]";
connectAttr "bindPose13.m[4]" "bindPose13.p[5]";
connectAttr "skinCluster21GroupParts.og" "skinCluster21.ip[0].ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21.ip[0].gi";
connectAttr "bindPose14.msg" "skinCluster21.bp";
connectAttr "elbow_R_1_jnt.wm" "skinCluster21.ma[0]";
connectAttr "elbow_R_2_jnt.wm" "skinCluster21.ma[1]";
connectAttr "wrist_R_jnt.wm" "skinCluster21.ma[2]";
connectAttr "elbow_R_1_jnt.liw" "skinCluster21.lw[0]";
connectAttr "elbow_R_2_jnt.liw" "skinCluster21.lw[1]";
connectAttr "wrist_R_jnt.liw" "skinCluster21.lw[2]";
connectAttr "elbow_R_1_jnt.obcc" "skinCluster21.ifcl[0]";
connectAttr "elbow_R_2_jnt.obcc" "skinCluster21.ifcl[1]";
connectAttr "wrist_R_jnt.obcc" "skinCluster21.ifcl[2]";
connectAttr "groupParts42.og" "tweak21.ip[0].ig";
connectAttr "groupId42.id" "tweak21.ip[0].gi";
connectAttr "skinCluster21GroupId.msg" "skinCluster21Set.gn" -na;
connectAttr "right_lower_armShapeDeformed.iog.og[0]" "skinCluster21Set.dsm" -na;
connectAttr "skinCluster21.msg" "skinCluster21Set.ub[0]";
connectAttr "tweak21.og[0]" "skinCluster21GroupParts.ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21GroupParts.gi";
connectAttr "groupId42.msg" "tweakSet21.gn" -na;
connectAttr "right_lower_armShapeDeformed.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose14.m[0]";
connectAttr "root_jnt.msg" "bindPose14.m[1]";
connectAttr "base_jnt.msg" "bindPose14.m[2]";
connectAttr "hips_jnt.msg" "bindPose14.m[3]";
connectAttr "spine_jnt.msg" "bindPose14.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose14.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose14.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose14.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose14.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose14.m[9]";
connectAttr "bindPose14.w" "bindPose14.p[0]";
connectAttr "bindPose14.m[0]" "bindPose14.p[1]";
connectAttr "bindPose14.m[1]" "bindPose14.p[2]";
connectAttr "bindPose14.m[2]" "bindPose14.p[3]";
connectAttr "bindPose14.m[3]" "bindPose14.p[4]";
connectAttr "bindPose14.m[4]" "bindPose14.p[5]";
connectAttr "bindPose14.m[5]" "bindPose14.p[6]";
connectAttr "bindPose14.m[6]" "bindPose14.p[7]";
connectAttr "bindPose14.m[7]" "bindPose14.p[8]";
connectAttr "bindPose14.m[8]" "bindPose14.p[9]";
connectAttr "skinCluster22GroupParts.og" "skinCluster22.ip[0].ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22.ip[0].gi";
connectAttr "wrist_R_jnt.wm" "skinCluster22.ma[0]";
connectAttr "wrist_R_jnt.liw" "skinCluster22.lw[0]";
connectAttr "wrist_R_jnt.obcc" "skinCluster22.ifcl[0]";
connectAttr "bindPose14.msg" "skinCluster22.bp";
connectAttr "groupParts44.og" "tweak22.ip[0].ig";
connectAttr "groupId44.id" "tweak22.ip[0].gi";
connectAttr "skinCluster22GroupId.msg" "skinCluster22Set.gn" -na;
connectAttr "right_wristShapeDeformed.iog.og[0]" "skinCluster22Set.dsm" -na;
connectAttr "skinCluster22.msg" "skinCluster22Set.ub[0]";
connectAttr "tweak22.og[0]" "skinCluster22GroupParts.ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet22.gn" -na;
connectAttr "right_wristShapeDeformed.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "skinCluster23GroupParts.og" "skinCluster23.ip[0].ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23.ip[0].gi";
connectAttr "bindPose15.msg" "skinCluster23.bp";
connectAttr "finger_1_R_1_jnt.wm" "skinCluster23.ma[0]";
connectAttr "finger_1_R_1_jnt.liw" "skinCluster23.lw[0]";
connectAttr "finger_1_R_1_jnt.obcc" "skinCluster23.ifcl[0]";
connectAttr "groupParts46.og" "tweak23.ip[0].ig";
connectAttr "groupId46.id" "tweak23.ip[0].gi";
connectAttr "skinCluster23GroupId.msg" "skinCluster23Set.gn" -na;
connectAttr "right_2_finger_Shape1Deformed.iog.og[0]" "skinCluster23Set.dsm" -na
		;
connectAttr "skinCluster23.msg" "skinCluster23Set.ub[0]";
connectAttr "tweak23.og[0]" "skinCluster23GroupParts.ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet23.gn" -na;
connectAttr "right_2_finger_Shape1Deformed.iog.og[1]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose15.m[0]";
connectAttr "root_jnt.msg" "bindPose15.m[1]";
connectAttr "base_jnt.msg" "bindPose15.m[2]";
connectAttr "hips_jnt.msg" "bindPose15.m[3]";
connectAttr "spine_jnt.msg" "bindPose15.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose15.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose15.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose15.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose15.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose15.m[9]";
connectAttr "finger_1_R_1_jnt.msg" "bindPose15.m[10]";
connectAttr "bindPose15.w" "bindPose15.p[0]";
connectAttr "bindPose15.m[0]" "bindPose15.p[1]";
connectAttr "bindPose15.m[1]" "bindPose15.p[2]";
connectAttr "bindPose15.m[2]" "bindPose15.p[3]";
connectAttr "bindPose15.m[3]" "bindPose15.p[4]";
connectAttr "bindPose15.m[4]" "bindPose15.p[5]";
connectAttr "bindPose15.m[5]" "bindPose15.p[6]";
connectAttr "bindPose15.m[6]" "bindPose15.p[7]";
connectAttr "bindPose15.m[7]" "bindPose15.p[8]";
connectAttr "bindPose15.m[8]" "bindPose15.p[9]";
connectAttr "bindPose15.m[9]" "bindPose15.p[10]";
connectAttr "skinCluster24GroupParts.og" "skinCluster24.ip[0].ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24.ip[0].gi";
connectAttr "bindPose16.msg" "skinCluster24.bp";
connectAttr "finger_1_R_2_jnt.wm" "skinCluster24.ma[0]";
connectAttr "finger_1_R_2_jnt.liw" "skinCluster24.lw[0]";
connectAttr "finger_1_R_2_jnt.obcc" "skinCluster24.ifcl[0]";
connectAttr "groupParts48.og" "tweak24.ip[0].ig";
connectAttr "groupId48.id" "tweak24.ip[0].gi";
connectAttr "skinCluster24GroupId.msg" "skinCluster24Set.gn" -na;
connectAttr "right_2_finger_Shape2Deformed.iog.og[0]" "skinCluster24Set.dsm" -na
		;
connectAttr "skinCluster24.msg" "skinCluster24Set.ub[0]";
connectAttr "tweak24.og[0]" "skinCluster24GroupParts.ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet24.gn" -na;
connectAttr "right_2_finger_Shape2Deformed.iog.og[1]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose16.m[0]";
connectAttr "root_jnt.msg" "bindPose16.m[1]";
connectAttr "base_jnt.msg" "bindPose16.m[2]";
connectAttr "hips_jnt.msg" "bindPose16.m[3]";
connectAttr "spine_jnt.msg" "bindPose16.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose16.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose16.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose16.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose16.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose16.m[9]";
connectAttr "finger_1_R_1_jnt.msg" "bindPose16.m[10]";
connectAttr "finger_1_R_2_jnt.msg" "bindPose16.m[11]";
connectAttr "bindPose16.w" "bindPose16.p[0]";
connectAttr "bindPose16.m[0]" "bindPose16.p[1]";
connectAttr "bindPose16.m[1]" "bindPose16.p[2]";
connectAttr "bindPose16.m[2]" "bindPose16.p[3]";
connectAttr "bindPose16.m[3]" "bindPose16.p[4]";
connectAttr "bindPose16.m[4]" "bindPose16.p[5]";
connectAttr "bindPose16.m[5]" "bindPose16.p[6]";
connectAttr "bindPose16.m[6]" "bindPose16.p[7]";
connectAttr "bindPose16.m[7]" "bindPose16.p[8]";
connectAttr "bindPose16.m[8]" "bindPose16.p[9]";
connectAttr "bindPose16.m[9]" "bindPose16.p[10]";
connectAttr "bindPose16.m[10]" "bindPose16.p[11]";
connectAttr "skinCluster25GroupParts.og" "skinCluster25.ip[0].ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25.ip[0].gi";
connectAttr "bindPose17.msg" "skinCluster25.bp";
connectAttr "finger_2_R_1_jnt.wm" "skinCluster25.ma[0]";
connectAttr "finger_2_R_1_jnt.liw" "skinCluster25.lw[0]";
connectAttr "finger_2_R_1_jnt.obcc" "skinCluster25.ifcl[0]";
connectAttr "groupParts50.og" "tweak25.ip[0].ig";
connectAttr "groupId50.id" "tweak25.ip[0].gi";
connectAttr "skinCluster25GroupId.msg" "skinCluster25Set.gn" -na;
connectAttr "right_3_finger_Shape1Deformed.iog.og[0]" "skinCluster25Set.dsm" -na
		;
connectAttr "skinCluster25.msg" "skinCluster25Set.ub[0]";
connectAttr "tweak25.og[0]" "skinCluster25GroupParts.ig";
connectAttr "skinCluster25GroupId.id" "skinCluster25GroupParts.gi";
connectAttr "groupId50.msg" "tweakSet25.gn" -na;
connectAttr "right_3_finger_Shape1Deformed.iog.og[1]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "groupId50.id" "groupParts50.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose17.m[0]";
connectAttr "root_jnt.msg" "bindPose17.m[1]";
connectAttr "base_jnt.msg" "bindPose17.m[2]";
connectAttr "hips_jnt.msg" "bindPose17.m[3]";
connectAttr "spine_jnt.msg" "bindPose17.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose17.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose17.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose17.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose17.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose17.m[9]";
connectAttr "finger_2_R_1_jnt.msg" "bindPose17.m[10]";
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
connectAttr "bindPose17.m[9]" "bindPose17.p[10]";
connectAttr "skinCluster26GroupParts.og" "skinCluster26.ip[0].ig";
connectAttr "skinCluster26GroupId.id" "skinCluster26.ip[0].gi";
connectAttr "bindPose18.msg" "skinCluster26.bp";
connectAttr "finger_2_R_2_jnt.wm" "skinCluster26.ma[0]";
connectAttr "finger_2_R_2_jnt.liw" "skinCluster26.lw[0]";
connectAttr "finger_2_R_2_jnt.obcc" "skinCluster26.ifcl[0]";
connectAttr "groupParts52.og" "tweak26.ip[0].ig";
connectAttr "groupId52.id" "tweak26.ip[0].gi";
connectAttr "skinCluster26GroupId.msg" "skinCluster26Set.gn" -na;
connectAttr "right_3_finger_2ShapeDeformed.iog.og[0]" "skinCluster26Set.dsm" -na
		;
connectAttr "skinCluster26.msg" "skinCluster26Set.ub[0]";
connectAttr "tweak26.og[0]" "skinCluster26GroupParts.ig";
connectAttr "skinCluster26GroupId.id" "skinCluster26GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet26.gn" -na;
connectAttr "right_3_finger_2ShapeDeformed.iog.og[1]" "tweakSet26.dsm" -na;
connectAttr "tweak26.msg" "tweakSet26.ub[0]";
connectAttr "groupId52.id" "groupParts52.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose18.m[0]";
connectAttr "root_jnt.msg" "bindPose18.m[1]";
connectAttr "base_jnt.msg" "bindPose18.m[2]";
connectAttr "hips_jnt.msg" "bindPose18.m[3]";
connectAttr "spine_jnt.msg" "bindPose18.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose18.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose18.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose18.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose18.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose18.m[9]";
connectAttr "finger_2_R_1_jnt.msg" "bindPose18.m[10]";
connectAttr "finger_2_R_2_jnt.msg" "bindPose18.m[11]";
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
connectAttr "bindPose18.m[10]" "bindPose18.p[11]";
connectAttr "skinCluster27GroupParts.og" "skinCluster27.ip[0].ig";
connectAttr "skinCluster27GroupId.id" "skinCluster27.ip[0].gi";
connectAttr "bindPose19.msg" "skinCluster27.bp";
connectAttr "finger_3_R_1_jnt.wm" "skinCluster27.ma[0]";
connectAttr "finger_3_R_1_jnt.liw" "skinCluster27.lw[0]";
connectAttr "finger_3_R_1_jnt.obcc" "skinCluster27.ifcl[0]";
connectAttr "groupParts54.og" "tweak27.ip[0].ig";
connectAttr "groupId54.id" "tweak27.ip[0].gi";
connectAttr "skinCluster27GroupId.msg" "skinCluster27Set.gn" -na;
connectAttr "right_1_finger_Shape1Deformed.iog.og[0]" "skinCluster27Set.dsm" -na
		;
connectAttr "skinCluster27.msg" "skinCluster27Set.ub[0]";
connectAttr "tweak27.og[0]" "skinCluster27GroupParts.ig";
connectAttr "skinCluster27GroupId.id" "skinCluster27GroupParts.gi";
connectAttr "groupId54.msg" "tweakSet27.gn" -na;
connectAttr "right_1_finger_Shape1Deformed.iog.og[1]" "tweakSet27.dsm" -na;
connectAttr "tweak27.msg" "tweakSet27.ub[0]";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose19.m[0]";
connectAttr "root_jnt.msg" "bindPose19.m[1]";
connectAttr "base_jnt.msg" "bindPose19.m[2]";
connectAttr "hips_jnt.msg" "bindPose19.m[3]";
connectAttr "spine_jnt.msg" "bindPose19.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose19.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose19.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose19.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose19.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose19.m[9]";
connectAttr "finger_3_R_1_jnt.msg" "bindPose19.m[10]";
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
connectAttr "skinCluster28GroupParts.og" "skinCluster28.ip[0].ig";
connectAttr "skinCluster28GroupId.id" "skinCluster28.ip[0].gi";
connectAttr "bindPose20.msg" "skinCluster28.bp";
connectAttr "finger_3_R_2_jnt.wm" "skinCluster28.ma[0]";
connectAttr "finger_3_R_2_jnt.liw" "skinCluster28.lw[0]";
connectAttr "finger_3_R_2_jnt.obcc" "skinCluster28.ifcl[0]";
connectAttr "groupParts56.og" "tweak28.ip[0].ig";
connectAttr "groupId56.id" "tweak28.ip[0].gi";
connectAttr "skinCluster28GroupId.msg" "skinCluster28Set.gn" -na;
connectAttr "right_1_finger_2ShapeDeformed.iog.og[0]" "skinCluster28Set.dsm" -na
		;
connectAttr "skinCluster28.msg" "skinCluster28Set.ub[0]";
connectAttr "tweak28.og[0]" "skinCluster28GroupParts.ig";
connectAttr "skinCluster28GroupId.id" "skinCluster28GroupParts.gi";
connectAttr "groupId56.msg" "tweakSet28.gn" -na;
connectAttr "right_1_finger_2ShapeDeformed.iog.og[1]" "tweakSet28.dsm" -na;
connectAttr "tweak28.msg" "tweakSet28.ub[0]";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose20.m[0]";
connectAttr "root_jnt.msg" "bindPose20.m[1]";
connectAttr "base_jnt.msg" "bindPose20.m[2]";
connectAttr "hips_jnt.msg" "bindPose20.m[3]";
connectAttr "spine_jnt.msg" "bindPose20.m[4]";
connectAttr "shoulder_rotaion_R_jnt.msg" "bindPose20.m[5]";
connectAttr "shoulder_R_jnt.msg" "bindPose20.m[6]";
connectAttr "elbow_R_1_jnt.msg" "bindPose20.m[7]";
connectAttr "elbow_R_2_jnt.msg" "bindPose20.m[8]";
connectAttr "wrist_R_jnt.msg" "bindPose20.m[9]";
connectAttr "finger_3_R_1_jnt.msg" "bindPose20.m[10]";
connectAttr "finger_3_R_2_jnt.msg" "bindPose20.m[11]";
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
connectAttr "bindPose20.m[9]" "bindPose20.p[10]";
connectAttr "bindPose20.m[10]" "bindPose20.p[11]";
connectAttr "skinCluster29GroupParts.og" "skinCluster29.ip[0].ig";
connectAttr "skinCluster29GroupId.id" "skinCluster29.ip[0].gi";
connectAttr "bindPose21.msg" "skinCluster29.bp";
connectAttr "wrist_L_jnt.wm" "skinCluster29.ma[0]";
connectAttr "wrist_L_jnt.liw" "skinCluster29.lw[0]";
connectAttr "wrist_L_jnt.obcc" "skinCluster29.ifcl[0]";
connectAttr "groupParts58.og" "tweak29.ip[0].ig";
connectAttr "groupId58.id" "tweak29.ip[0].gi";
connectAttr "skinCluster29GroupId.msg" "skinCluster29Set.gn" -na;
connectAttr "left_wristShapeDeformed.iog.og[0]" "skinCluster29Set.dsm" -na;
connectAttr "skinCluster29.msg" "skinCluster29Set.ub[0]";
connectAttr "tweak29.og[0]" "skinCluster29GroupParts.ig";
connectAttr "skinCluster29GroupId.id" "skinCluster29GroupParts.gi";
connectAttr "groupId58.msg" "tweakSet29.gn" -na;
connectAttr "left_wristShapeDeformed.iog.og[1]" "tweakSet29.dsm" -na;
connectAttr "tweak29.msg" "tweakSet29.ub[0]";
connectAttr "groupId58.id" "groupParts58.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose21.m[0]";
connectAttr "root_jnt.msg" "bindPose21.m[1]";
connectAttr "base_jnt.msg" "bindPose21.m[2]";
connectAttr "hips_jnt.msg" "bindPose21.m[3]";
connectAttr "spine_jnt.msg" "bindPose21.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose21.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose21.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose21.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose21.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose21.m[9]";
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
connectAttr "skinCluster30GroupParts.og" "skinCluster30.ip[0].ig";
connectAttr "skinCluster30GroupId.id" "skinCluster30.ip[0].gi";
connectAttr "bindPose22.msg" "skinCluster30.bp";
connectAttr "finger_2_L_1_jnt.wm" "skinCluster30.ma[0]";
connectAttr "finger_2_L_1_jnt.liw" "skinCluster30.lw[0]";
connectAttr "finger_2_L_1_jnt.obcc" "skinCluster30.ifcl[0]";
connectAttr "groupParts60.og" "tweak30.ip[0].ig";
connectAttr "groupId60.id" "tweak30.ip[0].gi";
connectAttr "skinCluster30GroupId.msg" "skinCluster30Set.gn" -na;
connectAttr "left_3_finger_Shape1Deformed.iog.og[0]" "skinCluster30Set.dsm" -na;
connectAttr "skinCluster30.msg" "skinCluster30Set.ub[0]";
connectAttr "tweak30.og[0]" "skinCluster30GroupParts.ig";
connectAttr "skinCluster30GroupId.id" "skinCluster30GroupParts.gi";
connectAttr "groupId60.msg" "tweakSet30.gn" -na;
connectAttr "left_3_finger_Shape1Deformed.iog.og[1]" "tweakSet30.dsm" -na;
connectAttr "tweak30.msg" "tweakSet30.ub[0]";
connectAttr "groupId60.id" "groupParts60.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose22.m[0]";
connectAttr "root_jnt.msg" "bindPose22.m[1]";
connectAttr "base_jnt.msg" "bindPose22.m[2]";
connectAttr "hips_jnt.msg" "bindPose22.m[3]";
connectAttr "spine_jnt.msg" "bindPose22.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose22.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose22.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose22.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose22.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose22.m[9]";
connectAttr "finger_2_L_1_jnt.msg" "bindPose22.m[10]";
connectAttr "bindPose22.w" "bindPose22.p[0]";
connectAttr "bindPose22.m[0]" "bindPose22.p[1]";
connectAttr "bindPose22.m[1]" "bindPose22.p[2]";
connectAttr "bindPose22.m[2]" "bindPose22.p[3]";
connectAttr "bindPose22.m[3]" "bindPose22.p[4]";
connectAttr "bindPose22.m[4]" "bindPose22.p[5]";
connectAttr "bindPose22.m[5]" "bindPose22.p[6]";
connectAttr "bindPose22.m[6]" "bindPose22.p[7]";
connectAttr "bindPose22.m[7]" "bindPose22.p[8]";
connectAttr "bindPose22.m[8]" "bindPose22.p[9]";
connectAttr "bindPose22.m[9]" "bindPose22.p[10]";
connectAttr "skinCluster31GroupParts.og" "skinCluster31.ip[0].ig";
connectAttr "skinCluster31GroupId.id" "skinCluster31.ip[0].gi";
connectAttr "bindPose23.msg" "skinCluster31.bp";
connectAttr "finger_2_L_2_jnt.wm" "skinCluster31.ma[0]";
connectAttr "finger_2_L_2_jnt.liw" "skinCluster31.lw[0]";
connectAttr "finger_2_L_2_jnt.obcc" "skinCluster31.ifcl[0]";
connectAttr "groupParts62.og" "tweak31.ip[0].ig";
connectAttr "groupId62.id" "tweak31.ip[0].gi";
connectAttr "skinCluster31GroupId.msg" "skinCluster31Set.gn" -na;
connectAttr "left_3_finger_Shape2Deformed.iog.og[0]" "skinCluster31Set.dsm" -na;
connectAttr "skinCluster31.msg" "skinCluster31Set.ub[0]";
connectAttr "tweak31.og[0]" "skinCluster31GroupParts.ig";
connectAttr "skinCluster31GroupId.id" "skinCluster31GroupParts.gi";
connectAttr "groupId62.msg" "tweakSet31.gn" -na;
connectAttr "left_3_finger_Shape2Deformed.iog.og[1]" "tweakSet31.dsm" -na;
connectAttr "tweak31.msg" "tweakSet31.ub[0]";
connectAttr "groupId62.id" "groupParts62.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose23.m[0]";
connectAttr "root_jnt.msg" "bindPose23.m[1]";
connectAttr "base_jnt.msg" "bindPose23.m[2]";
connectAttr "hips_jnt.msg" "bindPose23.m[3]";
connectAttr "spine_jnt.msg" "bindPose23.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose23.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose23.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose23.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose23.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose23.m[9]";
connectAttr "finger_2_L_1_jnt.msg" "bindPose23.m[10]";
connectAttr "finger_2_L_2_jnt.msg" "bindPose23.m[11]";
connectAttr "bindPose23.w" "bindPose23.p[0]";
connectAttr "bindPose23.m[0]" "bindPose23.p[1]";
connectAttr "bindPose23.m[1]" "bindPose23.p[2]";
connectAttr "bindPose23.m[2]" "bindPose23.p[3]";
connectAttr "bindPose23.m[3]" "bindPose23.p[4]";
connectAttr "bindPose23.m[4]" "bindPose23.p[5]";
connectAttr "bindPose23.m[5]" "bindPose23.p[6]";
connectAttr "bindPose23.m[6]" "bindPose23.p[7]";
connectAttr "bindPose23.m[7]" "bindPose23.p[8]";
connectAttr "bindPose23.m[8]" "bindPose23.p[9]";
connectAttr "bindPose23.m[9]" "bindPose23.p[10]";
connectAttr "bindPose23.m[10]" "bindPose23.p[11]";
connectAttr "skinCluster32GroupParts.og" "skinCluster32.ip[0].ig";
connectAttr "skinCluster32GroupId.id" "skinCluster32.ip[0].gi";
connectAttr "bindPose24.msg" "skinCluster32.bp";
connectAttr "finger_1_L_1_jnt.wm" "skinCluster32.ma[0]";
connectAttr "finger_1_L_1_jnt.liw" "skinCluster32.lw[0]";
connectAttr "finger_1_L_1_jnt.obcc" "skinCluster32.ifcl[0]";
connectAttr "groupParts64.og" "tweak32.ip[0].ig";
connectAttr "groupId64.id" "tweak32.ip[0].gi";
connectAttr "skinCluster32GroupId.msg" "skinCluster32Set.gn" -na;
connectAttr "left_2_finger_Shape1Deformed.iog.og[0]" "skinCluster32Set.dsm" -na;
connectAttr "skinCluster32.msg" "skinCluster32Set.ub[0]";
connectAttr "tweak32.og[0]" "skinCluster32GroupParts.ig";
connectAttr "skinCluster32GroupId.id" "skinCluster32GroupParts.gi";
connectAttr "groupId64.msg" "tweakSet32.gn" -na;
connectAttr "left_2_finger_Shape1Deformed.iog.og[1]" "tweakSet32.dsm" -na;
connectAttr "tweak32.msg" "tweakSet32.ub[0]";
connectAttr "groupId64.id" "groupParts64.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose24.m[0]";
connectAttr "root_jnt.msg" "bindPose24.m[1]";
connectAttr "base_jnt.msg" "bindPose24.m[2]";
connectAttr "hips_jnt.msg" "bindPose24.m[3]";
connectAttr "spine_jnt.msg" "bindPose24.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose24.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose24.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose24.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose24.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose24.m[9]";
connectAttr "finger_1_L_1_jnt.msg" "bindPose24.m[10]";
connectAttr "bindPose24.w" "bindPose24.p[0]";
connectAttr "bindPose24.m[0]" "bindPose24.p[1]";
connectAttr "bindPose24.m[1]" "bindPose24.p[2]";
connectAttr "bindPose24.m[2]" "bindPose24.p[3]";
connectAttr "bindPose24.m[3]" "bindPose24.p[4]";
connectAttr "bindPose24.m[4]" "bindPose24.p[5]";
connectAttr "bindPose24.m[5]" "bindPose24.p[6]";
connectAttr "bindPose24.m[6]" "bindPose24.p[7]";
connectAttr "bindPose24.m[7]" "bindPose24.p[8]";
connectAttr "bindPose24.m[8]" "bindPose24.p[9]";
connectAttr "bindPose24.m[9]" "bindPose24.p[10]";
connectAttr "skinCluster33GroupParts.og" "skinCluster33.ip[0].ig";
connectAttr "skinCluster33GroupId.id" "skinCluster33.ip[0].gi";
connectAttr "bindPose25.msg" "skinCluster33.bp";
connectAttr "finger_1_L_2_jnt.wm" "skinCluster33.ma[0]";
connectAttr "finger_1_L_2_jnt.liw" "skinCluster33.lw[0]";
connectAttr "finger_1_L_2_jnt.obcc" "skinCluster33.ifcl[0]";
connectAttr "groupParts66.og" "tweak33.ip[0].ig";
connectAttr "groupId66.id" "tweak33.ip[0].gi";
connectAttr "skinCluster33GroupId.msg" "skinCluster33Set.gn" -na;
connectAttr "left_2_finger_Shape2Deformed.iog.og[0]" "skinCluster33Set.dsm" -na;
connectAttr "skinCluster33.msg" "skinCluster33Set.ub[0]";
connectAttr "tweak33.og[0]" "skinCluster33GroupParts.ig";
connectAttr "skinCluster33GroupId.id" "skinCluster33GroupParts.gi";
connectAttr "groupId66.msg" "tweakSet33.gn" -na;
connectAttr "left_2_finger_Shape2Deformed.iog.og[1]" "tweakSet33.dsm" -na;
connectAttr "tweak33.msg" "tweakSet33.ub[0]";
connectAttr "groupId66.id" "groupParts66.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose25.m[0]";
connectAttr "root_jnt.msg" "bindPose25.m[1]";
connectAttr "base_jnt.msg" "bindPose25.m[2]";
connectAttr "hips_jnt.msg" "bindPose25.m[3]";
connectAttr "spine_jnt.msg" "bindPose25.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose25.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose25.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose25.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose25.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose25.m[9]";
connectAttr "finger_1_L_1_jnt.msg" "bindPose25.m[10]";
connectAttr "finger_1_L_2_jnt.msg" "bindPose25.m[11]";
connectAttr "bindPose25.w" "bindPose25.p[0]";
connectAttr "bindPose25.m[0]" "bindPose25.p[1]";
connectAttr "bindPose25.m[1]" "bindPose25.p[2]";
connectAttr "bindPose25.m[2]" "bindPose25.p[3]";
connectAttr "bindPose25.m[3]" "bindPose25.p[4]";
connectAttr "bindPose25.m[4]" "bindPose25.p[5]";
connectAttr "bindPose25.m[5]" "bindPose25.p[6]";
connectAttr "bindPose25.m[6]" "bindPose25.p[7]";
connectAttr "bindPose25.m[7]" "bindPose25.p[8]";
connectAttr "bindPose25.m[8]" "bindPose25.p[9]";
connectAttr "bindPose25.m[9]" "bindPose25.p[10]";
connectAttr "bindPose25.m[10]" "bindPose25.p[11]";
connectAttr "skinCluster34GroupParts.og" "skinCluster34.ip[0].ig";
connectAttr "skinCluster34GroupId.id" "skinCluster34.ip[0].gi";
connectAttr "bindPose26.msg" "skinCluster34.bp";
connectAttr "finger_3_L_1_jnt.wm" "skinCluster34.ma[0]";
connectAttr "finger_3_L_1_jnt.liw" "skinCluster34.lw[0]";
connectAttr "finger_3_L_1_jnt.obcc" "skinCluster34.ifcl[0]";
connectAttr "groupParts68.og" "tweak34.ip[0].ig";
connectAttr "groupId68.id" "tweak34.ip[0].gi";
connectAttr "skinCluster34GroupId.msg" "skinCluster34Set.gn" -na;
connectAttr "left_1_finger_Shape1Deformed.iog.og[0]" "skinCluster34Set.dsm" -na;
connectAttr "skinCluster34.msg" "skinCluster34Set.ub[0]";
connectAttr "tweak34.og[0]" "skinCluster34GroupParts.ig";
connectAttr "skinCluster34GroupId.id" "skinCluster34GroupParts.gi";
connectAttr "groupId68.msg" "tweakSet34.gn" -na;
connectAttr "left_1_finger_Shape1Deformed.iog.og[1]" "tweakSet34.dsm" -na;
connectAttr "tweak34.msg" "tweakSet34.ub[0]";
connectAttr "groupId68.id" "groupParts68.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose26.m[0]";
connectAttr "root_jnt.msg" "bindPose26.m[1]";
connectAttr "base_jnt.msg" "bindPose26.m[2]";
connectAttr "hips_jnt.msg" "bindPose26.m[3]";
connectAttr "spine_jnt.msg" "bindPose26.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose26.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose26.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose26.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose26.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose26.m[9]";
connectAttr "finger_3_L_1_jnt.msg" "bindPose26.m[10]";
connectAttr "bindPose26.w" "bindPose26.p[0]";
connectAttr "bindPose26.m[0]" "bindPose26.p[1]";
connectAttr "bindPose26.m[1]" "bindPose26.p[2]";
connectAttr "bindPose26.m[2]" "bindPose26.p[3]";
connectAttr "bindPose26.m[3]" "bindPose26.p[4]";
connectAttr "bindPose26.m[4]" "bindPose26.p[5]";
connectAttr "bindPose26.m[5]" "bindPose26.p[6]";
connectAttr "bindPose26.m[6]" "bindPose26.p[7]";
connectAttr "bindPose26.m[7]" "bindPose26.p[8]";
connectAttr "bindPose26.m[8]" "bindPose26.p[9]";
connectAttr "bindPose26.m[9]" "bindPose26.p[10]";
connectAttr "skinCluster35GroupParts.og" "skinCluster35.ip[0].ig";
connectAttr "skinCluster35GroupId.id" "skinCluster35.ip[0].gi";
connectAttr "bindPose27.msg" "skinCluster35.bp";
connectAttr "finger_3_L_2_jnt.wm" "skinCluster35.ma[0]";
connectAttr "finger_3_L_2_jnt.liw" "skinCluster35.lw[0]";
connectAttr "finger_3_L_2_jnt.obcc" "skinCluster35.ifcl[0]";
connectAttr "groupParts70.og" "tweak35.ip[0].ig";
connectAttr "groupId70.id" "tweak35.ip[0].gi";
connectAttr "skinCluster35GroupId.msg" "skinCluster35Set.gn" -na;
connectAttr "left_1_finger_2ShapeDeformed.iog.og[0]" "skinCluster35Set.dsm" -na;
connectAttr "skinCluster35.msg" "skinCluster35Set.ub[0]";
connectAttr "tweak35.og[0]" "skinCluster35GroupParts.ig";
connectAttr "skinCluster35GroupId.id" "skinCluster35GroupParts.gi";
connectAttr "groupId70.msg" "tweakSet35.gn" -na;
connectAttr "left_1_finger_2ShapeDeformed.iog.og[1]" "tweakSet35.dsm" -na;
connectAttr "tweak35.msg" "tweakSet35.ub[0]";
connectAttr "groupId70.id" "groupParts70.gi";
connectAttr "Pit_droid_rig_grp.msg" "bindPose27.m[0]";
connectAttr "root_jnt.msg" "bindPose27.m[1]";
connectAttr "base_jnt.msg" "bindPose27.m[2]";
connectAttr "hips_jnt.msg" "bindPose27.m[3]";
connectAttr "spine_jnt.msg" "bindPose27.m[4]";
connectAttr "shoulder_rotaion_L_jnt.msg" "bindPose27.m[5]";
connectAttr "shoulder_L_jnt.msg" "bindPose27.m[6]";
connectAttr "elbow_L_1_jnt.msg" "bindPose27.m[7]";
connectAttr "elbow_L_2_jnt.msg" "bindPose27.m[8]";
connectAttr "wrist_L_jnt.msg" "bindPose27.m[9]";
connectAttr "finger_3_L_1_jnt.msg" "bindPose27.m[10]";
connectAttr "finger_3_L_2_jnt.msg" "bindPose27.m[11]";
connectAttr "bindPose27.w" "bindPose27.p[0]";
connectAttr "bindPose27.m[0]" "bindPose27.p[1]";
connectAttr "bindPose27.m[1]" "bindPose27.p[2]";
connectAttr "bindPose27.m[2]" "bindPose27.p[3]";
connectAttr "bindPose27.m[3]" "bindPose27.p[4]";
connectAttr "bindPose27.m[4]" "bindPose27.p[5]";
connectAttr "bindPose27.m[5]" "bindPose27.p[6]";
connectAttr "bindPose27.m[6]" "bindPose27.p[7]";
connectAttr "bindPose27.m[7]" "bindPose27.p[8]";
connectAttr "bindPose27.m[8]" "bindPose27.p[9]";
connectAttr "bindPose27.m[9]" "bindPose27.p[10]";
connectAttr "bindPose27.m[10]" "bindPose27.p[11]";
connectAttr "skinCluster36GroupParts.og" "skinCluster36.ip[0].ig";
connectAttr "skinCluster36GroupId.id" "skinCluster36.ip[0].gi";
connectAttr "shoulder_rotaion_L_jnt.wm" "skinCluster36.ma[0]";
connectAttr "shoulder_rotaion_L_jnt.liw" "skinCluster36.lw[0]";
connectAttr "shoulder_rotaion_L_jnt.obcc" "skinCluster36.ifcl[0]";
connectAttr "bindPose23.msg" "skinCluster36.bp";
connectAttr "groupParts72.og" "tweak36.ip[0].ig";
connectAttr "groupId72.id" "tweak36.ip[0].gi";
connectAttr "skinCluster36GroupId.msg" "skinCluster36Set.gn" -na;
connectAttr "left_upper_armShapeDeformed.iog.og[0]" "skinCluster36Set.dsm" -na;
connectAttr "skinCluster36.msg" "skinCluster36Set.ub[0]";
connectAttr "tweak36.og[0]" "skinCluster36GroupParts.ig";
connectAttr "skinCluster36GroupId.id" "skinCluster36GroupParts.gi";
connectAttr "groupId72.msg" "tweakSet36.gn" -na;
connectAttr "left_upper_armShapeDeformed.iog.og[1]" "tweakSet36.dsm" -na;
connectAttr "tweak36.msg" "tweakSet36.ub[0]";
connectAttr "groupId72.id" "groupParts72.gi";
connectAttr "skinCluster37GroupParts.og" "skinCluster37.ip[0].ig";
connectAttr "skinCluster37GroupId.id" "skinCluster37.ip[0].gi";
connectAttr "elbow_L_1_jnt.wm" "skinCluster37.ma[0]";
connectAttr "elbow_L_2_jnt.wm" "skinCluster37.ma[1]";
connectAttr "wrist_L_jnt.wm" "skinCluster37.ma[2]";
connectAttr "elbow_L_1_jnt.liw" "skinCluster37.lw[0]";
connectAttr "elbow_L_2_jnt.liw" "skinCluster37.lw[1]";
connectAttr "wrist_L_jnt.liw" "skinCluster37.lw[2]";
connectAttr "elbow_L_1_jnt.obcc" "skinCluster37.ifcl[0]";
connectAttr "elbow_L_2_jnt.obcc" "skinCluster37.ifcl[1]";
connectAttr "wrist_L_jnt.obcc" "skinCluster37.ifcl[2]";
connectAttr "bindPose23.msg" "skinCluster37.bp";
connectAttr "groupParts74.og" "tweak37.ip[0].ig";
connectAttr "groupId74.id" "tweak37.ip[0].gi";
connectAttr "skinCluster37GroupId.msg" "skinCluster37Set.gn" -na;
connectAttr "left_lower_armShapeDeformed.iog.og[0]" "skinCluster37Set.dsm" -na;
connectAttr "skinCluster37.msg" "skinCluster37Set.ub[0]";
connectAttr "tweak37.og[0]" "skinCluster37GroupParts.ig";
connectAttr "skinCluster37GroupId.id" "skinCluster37GroupParts.gi";
connectAttr "groupId74.msg" "tweakSet37.gn" -na;
connectAttr "left_lower_armShapeDeformed.iog.og[1]" "tweakSet37.dsm" -na;
connectAttr "tweak37.msg" "tweakSet37.ub[0]";
connectAttr "groupId74.id" "groupParts74.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "finger_1_L_3_jnt.msg" ":hyperGraphLayout.hyp[12].dn";
connectAttr "finger_2_L_3_jnt.msg" ":hyperGraphLayout.hyp[14].dn";
connectAttr "finger_3_L_2_jnt.msg" ":hyperGraphLayout.hyp[15].dn";
// End of pit_droid_rig.ma
