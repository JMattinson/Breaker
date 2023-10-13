//Maya ASCII 2024 scene
//Name: Skull.ma
//Last modified: Fri, Oct 06, 2023 09:54:05 AM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "7D994F08-46E9-4BB8-B6F3-D5A716835B3B";
createNode transform -s -n "persp";
	rename -uid "92DCAE37-4834-D629-917A-9CAF76C5649B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -80.626507673447293 25.398320036703907 13.453707477037803 ;
	setAttr ".r" -type "double3" 1437.5999999999885 3892.7999999998606 -1.5389161717023114e-15 ;
	setAttr ".rpt" -type "double3" 2.7487855131084278e-16 -1.7319823173435067e-15 -8.1853815273772878e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D4121A12-4016-5D9E-490B-F19A9D4CD067";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 87.976046629135823;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.2081957409893871 70.396401705236258 59.780513796984451 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BFB0A60D-45FE-86F5-EA9E-E0B4583A7717";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E8DCA42A-4A43-4509-EB43-B1BE51993CBD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0A3FC9E1-4557-E306-3097-818BDC78B275";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F23EBCBF-423C-A3AF-57C5-07A7ABD3F2F1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "EB22A5F1-46ED-BECA-BE44-71B3A25A2677";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AFBA9FFE-4D4C-F04C-4A74-E2BB2FBB93A0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Skull_Asset";
	rename -uid "227064A6-4C23-8032-13D4-09A9DCF93A27";
createNode transform -n "Scale_Loc" -p "Skull_Asset";
	rename -uid "FFE8A89E-45D3-E2DB-3F29-40921F36F39E";
	setAttr ".s" -type "double3" 0.24878101205685829 0.24878101205685829 0.24878101205685829 ;
createNode locator -n "Scale_LocShape" -p "Scale_Loc";
	rename -uid "CE884FBA-4DFF-74F9-E98B-788A6FB4B616";
	setAttr -k off ".v";
createNode transform -n "Armature" -p "Scale_Loc";
	rename -uid "7B453481-462D-CCBE-C134-9DB0F711490B";
createNode joint -n "Head_01_Jnt" -p "Armature";
	rename -uid "B85CE915-4109-03F9-ADB1-259311BBBE6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 89.937597201056448 ;
	setAttr ".bps" -type "matrix" 0.0010891340887008161 0.99999940689329248 0 0 0.99999940689329248 -0.001089134088700705 1.2246467991473532e-16 0
		 1.2246460728011223e-16 -1.3338045755697284e-19 -1 0 0 16.569198608398438 -28.321155548095703 1;
	setAttr ".radi" 20;
createNode joint -n "Head_02_Jnt" -p "Head_01_Jnt";
	rename -uid "ED08C34E-4B3A-2CFA-E224-75997E4150A3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 101.02049093065989 -0.11002664999304358 -0.11002499084502659 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.0010891340887008161 0.99999940689329248 0 0 0.99999940689329248 -0.001089134088700705 1.2246467991473532e-16 0
		 1.2246460728011223e-16 -1.3338045755697284e-19 -1 0 -1.7244056261657553e-06 117.58974945690274 -28.211130557250677 1;
	setAttr ".radi" 2;
createNode joint -n "R_Claw_01_Jnt" -p "Head_01_Jnt";
	rename -uid "85F424D0-4293-2E0D-C776-5A94E7567263";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 101.10542194588021 -78.559552828717912 89.93759720105642 ;
	setAttr ".bps" -type "matrix" 0.19834930008853471 -8.9712934875796916e-17 -0.98013139688226947 0
		 -0.96177788866981273 0.19261482618091474 -0.1946350985848487 0 0.18878783864493556 0.98127444108939066 0.038205015959659437 0
		 -66.520700000000005 49.669699999999999 -10.527075595876397 1;
	setAttr ".radi" 20;
createNode joint -n "R_Claw_02_Jnt" -p "R_Claw_01_Jnt";
	rename -uid "1B8D8CCD-4BA0-76A0-B051-AEA0A12346AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -53.479658935964807 -40.570766176414637 60.227710464165291 ;
	setAttr ".bps" -type "matrix" -0.43653926487504657 0.76520652844749493 -0.47317273700382101 0
		 -0.88678257219732692 -0.45471509221069389 0.082769889228592547 0 -0.15182272514168393 0.45573364341153649 0.87707280564010182 0
		 -93.926399999999688 76.790999999999684 124.89658440412362 1;
	setAttr ".radi" 10;
createNode joint -n "R_Claw_03_Jnt" -p "R_Claw_02_Jnt";
	rename -uid "B9D9E2E6-428E-3419-FCB5-BC93D87EF541";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -87.056829043052119 1.8304275591390464 -30.134783205555749 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.43653926487504657 0.76520652844749493 -0.47317273700382101 0
		 -0.88678257219732692 -0.45471509221069389 0.082769889228592547 0 -0.15182272514168393 0.45573364341153649 0.87707280564010182 0
		 -52.970722198485987 -4.3912115097048741 139.81060791015622 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "R_Claw_02_Jnt_parentConstraint1" -p "R_Claw_02_Jnt";
	rename -uid "C52C17D4-475B-C0AC-6812-3AB706F00E74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.6237679523765109e-13 -1.5631940186722204e-13 
		-1.1368683772161603e-13 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635176e-15 0 2.5444437451708134e-14 ;
	setAttr ".lr" -type "double3" 3.4986101496098681e-14 -1.6697912077683435e-14 -7.4743035014392617e-14 ;
	setAttr ".rst" -type "double3" -138.1688824601458 5.2239633539973198 26.61343872118141 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635176e-15 -7.1562480332929104e-15 -2.7034714792439888e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Claw_01_Jnt_parentConstraint1" -p "R_Claw_01_Jnt";
	rename -uid "8EDC2737-44CE-514A-7B81-DDBB83364442";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.1546319456101628e-14 2.8421709430404007e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.3152757673660883e-14 0 -1.590277340731758e-15 ;
	setAttr ".lr" -type "double3" 1.2245135523634539e-13 1.5294185322743799e-29 -1.4312496066585827e-14 ;
	setAttr ".rst" -type "double3" 33.028031797497889 -66.55671143054532 -25.618495548095712 ;
	setAttr ".rsrr" -type "double3" 7.1562480332929123e-14 6.3611093629270335e-15 3.9725156682451425e-30 ;
	setAttr -k on ".w0";
createNode joint -n "L_Claw_01_Jnt" -p "Head_01_Jnt";
	rename -uid "679F2A48-4803-B149-F523-8FAEA937FD2C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -78.894578054119819 78.559552828717898 89.93759720105642 ;
	setAttr ".bps" -type "matrix" 0.19834930008853471 2.1353987900585862e-17 0.98013139688226936 0
		 -0.96177788866981251 -0.19261482618091533 0.19463509858484873 0 0.1887878386449359 -0.98127444108939044 -0.038205015959659173 0
		 66.520660400390625 49.669719696044908 -10.527071149694144 1;
	setAttr ".radi" 20;
createNode joint -n "L_Claw_02_Jnt" -p "L_Claw_01_Jnt";
	rename -uid "55BFD3CB-4471-2B6B-A89F-47A806857FBE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -53.4796589359648 -40.570766176414644 60.227710464165298 ;
	setAttr ".bps" -type "matrix" -0.43653926487504602 -0.76520652844749515 0.47317273700382123 0
		 -0.88678257219732692 0.45471509221069301 -0.082769889228592658 0 -0.15182272514168338 -0.45573364341153655 -0.87707280564010148 0
		 93.926383972169035 76.790977478027585 124.8966995164281 1;
	setAttr ".radi" 10;
createNode joint -n "L_Claw_03_Jnt" -p "L_Claw_02_Jnt";
	rename -uid "ED310E70-4D0F-20A3-311A-CA80734B065F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 87.056750344309876 -1.8304220034272802 30.134871470018226 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.43653926487504602 -0.76520652844749515 0.47317273700382123 0
		 -0.88678257219732692 0.45471509221069301 -0.082769889228592658 0 -0.15182272514168338 -0.45573364341153655 -0.87707280564010148 0
		 52.970722198486882 -4.391211509704732 139.81060791015608 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "L_Claw_02_Jnt_parentConstraint1" -p "L_Claw_02_Jnt";
	rename -uid "C55BF10D-4DC8-F63F-04EF-BAB7710384FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5579538487363607e-13 -5.2580162446247414e-13 
		8.5265128291212022e-14 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905535e-15 0 1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" -3.4986101496098707e-14 1.5107634736951688e-14 -6.5201370970002121e-14 ;
	setAttr ".rst" -type "double3" 138.1689956029326 -5.2239563534853346 -26.613397071656181 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270375e-15 1.1131941385122309e-14 -3.0215269473903414e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Claw_01_Jnt_parentConstraint1" -p "L_Claw_01_Jnt";
	rename -uid "995C4410-4ECE-7721-93C2-7BA15D3ABFD2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.6431300764452317e-14 1.4210854715202004e-14 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.8785151087393899e-14 1.1927080055488188e-15 
		4.7708320221952752e-15 ;
	setAttr ".lr" -type "double3" 4.2614463114921338e-14 -6.3611093629270422e-15 2.2909932939916892e-14 ;
	setAttr ".rst" -type "double3" 33.172951374350404 66.48457004067042 -25.618499994277947 ;
	setAttr ".rsrr" -type "double3" 2.3307502275099838e-14 7.8842539157847123e-31 -3.876301018033661e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Jaw_01_Jnt" -p "Head_01_Jnt";
	rename -uid "4CFAD11F-4253-AF0F-908D-068A71BFDFCC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -179.18730246836515 -89.999994785696316 0 ;
	setAttr ".bps" -type "matrix" 9.1006767735981162e-08 3.6223818483647606e-16 -0.99999999999999578 0
		 -0.9998833641677034 0.015272788241399105 -9.099615308238469e-08 0 0.015272788241399151 0.99988336416770784 1.3899272861157113e-09 0
		 -1.2670511264695664e-18 29.995054244995117 4.7647005006201653 1;
	setAttr ".radi" 15;
createNode joint -n "Jaw_02_Jnt" -p "Jaw_01_Jnt";
	rename -uid "71E11D93-4275-DA26-4077-0398D5AA1B9B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -58.798197746277104 -0.14270695035398084 -9.3427803328905838 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 9.1006767735981162e-08 3.6223818483647606e-16 -0.99999999999999578 0
		 -0.9998833641677034 0.015272788241399105 -9.099615308238469e-08 0 0.015272788241399151 0.99988336416770784 1.3899272861157113e-09 0
		 -5.3510340203579047e-06 20.651184082031229 63.562898246897021 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "Jaw_01_Jnt_parentConstraint1" -p "Jaw_01_Jnt";
	rename -uid "BB9F96EA-42BB-CF9B-82E3-B9B324F46E56";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.6066655095459389e-18 0 8.7869928222517046e-08 ;
	setAttr ".tg[0].tor" -type "double3" -89.124899669421069 89.999994785696316 0 ;
	setAttr ".lr" -type "double3" 2.9563627762218598e-14 5.1341421970990124e-06 -5.2876540119244191e-06 ;
	setAttr ".rst" -type "double3" 13.425847673631647 -0.014622557043792901 -40.910271644592271 ;
	setAttr ".rsrr" -type "double3" -1.943741846184161e-15 5.1341421970990107e-06 -5.2876540073523733e-06 ;
	setAttr -k on ".w0";
createNode joint -n "Eye_01_Jnt" -p "Head_01_Jnt";
	rename -uid "AEE34AD0-4B4B-B2FD-1D87-4C90C4FD024F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 53.827169917987248 -0.058625040426882713 -89.358547210693359 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.93754964711678 89.999961097475293 0 ;
	setAttr ".bps" -type "matrix" 7.4006060801908478e-10 6.6281418760255789e-16 1 0 5.5511151231257837e-16 1 -7.2177834646390887e-16 0
		 -1 2.7733891572189074e-16 7.4006055694041178e-10 0 -1.7930725552513509e-14 70.396400451660142 61.037391662597656 1;
	setAttr ".radi" 5;
createNode joint -n "Eye_02_Jnt" -p "Eye_01_Jnt";
	rename -uid "184D3F8A-4D6C-A4FA-F8B4-D9BA18D53FBA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 10.112190246579168 7.629388212237382e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 7.4006060801908478e-10 6.6281418760255789e-16 1 0 5.5511151231257837e-16 1 -7.2177834646390887e-16 0
		 -1 2.7733891572189074e-16 7.4006055694041178e-10 0 7.4836157315667219e-09 70.396408081048364 71.149581909176817 1;
	setAttr ".radi" 0.97132018516818641;
createNode aimConstraint -n "Eye_01_Jnt_aimConstraint1" -p "Eye_01_Jnt";
	rename -uid "0765F524-447B-F7B7-B54C-B3985D1321F3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "Eye_CtrlW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" -90.000047553939666 -3.8902501588346271e-05 4.2402340472343569e-08 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head_01_Jnt_parentConstraint1" -p "Head_01_Jnt";
	rename -uid "113CB3C1-4EF3-C32B-F518-5A8B2B6DD129";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.7755575615628914e-17 0 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 89.937597201056448 ;
	setAttr ".rst" -type "double3" 0 16.569198608398438 -28.321155548095703 ;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Scale_Loc";
	rename -uid "18BB5CB4-4D14-9FD5-74C2-89BC5DD5E641";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "4A1A79E9-450E-1ABC-44E2-AE931C817E41";
createNode transform -n "COG_Ctrl_Grp" -p "Controls";
	rename -uid "4C35695C-484E-533F-5505-14B9B6D6AF4E";
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "F4ABE99E-4447-62AB-5AC4-C486E898279B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "A651D445-436E-E47B-FCA2-B0B0889927BD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		90.439698423145771 5.537834359487871e-15 -90.439698423145785
		7.8316804573634646e-15 7.8316804573634646e-15 -127.90104808694534
		-90.439698423145771 5.5378343594878694e-15 -90.439698423145771
		-127.90104808694538 4.0599569788085455e-31 -6.6304129184598302e-15
		-90.439698423145771 -5.5378343594878702e-15 90.439698423145771
		-1.2811935462401467e-14 -7.8316804573634709e-15 127.90104808694541
		90.439698423145771 -5.5378343594878694e-15 90.439698423145771
		127.90104808694538 -1.0680034987779358e-30 1.7441820768592569e-14
		90.439698423145771 5.537834359487871e-15 -90.439698423145785
		7.8316804573634646e-15 7.8316804573634646e-15 -127.90104808694534
		-90.439698423145771 5.5378343594878694e-15 -90.439698423145771
		;
createNode transform -n "Head_Ctrl_Grp" -p "Controls";
	rename -uid "96118168-4AED-22D7-2BAB-D5B1C795253F";
createNode transform -n "Head_Ctrl" -p "Head_Ctrl_Grp";
	rename -uid "CDFD304E-4173-2F1F-8B77-06B4E8196703";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Head_CtrlShape" -p "Head_Ctrl";
	rename -uid "20930ED8-4F67-90CD-CB07-EE89A0770BFB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		46.496952704000087 8.8242386990592525 -32.083529828857181
		-1.2302235962054247 9.6939321798183311 -48.340614698350848
		-46.115721666662751 5.7966263666756728 -30.193901681810644
		-68.483788783325622 0.59276825664236854 -8.7583894430399951
		-45.681922904148706 -6.1908705946941929 44.165303489584268
		-0.31084715060584389 -9.6537937768275253 48.039225544919383
		46.930751466514096 -3.1632582623111243 42.275675342540353
		68.516834450594644 4.9882998161489125 -10.963908047660016
		46.496952704000087 8.8242386990592525 -32.083529828857181
		-1.2302235962054247 9.6939321798183311 -48.340614698350848
		-46.115721666662751 5.7966263666756728 -30.193901681810644
		;
createNode parentConstraint -n "Head_Ctrl_Grp_parentConstraint1" -p "Head_Ctrl_Grp";
	rename -uid "54957306-4B98-685D-9DA1-728061F8ABE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 16.569198608398438 -28.321155548095703 ;
	setAttr ".rst" -type "double3" 0 16.569198608398438 -28.321155548095703 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head_Ctrl_Grp_parentConstraint2" -p "Head_Ctrl_Grp";
	rename -uid "A3101039-43A7-CAAE-6D47-DF9CF5A524FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 16.569198608398438 -28.321155548095703 ;
	setAttr ".rst" -type "double3" 0 16.569198608398438 -28.321155548095703 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Head_Ctrl_Grp_scaleConstraint1" -p "Head_Ctrl_Grp";
	rename -uid "495DD0C8-4A54-75C2-B8A0-0FA13DE4B800";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Jaw_Ctrl_Grp" -p "Controls";
	rename -uid "99DB2019-46B8-A4F9-E9E2-4DBF923A9EDA";
createNode transform -n "Jaw_Ctrl" -p "Jaw_Ctrl_Grp";
	rename -uid "7308D87F-4618-B7B5-2A61-5C8AD0718B42";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Jaw_CtrlShape" -p "Jaw_Ctrl";
	rename -uid "467AFA71-4EC7-9FD7-2E10-13BDF31665C1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		53.716381242820212 -13.005445757549987 -18.5782153611658
		2.1849308428483028e-12 -13.005445757549984 33.987034945791933
		-53.71638124281705 -13.005445757549987 -18.578215361162727
		-39.820805549797242 -13.005445757549987 30.48787071966068
		-26.300707733019284 -13.005445757549989 49.427084603111247
		-2.2181891450039379e-12 -13.005445757549996 85.596467450250771
		26.300707733016065 -13.005445757549989 49.42708460310876
		39.820805549797264 -13.005445757549987 30.487870719656307
		53.716381242820212 -13.005445757549987 -18.5782153611658
		2.1849308428483028e-12 -13.005445757549984 33.987034945791933
		-53.71638124281705 -13.005445757549987 -18.578215361162727
		;
createNode parentConstraint -n "Jaw_Ctrl_Grp_parentConstraint1" -p "Jaw_Ctrl_Grp";
	rename -uid "130F786F-4B1D-75BC-8839-71B543ECA507";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.913675522901376e-18 13.42585563659668 33.085855960845947 ;
	setAttr ".rst" -type "double3" -1.913675522901376e-18 29.995054244995117 4.7647004127502441 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Jaw_Ctrl_Grp_parentConstraint2" -p "Jaw_Ctrl_Grp";
	rename -uid "BECDCA12-4142-BD51-842C-668895B461E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.913675522901376e-18 13.42585563659668 33.085855960845947 ;
	setAttr ".rst" -type "double3" -1.913675522901376e-18 29.995054244995117 4.7647004127502441 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Jaw_Ctrl_Grp_scaleConstraint1" -p "Jaw_Ctrl_Grp";
	rename -uid "73623E50-4EB9-1AD6-E619-21B209FB15B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Eye_Ctrl_Grp" -p "Controls";
	rename -uid "A02D782A-4768-3E82-CC85-A2A09F6A921F";
createNode transform -n "Eye_Ctrl" -p "Eye_Ctrl_Grp";
	rename -uid "637C4FEF-4AB6-661A-C450-A7A5EFEDD2E0";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Eye_CtrlShape" -p "Eye_Ctrl";
	rename -uid "55F8B1A8-4045-A244-7700-A6B3416C7BEE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3080207902058518 4.3080207902058545 4.7887160499786328e-14
		1.2826686369151877e-15 20.947568520298777 1.2826686369151877e-15
		-4.3080207902058518 4.3080207902058492 4.7887160499786328e-14
		-20.947568520298784 1.0859256511556912e-15 6.6493768639991128e-32
		-4.3080207902058518 -4.30802079020585 4.7359580112647563e-14
		-2.0983322653764364e-15 -20.947568520298791 -1.2826686369151887e-15
		4.3080207902058518 -4.30802079020585 4.7359580112647563e-14
		20.947568520298784 -2.8566125229911642e-15 -1.7491706913426872e-31
		4.3080207902058518 4.3080207902058545 4.7887160499786328e-14
		1.2826686369151877e-15 20.947568520298777 1.2826686369151877e-15
		-4.3080207902058518 4.3080207902058492 4.7887160499786328e-14
		;
createNode parentConstraint -n "Eye_Ctrl_Grp_parentConstraint1" -p "Eye_Ctrl_Grp";
	rename -uid "A069E937-4997-CC14-F413-B19501547048";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.5625988391201744e-18 53.827201843261719 
		205.18071767656957 ;
	setAttr ".rst" -type "double3" -7.5625988391201744e-18 70.396400451660156 176.85956212847387 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Eye_Ctrl_Grp_parentConstraint2" -p "Eye_Ctrl_Grp";
	rename -uid "CC95EF8B-477A-0D97-B789-539E9E6F24AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.5625988391201744e-18 53.827201843261719 
		205.18071767656957 ;
	setAttr ".rst" -type "double3" -7.5625988391201744e-18 70.396400451660156 176.85956212847387 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Eye_Ctrl_Grp_scaleConstraint1" -p "Eye_Ctrl_Grp";
	rename -uid "175A01F9-41ED-9AA5-583F-E19636B644DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Arm_01_Ctrl_Grp" -p "Controls";
	rename -uid "457A20C8-44F1-7012-CE44-05B680350253";
createNode transform -n "L_Arm_01_Ctrl" -p "L_Arm_01_Ctrl_Grp";
	rename -uid "2C165B98-4BF9-EBE5-6FE4-948539298039";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Arm_01_CtrlShape" -p "L_Arm_01_Ctrl";
	rename -uid "34ED145A-4E11-C885-51E5-88A2839F88CD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.439471202296542e-15 23.508348746736736 -23.508348746736736
		-2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-1.4394712022965416e-15 -23.508348746736736 -23.508348746736733
		-1.0553206857018082e-31 -33.245825626631643 -1.7234694712574491e-15
		1.4394712022965418e-15 -23.508348746736736 23.508348746736736
		2.0357196969332752e-15 -3.3302570908809675e-15 33.24582562663165
		1.4394712022965416e-15 23.508348746736736 23.508348746736733
		2.7761037630330297e-31 33.245825626631643 4.533721502339877e-15
		-1.439471202296542e-15 23.508348746736736 -23.508348746736736
		-2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-1.4394712022965416e-15 -23.508348746736736 -23.508348746736733
		;
createNode parentConstraint -n "L_Arm_01_Ctrl_Grp_parentConstraint1" -p "L_Arm_01_Ctrl_Grp";
	rename -uid "B6183495-444F-320F-C0E2-36A5C4E05C24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 66.520660400390625 33.100521087646491 17.794084398401548 ;
	setAttr ".tg[0].tor" -type "double3" 101.1054219458802 -78.559552828717912 0 ;
	setAttr ".lr" -type "double3" 101.1054219458802 -78.559552828717912 0 ;
	setAttr ".rst" -type "double3" 66.520660400390625 49.669719696044929 -10.527071149694155 ;
	setAttr ".rsrr" -type "double3" 101.1054219458802 -78.559552828717912 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_01_Ctrl_Grp_parentConstraint2" -p "L_Arm_01_Ctrl_Grp";
	rename -uid "B0BEAF66-4FDB-CB3A-9B8C-E1987E5AEB9A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 66.520660400390625 33.100521087646491 17.794084398401548 ;
	setAttr ".tg[0].tor" -type "double3" 101.1054219458802 -78.559552828717912 0 ;
	setAttr ".lr" -type "double3" 101.10542194588025 -78.559552828717912 -1.6035119257006978e-14 ;
	setAttr ".rst" -type "double3" 66.520660400390625 49.669719696044929 -10.527071149694155 ;
	setAttr ".rsrr" -type "double3" 101.1054219458802 -78.559552828717912 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_01_Ctrl_Grp_scaleConstraint1" -p "L_Arm_01_Ctrl_Grp";
	rename -uid "5F6477F3-4CB2-9C6D-09FC-0E91073AA0A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Arm_02_Ctrl_Grp" -p "Controls";
	rename -uid "F38E368E-493B-427F-8B1F-AA97F5A80818";
createNode transform -n "L_Arm_02_Ctrl" -p "L_Arm_02_Ctrl_Grp";
	rename -uid "636BBA47-449E-C7F7-7335-B5AE623B86F1";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Arm_02_CtrlShape" -p "L_Arm_02_Ctrl";
	rename -uid "7DC8C288-496F-5203-6859-71A97811B2B4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.596474681976946e-16 15.67223249782449 -15.672232497824492
		-1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-9.5964746819769441e-16 -15.67223249782449 -15.672232497824488
		-7.0354712380120538e-32 -22.163883751087763 -1.1489796475049661e-15
		9.5964746819769441e-16 -15.67223249782449 15.67223249782449
		1.3571464646221834e-15 -2.2201713939206451e-15 22.163883751087766
		9.5964746819769441e-16 15.67223249782449 15.672232497824488
		1.8507358420220198e-31 22.163883751087763 3.022481001559918e-15
		-9.596474681976946e-16 15.67223249782449 -15.672232497824492
		-1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-9.5964746819769441e-16 -15.67223249782449 -15.672232497824488
		;
createNode parentConstraint -n "L_Arm_02_Ctrl_Grp_parentConstraint1" -p "L_Arm_02_Ctrl_Grp";
	rename -uid "57AB8B76-4F2A-00A4-9E88-B6A64FAEF273";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 138.16899560293263 -5.223956353484752 -26.613397071656344 ;
	setAttr ".tg[0].tor" -type "double3" -53.479658935964785 -40.570766176414658 60.227710464165234 ;
	setAttr ".lr" -type "double3" 5.391071119830686 -151.75955635212966 60.295866555788805 ;
	setAttr ".rst" -type "double3" 93.926383972168495 76.790977478027685 124.89669951642821 ;
	setAttr ".rsrr" -type "double3" 5.391071119830686 -151.75955635212966 60.295866555788805 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Arm_02_Ctrl_Grp_parentConstraint2" -p "L_Arm_02_Ctrl_Grp";
	rename -uid "6ABD5404-42E1-45F9-CBA3-94BF1EFBF7B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 138.1689956029326 -5.223956353484752 -26.61339707165633 ;
	setAttr ".tg[0].tor" -type "double3" -53.479658935964785 -40.570766176414658 60.227710464165234 ;
	setAttr ".lr" -type "double3" 5.391071119830686 -151.75955635212969 60.295866555788855 ;
	setAttr ".rst" -type "double3" 93.926383972168509 76.790977478027671 124.89669951642819 ;
	setAttr ".rsrr" -type "double3" 5.391071119830686 -151.75955635212966 60.295866555788805 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_02_Ctrl_Grp_scaleConstraint1" -p "L_Arm_02_Ctrl_Grp";
	rename -uid "0C0AC5EC-4E54-D286-76C9-689D598D7D75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Arm_01_Ctrl_Grp" -p "Controls";
	rename -uid "2827351D-4300-691C-B1AA-5086A10CEFA0";
createNode transform -n "R_Arm_01_Ctrl" -p "R_Arm_01_Ctrl_Grp";
	rename -uid "C1AAE5EB-48AC-ADF3-4AD8-BFAC4A99E727";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-16 -1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Arm_01_CtrlShape" -p "R_Arm_01_Ctrl";
	rename -uid "8092A10F-4C20-B1C5-26E3-FB82C695914D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.439471202296542e-15 23.508348746736736 -23.508348746736736
		-2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-1.4394712022965416e-15 -23.508348746736736 -23.508348746736733
		-1.0553206857018082e-31 -33.245825626631643 -1.7234694712574491e-15
		1.4394712022965418e-15 -23.508348746736736 23.508348746736736
		2.0357196969332752e-15 -3.3302570908809675e-15 33.24582562663165
		1.4394712022965416e-15 23.508348746736736 23.508348746736733
		2.7761037630330297e-31 33.245825626631643 4.533721502339877e-15
		-1.439471202296542e-15 23.508348746736736 -23.508348746736736
		-2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-1.4394712022965416e-15 -23.508348746736736 -23.508348746736733
		;
createNode parentConstraint -n "R_Arm_01_Ctrl_Grp_parentConstraint1" -p "R_Arm_01_Ctrl_Grp";
	rename -uid "EFADF223-44E8-AA60-2583-D1BB6CE1E55C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -66.520699999999991 33.100501391601561 17.794079952219299 ;
	setAttr ".tg[0].tor" -type "double3" -78.894578054119705 78.559552828717898 0 ;
	setAttr ".lr" -type "double3" -78.894578054119691 78.559552828717912 -1.6035119257006959e-14 ;
	setAttr ".rst" -type "double3" -66.520699999999991 49.6697 -10.527075595876404 ;
	setAttr ".rsrr" -type "double3" -78.894578054119691 78.559552828717912 -1.6035119257006959e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_01_Ctrl_Grp_parentConstraint2" -p "R_Arm_01_Ctrl_Grp";
	rename -uid "B7E615D8-4205-7469-A865-06AB63D309E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -66.520699999999991 33.100501391601561 17.794079952219299 ;
	setAttr ".tg[0].tor" -type "double3" -78.894578054119705 78.559552828717898 0 ;
	setAttr ".lr" -type "double3" -78.894578054119691 78.559552828717912 -1.6035119257006959e-14 ;
	setAttr ".rst" -type "double3" -66.520699999999991 49.6697 -10.527075595876404 ;
	setAttr ".rsrr" -type "double3" -78.894578054119691 78.559552828717912 -1.6035119257006959e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_01_Ctrl_Grp_scaleConstraint1" -p "R_Arm_01_Ctrl_Grp";
	rename -uid "C79CE4A6-4EE2-7B43-173C-DD909D8F5DDE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Arm_02_Ctrl_Grp" -p "Controls";
	rename -uid "5BEE4B98-455C-F19A-54A0-A48B11204A83";
createNode transform -n "R_Arm_02_Ctrl" -p "R_Arm_02_Ctrl_Grp";
	rename -uid "AF1A3D5F-442E-9BCE-7166-91A6B56382E6";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Arm_02_CtrlShape" -p "R_Arm_02_Ctrl";
	rename -uid "2F1733D9-4B1E-BF36-D5C0-168F99B4D830";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.596474681976946e-16 15.67223249782449 -15.672232497824492
		-1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-9.5964746819769441e-16 -15.67223249782449 -15.672232497824488
		-7.0354712380120538e-32 -22.163883751087763 -1.1489796475049661e-15
		9.5964746819769441e-16 -15.67223249782449 15.67223249782449
		1.3571464646221834e-15 -2.2201713939206451e-15 22.163883751087766
		9.5964746819769441e-16 15.67223249782449 15.672232497824488
		1.8507358420220198e-31 22.163883751087763 3.022481001559918e-15
		-9.596474681976946e-16 15.67223249782449 -15.672232497824492
		-1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-9.5964746819769441e-16 -15.67223249782449 -15.672232497824488
		;
createNode parentConstraint -n "R_Arm_02_Ctrl_Grp_parentConstraint1" -p "R_Arm_02_Ctrl_Grp";
	rename -uid "9AF0E782-4B24-B641-28CC-8DBFD90E4D44";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -138.16888246014585 5.2239633539977461 26.613438721181595 ;
	setAttr ".tg[0].tor" -type "double3" -53.479658935964856 -40.570766176414573 60.227710464165341 ;
	setAttr ".lr" -type "double3" 5.3910711198307339 28.240443647870279 119.70413344421122 ;
	setAttr ".rst" -type "double3" -93.9264 76.790999999999968 124.89658440412359 ;
	setAttr ".rsrr" -type "double3" 5.3910711198307339 28.240443647870279 119.70413344421122 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Arm_02_Ctrl_Grp_parentConstraint2" -p "R_Arm_02_Ctrl_Grp";
	rename -uid "7AE9A62B-42D5-0EF7-694C-74A33C9CD9FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -138.16888246014585 5.2239633539977461 26.613438721181581 ;
	setAttr ".tg[0].tor" -type "double3" -53.479658935964856 -40.570766176414573 60.227710464165341 ;
	setAttr ".lr" -type "double3" 5.3910711198307277 28.24044364787029 119.70413344421117 ;
	setAttr ".rst" -type "double3" -93.9264 76.790999999999954 124.89658440412359 ;
	setAttr ".rsrr" -type "double3" 5.3910711198307339 28.240443647870279 119.70413344421122 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_02_Ctrl_Grp_scaleConstraint1" -p "R_Arm_02_Ctrl_Grp";
	rename -uid "4CF5E022-4C4E-B388-31B8-A0AAD04F22BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Mesh" -p "Skull_Asset";
	rename -uid "15042AE5-4329-F783-D6A2-51B1D01869A4";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "MeshShape" -p "Mesh";
	rename -uid "F05B83E1-4C79-873C-E29B-CABB517BDCA4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8240792453289032 0.47708755731582642 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".pt";
	setAttr ".pt[25]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[26]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[107]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[109]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[111]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[262]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[264]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".pt[266]" -type "float3" -1.5258789e-05 0 0 ;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "MeshShapeOrig" -p "Mesh";
	rename -uid "1BABF361-4FC1-2636-2171-59A82ACE05ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 9 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "vtx[23]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[642]" "e[644]" "e[646]" "e[649]" "e[651]";
	setAttr ".gtag[5].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "e[550]" "e[564]" "e[572]" "e[593]" "e[616:617]" "e[630]" "e[635]";
	setAttr ".gtag[6].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[295]";
	setAttr ".gtag[7].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[58]" "f[222]";
	setAttr ".gtag[8].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[30]" "f[194]";
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 546 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.85994971 0.010633945 0.39966044
		 0.014825007 0.39966044 0.014825007 0.5867328 0.01952365 0.43984058 0.021468027 0.41559944
		 0.030652933 0.41559944 0.030652933 0.54019475 0.031878889 0.88635856 0.032012701
		 0.95597565 0.038318187 0.63185054 0.045910209 0.63185054 0.045910209 0.85611916 0.052842379
		 0.85611916 0.052842379 0.40656996 0.054948874 0.40656996 0.054948874 0.38464889 0.05503406
		 0.38464889 0.05503406 0.53830433 0.057758421 0.53830433 0.057758421 0.80541956 0.062898368
		 0.94358778 0.064842522 0.94358778 0.064842522 0.18590418 0.067910254 0.5348196 0.073764652
		 0.5348196 0.073764652 0.88489878 0.075579345 0.88489878 0.075579345 0.41578367 0.079146981
		 0.41578367 0.079146981 0.57795709 0.082385451 0.57795709 0.082385451 0.67199421 0.085839182
		 0.44007155 0.088158891 0.30475983 0.088756502 0.30475983 0.088756502 0.8107928 0.092222005
		 0.8107928 0.092222005 0.39997643 0.095085032 0.39997643 0.095085032 0.21905497 0.10146794
		 0.21905497 0.10146794 0.93892133 0.10412839 0.93892133 0.10412839 0.80303121 0.10766926
		 0.80303121 0.10766926 0.10768861 0.10809869 0.44014746 0.11007527 0.26480526 0.11011943
		 0.26480526 0.11011943 0.84868991 0.11446157 0.84868991 0.11446157 0.71404505 0.11682263
		 0.71404505 0.11682263 0.66029155 0.11854714 0.66029155 0.11854714 0.390625 0.125
		 0.37890625 0.12890625 0.40234375 0.12890625 0.57424742 0.13520944 0.57424742 0.13520944
		 0.375 0.140625 0.390625 0.140625 0.41015625 0.140625 0.80489761 0.15166122 0.80489761
		 0.15166122 0.37890625 0.15234375 0.40234375 0.15234375 0.35374826 0.15664202 0.35374826
		 0.15664202 0.17584765 0.15709969 0.17584765 0.15709969 0.063182235 0.15715668 0.66200233
		 0.15732643 0.66200233 0.15732643 0.93705779 0.15897313 0.93705779 0.15897313 0.86726248
		 0.159105 0.86726248 0.159105 0.390625 0.16015625 0.27418479 0.16073728 0.27418479
		 0.16073728 0.9082126 0.16091588 0.9082126 0.16091588 0.56908911 0.18743289 0.56908911
		 0.18743289 0.62278026 0.1917288 0.62278026 0.1917288 0.95375669 0.19542778 0.95375669
		 0.19542778 0.62425834 0.196785 0.62425834 0.196785 0.74290341 0.19738573 0.74290341
		 0.19738573 0.80541956 0.19917688 0.80541956 0.19917688 0.44005731 0.20869282 0.046785682
		 0.209537 0.16948172 0.2095421 0.16948172 0.2095421 0.67569721 0.20955375 0.67569721
		 0.20955375 0.3675648 0.21514484 0.3675648 0.21514484 0.46385238 0.21740009 0.41650748
		 0.21804295 0.41650748 0.21804295 0.27434653 0.21972674 0.27434653 0.21972674 0.44028211
		 0.22524734 0.70644951 0.22604054 0.45230445 0.22921038 0.42837179 0.2295354 0.42837179
		 0.2295354 0.90265262 0.22976643 0.90265262 0.22976643 0.9693892 0.23540819 0.9693892
		 0.23540819 0.80417252 0.24025056 0.80417252 0.24025056 0.42433193 0.24150825 0.42433193
		 0.24150825 0.40799215 0.24182479 0.40799215 0.24182479 0.86443126 0.24400866 0.86443126
		 0.24400866 0.16438758 0.24796189 0.16438758 0.24796189 0.45248872 0.25281292 0.42882854
		 0.25313419 0.42882854 0.25313419 0.65526378 0.25610673 0.65526378 0.25610673 0.44071448
		 0.25709212 0.38375026 0.25924391 0.38375026 0.25924391 0.52309626 0.2605707 0.52309626
		 0.2605707 0.27932391 0.26228744 0.27932391 0.26228744 0.92354995 0.26253194 0.92354995
		 0.26253194 0.60713589 0.26343173 0.60713589 0.26343173 0.46414354 0.26432073 0.41749036
		 0.26495421 0.41749036 0.26495421 0.69927979 0.26504296 0.69927979 0.26504296 0.68144649
		 0.26719397 0.44093576 0.27339029 0.9021858 0.27667379 0.9021858 0.27667379 0.73839438
		 0.29801929 0.73839438 0.29801929 0.79938161 0.29846001 0.79938161 0.29846001 0.49954566
		 0.29953796 0.49954566 0.29953796 0.64049518 0.30234039 0.64049518 0.30234039 0.56055516
		 0.30397201 0.56055516 0.30397201 0.67701459 0.30746371 0.5992561 0.30757457 0.5992561
		 0.30757457 0.40115419 0.3121905 0.40115419 0.3121905 0.95998502 0.31757003 0.95998502
		 0.31757003 0.97021782 0.31898487 0.97021782 0.31898487 0.026082754 0.32065684 0.28681794
		 0.32912275 0.28681794 0.32912275 0.98615617 0.3308062 0.98615617 0.3308062 0.95586872
		 0.33655128 0.95586872 0.33655128 0.86237884 0.34038788 0.86237884 0.34038788 0.63750964
		 0.34174758 0.63750964 0.34174758 0.53995311 0.34229964 0.53995311 0.34229964 0.47050637
		 0.34425217 0.47050637 0.34425217 0.16150829 0.34546858 0.16150829 0.34546858 0.67849654
		 0.34783691 0.87923527 0.34951386 0.87923527 0.34951386 0.58380228 0.35046646 0.58380228
		 0.35046646 0.97028542 0.35571688 0.97028542 0.35571688 0.89622545 0.35763186 0.89622545
		 0.35763186 0.95171416 0.35976973 0.95171416 0.35976973 0.93313909 0.36277747 0.93313909
		 0.36277747 0.91428185 0.36316556 0.91428185 0.36316556 0.71629059 0.38298723 0.71629059
		 0.38298723 0.71710944 0.38731304 0.71710944 0.38731304 0.51150453 0.39202523 0.51150453
		 0.39202523 0.73371196 0.3942067 0.73371196 0.3942067 0.55642122 0.41360199 0.55642122
		 0.41360199 0.29936224 0.41520059 0.29936224 0.41520059 0.69534713 0.41655707 0.69534713
		 0.41655707 0.61180824 0.4224354 0.61180824 0.4224354 0.41082442 0.42330831 0.41082442
		 0.42330831 0.025761783 0.43127227 0.16957355 0.43257394 0.16957355 0.43257394 0.41926089
		 0.43427086 0.41926089 0.43427086 0.66802192 0.43662235 0.77482998 0.44588768 0.77482998
		 0.44588768 0.72530079 0.44924495 0.72530079 0.44924495 0.48287255 0.45432556 0.48287255
		 0.45432556 0.54109144 0.4795008 0.54109144 0.4795008 0.60005414 0.50038701 0.60005414
		 0.50038701 0.65690607 0.50773889 0.70522791 0.51322812 0.70522791 0.51322812 0.41082442
		 0.52330607 0.41082442 0.52330607 0.30908376 0.5233624 0.30908376 0.5233624 0.48114491
		 0.52757645 0.48114491 0.52757645 0.73740029 0.52765381 0.73740029 0.52765381 0.42366505
		 0.52899432;
	setAttr ".uvst[0].uvsp[250:499]" 0.42366505 0.52899432 0.53620917 0.5325098
		 0.53620917 0.5325098 0.88741767 0.54734862 0.88741767 0.54734862 0.85908419 0.54810894
		 0.85908419 0.54810894 0.58850527 0.55702579 0.58850527 0.55702579 0.18534192 0.55822575
		 0.18534192 0.55822575 0.91424519 0.56183779 0.91424519 0.56183779 0.64369375 0.56603038
		 0.71848512 0.56689239 0.71848512 0.56689239 0.81691658 0.56720179 0.81691658 0.56720179
		 0.52317363 0.56825048 0.52317363 0.56825048 0.49342409 0.57641065 0.49342409 0.57641065
		 0.76720679 0.58550274 0.76720679 0.58550274 0.29448619 0.58790267 0.29448619 0.58790267
		 0.073100418 0.58925736 0.65816396 0.58967853 0.65816396 0.58967853 0.85165864 0.59177405
		 0.85165864 0.59177405 0.88216019 0.59298337 0.88216019 0.59298337 0.56894833 0.59542418
		 0.56894833 0.59542418 0.78734648 0.59711021 0.78734648 0.59711021 0.90956473 0.59814858
		 0.90956473 0.59814858 0.69534713 0.59829998 0.95820308 0.60035902 0.95820308 0.60035902
		 0.36330569 0.60189539 0.36330569 0.60189539 0.78454107 0.60224462 0.78454107 0.60224462
		 0.85279596 0.61203748 0.85279596 0.61203748 0.62806582 0.61293358 0.43197441 0.61503595
		 0.43197441 0.61503595 0.81506014 0.61739302 0.81506014 0.61739302 0.9120568 0.61802787
		 0.9120568 0.61802787 0.8801924 0.61820465 0.8801924 0.61820465 0.72971451 0.62192005
		 0.52786654 0.62690371 0.52786654 0.62690371 0.84358871 0.6301524 0.84358871 0.6301524
		 0.65356934 0.63083136 0.65356934 0.63083136 0.65356934 0.63083136 0.87739074 0.6382857
		 0.87739074 0.6382857 0.91002846 0.63898683 0.91002846 0.63898683 0.78047699 0.63953722
		 0.7805739 0.63960022 0.24438182 0.64387846 0.24438182 0.64387846 0.79497421 0.65079629
		 0.79497421 0.65079629 0.74917299 0.65099013 0.7492699 0.65105319 0.83315814 0.65735477
		 0.83315814 0.65735477 0.67539102 0.66588849 0.67539102 0.66588849 0.64599121 0.6700269
		 0.64599121 0.6700269 0.64599121 0.6700269 0.87362981 0.67098093 0.87362981 0.67098093
		 0.92315114 0.67578858 0.92315114 0.67578858 0.59101766 0.67582721 0.73678499 0.67751449
		 0.73688203 0.6775775 0.77137309 0.67806494 0.77147001 0.678128 0.32209158 0.67967319
		 0.32209158 0.67967319 0.46596783 0.68898326 0.46596783 0.68898326 0.18115172 0.70113361
		 0.82479632 0.70481932 0.82479632 0.70481932 0.79124069 0.70582044 0.79124069 0.70582044
		 0.67840993 0.70620143 0.67840993 0.70620143 0.59367555 0.70844144 0.59367555 0.70844144
		 0.64887345 0.70851511 0.64887345 0.70851511 0.64887345 0.70851511 0.61220562 0.71291685
		 0.61220562 0.71291685 0.76607662 0.71560496 0.76617366 0.71566796 0.73211867 0.71680033
		 0.73221558 0.71686339 0.62976259 0.72013605 0.62976259 0.72013605 0.68355775 0.72175312
		 0.68355775 0.72175312 0.65378821 0.72336257 0.65378821 0.72336257 0.65378821 0.72336257
		 0.97028542 0.72575915 0.97028542 0.72575915 0.92695647 0.73590225 0.92695647 0.73590225
		 0.64476824 0.73701799 0.64476824 0.73701799 0.68840134 0.74724537 0.65847558 0.74884069
		 0.65847558 0.74884069 0.51698661 0.75120133 0.57748997 0.75222266 0.57748997 0.75222266
		 0.76497704 0.75747371 0.76507407 0.75753671 0.84820229 0.75902092 0.84820229 0.75902092
		 0.27744973 0.75929713 0.68782538 0.7626971 0.68782538 0.7626971 0.59106481 0.77135986
		 0.59106481 0.77135986 0.73025507 0.77164507 0.73035198 0.77170813 0.7086364 0.78038549
		 0.7086364 0.78038549 0.79916477 0.78117603 0.79916477 0.78117603 0.67663109 0.78353989
		 0.67663109 0.78353989 0.6925658 0.78705347 0.6925658 0.78705347 0.60252577 0.78883994
		 0.60252577 0.78883994 0.6047256 0.79319704 0.6047256 0.79319704 0.76776427 0.79328787
		 0.76786119 0.79335088 0.28119671 0.79442483 0.28119671 0.79442483 0.60255885 0.79757082
		 0.60255885 0.79757082 0.71434259 0.79926908 0.71434259 0.79926908 0.67427146 0.80221289
		 0.67427146 0.80221289 0.6936124 0.8029319 0.6936124 0.8029319 0.74695402 0.80809975
		 0.74705094 0.80816275 0.92734373 0.81007028 0.92734373 0.81007028 0.96117353 0.81162345
		 0.96117353 0.81162345 0.59123087 0.81513739 0.59123087 0.81513739 0.86255789 0.81608844
		 0.86255789 0.81608844 0.71824443 0.81942481 0.71824443 0.81942481 0.69712484 0.82052803
		 0.69712484 0.82052803 0.67113936 0.82096303 0.67113936 0.82096303 0.4823623 0.83391929
		 0.4823623 0.83391929 0.57780153 0.83437681 0.57780153 0.83437681 0.81317627 0.83787704
		 0.81317627 0.83787704 0.72121894 0.83812213 0.72121894 0.83812213 0.69641674 0.8389495
		 0.69641674 0.8389495 0.6653797 0.83998263 0.6653797 0.83998263 0.78047699 0.84343982
		 0.78047699 0.84343982 0.7805739 0.84350282 0.7805739 0.84350282 0.76258641 0.84808016
		 0.76258641 0.84808016 0.76268345 0.84814316 0.76268345 0.84814316 0.64519304 0.84907109
		 0.64519304 0.84907109 0.7194947 0.85697961 0.7194947 0.85697961 0.69834846 0.85728323
		 0.69834846 0.85728323 0.67239136 0.85857713 0.67239136 0.85857713 0.63031578 0.86606604
		 0.63031578 0.86606604 0.61281425 0.87341833 0.61281425 0.87341833 0.69601381 0.87507391
		 0.69601381 0.87507391 0.67676353 0.8770777 0.67676353 0.8770777 0.71694165 0.87734991
		 0.71694165 0.87734991 0.59431875 0.87803423 0.59431875 0.87803423 0.31318608 0.88121629
		 0.31318608 0.88121629 0.66282308 0.88829076 0.69602549 0.89098704 0.69602549 0.89098704
		 0.54194665 0.89410031 0.54194665 0.89410031 0.63258576 0.89506721 0.68035984 0.8955524
		 0.68035984 0.8955524 0.71250397 0.89657128 0.71250397 0.89657128 0.43376896 0.90900546
		 0.43376896 0.90900546 0.070297688 0.91003001 0.070297688 0.91003001 0.57650965 0.9135164
		 0.57650965 0.9135164 0.69291544 0.91560459 0.69291544 0.91560459 0.96030343 0.92301702
		 0.96025711 0.92342192 0.052179992 0.93000245 0.052179992 0.93000245 0.65775025 0.93022346;
	setAttr ".uvst[0].uvsp[500:545]" 0.65775025 0.93022346 0.34003043 0.93117321
		 0.34003043 0.93117321 0.76341516 0.93165684 0.76351207 0.93171984 0.93429351 0.93280905
		 0.93427175 0.93295151 0.9677372 0.93489474 0.9674142 0.93531924 0.93439573 0.93582213
		 0.93442851 0.93599004 0.62799108 0.93622005 0.62799108 0.93622005 0.49916393 0.9382782
		 0.49916393 0.9382782 0.93438536 0.93883687 0.93447167 0.93903226 0.77935344 0.94347817
		 0.77945036 0.94354117 0.9610998 0.94723517 0.96062267 0.947429 0.070093691 0.94996548
		 0.070093691 0.94996548 0.52944833 0.95989347 0.52944833 0.95989347 0.9243241 0.96212751
		 0.92598838 0.96233845 0.9260906 0.96535152 0.92450637 0.9656598 0.73107147 0.96832019
		 0.92608023 0.96836627 0.92455649 0.96919644 0.33800754 0.97103202 0.33800754 0.97103202
		 0.44488484 0.9710542 0.44488484 0.9710542 0.64981282 0.97127712 0.64981282 0.97127712
		 0.69580317 0.97318149 0.62041295 0.97541559 0.62041295 0.97541559 0.39516503 0.99039018
		 0.39516503 0.99039018 0.45470151 0.99550819 0.45470151 0.99550819 0.43976462 -0.00046891137;
	setAttr ".uvst[1].uvsn" -type "string" "UVMap";
	setAttr -s 402 ".uvst[1].uvsp";
	setAttr ".uvst[1].uvsp[0:249]" -type "float2" 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.375 0 0.375 0 0.5 0 0.5 0 0.625 0 0.625 0 0.375 0.125 0.375 0.125 0.375 0.125 0.375
		 0.125 0.5 0.125 0.5 0.125 0.5 0.125 0.5 0.125 0.625 0.125 0.625 0.125 0.625 0.125
		 0.625 0.125 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.5
		 0.25 0.5 0.25 0.5 0.25 0.5 0.25 0.5 0.25 0.5 0.25 0.5 0.375 0.5 0.375 0.625 0.375
		 0.625 0.375 0.375 0.49999997 0.375 0.49999997 0.49999997 0.49999997 0.49999997 0.49999997;
	setAttr ".uvst[1].uvsp[250:401]" 0.49999997 0.49999997 0.49999997 0.49999997
		 0.125 0.5 0.125 0.5 0.125 0.5 0.125 0.5 0.125 0.5 0.125 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.49999994
		 0.5 0.49999994 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.62499994 0.5
		 0.62499994 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625
		 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.62500006 0.5 0.62500006 0.5
		 0.75 0.5 0.75 0.5 0.875 0.5 0.875 0.5 0.62499994 0.62499994 0.62499994 0.62499994
		 0.62499994 0.62499994 0.62499994 0.62499994 0.125 0.625 0.125 0.625 0.125 0.625 0.125
		 0.625 0.125 0.625 0.125 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.375
		 0.625 0.375 0.625 0.375 0.625 0.375 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625
		 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.625 0.62500006
		 0.625 0.62500006 0.625 0.75 0.625 0.75 0.625 0.875 0.625 0.875 0.625 0.875 0.625
		 0.875 0.625 0.875 0.625 0.875 0.625 0.49999997 0.74999988 0.49999997 0.74999988 0.5
		 0.74999994 0.5 0.74999994 0.125 0.75 0.125 0.75 0.125 0.75 0.125 0.75 0.375 0.75
		 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.49999997 0.75 0.49999997 0.75 0.5 0.75 0.5
		 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.625 0.75 0.625 0.75
		 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625
		 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.625 0.75 0.62500006 0.75 0.62500006 0.75
		 0.75 0.75 0.75 0.75 0.875 0.75 0.875 0.75 0.875 0.75 0.875 0.75 0.5 0.875 0.5 0.875
		 0.625 0.87500006 0.625 0.87500006 0.375 1 0.375 1 0.375 1 0.375 1 0.5 1 0.5 1 0.5
		 1 0.5 1 0.625 1 0.625 1 0.625 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 342 ".pt";
	setAttr ".pt[0:165]" -type "float3"  7.0310743e-06 78.328918 72.813416 -3.8491481e-14 
		1.1275102 73.360916 -3.8489157e-14 43.287708 22.403929 -3.8489157e-14 40.330547 68.50219 
		7.0310743e-06 53.341614 66.423309 -3.8489157e-14 115.56911 23.18388 3.3143584e-07 
		105.57272 61.525131 2.8806095e-09 123.58581 -5.3189292 -3.0155565e-09 92.672424 70.452133 
		-3.8489157e-14 18.192993 -11.640469 -3.8489157e-14 16.195482 -27.682373 -3.8489157e-14 
		26.404779 5.9421158 -3.8489157e-14 41.306179 32.851158 -3.8489157e-14 40.745502 43.533905 
		-3.8489157e-14 43.349251 57.037338 -3.8491481e-14 39.243275 68.015091 -3.8491481e-14 
		29.17705 61.659306 -3.8491481e-14 8.3508911 65.423462 -3.8489157e-14 111.88194 48.128483 
		-3.8489157e-14 113.80737 -36.737747 -3.8489157e-14 84.712158 -54.06411 -3.8489157e-14 
		18.971508 -40.401569 -3.8489157e-14 31.340933 -46.337074 -3.6084603e-15 68.808609 
		69.544807 -1.563666e-14 73.724777 68.315674 -3.8490241e-14 82.899834 67.08773 -3.8490241e-14 
		54.717377 67.08773 -1.5635578e-14 63.892448 68.315674 -3.5809311e-09 82.326859 49.37463 
		-1.1894028e-08 56.754047 46.872425 -2.8867682e-14 77.393562 69.996307 -2.8866598e-14 
		60.223663 69.996307 -35.561424 123.45401 17.614042 -27.631031 107.84039 65.619629 
		-61.561272 84.049904 22.033522 -51.748081 78.957901 56.817711 -74.089638 85.304443 
		-5.5147886 -39.697746 129.76108 -13.406894 -22.779413 95.321587 74.647827 -34.700031 
		73.490227 66.796692 -11.283798 79.79567 68.934067 -17.59351 69.174683 69.707047 -23.141649 
		116.40675 -46.389061 -63.945354 78.575302 -40.91021 -45.288479 76.524742 -48.60527 
		-52.327168 47.32103 21.645784 -38.701244 49.824482 44.387749 -60.852806 48.241531 
		-5.3023767 -27.178141 50.110878 53.85965 -54.136009 45.573803 -29.710155 -39.013939 
		53.579056 -47.950764 -43.120533 35.754753 12.606692 -48.598145 34.128307 -6.2699351 
		-44.699783 32.726231 -27.475489 -36.398823 33.373329 -43.252274 -35.413692 41.183369 
		24.523735 -29.970045 42.114033 34.447803 -24.594648 25.613518 50.113743 -14.788075 
		46.290627 61.510471 -10.447301 29.764351 68.604469 -23.954803 40.966949 21.763172 
		-19.666498 42.089947 33.335621 -16.305382 34.171459 42.548473 -16.524521 50.407722 
		52.537643 -11.622017 57.515003 64.384804 -7.2523007 55.74868 65.551109 -31.781778 
		26.460436 10.858015 -36.578457 18.287052 -8.9822531 -33.967319 19.091013 -27.114473 
		-32.492149 23.932041 -38.06419 -42.456345 39.580952 -0.46055537 -16.525248 14.981223 
		-11.839621 -15.748334 16.318552 -29.581169 -17.283794 19.677355 -40.319386 -18.726294 
		5.2152748 57.132496 -15.325514 45.512234 61.320004 -28.650223 40.645935 33.876736 
		-30.357597 10.096249 35.53381 -8.9937878 36.991199 55.7393 -15.65403 26.065144 8.7537699 
		-17.075869 35.691387 53.277073 -24.555222 30.933815 30.789991 -40.298538 43.516171 
		3.3554418 -10.057564 41.137299 24.329424 -9.0538654 41.306179 33.802757 -6.7216573 
		40.500023 44.290112 -37.467407 40.575554 -1.4054172 -10.227991 3.6738021 66.193436 
		-10.688111 28.965748 68.817421 -11.03022 25.227663 59.608047 -20.717255 20.870327 
		42.453251 -25.530096 24.807732 50.100128 -26.282574 7.4843392 46.16637 -13.463305 
		12.392035 52.639477 -35.982246 42.282581 2.015866 -20.763386 14.66322 41.080212 -6.554534 
		11.499773 60.997906 -24.727324 13.840569 31.130383 -35.912537 15.120864 20.714567 
		-36.234566 31.900448 25.0709 -29.481476 31.868738 21.789375 -30.342485 16.080072 
		18.634447 -21.292788 85.739525 -55.770081 -32.380386 120.84403 46.537987 -56.015373 
		81.589027 43.381279 -44.923981 48.681194 34.001854 -22.167601 32.417759 -46.568352 
		-10.230503 79.039108 67.087738 -3.5692353 65.239388 68.315674 -10.230498 58.578117 
		67.08773 -3.5692353 72.377846 68.315674 -14.09123 68.808609 67.08773 -4.9161725 68.808609 
		68.315674 -8.7299366 76.568161 48.752983 -12.514094 72.068619 48.718624 -8.983264 
		59.879921 45.345581 -5.7103424 58.55695 46.219139 -6.2328396 62.575783 69.996307 
		-6.2328415 75.041451 69.996315 -8.5849543 68.808609 69.996307 -80.636581 45.346645 
		36.516602 -85.847824 54.943932 17.154484 -65.114143 59.70063 43.454018 -64.972603 
		61.783306 20.215754 -87.921249 50.183338 29.771894 -91.131607 64.05764 30.43458 -89.763672 
		59.532639 23.975439 -70.213989 71.445412 33.169796 -75.799522 70.106552 49.848705 
		-69.030579 69.854897 26.004755 -80.135872 67.863708 23.002626 -88.405212 64.007545 
		50.62804 -97.788521 77.350479 105.02515 -93.582375 69.017044 108.45469 -83.383827 
		74.229118 109.22063 -87.266594 82.727821 105.81537 -93.221207 79.942863 134.94411 
		-88.066826 71.364647 124.68591 -90.394577 70.175034 124.51109 -95.54895 78.753242 
		134.76929 -51.77597 -4.2921677 136.65718 -86.52063 79.666603 100.31271 -88.867188 
		82.352928 113.27754 -84.432259 73.659981 113.37994 -82.822495 71.670914 105.48094 
		-93.00956 69.276466 112.73577 -91.399788 67.287399 104.83677 -95.097923 75.283089 
		99.668541 -97.444481 77.969414 112.63337 -70.073662 45.427345 37.850685 -76.463631 
		61.683105 16.435007 -81.755768 70.0868 29.71517 -83.34259 69.067062 51.91259 -87.319183 
		69.121941 110.35979 -89.230698 70.769836 124.5985 -94.385086 79.348045 134.8567 -93.425552 
		81.796432 105.41915 -91.363487 78.734329 98.806557 -93.824188 81.24144 114.5037 -82.958069 
		44.255657 20.046633 -85.257202 53.162704 45.356346 -84.06163 78.503914 108.11339 
		-96.507881 72.143127 107.17866 -90.644012 75.653755 129.815 -92.971771 74.464142 
		129.64018 -85.848114 78.391174 113.26774;
	setAttr ".pt[166:331]" -83.837769 75.973007 102.95453 -93.983749 70.787804 
		102.19255 -95.99411 73.205963 112.50576 -65.351768 36.760395 -9.4226942 -77.758904 
		36.368046 6.5022445 -81.074539 42.700642 3.6797233 -80.788063 52.690067 4.1643577 
		-70.783928 60.338448 -7.8398852 -59.256653 57.950344 8.6354284 -63.444099 46.878292 
		10.131262 -67.628036 45.760395 -15.41466 -83.041718 70.567413 38.638149 -73.401146 
		72.551788 39.567162 -90.930786 63.390739 38.06752 -54.99939 65.605469 -16.745455 
		-42.906799 62.516365 1.0833197 -39.701851 51.444321 2.5791574 -48.994316 41.199688 
		-17.259041 -51.252819 50.075203 -24.06156 -3.8489157e-14 56.654549 -54.432713 -21.13413 
		57.410896 -54.935959 35.561424 123.45401 17.614042 27.631031 107.84039 65.619629 
		61.566589 84.049904 22.025375 51.748302 78.957901 56.810863 74.098976 85.304443 -5.5245962 
		39.697746 129.76108 -13.406894 22.779413 95.321587 74.647827 34.698795 73.490227 
		66.792099 11.283813 79.79567 68.934067 17.591803 69.174683 69.70472 23.141649 116.40675 
		-46.389061 63.959881 78.575302 -40.918678 45.304924 76.524742 -48.611263 52.327168 
		47.32103 21.645784 38.701244 49.824482 44.387749 60.852806 48.241531 -5.3023767 27.178141 
		50.110878 53.85965 54.136009 45.573803 -29.710155 39.013939 53.579056 -47.950764 
		43.120533 35.754753 12.606692 48.598145 34.128307 -6.2699351 44.699783 32.726231 
		-27.475489 36.398823 33.373329 -43.252274 35.413692 41.183369 24.523735 29.970045 
		42.114033 34.447803 24.594648 25.613518 50.113743 14.788075 46.290627 61.510471 10.447301 
		29.764351 68.604469 23.954803 40.966949 21.763172 19.666498 42.089947 33.335621 16.305382 
		34.171459 42.548473 16.524521 50.407722 52.537643 11.622031 57.515003 64.384804 7.252315 
		55.74868 65.551109 31.781778 26.460436 10.858015 36.578457 18.287052 -8.9822531 33.967319 
		19.091013 -27.114473 32.492149 23.932041 -38.06419 42.456345 39.580952 -0.46055537 
		16.525248 14.981223 -11.839621 15.748334 16.318552 -29.581169 17.283794 19.677355 
		-40.319386 18.726294 5.2152748 57.132496 15.325514 45.512234 61.320004 28.650223 
		40.645935 33.876736 30.357597 10.096249 35.53381 8.9937878 36.991199 55.7393 15.65403 
		26.065144 8.7537699 17.075869 35.691387 53.277073 24.555222 30.933815 30.789991 40.298538 
		43.516171 3.3554418 10.057564 41.137299 24.329424 9.0538654 41.306179 33.802757 6.7216573 
		40.500023 44.290112 37.467407 40.575554 -1.4054172 10.227991 3.6738021 66.193436 
		10.688111 28.965748 68.817421 11.03022 25.227663 59.608047 20.717255 20.870327 42.453251 
		25.530096 24.807732 50.100128 26.282574 7.4843392 46.16637 13.463305 12.392035 52.639477 
		35.982246 42.282581 2.015866 20.763386 14.66322 41.080212 6.554534 11.499773 60.997906 
		24.727324 13.840569 31.130383 35.912537 15.120864 20.714567 36.234566 31.900448 25.0709 
		29.481476 31.868738 21.789375 30.342485 16.080072 18.634447 21.292788 85.739525 -55.770081 
		32.380386 120.84403 46.537987 56.017567 81.589027 43.373867 44.923981 48.681194 34.001854 
		22.167601 32.417759 -46.568352 10.230503 79.039108 67.087738 3.5692353 65.239388 
		68.315674 10.230498 58.578117 67.08773 3.5692353 72.377846 68.315674 14.09123 68.808609 
		67.08773 4.9161725 68.808609 68.315674 8.7299366 76.568161 48.752983 12.515502 72.068619 
		48.716969 8.983264 59.879921 45.345581 5.7103424 58.55695 46.219139 6.2328396 62.575783 
		69.996307 6.2328415 75.041451 69.996315 8.5849543 68.808609 69.996307 80.636581 45.346645 
		36.516602 85.847824 54.943932 17.154484 65.114143 59.70063 43.454018 64.972603 61.783306 
		20.215754 87.921249 50.183338 29.771894 91.131607 64.05764 30.43458 89.763672 59.532639 
		23.975439 70.213989 71.445412 33.169796 75.799522 70.106552 49.848705 69.030579 69.854897 
		26.004755 80.135872 67.863708 23.002626 88.405212 64.007545 50.62804 97.788521 77.350479 
		105.02515 93.582375 69.017044 108.45469 83.383827 74.229118 109.22063 87.266594 82.727821 
		105.81537 93.221207 79.942863 134.94411 88.066826 71.364647 124.68591 90.394577 70.175034 
		124.51109 95.54895 78.753242 134.76929 51.77597 -4.2921677 136.65718 86.52063 79.666603 
		100.31271 88.867188 82.352928 113.27754 84.432259 73.659981 113.37994 82.822495 71.670914 
		105.48094 93.00956 69.276466 112.73577 91.399788 67.287399 104.83677 95.097923 75.283089 
		99.668541 97.444481 77.969414 112.63337 70.073662 45.427345 37.850685 76.463631 61.683105 
		16.435007 81.755768 70.0868 29.71517 83.34259 69.067062 51.91259 87.319183 69.121941 
		110.35979 89.230698 70.769836 124.5985 94.385086 79.348045 134.8567 93.425552 81.796432 
		105.41915 91.363487 78.734329 98.806557 93.824188 81.24144 114.5037 82.958069 44.255657 
		20.046633 85.257202 53.162704 45.356346 84.06163 78.503914 108.11339 96.507881 72.143127 
		107.17866 90.644012 75.653755 129.815 92.971771 74.464142 129.64018 85.848114 78.391174 
		113.26774 83.837769 75.973007 102.95453 93.983749 70.787804 102.19255 95.99411 73.205963 
		112.50576 65.351768 36.760395 -9.4226942 77.758904 36.368046 6.5022445 81.074539 
		42.700642 3.6797233 80.788063 52.690067 4.1643577 70.783928 60.338448 -7.8398852 
		59.256653 57.950344 8.6354284 63.444099 46.878292 10.131262 67.628036 45.760395 -15.41466;
	setAttr ".pt[332:341]" 83.041718 70.567413 38.638149 73.401146 72.551788 39.567162 
		90.930786 63.390739 38.06752 54.99939 65.605469 -16.745455 42.906799 62.516365 1.0833197 
		39.701851 51.444321 2.5791574 48.994316 41.199688 -17.259041 51.252819 50.075203 
		-24.06156 21.13413 57.410896 -54.935959 -0.49391827 67.154884 38.571548;
	setAttr -s 342 ".vt";
	setAttr ".vt[0:165]"  1.6224499e-07 1.80747259 1.68019998 -8.8820701e-16 0.02601777 1.69283378
		 -8.8815343e-16 0.998882 0.51698005 -8.8815343e-16 0.93064427 1.58071661 1.6224499e-07 1.23088002 1.5327456
		 -8.8815343e-16 2.66680551 0.53497773 7.6480209e-09 2.43613458 1.41971815 6.6471273e-11 2.85179424 -0.12273651
		 -6.9585226e-11 2.13845491 1.62571239 -8.8815343e-16 0.41981092 -0.26860869 -8.8815343e-16 0.37371755 -0.63878232
		 -8.8815343e-16 0.60930133 0.1371168 -8.8815343e-16 0.95315737 0.7580542 -8.8815343e-16 0.94021952 1.0045630932
		 -8.8815343e-16 1.00030207634 1.31616044 -8.8820701e-16 0.90555495 1.56947672 -8.8820701e-16 0.67327261 1.42281425
		 -8.8820701e-16 0.1927003 1.50967371 -8.8815343e-16 2.5817225 1.11058486 -8.8815343e-16 2.62615275 -0.84773886
		 -8.8815343e-16 1.95476842 -1.24755192 -8.8815343e-16 0.43777549 -0.93228316 -8.8815343e-16 0.72320515 -1.069247365
		 -8.3266727e-17 1.58778751 1.60477555 -3.6082248e-16 1.70123017 1.5764128 -8.8817842e-16 1.91294837 1.54807746
		 -8.8817842e-16 1.26262641 1.54807746 -3.607975e-16 1.47434497 1.5764128 -8.2631485e-11 1.89972675 1.13934028
		 -2.7445968e-10 1.30962336 1.081600785 -6.6613381e-16 1.78588879 1.61519408 -6.6610883e-16 1.38968623 1.61519408
		 -0.82059479 2.84875298 0.4064514 -0.63759762 2.48846221 1.51420033 -1.42055213 1.93948674 0.50843275
		 -1.19410861 1.82198656 1.3110925 -1.70964932 1.96843565 -0.12725605 -0.91604215 2.99429107 -0.30936968
		 -0.52564448 2.19958544 1.72252989 -0.80071777 1.69581771 1.54136169 -0.26037836 1.84131849 1.59068251
		 -0.40597758 1.59623468 1.6085192 -0.53400326 2.68613434 -1.070446968 -1.47556579 1.81315804 -0.94402021
		 -1.045050621 1.76584041 -1.12158692 -1.20747125 1.091952562 0.49948555 -0.89304739 1.14972079 1.024265885
		 -1.40420401 1.11319351 -0.12235456 -0.62714696 1.15632951 1.24283397 -1.24921107 1.05163455 -0.68557429
		 -0.90026295 1.23635912 -1.10648394 -0.99502438 0.8250559 0.2909047 -1.12142253 0.787525 -0.14468138
		 -1.031466246 0.75517148 -0.63400841 -0.83991808 0.77010357 -0.99806428 -0.81718576 0.95032346 0.56589544
		 -0.69157135 0.9717989 0.7948975 -0.56753182 0.59104264 1.15639555 -0.34124103 1.068175554 1.41937983
		 -0.24107584 0.68682486 1.58307683 -0.5527671 0.94532955 0.50219429 -0.45381269 0.97124314 0.76923341
		 -0.37625352 0.78852069 0.9818238 -0.38131022 1.16317928 1.21232808 -0.2681829 1.32718277 1.48570633
		 -0.16734987 1.28642416 1.51261926 -0.73337781 0.61058563 0.25055325 -0.84406322 0.42198139 -0.20726925
		 -0.78381014 0.4405331 -0.62567782 -0.74976993 0.55224186 -0.8783471 -0.97969788 0.91334701 -0.010627508
		 -0.381327 0.345698 -0.27320421 -0.36339939 0.37655741 -0.68259788 -0.39883077 0.45406318 -0.93038672
		 -0.43211707 0.12034465 1.31835628 -0.35364264 1.050213814 1.4149847 -0.66111588 0.937922 0.78171986
		 -0.70051426 0.23297516 0.81995749 -0.20753542 0.85358739 1.28620768 -0.36122328 0.60146409 0.20199691
		 -0.39403281 0.82359368 1.22939074 -0.56662202 0.71381074 0.71049196 -0.92990559 1.0041538477 0.077428222
		 -0.23208249 0.94926041 0.56141162 -0.20892173 0.95315737 0.78001279 -0.15510505 0.93455499 1.02201283
		 -0.8645761 0.93629789 -0.032430589 -0.23601519 0.084774524 1.52744126 -0.24663264 0.66839677 1.58799076
		 -0.25452694 0.5821389 1.37548065 -0.47805932 0.48159152 0.97962654 -0.58911765 0.57244879 1.15608144
		 -0.60648137 0.17270426 1.065308332 -0.31067142 0.28595138 1.21467793 -0.8303054 0.97568822 0.046516955
		 -0.4791238 0.33835995 0.94794309 -0.15124862 0.26536208 1.40755224 -0.57059336 0.31937692 0.7183466
		 -0.82869679 0.34892026 0.4779973 -0.83612776 0.73611617 0.57852149 -0.68029737 0.73538446 0.50279897
		 -0.70016557 0.37105441 0.42999768 -0.49133998 1.97847533 -1.28691792 -0.74719095 2.78852654 1.073883533
		 -1.29257822 1.88270104 1.0010411739 -1.03663969 1.12333894 0.78460705 -0.51152664 0.74805337 -1.074584246
		 -0.23607315 1.82386053 1.54807758 -0.082361601 1.50542617 1.5764128 -0.23607303 1.35171461 1.54807746
		 -0.082361601 1.67014909 1.5764128 -0.32516104 1.58778739 1.54807746 -0.11344274 1.58778751 1.5764128
		 -0.20144695 1.76684237 1.12499547 -0.28876796 1.66301346 1.12420261 -0.20729257 1.38175428 1.046368241
		 -0.13176854 1.35122609 1.066525936 -0.14382538 1.44396234 1.61519408 -0.14382543 1.7316128 1.6151942
		 -0.19810142 1.58778751 1.61519408 -1.8607229 1.046392798 0.84263587 -1.98097444 1.26785421 0.3958469
		 -1.50253606 1.377617 1.0027196407 -1.49926996 1.42567563 0.46648699 -2.028819561 1.15800154 0.6869989
		 -2.10290003 1.47815692 0.70229065 -2.071334362 1.37374055 0.55324328 -1.6202172 1.64863276 0.76540691
		 -1.74910569 1.61773801 1.15027976 -1.59290957 1.61193097 0.6000706 -1.84916878 1.56598341 0.53079522
		 -2.039987326 1.47700095 1.1682632 -2.25651097 1.7848947 2.42349935 -2.15945244 1.59259713 2.50263739
		 -1.92411673 1.71286798 2.52031183 -2.013713121 1.90897906 2.44173384 -2.15111828 1.844715 3.11389184
		 -2.032178879 1.64676917 2.87717938 -2.085892677 1.61931825 2.87314558 -2.20483208 1.81726408 3.10985756
		 -1.19475222 -0.09904357 3.15342164 -1.99649978 1.83834016 2.31475759 -2.050647497 1.90032828 2.61392665
		 -1.94830966 1.69973481 2.61628962 -1.91116381 1.65383625 2.43401694 -2.14623451 1.59858346 2.60142517
		 -2.10908842 1.5526849 2.41915226 -2.19442439 1.7371887 2.29989338 -2.24857211 1.79917693 2.5990622
		 -1.616979 1.048254967 0.87342036 -1.76443028 1.42336345 0.37924469 -1.88654864 1.61728227 0.68568999
		 -1.92316508 1.59375131 1.19790471 -2.014926672 1.59501779 2.54659843 -2.059035778 1.63304365 2.87516236
		 -2.17797542 1.83098936 3.11187482 -2.15583372 1.88748693 2.43259096 -2.10825062 1.81682765 2.28000259
		 -2.16503239 1.87468016 2.64222074 -1.91429222 1.021217823 0.46258444 -1.9673456 1.22675169 1.046616673
		 -1.93975723 1.81151068 2.49476171 -2.22695971 1.66473281 2.47319245 -2.091648579 1.74574208 2.99553561
		 -2.14536262 1.71829116 2.99150157 -1.98098123 1.80890918 2.61370039;
	setAttr ".vt[166:331]" -1.93459153 1.75310886 2.37571883 -2.16871428 1.63345826 2.35813594
		 -2.21510434 1.68925822 2.5961175 -1.50801933 0.84826148 -0.21743262 -1.79431927 0.83920789 0.15004201
		 -1.87082899 0.98533517 0.084911153 -1.86421835 1.21584535 0.096094295 -1.63336873 1.39233494 -0.18090864
		 -1.36737204 1.33722842 0.19926612 -1.46399915 1.081736207 0.23378311 -1.56054521 1.05594027 -0.35569972
		 -1.91622233 1.62837255 0.89159143 -1.69376218 1.67416286 0.91302884 -2.098265886 1.46276784 0.87842393
		 -1.26913393 1.51387358 -0.38640839 -0.99009234 1.44259131 0.024998054 -0.9161368 1.18709922 0.059515134
		 -1.13056433 0.95070004 -0.39825958 -1.18268025 1.15550625 -0.55523056 -8.8815343e-16 1.30732739 -1.25605762
		 -0.48767889 1.32478046 -1.26767027 0.82059479 2.84875298 0.4064514 0.63759762 2.48846221 1.51420033
		 1.4206748 1.93948674 0.50824475 1.19411373 1.82198656 1.31093442 1.70986485 1.96843565 -0.12748237
		 0.91604215 2.99429107 -0.30936968 0.52564448 2.19958544 1.72252989 0.80068922 1.69581771 1.54125571
		 0.26037869 1.84131849 1.59068251 0.40593821 1.59623468 1.60846555 0.53400326 2.68613434 -1.070446968
		 1.47590101 1.81315804 -0.9442156 1.045430064 1.76584041 -1.1217252 1.20747125 1.091952562 0.49948555
		 0.89304739 1.14972079 1.024265885 1.40420401 1.11319351 -0.12235456 0.62714696 1.15632951 1.24283397
		 1.24921107 1.05163455 -0.68557429 0.90026295 1.23635912 -1.10648394 0.99502438 0.8250559 0.2909047
		 1.12142253 0.787525 -0.14468138 1.031466246 0.75517148 -0.63400841 0.83991808 0.77010357 -0.99806428
		 0.81718576 0.95032346 0.56589544 0.69157135 0.9717989 0.7948975 0.56753182 0.59104264 1.15639555
		 0.34124103 1.068175554 1.41937983 0.24107584 0.68682486 1.58307683 0.5527671 0.94532955 0.50219429
		 0.45381269 0.97124314 0.76923341 0.37625352 0.78852069 0.9818238 0.38131022 1.16317928 1.21232808
		 0.26818323 1.32718277 1.48570633 0.1673502 1.28642416 1.51261926 0.73337781 0.61058563 0.25055325
		 0.84406322 0.42198139 -0.20726925 0.78381014 0.4405331 -0.62567782 0.74976993 0.55224186 -0.8783471
		 0.97969788 0.91334701 -0.010627508 0.381327 0.345698 -0.27320421 0.36339939 0.37655741 -0.68259788
		 0.39883077 0.45406318 -0.93038672 0.43211707 0.12034465 1.31835628 0.35364264 1.050213814 1.4149847
		 0.66111588 0.937922 0.78171986 0.70051426 0.23297516 0.81995749 0.20753542 0.85358739 1.28620768
		 0.36122328 0.60146409 0.20199691 0.39403281 0.82359368 1.22939074 0.56662202 0.71381074 0.71049196
		 0.92990559 1.0041538477 0.077428222 0.23208249 0.94926041 0.56141162 0.20892173 0.95315737 0.78001279
		 0.15510505 0.93455499 1.02201283 0.8645761 0.93629789 -0.032430589 0.23601519 0.084774524 1.52744126
		 0.24663264 0.66839677 1.58799076 0.25452694 0.5821389 1.37548065 0.47805932 0.48159152 0.97962654
		 0.58911765 0.57244879 1.15608144 0.60648137 0.17270426 1.065308332 0.31067142 0.28595138 1.21467793
		 0.8303054 0.97568822 0.046516955 0.4791238 0.33835995 0.94794309 0.15124862 0.26536208 1.40755224
		 0.57059336 0.31937692 0.7183466 0.82869679 0.34892026 0.4779973 0.83612776 0.73611617 0.57852149
		 0.68029737 0.73538446 0.50279897 0.70016557 0.37105441 0.42999768 0.49133998 1.97847533 -1.28691792
		 0.74719095 2.78852654 1.073883533 1.29262877 1.88270104 1.0008701086 1.03663969 1.12333894 0.78460705
		 0.51152664 0.74805337 -1.074584246 0.23607315 1.82386053 1.54807758 0.082361601 1.50542617 1.5764128
		 0.23607303 1.35171461 1.54807746 0.082361601 1.67014909 1.5764128 0.32516104 1.58778739 1.54807746
		 0.11344274 1.58778751 1.5764128 0.20144695 1.76684237 1.12499547 0.28880045 1.66301346 1.12416446
		 0.20729257 1.38175428 1.046368241 0.13176854 1.35122609 1.066525936 0.14382538 1.44396234 1.61519408
		 0.14382543 1.7316128 1.6151942 0.19810142 1.58778751 1.61519408 1.8607229 1.046392798 0.84263587
		 1.98097444 1.26785421 0.3958469 1.50253606 1.377617 1.0027196407 1.49926996 1.42567563 0.46648699
		 2.028819561 1.15800154 0.6869989 2.10290003 1.47815692 0.70229065 2.071334362 1.37374055 0.55324328
		 1.6202172 1.64863276 0.76540691 1.74910569 1.61773801 1.15027976 1.59290957 1.61193097 0.6000706
		 1.84916878 1.56598341 0.53079522 2.039987326 1.47700095 1.1682632 2.25651097 1.7848947 2.42349935
		 2.15945244 1.59259713 2.50263739 1.92411673 1.71286798 2.52031183 2.013713121 1.90897906 2.44173384
		 2.15111828 1.844715 3.11389184 2.032178879 1.64676917 2.87717938 2.085892677 1.61931825 2.87314558
		 2.20483208 1.81726408 3.10985756 1.19475222 -0.09904357 3.15342164 1.99649978 1.83834016 2.31475759
		 2.050647497 1.90032828 2.61392665 1.94830966 1.69973481 2.61628962 1.91116381 1.65383625 2.43401694
		 2.14623451 1.59858346 2.60142517 2.10908842 1.5526849 2.41915226 2.19442439 1.7371887 2.29989338
		 2.24857211 1.79917693 2.5990622 1.616979 1.048254967 0.87342036 1.76443028 1.42336345 0.37924469
		 1.88654864 1.61728227 0.68568999 1.92316508 1.59375131 1.19790471 2.014926672 1.59501779 2.54659843
		 2.059035778 1.63304365 2.87516236 2.17797542 1.83098936 3.11187482 2.15583372 1.88748693 2.43259096
		 2.10825062 1.81682765 2.28000259 2.16503239 1.87468016 2.64222074 1.91429222 1.021217823 0.46258444
		 1.9673456 1.22675169 1.046616673 1.93975723 1.81151068 2.49476171 2.22695971 1.66473281 2.47319245
		 2.091648579 1.74574208 2.99553561 2.14536262 1.71829116 2.99150157 1.98098123 1.80890918 2.61370039
		 1.93459153 1.75310886 2.37571883 2.16871428 1.63345826 2.35813594 2.21510434 1.68925822 2.5961175
		 1.50801933 0.84826148 -0.21743262 1.79431927 0.83920789 0.15004201 1.87082899 0.98533517 0.084911153
		 1.86421835 1.21584535 0.096094295 1.63336873 1.39233494 -0.18090864 1.36737204 1.33722842 0.19926612
		 1.46399915 1.081736207 0.23378311 1.56054521 1.05594027 -0.35569972;
	setAttr ".vt[332:341]" 1.91622233 1.62837255 0.89159143 1.69376218 1.67416286 0.91302884
		 2.098265886 1.46276784 0.87842393 1.26913393 1.51387358 -0.38640839 0.99009234 1.44259131 0.024998054
		 0.9161368 1.18709922 0.059515134 1.13056433 0.95070004 -0.39825958 1.18268025 1.15550625 -0.55523056
		 0.48767889 1.32478046 -1.26767027 -0.011397371 1.54962707 0.89005458;
	setAttr -s 675 ".ed";
	setAttr ".ed[0:165]"  32 103 0 103 18 0 18 5 0 5 32 0 32 34 0 34 104 0 104 103 0
		 37 36 0 36 34 0 32 37 0 42 43 0 43 36 0 37 42 0 36 47 0 47 45 0 45 34 0 33 38 0 38 8 0
		 8 6 0 6 33 0 39 38 0 33 35 0 35 39 0 38 40 0 40 0 0 0 8 0 39 41 0 41 40 0 43 49 0
		 49 47 0 44 50 0 50 49 0 43 44 0 45 105 0 105 104 0 35 46 0 46 48 0 48 39 0 48 64 0
		 64 41 0 51 45 0 47 52 0 52 51 0 49 53 0 53 52 0 50 54 0 54 53 0 51 55 0 55 105 0
		 46 56 0 56 57 0 57 48 0 57 58 0 58 64 0 65 64 0 58 59 0 59 65 0 55 60 0 60 61 0 61 56 0
		 56 55 0 61 62 0 62 57 0 63 58 0 62 63 0 52 67 0 67 66 0 66 51 0 53 68 0 68 67 0 54 69 0
		 69 68 0 68 72 0 72 71 0 71 67 0 69 73 0 73 72 0 72 10 0 10 9 0 9 71 0 1 15 0 15 88 0
		 88 87 0 87 1 0 92 91 0 91 76 0 76 77 0 77 92 0 63 78 0 78 59 0 66 60 0 90 81 0 81 76 0
		 91 90 0 76 99 0 99 98 0 98 77 0 71 79 0 79 66 0 9 11 0 11 79 0 79 83 0 83 60 0 11 2 0
		 2 83 0 83 84 0 84 61 0 84 85 0 85 62 0 85 78 0 2 12 0 12 84 0 12 13 0 13 85 0 13 14 0
		 14 78 0 14 3 0 3 59 0 3 4 0 4 65 0 88 75 0 75 74 0 74 87 0 89 80 0 80 75 0 88 89 0
		 80 90 0 91 75 0 92 74 0 81 100 0 100 99 0 97 81 0 90 95 0 95 97 0 89 96 0 96 93 0
		 93 80 0 93 95 0 97 101 0 101 100 0 82 94 0 94 86 0 86 70 0 70 82 0 99 82 0 70 98 0
		 100 94 0 101 86 0 96 17 0 17 1 0 87 96 0 74 93 0 92 95 0 77 97 0 98 101 0 7 37 0
		 5 7 0 7 19 0 19 42 0 16 89 0 15 16 0 16 17 0 103 33 0 6 18 0 104 35 0 105 46 0;
	setAttr ".ed[166:331]" 42 102 0 102 44 0 73 21 0 21 10 0 19 20 0 20 102 0 54 106 0
		 106 73 0 106 22 0 22 21 0 109 111 0 119 117 0 117 108 0 108 112 0 112 119 0 107 25 0
		 26 109 0 118 119 0 112 110 0 110 118 0 111 107 0 65 116 0 116 115 0 115 64 0 4 29 0
		 29 116 0 41 114 0 114 113 0 113 40 0 113 28 0 28 0 0 115 114 0 111 119 0 118 107 0
		 26 31 0 31 117 0 117 109 0 118 30 0 30 25 0 149 120 0 120 170 0 170 169 0 169 149 0
		 127 129 0 129 130 0 130 151 0 151 127 0 122 127 0 127 178 0 178 128 0 128 122 0 123 129 0
		 122 123 0 124 126 0 126 121 0 121 159 0 159 124 0 153 143 0 143 137 0 137 154 0 154 153 0
		 125 126 0 124 179 0 179 125 0 177 179 0 179 131 0 131 152 0 152 177 0 131 147 0 147 157 0
		 157 152 0 158 148 0 148 139 0 139 155 0 155 158 0 167 146 0 146 133 0 133 162 0 162 167 0
		 168 145 0 145 138 0 138 164 0 164 168 0 138 140 0 140 164 0 128 141 0 141 166 0 166 122 0
		 160 120 0 120 146 0 167 160 0 149 122 0 122 144 0 144 153 0 153 149 0 137 140 0 140 154 0
		 139 140 0 140 155 0 163 136 0 136 140 0 140 163 0 161 134 0 134 144 0 144 166 0 166 161 0
		 156 132 0 132 148 0 158 156 0 133 145 0 168 162 0 165 142 0 142 136 0 163 165 0 147 132 0
		 156 157 0 165 143 0 143 134 0 161 165 0 141 157 0 156 135 0 135 141 0 158 142 0 142 135 0
		 136 155 0 138 154 0 153 146 0 128 152 0 178 177 0 145 153 0 130 150 0 150 121 0 126 130 0
		 123 150 0 120 159 0 159 171 0 171 170 0 161 135 0 163 137 0 132 162 0 168 148 0 131 160 0
		 167 147 0 139 164 0 150 173 0 173 172 0 172 121 0 173 174 0 174 181 0 181 180 0 180 173 0
		 171 172 0 173 176 0 176 171 0 176 169 0 174 175 0 175 182 0 182 181 0 169 175 0 175 122 0
		 174 123 0 151 125 0 177 151 0 124 160 0 176 184 0 184 183 0;
	setAttr ".ed[332:497]" 183 169 0 183 182 0 180 184 0 20 185 0 185 186 0 186 102 0
		 186 50 0 186 106 0 185 22 0 108 23 0 23 110 0 110 24 0 24 30 0 31 27 0 27 108 0 187 5 0
		 18 258 0 258 187 0 258 259 0 259 189 0 189 187 0 192 187 0 189 191 0 191 192 0 197 192 0
		 191 198 0 198 197 0 189 200 0 200 202 0 202 191 0 188 6 0 8 193 0 193 188 0 194 190 0
		 190 188 0 193 194 0 0 195 0 195 193 0 195 196 0 196 194 0 202 204 0 204 198 0 199 198 0
		 204 205 0 205 199 0 259 260 0 260 200 0 194 203 0 203 201 0 201 190 0 196 219 0 219 203 0
		 206 207 0 207 202 0 200 206 0 207 208 0 208 204 0 208 209 0 209 205 0 260 210 0 210 206 0
		 203 212 0 212 211 0 211 201 0 219 213 0 213 212 0 220 214 0 214 213 0 219 220 0 210 211 0
		 211 216 0 216 215 0 215 210 0 212 217 0 217 216 0 218 217 0 213 218 0 206 221 0 221 222 0
		 222 207 0 222 223 0 223 208 0 223 224 0 224 209 0 222 226 0 226 227 0 227 223 0 227 228 0
		 228 224 0 226 9 0 10 227 0 1 242 0 242 243 0 243 15 0 247 232 0 232 231 0 231 246 0
		 246 247 0 214 233 0 233 218 0 215 221 0 245 246 0 231 236 0 236 245 0 232 253 0 253 254 0
		 254 231 0 221 234 0 234 226 0 234 11 0 215 238 0 238 234 0 238 2 0 216 239 0 239 238 0
		 217 240 0 240 239 0 233 240 0 239 12 0 240 13 0 233 14 0 214 3 0 220 4 0 242 229 0
		 229 230 0 230 243 0 244 243 0 230 235 0 235 244 0 230 246 0 245 235 0 229 247 0 254 255 0
		 255 236 0 252 250 0 250 245 0 236 252 0 235 248 0 248 251 0 251 244 0 250 248 0 255 256 0
		 256 252 0 237 225 0 225 241 0 241 249 0 249 237 0 253 225 0 237 254 0 249 255 0 241 256 0
		 251 242 0 17 251 0 248 229 0 250 247 0 252 232 0 256 253 0 192 7 0 197 19 0 244 16 0
		 188 258 0 190 259 0 201 260 0 199 257 0 257 197 0 21 228 0;
	setAttr ".ed[498:663]" 257 20 0 228 261 0 261 209 0 22 261 0 266 264 0 265 23 0
		 23 263 0 263 267 0 267 265 0 274 267 0 263 272 0 272 274 0 25 262 0 24 265 0 265 273 0
		 273 30 0 263 27 0 31 272 0 264 26 0 274 273 0 262 266 0 219 270 0 270 271 0 271 220 0
		 271 29 0 195 268 0 268 269 0 269 196 0 28 268 0 269 270 0 262 273 0 274 266 0 264 272 0
		 304 324 0 324 325 0 325 275 0 275 304 0 282 306 0 306 285 0 285 284 0 284 282 0 277 283 0
		 283 333 0 333 282 0 282 277 0 278 277 0 284 278 0 279 314 0 314 276 0 276 281 0 281 279 0
		 308 309 0 309 292 0 292 298 0 298 308 0 280 334 0 334 279 0 281 280 0 332 307 0 307 286 0
		 286 334 0 334 332 0 307 312 0 312 302 0 302 286 0 313 310 0 310 294 0 294 303 0 303 313 0
		 322 317 0 317 288 0 288 301 0 301 322 0 323 319 0 319 293 0 293 300 0 300 323 0 319 295 0
		 295 293 0 277 321 0 321 296 0 296 283 0 315 322 0 301 275 0 275 315 0 304 308 0 308 299 0
		 299 277 0 277 304 0 309 295 0 295 292 0 310 295 0 295 294 0 318 295 0 295 291 0 291 318 0
		 316 321 0 321 299 0 299 289 0 289 316 0 311 313 0 303 287 0 287 311 0 317 323 0 300 288 0
		 320 318 0 291 297 0 297 320 0 312 311 0 287 302 0 320 316 0 289 298 0 298 320 0 296 290 0
		 290 311 0 312 296 0 290 297 0 297 313 0 310 291 0 309 293 0 301 308 0 307 283 0 332 333 0
		 308 300 0 285 281 0 276 305 0 305 285 0 305 278 0 325 326 0 326 314 0 314 275 0 290 316 0
		 292 318 0 303 323 0 317 287 0 302 322 0 315 286 0 319 294 0 276 327 0 327 328 0 328 305 0
		 328 335 0 335 336 0 336 329 0 329 328 0 326 331 0 331 328 0 327 326 0 324 331 0 336 337 0
		 337 330 0 330 329 0 277 330 0 330 324 0 278 329 0 306 332 0 280 306 0 315 279 0 324 338 0
		 338 339 0 339 331 0 337 338 0 339 335 0 257 340 0 340 185 0 205 340 0;
	setAttr ".ed[664:674]" 261 340 0 271 341 0 341 29 0 268 341 0 341 269 0 115 341 0
		 341 114 0 113 341 0 341 28 0 270 341 0 341 116 0;
	setAttr -s 1332 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.0082098348 0.020248335 0.0055972706
		 -0.0077952975 0.019964064 0.0070281839 2.2102281e-10 0.021952128 0.0051797661 0.0021956037
		 0.022101391 0.003928578 -0.0077952975 0.019964064 0.0070281839 -0.0082098348 0.020248335
		 0.0055972706 -0.021058355 0.0036381253 0.0072135739 -0.021143198 0.0017492519 0.0076571023
		 -0.01542805 0.015588061 -0.0052643646 -0.022145269 0.0042793117 2.0094485e-05 -0.021058355
		 0.0036381253 0.0072135739 -0.0082098348 0.020248335 0.0055972706 -0.010406051 0.016897663
		 -0.010719561 -0.018161552 0.0016194354 -0.013276346 -0.022145269 0.0042793117 2.0094485e-05
		 -0.01542805 0.015588061 -0.0052643646 -0.022145269 0.0042793117 2.0094485e-05 -0.01974766
		 -0.010802099 0.0014389016 -0.016807823 -0.012511651 0.0083475513 -0.021058355 0.0036381253
		 0.0072135739 -0.0066922335 0.014239688 0.016160792 -0.0036219219 0.0048445915 0.021728724
		 1.7036804e-09 0.011561665 0.019366305 -0.0059933588 0.016226858 0.014473928 -0.0096815657
		 -0.0061196876 0.019430457 -0.0036219219 0.0048445915 0.021728724 -0.0066922335 0.014239688
		 0.016160792 -0.017956987 -0.0012632079 0.013589585 -0.0036219219 0.0048445915 0.021728724
		 0.0063975216 -0.012879576 0.017375678 1.6665376e-07 -0.016972745 0.014854354 1.7036804e-09
		 0.011561665 0.019366305 0.0063975216 -0.012879576 0.017375678 -0.0036219219 0.0048445915
		 0.021728724 -0.0096815657 -0.0061196876 0.019430457 0.0073304642 -0.0088523692 0.019406848
		 -0.018161552 0.0016194354 -0.013276346 -0.017752703 -0.0092835501 -0.01036258 -0.01974766
		 -0.010802099 0.0014389016 -0.022145269 0.0042793117 2.0094485e-05 -0.013310016 -0.0030161554
		 -0.01795751 -0.021989053 -0.0026676741 -0.0042533446 -0.017752703 -0.0092835501 -0.01036258
		 -0.018161552 0.0016194354 -0.013276346 -0.021143198 0.0017492519 0.0076571023 -0.021058355
		 0.0036381253 0.0072135739 -0.016807823 -0.012511651 0.0083475513 -0.015235961 -0.014375824
		 0.0083622374 -0.0096815657 -0.0061196876 0.019430457 -0.017956987 -0.0012632079 0.013589585
		 -0.015838029 -0.01289676 0.0095685069 -0.013595155 -0.009215191 0.015458911 -0.013595155
		 -0.009215191 0.015458911 0.0028339596 0.0067605088 0.021330496 0.0073304642 -0.0088523692
		 0.019406848 -0.0096815657 -0.0061196876 0.019430457 -0.011724585 -0.016604213 0.0097754858
		 -0.016807823 -0.012511651 0.0083475513 -0.01974766 -0.010802099 0.0014389016 -0.016816407
		 -0.014898582 0.0019916226 -0.016816407 -0.014898582 0.0019916226 -0.01974766 -0.010802099
		 0.0014389016 -0.017752703 -0.0092835501 -0.01036258 -0.017807111 -0.011563953 -0.0076097082
		 -0.021989053 -0.0026676741 -0.0042533446 -0.018995931 -0.011529827 -0.0038656888
		 -0.017807111 -0.011563953 -0.0076097082 -0.017752703 -0.0092835501 -0.01036258 -0.015235961
		 -0.014375824 0.0083622374 -0.016807823 -0.012511651 0.0083475513 -0.011724585 -0.016604213
		 0.0097754858 -0.0054732468 -0.019375367 0.010166841 -0.013595155 -0.009215191 0.015458911
		 -0.015838029 -0.01289676 0.0095685069 -0.0083472989 -0.020925537 0.0010818676 -0.0015091845
		 -0.022016108 0.0046625375 -0.0015091845 -0.022016108 0.0046625375 -0.014719681 -0.006617262
		 0.015756547 0.0028339596 0.0067605088 0.021330496 -0.013595155 -0.009215191 0.015458911
		 -0.001303489 0.015543796 0.01629163 0.0028339596 0.0067605088 0.021330496 -0.014719681
		 -0.006617262 0.015756547 -0.0048270333 -0.018978352 0.011191418 -0.0054732468 -0.019375367
		 0.010166841 -0.0010166712 -0.019788522 0.01077528 0.00111751 -0.021720197 -0.0059757968
		 -0.0083472989 -0.020925537 0.0010818676 -0.0083472989 -0.020925537 0.0010818676 0.00111751
		 -0.021720197 -0.0059757968 0.0077716294 -0.019798594 -0.0075062211 -0.0015091845
		 -0.022016108 0.0046625375 0.0050406773 -0.02134346 0.0052701188 -0.014719681 -0.006617262
		 0.015756547 -0.0015091845 -0.022016108 0.0046625375 0.0077716294 -0.019798594 -0.0075062211
		 -0.016816407 -0.014898582 0.0019916226 -0.010668661 -0.019575978 0.003418579 -0.0056640287
		 -0.017675148 0.012815374 -0.011724585 -0.016604213 0.0097754858 -0.016816407 -0.014898582
		 0.0019916226 -0.017807111 -0.011563953 -0.0076097082 -0.01151382 -0.018756736 -0.004933829
		 -0.010668661 -0.019575978 0.003418579 -0.017807111 -0.011563953 -0.0076097082 -0.018995931
		 -0.011529827 -0.0038656888 -0.014460189 -0.016181903 -0.0061461185 -0.01151382 -0.018756736
		 -0.004933829 -0.01151382 -0.018756736 -0.004933829 -0.0079257283 -0.021029092 -0.0019198902
		 -3.4074458e-06 -0.022118874 0.0044137663 -0.010668661 -0.019575978 0.003418579 -0.014460189
		 -0.016181903 -0.0061461185 -0.0043630395 -0.0026893253 -0.021964911 -0.0079257283
		 -0.021029092 -0.0019198902 -0.01151382 -0.018756736 -0.004933829 -0.0079257283 -0.021029092
		 -0.0019198902 -1.0111154e-10 -0.019615637 0.011133402 0.0024940718 -0.021671873 0.005730221
		 -3.4074458e-06 -0.022118874 0.0044137663 -3.0576e-09 -0.014191061 0.017531106 -0.016724499
		 0.012492252 0.0085417023 -0.013651502 0.012018251 0.013338815 -0.0062863133 -0.020583499
		 0.0067474195 -0.010450012 -0.019876612 0.0021079483 -0.019662775 0.0089877732 0.0064281444
		 -0.0039959857 0.021690365 0.0047208038 -0.011698964 -0.01922988 0.0014394084 -0.014719681
		 -0.006617262 0.015756547 0.0050406773 -0.02134346 0.0052701188 -0.0037776669 -0.022132901
		 -0.00214237 -0.0048270333 -0.018978352 0.011191418 -0.011724585 -0.016604213 0.0097754858
		 -0.0056640287 -0.017675148 0.012815374 -0.0010166712 -0.019788522 0.01077528 -0.0054732468
		 -0.019375367 0.010166841 0.020052815 0.0061375387 -0.008303077 0.019716172 0.0087803137
		 -0.0065501565 -0.0039959857 0.021690365 0.0047208038 -0.019662775 0.0089877732 0.0064281444
		 -0.011698964 -0.01922988 0.0014394084 -0.0039959857 0.021690365 0.0047208038 -0.01509135
		 0.013950307 0.0092933271 -0.014887375 -0.01651635 -0.0037818183 -0.010668661 -0.019575978
		 0.003418579 -3.4074458e-06 -0.022118874 0.0044137663 0.0014338922 -0.018161179 0.013298173
		 -0.0056640287 -0.017675148 0.012815374 -3.4074458e-06 -0.022118874 0.0044137663 0.0024940718
		 -0.021671873 0.005730221 0.0034256326 -0.018662754 0.012193956 0.0014338922 -0.018161179
		 0.013298173 -0.0056640287 -0.017675148 0.012815374 0.0014338922 -0.018161179 0.013298173
		 0.0016309354 -0.021061637 0.007904009 -0.0010166712 -0.019788522 0.01077528 0.0014338922
		 -0.018161179 0.013298173 0.0034256326 -0.018662754 0.012193956 0.0035980323 -0.020963082
		 0.0075052818 0.0016309354 -0.021061637 0.007904009 -0.0010166712 -0.019788522 0.01077528
		 0.0016309354 -0.021061637 0.007904009 0.0023495245 -0.022135651 -0.0036357364 0.00111751
		 -0.021720197 -0.0059757968 0.00111751 -0.021720197 -0.0059757968 0.0023495245 -0.022135651
		 -0.0036357364;
	setAttr ".n[166:331]" -type "float3"  0.0019087119 -0.022470007 -0.0004260338
		 0.0077716294 -0.019798594 -0.0075062211 0.0050406773 -0.02134346 0.0052701188 0.0077716294
		 -0.019798594 -0.0075062211 0.0019087119 -0.022470007 -0.0004260338 -0.0037776669
		 -0.022132901 -0.00214237 0.0035980323 -0.020963082 0.0075052818 0.00080156274 -0.022458859
		 -0.0019191187 0.0023495245 -0.022135651 -0.0036357364 0.0016309354 -0.021061637 0.007904009
		 0.0023495245 -0.022135651 -0.0036357364 0.00080156274 -0.022458859 -0.0019191187
		 0.0026903725 -0.022367002 -0.0010976961 0.0019087119 -0.022470007 -0.0004260338 0.0019087119
		 -0.022470007 -0.0004260338 0.0026903725 -0.022367002 -0.0010976961 0.0098966556 -0.020009672
		 -0.0032241507 -0.0037776669 -0.022132901 -0.00214237 -0.0037776669 -0.022132901 -0.00214237
		 0.0098966556 -0.020009672 -0.0032241507 0.0059107048 -0.0048511494 0.021219231 -0.0048270333
		 -0.018978352 0.011191418 -0.0048270333 -0.018978352 0.011191418 0.0059107048 -0.0048511494
		 0.021219231 4.6792825e-06 0.018159859 0.013377048 -0.001303489 0.015543796 0.01629163
		 -0.013651502 0.012018251 0.013338815 0.0019891961 0.021001099 0.0079826564 -0.0083884289
		 -0.020629827 0.0035735669 -0.0062863133 -0.020583499 0.0067474195 0.014151063 0.0064940234
		 -0.016318731 0.0064600906 0.013176496 -0.017128136 0.0019891961 0.021001099 0.0079826564
		 -0.013651502 0.012018251 0.013338815 0.0019891961 0.021001099 0.0079826564 0.0064600906
		 0.013176496 -0.017128136 0.020052815 0.0061375387 -0.008303077 -0.019662775 0.0089877732
		 0.0064281444 -0.0083884289 -0.020629827 0.0035735669 0.0019891961 0.021001099 0.0079826564
		 -0.019662775 0.0089877732 0.0064281444 -0.010450012 -0.019876612 0.0021079483 -0.0039959857
		 0.021690365 0.0047208038 0.019716172 0.0087803137 -0.0065501565 0.018203525 0.012320111
		 -0.0050569181 -0.01509135 0.013950307 0.0092933271 0.016577248 -0.012172899 -0.0092596579
		 0.019716172 0.0087803137 -0.0065501565 0.020052815 0.0061375387 -0.008303077 0.018465916
		 -0.0083357794 -0.0099121453 0.014151063 0.0064940234 -0.016318731 0.011406444 -0.0078236088
		 -0.017816007 0.016775992 -0.0071008322 -0.013299256 0.0064600906 0.013176496 -0.017128136
		 0.0064600906 0.013176496 -0.017128136 0.016775992 -0.0071008322 -0.013299256 0.018465916
		 -0.0083357794 -0.0099121453 0.020052815 0.0061375387 -0.008303077 0.019716172 0.0087803137
		 -0.0065501565 0.016577248 -0.012172899 -0.0092596579 0.012072302 -0.013011041 -0.01391755
		 0.018203525 0.012320111 -0.0050569181 -0.011843927 0.019152064 0.0012828673 0.014225196
		 0.016535554 -0.0057397839 0.0068644374 0.0039967247 -0.021109987 -0.017222432 -0.0010681979
		 -0.014524898 -0.01509135 0.013950307 0.0092933271 -0.011843927 0.019152064 0.0012828673
		 -0.017222432 -0.0010681979 -0.014524898 -0.014887375 -0.01651635 -0.0037818183 0.018203525
		 0.012320111 -0.0050569181 0.014225196 0.016535554 -0.0057397839 -0.011843927 0.019152064
		 0.0012828673 -0.01509135 0.013950307 0.0092933271 0.018203525 0.012320111 -0.0050569181
		 0.012072302 -0.013011041 -0.01391755 0.0068644374 0.0039967247 -0.021109987 0.014225196
		 0.016535554 -0.0057397839 0.011406444 -0.0078236088 -0.017816007 5.8208963e-07 -0.006318144
		 -0.02165195 -3.0576e-09 -0.014191061 0.017531106 -0.0062863133 -0.020583499 0.0067474195
		 0.011406444 -0.0078236088 -0.017816007 -0.0062863133 -0.020583499 0.0067474195 -0.0083884289
		 -0.020629827 0.0035735669 0.016775992 -0.0071008322 -0.013299256 0.016775992 -0.0071008322
		 -0.013299256 -0.0083884289 -0.020629827 0.0035735669 -0.010450012 -0.019876612 0.0021079483
		 0.018465916 -0.0083357794 -0.0099121453 0.018465916 -0.0083357794 -0.0099121453 -0.010450012
		 -0.019876612 0.0021079483 -0.011698964 -0.01922988 0.0014394084 0.016577248 -0.012172899
		 -0.0092596579 0.016577248 -0.012172899 -0.0092596579 -0.011698964 -0.01922988 0.0014394084
		 -0.014887375 -0.01651635 -0.0037818183 0.012072302 -0.013011041 -0.01391755 0.0068644374
		 0.0039967247 -0.021109987 0.012072302 -0.013011041 -0.01391755 -0.014887375 -0.01651635
		 -0.0037818183 -0.017222432 -0.0010681979 -0.014524898 0.014278308 0.017217666 0.0028996186
		 -0.01542805 0.015588061 -0.0052643646 -0.0082098348 0.020248335 0.0055972706 0.0021956037
		 0.022101391 0.003928578 0.014278308 0.017217666 0.0028996186 0.0082647279 0.018559409
		 -0.0097963484 -0.010406051 0.016897663 -0.010719561 -0.01542805 0.015588061 -0.0052643646
		 -0.0028473702 0.0092541203 -0.02037105 0.014151063 0.0064940234 -0.016318731 -0.013651502
		 0.012018251 0.013338815 -0.016724499 0.012492252 0.0085417023 5.8208963e-07 -0.006318144
		 -0.02165195 0.011406444 -0.0078236088 -0.017816007 0.014151063 0.0064940234 -0.016318731
		 -0.0028473702 0.0092541203 -0.02037105 -0.0077952975 0.019964064 0.0070281839 -0.0066922335
		 0.014239688 0.016160792 -0.0059933588 0.016226858 0.014473928 2.2102281e-10 0.021952128
		 0.0051797661 -0.017956987 -0.0012632079 0.013589585 -0.0066922335 0.014239688 0.016160792
		 -0.0077952975 0.019964064 0.0070281839 -0.021143198 0.0017492519 0.0076571023 -0.017956987
		 -0.0012632079 0.013589585 -0.021143198 0.0017492519 0.0076571023 -0.015235961 -0.014375824
		 0.0083622374 -0.015838029 -0.01289676 0.0095685069 -0.015838029 -0.01289676 0.0095685069
		 -0.015235961 -0.014375824 0.0083622374 -0.0054732468 -0.019375367 0.010166841 -0.0083472989
		 -0.020925537 0.0010818676 -0.018161552 0.0016194354 -0.013276346 -0.010406051 0.016897663
		 -0.010719561 -0.0097125852 0.012105788 -0.016365865 -0.013310016 -0.0030161554 -0.01795751
		 -0.0079257283 -0.021029092 -0.0019198902 -0.0043630395 -0.0026893253 -0.021964911
		 2.3305161e-10 -0.020608572 0.009165843 -1.0111154e-10 -0.019615637 0.011133402 -0.010406051
		 0.016897663 -0.010719561 0.0082647279 0.018559409 -0.0097963484 0.0069329222 0.0077086785
		 -0.020030893 -0.0097125852 0.012105788 -0.016365865 -0.014460189 -0.016181903 -0.0061461185
		 -0.018995931 -0.011529827 -0.0038656888 0.0028228066 0.011474954 -0.019211534 -0.0043630395
		 -0.0026893253 -0.021964911 -0.0043630395 -0.0026893253 -0.021964911 0.0028228066
		 0.011474954 -0.019211534 7.5907641e-11 -0.022035968 0.0048106215 2.3305161e-10 -0.020608572
		 0.009165843 -0.0024999941 -1.597953e-06 0.022415975 0.0012950739 -0.0013660945 0.022476265
		 0.0023325842 0.001312261 0.022395601 0.0021686691 -3.2666965e-09 0.022450451 -0.0001561012
		 0.0079658693 0.021100864 -0.0024999941 -1.597953e-06 0.022415975 0.0021686691 -3.2666965e-09
		 0.022450451 0.0011517843 -0.0011517945 0.022496058 -0.001303489 0.015543796 0.01629163
		 0.0084545249 0.018728731 -0.0092995446 0.013243988 0.013868151 -0.011874218 0.0028339596
		 0.0067605088 0.021330496;
	setAttr ".n[332:497]" -type "float3"  4.6792825e-06 0.018159859 0.013377048
		 -0.0016239051 0.021931535 -0.0050096484 0.0084545249 0.018728731 -0.0092995446 -0.001303489
		 0.015543796 0.01629163 0.0073304642 -0.0088523692 0.019406848 0.020804545 -0.003774889
		 -0.0078515569 0.012911816 -0.015720524 -0.0097404346 0.0063975216 -0.012879576 0.017375678
		 0.0063975216 -0.012879576 0.017375678 0.012911816 -0.015720524 -0.0097404346 -0.0011387661
		 -0.021123197 -0.0078255804 1.6665376e-07 -0.016972745 0.014854354 0.0028339596 0.0067605088
		 0.021330496 0.013243988 0.013868151 -0.011874218 0.020804545 -0.003774889 -0.0078515569
		 0.0073304642 -0.0088523692 0.019406848 -0.014769144 0.014769155 0.0085129486 -0.020845305
		 -9.8558335e-09 0.0086138938 -0.0024999941 -1.597953e-06 0.022415975 -0.0001561012
		 0.0079658693 0.021100864 -0.014769159 -0.014769145 0.0085129421 -0.009680897 -0.01825048
		 0.0090513043 0.0077658463 0.00057929533 0.021167947 0.0012950739 -0.0013660945 0.022476265
		 3.8359838e-10 0.021880688 -0.0054736957 -0.014769144 0.014769155 0.0085129486 -0.0001561012
		 0.0079658693 0.021100864 -0.0093413014 0.0037290098 0.020188127 -0.020845305 -9.8558335e-09
		 0.0086138938 -0.014769159 -0.014769145 0.0085129421 0.0012950739 -0.0013660945 0.022476265
		 -0.0024999941 -1.597953e-06 0.022415975 0.012107526 -0.017878279 0.0065192669 -0.0067721121
		 -0.020784043 0.0055576926 -0.0090397382 -0.020654939 -0.00061847648 -0.0028660228
		 -0.021473633 -0.006276533 0.008428622 0.020695873 -0.0030602424 0.0085541122 0.019377429
		 -0.0077503747 -0.0075007048 0.017738536 -0.011739237 -0.0080049615 0.020286698 -0.0057529444
		 0.022323146 0.0028762568 0.0014595086 0.008428622 0.020695873 -0.0030602424 0.0042322301
		 0.022000337 0.0026075516 0.0055932798 0.021462381 0.0040996675 0.011777341 0.017297264
		 -0.0084157456 0.0085541122 0.019377429 -0.0077503747 0.008428622 0.020695873 -0.0030602424
		 0.022323146 0.0028762568 0.0014595086 -0.016272496 -0.015367584 0.0027873134 -0.01921884
		 0.004373264 -0.010965248 -0.019493174 0.0040201987 -0.010610375 -0.019225167 -0.011618001
		 -0.0020349259 0.0097675538 -0.019461488 0.0058797305 0.021121642 -0.004450032 0.0065421183
		 0.022505067 0.000420419 -0.0014391165 0.0088017341 -0.015132625 -0.01422178 -0.019999722
		 0.0094455341 -0.0044180173 -0.01921884 0.004373264 -0.010965248 -0.016272496 -0.015367584
		 0.0027873134 -0.021434868 0.0061720512 0.0033433691 -0.0094252005 0.020488525 0.0003343625
		 -0.021434868 0.0061720512 0.0033433691 -0.021772254 0.0058865296 0.00020883669 -0.010078657
		 0.020065436 -0.0021271575 -0.010078657 0.020065436 -0.0021271575 -0.021772254 0.0058865296
		 0.00020883669 -0.0207809 0.0043451423 -0.00761576 -0.0090858778 0.018859539 -0.0083958618
		 -0.010309057 0.020041505 0.00088729395 -0.021850785 0.0053185816 0.0017267703 -0.018684724
		 0.0039735809 0.011992399 -0.0080169793 0.013280854 0.01637293 -0.019554552 -0.01088119
		 -0.002818702 -0.0091382768 -0.020353783 0.0033077628 -0.011812389 -0.019064879 0.0023924396
		 -0.01979585 -0.010750629 -0.0011288115 -0.019432656 -0.010945849 0.0033594929 -0.0094094286
		 -0.020053253 0.0042491853 -0.013193513 -0.017823579 -0.0041203285 -0.019616401 -0.011078498
		 0.0010906758 -0.019616401 -0.011078498 0.0010906758 -0.013193513 -0.017823579 -0.0041203285
		 0.01013195 -0.020068359 0.0018249652 0.022323146 0.0028762568 0.0014595086 0.0055932798
		 0.021462381 0.0040996675 0.0089930575 0.01993984 -0.0055003255 0.020172883 0.01008816
		 9.8406745e-05 -0.019543597 -0.010655724 0.0036371951 -0.0067721121 -0.020784043 0.0055576926
		 -0.0091382768 -0.020353783 0.0033077628 -0.019554552 -0.01088119 -0.002818702 0.012107526
		 -0.017878279 0.0065192669 0.022323146 0.0028762568 0.0014595086 0.02148463 -0.0041703805
		 0.0054538487 0.0097675538 -0.019461488 0.0058797305 0.0088017341 -0.015132625 -0.01422178
		 0.022505067 0.000420419 -0.0014391165 0.01013195 -0.020068359 0.0018249652 -0.0080169793
		 0.013280854 0.01637293 -0.018684724 0.0039735809 0.011992399 0.01013195 -0.020068359
		 0.0018249652 0.020162323 0.0092506511 0.0040782434 0.006186021 0.016683862 0.013860296
		 0.01013195 -0.020068359 0.0018249652 0.020264763 0.0097227348 0.0018798043 0.021935051
		 -0.0018178849 0.0049269409 0.02148463 -0.0041703805 0.0054538487 0.020172883 0.01008816
		 9.8406745e-05 -0.009631264 0.019648969 -0.0054665036 -0.021247411 0.0052367491 -0.0054635028
		 -0.021850785 0.0053185816 0.0017267703 -0.010309057 0.020041505 0.00088729395 -0.01979585
		 -0.010750629 -0.0011288115 -0.011812389 -0.019064879 0.0023924396 -0.0094094286 -0.020053253
		 0.0042491853 -0.019432656 -0.010945849 0.0033594929 0.0196799 0.0090430258 0.0062969131
		 0.0081502283 0.02065091 0.0039798962 0.006186021 0.016683862 0.013860296 0.020162323
		 0.0092506511 0.0040782434 -0.0090858778 0.018859539 -0.0083958618 -0.0207809 0.0043451423
		 -0.00761576 -0.021247411 0.0052367491 -0.0054635028 -0.009631264 0.019648969 -0.0054665036
		 0.0196799 0.0090430258 0.0062969131 0.021121642 -0.004450032 0.0065421183 0.021935051
		 -0.0018178849 0.0049269409 0.020264763 0.0097227348 0.0018798043 0.0097675538 -0.019461488
		 0.0058797305 0.02148463 -0.0041703805 0.0054538487 0.021935051 -0.0018178849 0.0049269409
		 0.021121642 -0.004450032 0.0065421183 0.0089930575 0.01993984 -0.0055003255 -0.0090858778
		 0.018859539 -0.0083958618 -0.009631264 0.019648969 -0.0054665036 0.0087197162 0.020551659
		 -0.0032127472 0.0087197162 0.020551659 -0.0032127472 -0.009631264 0.019648969 -0.0054665036
		 -0.010309057 0.020041505 0.00088729395 0.0081502283 0.02065091 0.0039798962 0.006186021
		 0.016683862 0.013860296 -0.0080169793 0.013280854 0.01637293 0.01013195 -0.020068359
		 0.0018249652 -0.013193513 -0.017823579 -0.0041203285 0.0088017341 -0.015132625 -0.01422178
		 0.01013195 -0.020068359 0.0018249652 -0.0067721121 -0.020784043 0.0055576926 0.012107526
		 -0.017878279 0.0065192669 0.0097675538 -0.019461488 0.0058797305 -0.0091382768 -0.020353783
		 0.0033077628 0.0081502283 0.02065091 0.0039798962 -0.010309057 0.020041505 0.00088729395
		 -0.0080169793 0.013280854 0.01637293 0.006186021 0.016683862 0.013860296 0.0055932798
		 0.021462381 0.0040996675 -0.010078657 0.020065436 -0.0021271575 -0.0090858778 0.018859539
		 -0.0083958618 0.0089930575 0.01993984 -0.0055003255 0.0042322301 0.022000337 0.0026075516
		 -0.0094252005 0.020488525 0.0003343625 -0.010078657 0.020065436 -0.0021271575 0.0055932798
		 0.021462381 0.0040996675 -0.0094094286 -0.020053253 0.0042491853 0.0097675538 -0.019461488
		 0.0058797305 0.0088017341 -0.015132625 -0.01422178 -0.013193513 -0.017823579 -0.0041203285;
	setAttr ".n[498:663]" -type "float3"  -0.0075007048 0.017738536 -0.011739237
		 -0.0098261433 0.016933326 -0.011199789 -0.019493174 0.0040201987 -0.010610375 -0.01921884
		 0.004373264 -0.010965248 0.0085541122 0.019377429 -0.0077503747 0.011777341 0.017297264
		 -0.0084157456 -0.0098261433 0.016933326 -0.011199789 -0.0075007048 0.017738536 -0.011739237
		 -0.0067721121 -0.020784043 0.0055576926 -0.019225167 -0.011618001 -0.0020349259 -0.019584954
		 -0.0075869872 -0.0082215015 -0.0090397382 -0.020654939 -0.00061847648 0.0081502283
		 0.02065091 0.0039798962 0.0196799 0.0090430258 0.0062969131 0.020264763 0.0097227348
		 0.0018798043 0.0087197162 0.020551659 -0.0032127472 0.021121642 -0.004450032 0.0065421183
		 0.0196799 0.0090430258 0.0062969131 0.020162323 0.0092506511 0.0040782434 0.022505067
		 0.000420419 -0.0014391165 -0.021247411 0.0052367491 -0.0054635028 -0.01979585 -0.010750629
		 -0.0011288115 -0.019432656 -0.010945849 0.0033594929 -0.021850785 0.0053185816 0.0017267703
		 0.0087197162 0.020551659 -0.0032127472 0.020264763 0.0097227348 0.0018798043 0.020172883
		 0.01008816 9.8406745e-05 0.0089930575 0.01993984 -0.0055003255 0.022505067 0.000420419
		 -0.0014391165 0.020162323 0.0092506511 0.0040782434 0.01013195 -0.020068359 0.0018249652
		 -0.021772254 0.0058865296 0.00020883669 -0.019543597 -0.010655724 0.0036371951 -0.019554552
		 -0.01088119 -0.002818702 -0.0207809 0.0043451423 -0.00761576 0.022323146 0.0028762568
		 0.0014595086 0.020172883 0.01008816 9.8406745e-05 0.02148463 -0.0041703805 0.0054538487
		 -0.018684724 0.0039735809 0.011992399 -0.019616401 -0.011078498 0.0010906758 0.01013195
		 -0.020068359 0.0018249652 -0.021850785 0.0053185816 0.0017267703 -0.019432656 -0.010945849
		 0.0033594929 -0.019616401 -0.011078498 0.0010906758 -0.018684724 0.0039735809 0.011992399
		 -0.0207809 0.0043451423 -0.00761576 -0.019554552 -0.01088119 -0.002818702 -0.01979585
		 -0.010750629 -0.0011288115 -0.021247411 0.0052367491 -0.0054635028 -0.019493174 0.0040201987
		 -0.010610375 -0.0098261433 0.016933326 -0.011199789 -0.014958459 0.01316919 -0.010561383
		 -0.019837977 0.0063907281 -0.008622013 -0.014958459 0.01316919 -0.010561383 0.014871138
		 0.016954016 0.00036948064 0.0058146906 0.00052713574 0.021786174 -0.013455673 0.014837867
		 -0.010368628 -0.019584954 -0.0075869872 -0.0082215015 -0.019837977 0.0063907281 -0.008622013
		 -0.014958459 0.01316919 -0.010561383 -0.013085466 -0.0048338943 -0.017723711 -0.0090397382
		 -0.020654939 -0.00061847648 -0.019584954 -0.0075869872 -0.0082215015 -0.013085466
		 -0.0048338943 -0.017723711 -0.0028660228 -0.021473633 -0.006276533 0.014871138 0.016954016
		 0.00036948064 0.018435577 -0.0097903246 0.0085442923 0.0090750074 -0.0097772293 0.018187247
		 0.0058146906 0.00052713574 0.021786174 0.022323146 0.0028762568 0.0014595086 0.012107526
		 -0.017878279 0.0065192669 -0.0028660228 -0.021473633 -0.006276533 0.018435577 -0.0097903246
		 0.0085442923 0.011777341 0.017297264 -0.0084157456 0.022323146 0.0028762568 0.0014595086
		 0.018435577 -0.0097903246 0.0085442923 0.014871138 0.016954016 0.00036948064 -0.019225167
		 -0.011618001 -0.0020349259 -0.019493174 0.0040201987 -0.010610375 -0.019837977 0.0063907281
		 -0.008622013 -0.019584954 -0.0075869872 -0.0082215015 -0.0080049615 0.020286698 -0.0057529444
		 -0.019999722 0.0094455341 -0.0044180173 -0.021434868 0.0061720512 0.0033433691 -0.0094252005
		 0.020488525 0.0003343625 0.008428622 0.020695873 -0.0030602424 -0.0080049615 0.020286698
		 -0.0057529444 -0.0094252005 0.020488525 0.0003343625 0.0042322301 0.022000337 0.0026075516
		 -0.0080049615 0.020286698 -0.0057529444 -0.0075007048 0.017738536 -0.011739237 -0.01921884
		 0.004373264 -0.010965248 -0.019999722 0.0094455341 -0.0044180173 -0.021434868 0.0061720512
		 0.0033433691 -0.016272496 -0.015367584 0.0027873134 -0.019543597 -0.010655724 0.0036371951
		 -0.021772254 0.0058865296 0.00020883669 0.0097675538 -0.019461488 0.0058797305 -0.0094094286
		 -0.020053253 0.0042491853 -0.011812389 -0.019064879 0.0023924396 -0.0091382768 -0.020353783
		 0.0033077628 -0.0028660228 -0.021473633 -0.006276533 -0.013085466 -0.0048338943 -0.017723711
		 -0.0096660377 -0.003698997 -0.020040235 0.0012029378 -0.021473279 -0.0067953733 0.018435577
		 -0.0097903246 0.0085442923 -0.0028660228 -0.021473633 -0.006276533 0.0012029378 -0.021473279
		 -0.0067953733 0.0090750074 -0.0097772293 0.018187247 0.011777341 0.017297264 -0.0084157456
		 0.014871138 0.016954016 0.00036948064 -0.014958459 0.01316919 -0.010561383 -0.0098261433
		 0.016933326 -0.011199789 -0.013085466 -0.0048338943 -0.017723711 -0.014958459 0.01316919
		 -0.010561383 -0.013455673 0.014837867 -0.010368628 -0.0096660377 -0.003698997 -0.020040235
		 -0.016272496 -0.015367584 0.0027873134 -0.019225167 -0.011618001 -0.0020349259 -0.0067721121
		 -0.020784043 0.0055576926 -0.019543597 -0.010655724 0.0036371951 -0.0097125852 0.012105788
		 -0.016365865 0.0069329222 0.0077086785 -0.020030893 -0.020322647 -0.0015050853 -0.0096669877
		 -0.021339206 0.0059190826 0.0042811958 -0.013310016 -0.0030161554 -0.01795751 -0.0097125852
		 0.012105788 -0.016365865 -0.021339206 0.0059190826 0.0042811958 -0.021989053 -0.0026676741
		 -0.0042533446 0.0028228066 0.011474954 -0.019211534 -0.018995931 -0.011529827 -0.0038656888
		 -0.021989053 -0.0026676741 -0.0042533446 -0.021339206 0.0059190826 0.0042811958 7.5907641e-11
		 -0.022035968 0.0048106215 0.0028228066 0.011474954 -0.019211534 -0.021339206 0.0059190826
		 0.0042811958 -0.020322647 -0.0015050853 -0.0096669877 0.0011517843 -0.0011517945
		 0.022496058 0.0021686691 -3.2666965e-09 0.022450451 0.0023325842 0.001312261 0.022395601
		 0.0045481096 0.0045511588 0.021617759 -0.0093413014 0.0037290098 0.020188127 -0.0001561012
		 0.0079658693 0.021100864 0.0011517843 -0.0011517945 0.022496058 0.0053512757 -0.0018866117
		 0.021829577 0.0012950739 -0.0013660945 0.022476265 0.0077658463 0.00057929533 0.021167947
		 -0.0054076049 0.0020629617 0.021799721 0.0023325842 0.001312261 0.022395601 0.0082092695
		 0.020248456 0.0055976585 0.0021956037 0.022101391 0.003928578 2.2102281e-10 0.021952128
		 0.0051797661 0.0078469692 0.019944917 0.0070250412 0.0078469692 0.019944917 0.0070250412
		 0.021144625 0.0017232856 0.0076590446 0.021057893 0.0036380149 0.007214976 0.0082092695
		 0.020248456 0.0055976585 0.014968527 0.015686469 -0.0062131877 0.0082092695 0.020248456
		 0.0055976585 0.021057893 0.0036380149 0.007214976 0.02214556 0.0042778477 8.2817951e-06
		 0.010588401 0.016533751 -0.011101655 0.014968527 0.015686469 -0.0062131877 0.02214556
		 0.0042778477 8.2817951e-06 0.018129194 0.0016514857 -0.013316561 0.02214556 0.0042778477
		 8.2817951e-06;
	setAttr ".n[664:829]" -type "float3"  0.021057893 0.0036380149 0.007214976
		 0.0168072 -0.012512149 0.0083480552 0.019746289 -0.010804376 0.0014406326 0.0066929143
		 0.014238833 0.016161265 -0.0059933588 0.016226858 0.014473928 1.7036804e-09 0.011561665
		 0.019366305 0.0036224725 0.0048438576 0.021728797 0.0096833613 -0.0061194049 0.01942965
		 0.017957335 -0.0012631376 0.013589133 0.0066929143 0.014238833 0.016161265 0.0036224725
		 0.0048438576 0.021728797 0.0036224725 0.0048438576 0.021728797 1.7036804e-09 0.011561665
		 0.019366305 1.6665376e-07 -0.016972745 0.014854354 -0.0063758488 -0.012891855 0.017374536
		 -0.0063758488 -0.012891855 0.017374536 -0.0073305629 -0.0088524045 0.019406794 0.0096833613
		 -0.0061194049 0.01942965 0.0036224725 0.0048438576 0.021728797 0.018129194 0.0016514857
		 -0.013316561 0.02214556 0.0042778477 8.2817951e-06 0.019746289 -0.010804376 0.0014406326
		 0.01780246 -0.009282385 -0.010277918 0.013497937 -0.0028215097 -0.017848548 0.018129194
		 0.0016514857 -0.013316561 0.01780246 -0.009282385 -0.010277918 0.021963863 -0.0031035345
		 -0.0040844455 0.021144625 0.0017232856 0.0076590446 0.015237316 -0.014359294 0.00838813
		 0.0168072 -0.012512149 0.0083480552 0.021057893 0.0036380149 0.007214976 0.0096833613
		 -0.0061194049 0.01942965 0.013595626 -0.0092138089 0.015459321 0.0158381 -0.012895982
		 0.0095694354 0.017957335 -0.0012631376 0.013589133 0.013595626 -0.0092138089 0.015459321
		 0.0096833613 -0.0061194049 0.01942965 -0.0073305629 -0.0088524045 0.019406794 -0.0028323887
		 0.0067618014 0.021330295 0.011724585 -0.016604213 0.009775484 0.016816406 -0.014898584
		 0.0019916217 0.019746289 -0.010804376 0.0014406326 0.0168072 -0.012512149 0.0083480552
		 0.016816406 -0.014898584 0.0019916217 0.017807176 -0.011563302 -0.0076105478 0.01780246
		 -0.009282385 -0.010277918 0.019746289 -0.010804376 0.0014406326 0.021963863 -0.0031035345
		 -0.0040844455 0.01780246 -0.009282385 -0.010277918 0.017807176 -0.011563302 -0.0076105478
		 0.018474994 -0.012334279 -0.0039071757 0.015237316 -0.014359294 0.00838813 0.0054732538
		 -0.019375365 0.010166839 0.011724585 -0.016604213 0.009775484 0.0168072 -0.012512149
		 0.0083480552 0.013595626 -0.0092138089 0.015459321 0.0015091856 -0.022016108 0.004662537
		 0.0083472989 -0.020925537 0.0010818689 0.0158381 -0.012895982 0.0095694354 0.0015091856
		 -0.022016108 0.004662537 0.013595626 -0.0092138089 0.015459321 -0.0028323887 0.0067618014
		 0.021330295 0.014719687 -0.0066172667 0.015756538 0.0013034972 0.015543795 0.016291631
		 0.0048257536 -0.018977422 0.011193544 0.014719687 -0.0066172667 0.015756538 -0.0028323887
		 0.0067618014 0.021330295 0.0054732538 -0.019375365 0.010166839 0.0083472989 -0.020925537
		 0.0010818689 -0.00111751 -0.021720197 -0.0059757968 0.0010166717 -0.01978852 0.010775283
		 0.0083472989 -0.020925537 0.0010818689 0.0015091856 -0.022016108 0.004662537 -0.0077716294
		 -0.019798594 -0.0075062211 -0.00111751 -0.021720197 -0.0059757968 -0.0050406754 -0.02134346
		 0.0052701188 -0.0077716294 -0.019798594 -0.0075062211 0.0015091856 -0.022016108 0.004662537
		 0.014719687 -0.0066172667 0.015756538 0.016816406 -0.014898584 0.0019916217 0.011724585
		 -0.016604213 0.009775484 0.0056640287 -0.017675148 0.012815374 0.010668661 -0.019575978
		 0.0034185788 0.016816406 -0.014898584 0.0019916217 0.010668661 -0.019575978 0.0034185788
		 0.011513818 -0.018756738 -0.0049338285 0.017807176 -0.011563302 -0.0076105478 0.017807176
		 -0.011563302 -0.0076105478 0.011513818 -0.018756738 -0.0049338285 0.013997821 -0.016650438
		 -0.0059623653 0.018474994 -0.012334279 -0.0039071757 0.011513818 -0.018756738 -0.0049338285
		 0.010668661 -0.019575978 0.0034185788 3.4073175e-06 -0.022118874 0.0044137668 0.0079254005
		 -0.021029606 -0.001915617 0.013997821 -0.016650438 -0.0059623653 0.011513818 -0.018756738
		 -0.0049338285 0.0079254005 -0.021029606 -0.001915617 0.0060169934 -0.0024450473 -0.021599617
		 0.0079254005 -0.021029606 -0.001915617 3.4073175e-06 -0.022118874 0.0044137668 0.0024940718
		 -0.021671873 0.005730221 -1.0111154e-10 -0.019615637 0.011133402 -3.0576e-09 -0.014191061
		 0.017531106 0.0062862714 -0.020583509 0.0067474348 0.013651357 0.012018322 0.0133389
		 -0.016724499 0.012492252 0.0085417023 0.010450006 -0.019876616 0.0021079429 0.011698961
		 -0.01922988 0.0014394072 0.0039959853 0.021690367 0.0047208015 0.019662779 0.0089877723
		 0.0064281411 0.014719687 -0.0066172667 0.015756538 0.0048257536 -0.018977422 0.011193544
		 0.0037776632 -0.022132901 -0.0021423784 -0.0050406754 -0.02134346 0.0052701188 0.011724585
		 -0.016604213 0.009775484 0.0054732538 -0.019375365 0.010166839 0.0010166717 -0.01978852
		 0.010775283 0.0056640287 -0.017675148 0.012815374 -0.020052815 0.0061375387 -0.008303076
		 0.019662779 0.0089877723 0.0064281411 0.0039959853 0.021690367 0.0047208015 -0.019716172
		 0.0087803137 -0.0065501579 0.011698961 -0.01922988 0.0014394072 0.014886327 -0.016517319
		 -0.0037817103 0.015091174 0.013951181 0.0092923027 0.0039959853 0.021690367 0.0047208015
		 0.010668661 -0.019575978 0.0034185788 0.0056640287 -0.017675148 0.012815374 -0.0014338916
		 -0.018161179 0.013298174 3.4073175e-06 -0.022118874 0.0044137668 3.4073175e-06 -0.022118874
		 0.0044137668 -0.0014338916 -0.018161179 0.013298174 0.0034256326 -0.018662754 0.012193956
		 0.0024940718 -0.021671873 0.005730221 0.0056640287 -0.017675148 0.012815374 0.0010166717
		 -0.01978852 0.010775283 -0.0016309352 -0.021061638 0.007904008 -0.0014338916 -0.018161179
		 0.013298174 -0.0014338916 -0.018161179 0.013298174 -0.0016309352 -0.021061638 0.007904008
		 0.0035980323 -0.020963082 0.0075052818 0.0034256326 -0.018662754 0.012193956 0.0010166717
		 -0.01978852 0.010775283 -0.00111751 -0.021720197 -0.0059757968 -0.0023495245 -0.022135651
		 -0.003635738 -0.0016309352 -0.021061638 0.007904008 -0.00111751 -0.021720197 -0.0059757968
		 -0.0077716294 -0.019798594 -0.0075062211 -0.0019087116 -0.022470007 -0.00042603412
		 -0.0023495245 -0.022135651 -0.003635738 -0.0050406754 -0.02134346 0.0052701188 0.0037776632
		 -0.022132901 -0.0021423784 -0.0019087116 -0.022470007 -0.00042603412 -0.0077716294
		 -0.019798594 -0.0075062211 0.0035980323 -0.020963082 0.0075052818 -0.0016309352 -0.021061638
		 0.007904008 -0.0023495245 -0.022135651 -0.003635738 0.00080156274 -0.022458859 -0.0019191187
		 -0.0023495245 -0.022135651 -0.003635738 -0.0019087116 -0.022470007 -0.00042603412
		 0.0026903725 -0.022367002 -0.0010976961 0.00080156274 -0.022458859 -0.0019191187
		 -0.0019087116 -0.022470007 -0.00042603412 0.0037776632 -0.022132901 -0.0021423784
		 0.0098966556 -0.020009672 -0.0032241507;
	setAttr ".n[830:995]" -type "float3"  0.0026903725 -0.022367002 -0.0010976961
		 0.0037776632 -0.022132901 -0.0021423784 0.0048257536 -0.018977422 0.011193544 0.0059107048
		 -0.0048511494 0.021219231 0.0098966556 -0.020009672 -0.0032241507 0.0048257536 -0.018977422
		 0.011193544 0.0013034972 0.015543795 0.016291631 4.6792825e-06 0.018159859 0.013377048
		 0.0059107048 -0.0048511494 0.021219231 0.013651357 0.012018322 0.0133389 0.0062862714
		 -0.020583509 0.0067474348 0.0083884317 -0.020629827 0.0035735623 -0.0019891949 0.021001099
		 0.0079826554 -0.014151108 0.0064940453 -0.016318683 0.013651357 0.012018322 0.0133389
		 -0.0019891949 0.021001099 0.0079826554 -0.0064600906 0.013176496 -0.017128136 -0.0019891949
		 0.021001099 0.0079826554 0.019662779 0.0089877723 0.0064281411 -0.020052815 0.0061375387
		 -0.008303076 -0.0064600906 0.013176496 -0.017128136 0.0083884317 -0.020629827 0.0035735623
		 0.010450006 -0.019876616 0.0021079429 0.019662779 0.0089877723 0.0064281411 -0.0019891949
		 0.021001099 0.0079826554 0.0039959853 0.021690367 0.0047208015 0.015091174 0.013951181
		 0.0092923027 -0.018203501 0.012320141 -0.0050569335 -0.019716172 0.0087803137 -0.0065501579
		 -0.016577248 -0.012172899 -0.0092596579 -0.018465916 -0.0083357776 -0.0099121453
		 -0.020052815 0.0061375387 -0.008303076 -0.019716172 0.0087803137 -0.0065501579 -0.014151108
		 0.0064940453 -0.016318683 -0.0064600906 0.013176496 -0.017128136 -0.01677599 -0.0071008313
		 -0.013299257 -0.011406447 -0.007823606 -0.017816005 -0.0064600906 0.013176496 -0.017128136
		 -0.020052815 0.0061375387 -0.008303076 -0.018465916 -0.0083357776 -0.0099121453 -0.01677599
		 -0.0071008313 -0.013299257 -0.019716172 0.0087803137 -0.0065501579 -0.018203501 0.012320141
		 -0.0050569335 -0.012072302 -0.013011041 -0.01391755 -0.016577248 -0.012172899 -0.0092596579
		 0.011843929 0.019152062 0.0012828653 0.017222429 -0.0010682011 -0.014524901 -0.0068644369
		 0.0039967224 -0.021109989 -0.014225197 0.016535554 -0.0057397871 0.015091174 0.013951181
		 0.0092923027 0.014886327 -0.016517319 -0.0037817103 0.017222429 -0.0010682011 -0.014524901
		 0.011843929 0.019152062 0.0012828653 -0.018203501 0.012320141 -0.0050569335 0.015091174
		 0.013951181 0.0092923027 0.011843929 0.019152062 0.0012828653 -0.014225197 0.016535554
		 -0.0057397871 -0.018203501 0.012320141 -0.0050569335 -0.014225197 0.016535554 -0.0057397871
		 -0.0068644369 0.0039967224 -0.021109989 -0.012072302 -0.013011041 -0.01391755 -0.011406447
		 -0.007823606 -0.017816005 0.0062862714 -0.020583509 0.0067474348 -3.0576e-09 -0.014191061
		 0.017531106 5.8208963e-07 -0.006318144 -0.02165195 -0.011406447 -0.007823606 -0.017816005
		 -0.01677599 -0.0071008313 -0.013299257 0.0083884317 -0.020629827 0.0035735623 0.0062862714
		 -0.020583509 0.0067474348 -0.01677599 -0.0071008313 -0.013299257 -0.018465916 -0.0083357776
		 -0.0099121453 0.010450006 -0.019876616 0.0021079429 0.0083884317 -0.020629827 0.0035735623
		 -0.018465916 -0.0083357776 -0.0099121453 -0.016577248 -0.012172899 -0.0092596579
		 0.011698961 -0.01922988 0.0014394072 0.010450006 -0.019876616 0.0021079429 -0.016577248
		 -0.012172899 -0.0092596579 -0.012072302 -0.013011041 -0.01391755 0.014886327 -0.016517319
		 -0.0037817103 0.011698961 -0.01922988 0.0014394072 -0.0068644369 0.0039967224 -0.021109989
		 0.017222429 -0.0010682011 -0.014524901 0.014886327 -0.016517319 -0.0037817103 -0.012072302
		 -0.013011041 -0.01391755 0.014278308 0.017217666 0.0028996186 0.0021956037 0.022101391
		 0.003928578 0.0082092695 0.020248456 0.0055976585 0.014968527 0.015686469 -0.0062131877
		 0.014278308 0.017217666 0.0028996186 0.014968527 0.015686469 -0.0062131877 0.010588401
		 0.016533751 -0.011101655 0.0082647279 0.018559409 -0.0097963484 -0.0028473702 0.0092541203
		 -0.02037105 -0.016724499 0.012492252 0.0085417023 0.013651357 0.012018322 0.0133389
		 -0.014151108 0.0064940453 -0.016318683 5.8208963e-07 -0.006318144 -0.02165195 -0.0028473702
		 0.0092541203 -0.02037105 -0.014151108 0.0064940453 -0.016318683 -0.011406447 -0.007823606
		 -0.017816005 0.0078469692 0.019944917 0.0070250412 2.2102281e-10 0.021952128 0.0051797661
		 -0.0059933588 0.016226858 0.014473928 0.0066929143 0.014238833 0.016161265 0.017957335
		 -0.0012631376 0.013589133 0.021144625 0.0017232856 0.0076590446 0.0078469692 0.019944917
		 0.0070250412 0.0066929143 0.014238833 0.016161265 0.017957335 -0.0012631376 0.013589133
		 0.0158381 -0.012895982 0.0095694354 0.015237316 -0.014359294 0.00838813 0.021144625
		 0.0017232856 0.0076590446 0.0158381 -0.012895982 0.0095694354 0.0083472989 -0.020925537
		 0.0010818689 0.0054732538 -0.019375365 0.010166839 0.015237316 -0.014359294 0.00838813
		 0.018129194 0.0016514857 -0.013316561 0.013497937 -0.0028215097 -0.017848548 0.0099703232
		 0.011851415 -0.016397029 0.010588401 0.016533751 -0.011101655 0.0079254005 -0.021029606
		 -0.001915617 -1.0111154e-10 -0.019615637 0.011133402 2.3305161e-10 -0.020608572 0.009165843
		 0.0060169934 -0.0024450473 -0.021599617 0.010588401 0.016533751 -0.011101655 0.0099703232
		 0.011851415 -0.016397029 0.0069329222 0.0077086785 -0.020030893 0.0082647279 0.018559409
		 -0.0097963484 0.013997821 -0.016650438 -0.0059623653 0.0060169934 -0.0024450473 -0.021599617
		 -0.0029894516 0.011378706 -0.019243548 0.018474994 -0.012334279 -0.0039071757 0.0060169934
		 -0.0024450473 -0.021599617 2.3305161e-10 -0.020608572 0.009165843 7.5907641e-11 -0.022035968
		 0.0048106215 -0.0029894516 0.011378706 -0.019243548 -0.0039619342 -0.0015678034 0.022148836
		 0.0045481096 0.0045511588 0.021617759 -0.0019573516 0.001893098 0.022389973 -0.0037647672
		 -2.1876525e-09 0.022238534 0.0028897915 -7.7851379e-09 0.022369064 -0.0037647672
		 -2.1876525e-09 0.022238534 -0.0019573516 0.001893098 0.022389973 0.0022707074 -0.0022706869
		 0.022325182 -0.0093413014 0.0037290098 0.020188127 0.0053512757 -0.0018866117 0.021829577
		 -0.0039619342 -0.0015678034 0.022148836 0.0022706778 0.0022706876 0.022325184 0.0022707074
		 -0.0022706869 0.022325182 -0.0019573516 0.001893098 0.022389973 -0.0054076049 0.0020629617
		 0.021799721 0.0077658463 0.00057929533 0.021167947 0.0022706778 0.0022706876 0.022325184
		 -0.0039619342 -0.0015678034 0.022148836 -0.0037647672 -2.1876525e-09 0.022238534
		 0.0028897915 -7.7851379e-09 0.022369064 0.0013034972 0.015543795 0.016291631 -0.0028323887
		 0.0067618014 0.021330295 -0.018868456 0.012356816 -0.0001280374 -0.0090923049 0.020059654
		 -0.0048647826 4.6792825e-06 0.018159859 0.013377048 0.0013034972 0.015543795 0.016291631
		 -0.0090923049 0.020059654 -0.0048647826 -0.0016239051 0.021931535 -0.0050096484 -0.0073305629
		 -0.0088524045 0.019406794;
	setAttr ".n[996:1161]" -type "float3"  -0.0063758488 -0.012891855 0.017374536
		 -0.013483321 -0.018050563 -0.0010502943 -0.022253174 -0.0024345622 0.0027559095 -0.0063758488
		 -0.012891855 0.017374536 1.6665376e-07 -0.016972745 0.014854354 -0.0011387661 -0.021123197
		 -0.0078255804 -0.013483321 -0.018050563 -0.0010502943 -0.0028323887 0.0067618014
		 0.021330295 -0.0073305629 -0.0088524045 0.019406794 -0.022253174 -0.0024345622 0.0027559095
		 -0.018868456 0.012356816 -0.0001280374 0.014769142 0.014769156 0.0085129514 0.0022706778
		 0.0022706876 0.022325184 0.0028897915 -7.7851379e-09 0.022369064 0.020845303 -9.2994537e-09
		 0.0086138956 0.014769159 -0.014769145 0.0085129431 0.0022707074 -0.0022706869 0.022325182
		 0.0077658463 0.00057929533 0.021167947 -0.009680897 -0.01825048 0.0090513043 3.8359838e-10
		 0.021880688 -0.0054736957 -0.0093413014 0.0037290098 0.020188127 0.0022706778 0.0022706876
		 0.022325184 0.014769142 0.014769156 0.0085129514 0.020845303 -9.2994537e-09 0.0086138956
		 0.0028897915 -7.7851379e-09 0.022369064 0.0022707074 -0.0022706869 0.022325182 0.014769159
		 -0.014769145 0.0085129431 0.0011517843 -0.0011517945 0.022496058 0.0045481096 0.0045511588
		 0.021617759 -0.0039619342 -0.0015678034 0.022148836 0.0053512757 -0.0018866117 0.021829577
		 -0.0054076049 0.0020629617 0.021799721 -0.0019573516 0.001893098 0.022389973 0.0045481096
		 0.0045511588 0.021617759 0.0023325842 0.001312261 0.022395601 -0.012107532 -0.017878277
		 0.0065192631 0.0028660251 -0.021473633 -0.0062765321 0.0090397373 -0.020654939 -0.00061847613
		 0.0067716325 -0.020785181 0.0055540218 -0.008428568 0.020695904 -0.0030601686 0.0080049615
		 0.020286698 -0.0057529439 0.0075007435 0.017738493 -0.011739274 -0.0085541112 0.019377401
		 -0.0077504423 -0.022323115 0.0028764566 0.0014595937 -0.0055934512 0.021462299 0.0040998696
		 -0.0042321836 0.022000324 0.0026077232 -0.008428568 0.020695904 -0.0030601686 -0.011777204
		 0.017297506 -0.0084154392 -0.022323115 0.0028764566 0.0014595937 -0.008428568 0.020695904
		 -0.0030601686 -0.0085541112 0.019377401 -0.0077504423 0.016272578 -0.015367414 0.0027877847
		 0.019225195 -0.011617944 -0.0020349857 0.019493174 0.0040201163 -0.010610406 0.019218838
		 0.0043732859 -0.010965241 -0.0097675556 -0.019461488 0.0058797309 -0.0088017387 -0.015132623
		 -0.01422178 -0.022505067 0.00042042398 -0.0014391199 -0.021121643 -0.0044500334 0.0065421145
		 0.019999722 0.0094455471 -0.0044179908 0.021434888 0.0061719408 0.0033434464 0.016272578
		 -0.015367414 0.0027877847 0.019218838 0.0043732859 -0.010965241 0.0094252005 0.020488525
		 0.00033436425 0.010078658 0.020065436 -0.002127158 0.021772245 0.0058865631 0.00020880524
		 0.021434888 0.0061719408 0.0033434464 0.010078658 0.020065436 -0.002127158 0.0090858778
		 0.018859539 -0.0083958618 0.020780902 0.0043451395 -0.0076157586 0.021772245 0.0058865631
		 0.00020880524 0.010309059 0.020041505 0.00088729401 0.0080169803 0.013280853 0.01637293
		 0.018684724 0.0039735828 0.011992399 0.021850787 0.0053185779 0.0017267688 0.01955455
		 -0.010881194 -0.0028187002 0.019795846 -0.010750637 -0.0011288109 0.011812391 -0.019064877
		 0.0023924396 0.0091382777 -0.020353783 0.0033077619 0.019432653 -0.010945852 0.0033594929
		 0.019616401 -0.011078496 0.0010906766 0.013193513 -0.017823579 -0.0041203271 0.0094094286
		 -0.020053253 0.0042491863 0.019616401 -0.011078496 0.0010906766 -0.010131931 -0.020068368
		 0.0018249667 0.013193513 -0.017823579 -0.0041203271 -0.022323115 0.0028764566 0.0014595937
		 -0.020172881 0.010088166 9.8427503e-05 -0.0089930585 0.01993984 -0.0055003264 -0.0055934512
		 0.021462299 0.0040998696 0.019543553 -0.010655805 0.0036372007 0.01955455 -0.010881194
		 -0.0028187002 0.0091382777 -0.020353783 0.0033077619 0.0067716325 -0.020785181 0.0055540218
		 -0.012107532 -0.017878277 0.0065192631 -0.0097675556 -0.019461488 0.0058797309 -0.021484632
		 -0.0041703871 0.0054538399 -0.022323115 0.0028764566 0.0014595937 -0.0088017387 -0.015132623
		 -0.01422178 -0.010131931 -0.020068368 0.0018249667 -0.022505067 0.00042042398 -0.0014391199
		 0.0080169803 0.013280853 0.01637293 -0.010131931 -0.020068368 0.0018249667 0.018684724
		 0.0039735828 0.011992399 -0.020162325 0.0092506483 0.004078242 -0.010131931 -0.020068368
		 0.0018249667 -0.006186022 0.01668386 0.013860297 -0.020264765 0.009722732 0.0018798033
		 -0.020172881 0.010088166 9.8427503e-05 -0.021484632 -0.0041703871 0.0054538399 -0.021935049
		 -0.0018178921 0.004926939 0.0096312631 0.019648971 -0.0054665017 0.010309059 0.020041505
		 0.00088729401 0.021850787 0.0053185779 0.0017267688 0.021247415 0.0052367416 -0.0054635014
		 0.019795846 -0.010750637 -0.0011288109 0.019432653 -0.010945852 0.0033594929 0.0094094286
		 -0.020053253 0.0042491863 0.011812391 -0.019064877 0.0023924396 -0.019679904 0.0090430211
		 0.0062969103 -0.020162325 0.0092506483 0.004078242 -0.006186022 0.01668386 0.013860297
		 -0.0081502292 0.02065091 0.0039798976 0.0090858778 0.018859539 -0.0083958618 0.0096312631
		 0.019648971 -0.0054665017 0.021247415 0.0052367416 -0.0054635014 0.020780902 0.0043451395
		 -0.0076157586 -0.019679904 0.0090430211 0.0062969103 -0.020264765 0.009722732 0.0018798033
		 -0.021935049 -0.0018178921 0.004926939 -0.021121643 -0.0044500334 0.0065421145 -0.0097675556
		 -0.019461488 0.0058797309 -0.021121643 -0.0044500334 0.0065421145 -0.021935049 -0.0018178921
		 0.004926939 -0.021484632 -0.0041703871 0.0054538399 -0.0089930585 0.01993984 -0.0055003264
		 -0.0087197172 0.020551659 -0.0032127474 0.0096312631 0.019648971 -0.0054665017 0.0090858778
		 0.018859539 -0.0083958618 -0.0087197172 0.020551659 -0.0032127474 -0.0081502292 0.02065091
		 0.0039798976 0.010309059 0.020041505 0.00088729401 0.0096312631 0.019648971 -0.0054665017
		 -0.006186022 0.01668386 0.013860297 -0.010131931 -0.020068368 0.0018249667 0.0080169803
		 0.013280853 0.01637293 0.013193513 -0.017823579 -0.0041203271 -0.010131931 -0.020068368
		 0.0018249667 -0.0088017387 -0.015132623 -0.01422178 0.0067716325 -0.020785181 0.0055540218
		 0.0091382777 -0.020353783 0.0033077619 -0.0097675556 -0.019461488 0.0058797309 -0.012107532
		 -0.017878277 0.0065192631 -0.0081502292 0.02065091 0.0039798976 -0.006186022 0.01668386
		 0.013860297 0.0080169803 0.013280853 0.01637293 0.010309059 0.020041505 0.00088729401
		 -0.0055934512 0.021462299 0.0040998696 -0.0089930585 0.01993984 -0.0055003264 0.0090858778
		 0.018859539 -0.0083958618 0.010078658 0.020065436 -0.002127158 -0.0042321836 0.022000324
		 0.0026077232 -0.0055934512 0.021462299 0.0040998696 0.010078658 0.020065436 -0.002127158
		 0.0094252005 0.020488525 0.00033436425 0.0094094286 -0.020053253 0.0042491863;
	setAttr ".n[1162:1327]" -type "float3"  0.013193513 -0.017823579 -0.0041203271
		 -0.0088017387 -0.015132623 -0.01422178 -0.0097675556 -0.019461488 0.0058797309 0.0075007435
		 0.017738493 -0.011739274 0.019218838 0.0043732859 -0.010965241 0.019493174 0.0040201163
		 -0.010610406 0.0098260781 0.016933162 -0.011200093 -0.0085541112 0.019377401 -0.0077504423
		 0.0075007435 0.017738493 -0.011739274 0.0098260781 0.016933162 -0.011200093 -0.011777204
		 0.017297506 -0.0084154392 0.0067716325 -0.020785181 0.0055540218 0.0090397373 -0.020654939
		 -0.00061847613 0.019584952 -0.0075869896 -0.0082215024 0.019225195 -0.011617944 -0.0020349857
		 -0.0081502292 0.02065091 0.0039798976 -0.0087197172 0.020551659 -0.0032127474 -0.020264765
		 0.009722732 0.0018798033 -0.019679904 0.0090430211 0.0062969103 -0.021121643 -0.0044500334
		 0.0065421145 -0.022505067 0.00042042398 -0.0014391199 -0.020162325 0.0092506483 0.004078242
		 -0.019679904 0.0090430211 0.0062969103 0.021247415 0.0052367416 -0.0054635014 0.021850787
		 0.0053185779 0.0017267688 0.019432653 -0.010945852 0.0033594929 0.019795846 -0.010750637
		 -0.0011288109 -0.0087197172 0.020551659 -0.0032127474 -0.0089930585 0.01993984 -0.0055003264
		 -0.020172881 0.010088166 9.8427503e-05 -0.020264765 0.009722732 0.0018798033 -0.022505067
		 0.00042042398 -0.0014391199 -0.010131931 -0.020068368 0.0018249667 -0.020162325 0.0092506483
		 0.004078242 0.021772245 0.0058865631 0.00020880524 0.020780902 0.0043451395 -0.0076157586
		 0.01955455 -0.010881194 -0.0028187002 0.019543553 -0.010655805 0.0036372007 -0.022323115
		 0.0028764566 0.0014595937 -0.021484632 -0.0041703871 0.0054538399 -0.020172881 0.010088166
		 9.8427503e-05 0.018684724 0.0039735828 0.011992399 -0.010131931 -0.020068368 0.0018249667
		 0.019616401 -0.011078496 0.0010906766 0.021850787 0.0053185779 0.0017267688 0.018684724
		 0.0039735828 0.011992399 0.019616401 -0.011078496 0.0010906766 0.019432653 -0.010945852
		 0.0033594929 0.020780902 0.0043451395 -0.0076157586 0.021247415 0.0052367416 -0.0054635014
		 0.019795846 -0.010750637 -0.0011288109 0.01955455 -0.010881194 -0.0028187002 0.019493174
		 0.0040201163 -0.010610406 0.019837977 0.0063907257 -0.008622013 0.014958384 0.013169175
		 -0.010561511 0.0098260781 0.016933162 -0.011200093 0.014958384 0.013169175 -0.010561511
		 0.013455673 0.014837867 -0.01036863 -0.005814685 0.00052713946 0.021786176 -0.014871012
		 0.016954126 0.00036942755 0.019584952 -0.0075869896 -0.0082215024 0.013085467 -0.0048338934
		 -0.017723711 0.014958384 0.013169175 -0.010561511 0.019837977 0.0063907257 -0.008622013
		 0.0090397373 -0.020654939 -0.00061847613 0.0028660251 -0.021473633 -0.0062765321
		 0.013085467 -0.0048338934 -0.017723711 0.019584952 -0.0075869896 -0.0082215024 -0.014871012
		 0.016954126 0.00036942755 -0.005814685 0.00052713946 0.021786176 -0.0090750065 -0.0097772274
		 0.018187247 -0.018435586 -0.0097903162 0.008544283 -0.022323115 0.0028764566 0.0014595937
		 -0.018435586 -0.0097903162 0.008544283 0.0028660251 -0.021473633 -0.0062765321 -0.012107532
		 -0.017878277 0.0065192631 -0.011777204 0.017297506 -0.0084154392 -0.014871012 0.016954126
		 0.00036942755 -0.018435586 -0.0097903162 0.008544283 -0.022323115 0.0028764566 0.0014595937
		 0.019225195 -0.011617944 -0.0020349857 0.019584952 -0.0075869896 -0.0082215024 0.019837977
		 0.0063907257 -0.008622013 0.019493174 0.0040201163 -0.010610406 0.0080049615 0.020286698
		 -0.0057529439 0.0094252005 0.020488525 0.00033436425 0.021434888 0.0061719408 0.0033434464
		 0.019999722 0.0094455471 -0.0044179908 -0.008428568 0.020695904 -0.0030601686 -0.0042321836
		 0.022000324 0.0026077232 0.0094252005 0.020488525 0.00033436425 0.0080049615 0.020286698
		 -0.0057529439 0.0080049615 0.020286698 -0.0057529439 0.019999722 0.0094455471 -0.0044179908
		 0.019218838 0.0043732859 -0.010965241 0.0075007435 0.017738493 -0.011739274 0.021434888
		 0.0061719408 0.0033434464 0.021772245 0.0058865631 0.00020880524 0.019543553 -0.010655805
		 0.0036372007 0.016272578 -0.015367414 0.0027877847 -0.0097675556 -0.019461488 0.0058797309
		 0.0091382777 -0.020353783 0.0033077619 0.011812391 -0.019064877 0.0023924396 0.0094094286
		 -0.020053253 0.0042491863 0.0028660251 -0.021473633 -0.0062765321 -0.0012029372 -0.021473279
		 -0.0067953733 0.0096660377 -0.0036989963 -0.020040236 0.013085467 -0.0048338934 -0.017723711
		 -0.018435586 -0.0097903162 0.008544283 -0.0090750065 -0.0097772274 0.018187247 -0.0012029372
		 -0.021473279 -0.0067953733 0.0028660251 -0.021473633 -0.0062765321 -0.011777204 0.017297506
		 -0.0084154392 0.0098260781 0.016933162 -0.011200093 0.014958384 0.013169175 -0.010561511
		 -0.014871012 0.016954126 0.00036942755 0.013085467 -0.0048338934 -0.017723711 0.0096660377
		 -0.0036989963 -0.020040236 0.013455673 0.014837867 -0.01036863 0.014958384 0.013169175
		 -0.010561511 0.016272578 -0.015367414 0.0027877847 0.019543553 -0.010655805 0.0036372007
		 0.0067716325 -0.020785181 0.0055540218 0.019225195 -0.011617944 -0.0020349857 0.0099703232
		 0.011851415 -0.016397029 0.021338599 0.0059242067 0.0042771362 -0.020322647 -0.0015050853
		 -0.0096669877 0.0069329222 0.0077086785 -0.020030893 0.013497937 -0.0028215097 -0.017848548
		 0.021963863 -0.0031035345 -0.0040844455 0.021338599 0.0059242067 0.0042771362 0.0099703232
		 0.011851415 -0.016397029 -0.0029894516 0.011378706 -0.019243548 0.021338599 0.0059242067
		 0.0042771362 0.021963863 -0.0031035345 -0.0040844455 0.018474994 -0.012334279 -0.0039071757
		 7.5907641e-11 -0.022035968 0.0048106215 -0.020322647 -0.0015050853 -0.0096669877
		 0.021338599 0.0059242067 0.0042771362 -0.0029894516 0.011378706 -0.019243548 -0.0016239051
		 0.021931535 -0.0050096484 -0.0090923049 0.020059654 -0.0048647826 0.0070618652 0.018095262
		 0.011463745 -0.022253174 -0.0024345622 0.0027559095 -0.013483321 -0.018050563 -0.0010502943
		 0.0070618652 0.018095262 0.011463745 0.020804545 -0.003774889 -0.0078515569 0.013243988
		 0.013868151 -0.011874218 0.0070618652 0.018095262 0.011463745 -0.0011387661 -0.021123197
		 -0.0078255804 0.012911816 -0.015720524 -0.0097404346 0.0070618652 0.018095262 0.011463745
		 -0.0090923049 0.020059654 -0.0048647826 -0.018868456 0.012356816 -0.0001280374 0.0070618652
		 0.018095262 0.011463745 0.0084545249 0.018728731 -0.0092995446 -0.0016239051 0.021931535
		 -0.0050096484 0.0070618652 0.018095262 0.011463745 0.012911816 -0.015720524 -0.0097404346
		 0.020804545 -0.003774889 -0.0078515569 0.0070618652 0.018095262 0.011463745 -0.018868456
		 0.012356816 -0.0001280374 -0.022253174 -0.0024345622 0.0027559095 0.0070618652 0.018095262
		 0.011463745 -0.013483321 -0.018050563 -0.0010502943 -0.0011387661 -0.021123197 -0.0078255804;
	setAttr ".n[1328:1331]" -type "float3"  0.0070618652 0.018095262 0.011463745
		 0.013243988 0.013868151 -0.011874218 0.0084545249 0.018728731 -0.0092995446 0.0070618652
		 0.018095262 0.011463745;
	setAttr -s 340 -ch 1332 ".fc[0:339]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 187 126 97 172
		mu 1 4 32 103 18 5
		f 4 -1 4 5 6
		mu 0 4 126 187 173 138
		mu 1 4 103 32 34 104
		f 4 7 8 -5 9
		mu 0 4 223 214 173 187
		mu 1 4 37 36 34 32
		f 4 10 11 -8 12
		mu 0 4 259 243 214 223
		mu 1 4 42 43 36 37
		f 4 13 14 15 -9
		mu 0 4 214 220 166 173
		mu 1 4 36 47 45 34
		f 4 16 17 18 19
		mu 0 4 98 70 46 72
		mu 1 4 33 38 8 6
		f 4 20 -17 21 22
		mu 0 4 80 70 98 107
		mu 1 4 39 38 33 35
		f 4 23 24 25 -18
		mu 0 4 70 40 23 46
		mu 1 4 38 40 0 8
		f 4 -24 -21 26 27
		mu 0 4 40 70 80 48
		mu 1 4 40 38 39 41
		f 4 28 29 -14 -12
		mu 0 4 243 241 220 214
		mu 1 4 43 49 47 36
		f 4 30 31 -29 32
		mu 0 4 274 292 241 243
		mu 1 4 44 50 49 43
		f 4 -6 -16 33 34
		mu 0 4 138 173 166 134
		mu 1 4 104 34 45 105
		f 4 -23 35 36 37
		mu 0 4 80 107 102 68
		mu 1 4 39 35 46 48
		f 4 38 39 -27 -38
		mu 0 4 68 34 48 80
		mu 1 4 48 64 41 39
		f 4 40 -15 41 42
		mu 0 4 208 185 225 232
		mu 1 4 51 45 47 52
		f 4 -42 -30 43 44
		mu 0 4 232 225 249 245
		mu 1 4 52 47 49 53
		f 4 45 46 -44 -32
		mu 0 4 299 270 245 249
		mu 1 4 50 54 53 49
		f 4 -34 -41 47 48
		mu 0 4 157 185 208 183
		mu 1 4 105 45 51 55
		f 4 -37 49 50 51
		mu 0 4 59 84 86 54
		mu 1 4 48 46 56 57
		f 4 52 53 -39 -52
		mu 0 4 54 30 24 59
		mu 1 4 57 58 64 48
		f 4 54 -54 55 56
		mu 0 4 18 24 30 10
		mu 1 4 65 64 58 59
		f 4 57 58 59 60
		mu 0 4 183 192 164 161
		mu 1 4 55 60 61 56
		f 4 -60 61 62 -51
		mu 0 4 206 216 230 228
		mu 1 4 56 61 62 57
		f 4 63 -53 -63 64
		mu 0 4 239 247 228 230
		mu 1 4 63 58 57 62
		f 4 65 66 67 -43
		mu 0 4 232 234 212 208
		mu 1 4 52 67 66 51
		f 4 -45 68 69 -66
		mu 0 4 232 245 251 234
		mu 1 4 52 53 68 67
		f 4 -47 70 71 -69
		mu 0 4 245 270 268 251
		mu 1 4 53 54 69 68
		f 4 72 73 74 -70
		mu 0 4 251 257 236 234
		mu 1 4 68 72 71 67
		f 4 75 76 -73 -72
		mu 0 4 268 283 257 251
		mu 1 4 69 73 72 68
		f 4 77 78 79 -74
		mu 0 4 257 263 238 236
		mu 1 4 72 10 9 71
		f 4 80 81 82 83
		mu 0 4 20 32 52 44
		mu 1 4 1 15 88 87
		f 4 84 85 86 87
		mu 0 4 94 92 147 118
		mu 1 4 92 91 76 77
		f 4 -64 88 89 -56
		mu 0 4 247 239 264 272
		mu 1 4 58 63 78 59
		f 4 -68 90 -58 -48
		mu 0 4 208 212 192 183
		mu 1 4 51 66 60 55
		f 4 91 92 -86 93
		mu 0 4 82 114 124 77
		mu 1 4 90 81 76 91
		f 4 -87 94 95 96
		mu 0 4 118 147 153 155
		mu 1 4 77 76 99 98
		f 4 -75 97 98 -67
		mu 0 4 234 236 218 212
		mu 1 4 67 71 79 66
		f 4 -80 99 100 -98
		mu 0 4 236 238 227 218
		mu 1 4 71 9 11 79
		f 4 -99 101 102 -91
		mu 0 4 212 218 181 192
		mu 1 4 66 79 83 60
		f 4 -101 103 104 -102
		mu 0 4 218 227 189 181
		mu 1 4 79 11 2 83
		f 4 -103 105 106 -59
		mu 0 4 192 181 159 164
		mu 1 4 60 83 84 61
		f 4 -107 107 108 -62
		mu 0 4 164 159 131 142
		mu 1 4 61 84 85 62
		f 4 -65 -109 109 -89
		mu 0 4 90 142 131 100
		mu 1 4 63 62 85 78
		f 4 110 111 -106 -105
		mu 0 4 189 163 159 181
		mu 1 4 2 12 84 83
		f 4 -112 112 113 -108
		mu 0 4 159 163 149 131
		mu 1 4 84 12 13 85
		f 4 -114 114 115 -110
		mu 0 4 131 149 110 100
		mu 1 4 85 13 14 78
		f 4 -116 116 117 -90
		mu 0 4 264 289 307 272
		mu 1 4 78 14 3 59
		f 4 -118 118 119 -57
		mu 0 4 10 3 7 18
		mu 1 4 59 3 4 65
		f 4 120 121 122 -83
		mu 0 4 52 73 64 44
		mu 1 4 88 75 74 87
		f 4 123 124 -121 125
		mu 0 4 26 50 36 12
		mu 1 4 89 80 75 88
		f 4 -125 126 -94 127
		mu 0 4 36 50 82 77
		mu 1 4 75 80 90 91
		f 4 -122 -128 -85 128
		mu 0 4 64 73 92 94
		mu 1 4 74 75 91 92
		f 4 -93 129 130 -95
		mu 0 4 124 114 140 151
		mu 1 4 76 81 100 99
		f 4 131 -92 132 133
		mu 0 4 88 114 82 75
		mu 1 4 97 81 90 95
		f 4 134 135 136 -124
		mu 0 4 26 21 42 50
		mu 1 4 89 96 93 80
		f 4 -137 137 -133 -127
		mu 0 4 50 42 75 82
		mu 1 4 80 93 95 90
		f 4 -132 138 139 -130
		mu 0 4 114 88 116 140
		mu 1 4 81 97 101 100
		f 4 140 141 142 143
		mu 0 4 177 168 170 175
		mu 1 4 82 94 86 70
		f 4 144 -144 145 -96
		mu 0 4 153 204 210 155
		mu 1 4 99 82 70 98
		f 4 146 -141 -145 -131
		mu 0 4 140 168 177 151
		mu 1 4 100 94 82 99
		f 4 -140 147 -142 -147
		mu 0 4 140 116 170 168
		mu 1 4 100 101 86 94
		f 4 148 149 -84 150
		mu 0 4 340 326 320 342
		mu 1 4 96 17 1 87
		f 4 -151 -123 151 -136
		mu 0 4 340 342 362 364
		mu 1 4 96 87 74 93
		f 4 -152 -129 152 -138
		mu 0 4 364 362 385 394
		mu 1 4 93 74 92 95
		f 4 -153 -88 153 -134
		mu 0 4 394 385 408 420
		mu 1 4 95 92 77 97
		f 4 -154 -97 154 -139
		mu 0 4 420 408 449 453
		mu 1 4 97 77 98 101
		f 4 -148 -155 -146 -143
		mu 0 4 503 451 447 517
		mu 1 4 86 101 98 70
		f 4 155 -10 -4 156
		mu 0 4 222 223 187 172
		mu 1 4 7 37 32 5
		f 4 157 158 -13 -156
		mu 0 4 222 276 259 223
		mu 1 4 7 19 42 37
		f 4 159 -126 -82 160
		mu 0 4 8 26 12 0
		mu 1 4 16 89 88 15
		f 4 -149 -135 -160 161
		mu 0 4 9 21 26 8
		mu 1 4 17 96 89 16
		f 4 162 -20 163 -2
		mu 0 4 126 98 72 97
		mu 1 4 103 33 6 18
		f 4 -22 -163 -7 164
		mu 0 4 107 98 126 138
		mu 1 4 35 33 103 104
		f 4 -165 -35 165 -36
		mu 0 4 107 138 134 102
		mu 1 4 35 104 105 46
		f 4 -166 -49 -61 -50
		mu 0 4 136 157 183 161
		mu 1 4 46 105 55 56
		f 4 -11 166 167 -33
		mu 0 4 243 259 321 274
		mu 1 4 43 42 102 44
		f 4 -77 168 169 -78
		mu 0 4 257 283 298 263
		mu 1 4 72 73 21 10
		f 4 -159 170 171 -167
		mu 0 4 259 276 347 321
		mu 1 4 42 19 20 102
		f 4 -71 172 173 -76
		mu 0 4 268 270 308 283
		mu 1 4 69 54 106 73
		f 4 -174 174 175 -169
		mu 0 4 283 308 338 298
		mu 1 4 73 106 22 21
		f 4 177 178 179 180
		mu 0 4 122 105 112 120
		mu 1 4 119 117 108 112
		f 4 183 -181 184 185
		mu 0 4 145 122 120 129
		mu 1 4 118 119 112 110
		f 4 187 188 189 -55
		mu 0 4 367 369 356 352
		mu 1 4 65 116 115 64
		f 4 190 191 -188 -120
		mu 0 4 378 379 369 367
		mu 1 4 4 29 116 65
		f 4 192 193 194 -28
		mu 0 4 536 539 511 499
		mu 1 4 41 114 113 40
		f 4 -195 195 196 -25
		mu 0 4 499 511 482 477
		mu 1 4 40 113 28 0
		f 4 -190 197 -193 -40
		mu 0 4 352 356 331 329
		mu 1 4 64 115 114 41
		f 4 -187 198 -184 199
		mu 0 4 38 16 14 28
		mu 1 4 107 111 119 118
		f 4 -183 200 201 202
		mu 0 4 1 545 4 5
		mu 1 4 109 26 31 117
		f 4 -182 -200 203 204
		mu 0 4 47 38 28 33
		mu 1 4 25 107 118 30
		f 4 -177 -203 -178 -199
		mu 0 4 16 1 5 14
		mu 1 4 111 109 117 119
		f 4 205 206 207 208
		mu 0 4 501 532 534 513
		mu 1 4 300 338 339 301
		f 4 209 210 211 212
		mu 0 4 303 317 315 305
		mu 1 4 278 292 326 296
		f 4 213 214 215 216
		mu 0 4 290 303 287 261
		mu 1 4 270 278 283 279
		f 4 217 -210 -214 218
		mu 0 4 336 317 303 290
		mu 1 4 242 244 278 270
		f 4 219 220 221 222
		mu 0 4 301 310 327 323
		mu 1 4 386 388 398 394
		f 4 223 224 225 226
		mu 0 4 508 520 515 509
		mu 1 4 308 261 259 309
		f 4 227 -220 228 229
		mu 0 4 296 310 301 279
		mu 1 4 364 388 356 370
		f 4 230 231 232 233
		mu 0 4 281 279 255 253
		mu 1 4 318 370 365 315
		f 4 -233 234 235 236
		mu 0 4 253 255 196 202
		mu 1 4 315 365 368 316
		f 4 237 238 239 240
		mu 0 4 455 463 411 405
		mu 1 4 317 369 366 297
		f 4 241 242 243 244
		mu 0 4 471 485 478 467
		mu 1 4 354 347 343 359
		f 4 245 246 247 248
		mu 0 4 465 473 437 425
		mu 1 4 336 346 344 334
		f 3 -248 249 250
		mu 0 3 425 437 409
		mu 1 3 334 344 357
		f 4 -217 251 252 253
		mu 0 4 290 261 200 198
		mu 1 4 270 279 282 249
		f 4 254 255 -242 256
		mu 0 4 266 294 179 190
		mu 1 4 358 342 347 354
		f 4 257 258 259 260
		mu 0 4 501 475 489 497
		mu 1 4 307 258 262 308
		f 3 -226 261 262
		mu 0 3 527 530 529
		mu 1 3 309 259 306
		f 3 -240 263 264
		mu 0 3 405 411 409
		mu 1 3 297 366 314
		f 3 265 266 267
		mu 0 3 391 403 409
		mu 1 3 248 280 271
		f 4 268 269 270 271
		mu 0 4 417 401 395 413
		mu 1 4 272 246 262 249
		f 4 272 273 -238 274
		mu 0 4 443 459 461 445
		mu 1 4 324 378 369 317
		f 4 -244 275 -246 276
		mu 0 4 467 478 483 469
		mu 1 4 359 343 346 336
		f 4 277 278 -266 279
		mu 0 4 359 365 403 391
		mu 1 4 268 276 280 248
		f 4 -236 280 -273 281
		mu 0 4 441 457 459 443
		mu 1 4 316 368 378 324
		f 4 282 283 -269 284
		mu 0 4 415 399 401 417
		mu 1 4 268 261 246 272
		f 4 -260 -270 -284 -224
		mu 0 4 389 395 401 399
		mu 1 4 308 262 246 261
		f 4 285 -282 286 287
		mu 0 4 429 441 443 431
		mu 1 4 282 316 324 290
		f 4 -287 -275 288 289
		mu 0 4 431 443 445 433
		mu 1 4 290 324 317 276
		f 3 290 -265 -267
		mu 0 3 403 405 409
		mu 1 3 280 297 281
		f 3 291 -263 -250
		mu 0 3 526 527 529
		mu 1 3 344 309 345
		f 4 -206 -261 292 -256
		mu 0 4 532 501 497 521
		mu 1 4 342 307 308 347
		f 4 -289 -241 -291 -279
		mu 0 4 365 376 405 403
		mu 1 4 276 317 297 280
		f 4 293 -237 -286 -252
		mu 0 4 261 253 202 200
		mu 1 4 279 315 316 282
		f 4 294 -234 -294 -216
		mu 0 4 287 281 253 261
		mu 1 4 283 318 315 279
		f 4 295 -227 -292 -247
		mu 0 4 496 508 509 505
		mu 1 4 346 308 309 344
		f 4 296 297 -221 298
		mu 0 4 315 334 327 310
		mu 1 4 326 328 382 380
		f 4 -218 299 -297 -211
		mu 0 4 317 336 334 315
		mu 1 4 292 294 328 326
		f 4 300 301 302 -207
		mu 0 4 532 541 543 534
		mu 1 4 390 394 395 391
		f 4 -278 -285 303 -290
		mu 0 4 433 415 417 431
		mu 1 4 276 268 272 290
		f 4 -283 -280 304 -225
		mu 0 4 354 359 391 382
		mu 1 4 261 268 248 259
		f 4 305 -277 306 -274
		mu 0 4 459 467 469 461
		mu 1 4 378 359 336 369
		f 4 -304 -272 -253 -288
		mu 0 4 431 417 413 429
		mu 1 4 290 272 249 282
		f 3 -305 -268 -262
		mu 0 3 382 391 409
		mu 1 3 259 248 260
		f 4 307 -257 308 -235
		mu 0 4 255 266 190 196
		mu 1 4 365 358 354 368
		f 3 -254 -271 -259
		mu 0 3 290 198 194
		mu 1 3 270 249 262
		f 3 309 -251 -264
		mu 0 3 411 425 409
		mu 1 3 366 334 367
		f 4 -307 -249 -310 -239
		mu 0 4 463 465 425 411
		mu 1 4 369 336 334 366
		f 4 -309 -245 -306 -281
		mu 0 4 457 471 467 459
		mu 1 4 368 354 359 378
		f 4 -298 310 311 312
		mu 0 4 327 334 386 348
		mu 1 4 382 328 329 383
		f 4 313 314 315 316
		mu 0 4 386 374 421 427
		mu 1 4 329 237 238 330
		f 4 317 -312 318 319
		mu 0 4 350 348 386 397
		mu 1 4 214 216 226 222
		f 4 -303 -320 320 -208
		mu 0 4 534 543 523 513
		mu 1 4 212 214 222 218
		f 4 321 322 323 -315
		mu 0 4 374 372 423 421
		mu 1 4 237 231 232 238
		f 4 -258 -209 324 325
		mu 0 4 475 501 513 487
		mu 1 4 252 300 301 253
		f 4 -219 -326 -322 326
		mu 0 4 336 290 372 374
		mu 1 4 236 230 231 237
		f 4 -222 -313 -318 -302
		mu 0 4 323 327 348 350
		mu 1 4 394 398 399 395
		f 4 327 -230 -231 328
		mu 0 4 305 296 279 281
		mu 1 4 296 364 370 318
		f 4 -213 -329 -295 -215
		mu 0 4 303 305 281 287
		mu 1 4 278 296 318 283
		f 4 -212 -299 -228 -328
		mu 0 4 305 315 310 296
		mu 1 4 296 326 380 364
		f 4 -229 329 -308 -232
		mu 0 4 279 301 266 255
		mu 1 4 370 356 358 365
		f 4 -296 -276 -243 -293
		mu 0 4 493 483 478 485
		mu 1 4 308 346 343 347
		f 4 -321 330 331 332
		mu 0 4 513 523 491 480
		mu 1 4 218 222 223 219
		f 4 -325 -333 333 -323
		mu 0 4 487 513 480 435
		mu 1 4 253 301 302 254
		f 4 -327 -314 -311 -300
		mu 0 4 336 374 386 334
		mu 1 4 236 237 329 328
		f 4 -319 -317 334 -331
		mu 0 4 397 386 427 439
		mu 1 4 222 226 227 223
		f 4 -223 -301 -255 -330
		mu 0 4 301 323 285 266
		mu 1 4 386 394 342 358
		f 4 -172 335 336 337
		mu 0 4 321 347 388 343
		mu 1 4 102 20 120 121
		f 4 -168 -338 338 -31
		mu 0 4 274 321 343 292
		mu 1 4 44 102 121 50
		f 4 -173 -46 -339 339
		mu 0 4 308 270 299 345
		mu 1 4 106 54 50 121
		f 4 -175 -340 -337 340
		mu 0 4 338 308 345 381
		mu 1 4 22 106 121 120
		f 4 -185 -180 341 342
		mu 0 4 67 63 58 62
		mu 1 4 110 112 108 23
		f 4 -204 -186 343 344
		mu 0 4 150 144 128 133
		mu 1 4 30 118 110 24
		f 4 -202 345 346 -179
		mu 0 4 104 96 109 111
		mu 1 4 117 31 27 108
		f 4 347 -3 348 349
		mu 0 4 188 172 97 127
		mu 1 4 122 5 18 193
		f 4 350 351 352 -350
		mu 0 4 127 139 174 188
		mu 1 4 193 194 124 122
		f 4 353 -353 354 355
		mu 0 4 224 188 174 215
		mu 1 4 127 122 124 126
		f 4 356 -356 357 358
		mu 0 4 260 224 215 244
		mu 1 4 132 127 126 133
		f 4 -355 359 360 361
		mu 0 4 215 174 167 221
		mu 1 4 126 124 135 137
		f 4 362 -19 363 364
		mu 0 4 99 72 46 71
		mu 1 4 123 6 8 128
		f 4 365 366 -365 367
		mu 0 4 81 108 99 71
		mu 1 4 129 125 123 128
		f 4 -364 -26 368 369
		mu 0 4 71 46 23 41
		mu 1 4 128 8 0 130
		f 4 370 371 -368 -370
		mu 0 4 41 49 81 71
		mu 1 4 130 131 129 128
		f 4 -358 -362 372 373
		mu 0 4 244 215 221 242
		mu 1 4 133 126 137 139
		f 4 374 -374 375 376
		mu 0 4 275 244 242 293
		mu 1 4 134 133 139 140
		f 4 377 378 -360 -352
		mu 0 4 139 135 167 174
		mu 1 4 194 195 135 124
		f 4 379 380 381 -366
		mu 0 4 81 69 103 108
		mu 1 4 129 138 136 125
		f 4 -380 -372 382 383
		mu 0 4 69 81 49 35
		mu 1 4 138 129 131 154
		f 4 384 385 -361 386
		mu 0 4 209 233 226 186
		mu 1 4 141 142 137 135
		f 4 387 388 -373 -386
		mu 0 4 233 246 250 226
		mu 1 4 142 143 139 137
		f 4 -376 -389 389 390
		mu 0 4 300 250 246 271
		mu 1 4 140 139 143 144
		f 4 391 392 -387 -379
		mu 0 4 158 184 209 186
		mu 1 4 195 145 141 135
		f 4 393 394 395 -381
		mu 0 4 60 55 87 85
		mu 1 4 138 147 146 136
		f 4 -394 -384 396 397
		mu 0 4 55 60 25 31
		mu 1 4 147 138 154 148
		f 4 398 399 -397 400
		mu 0 4 19 11 31 25
		mu 1 4 155 149 148 154
		f 4 401 402 403 404
		mu 0 4 184 162 165 193
		mu 1 4 145 146 151 150
		f 4 -395 405 406 -403
		mu 0 4 207 229 231 217
		mu 1 4 146 147 152 151
		f 4 407 -406 -398 408
		mu 0 4 240 231 229 248
		mu 1 4 153 152 147 148
		f 4 -385 409 410 411
		mu 0 4 233 209 213 235
		mu 1 4 142 141 156 157
		f 4 -412 412 413 -388
		mu 0 4 233 235 252 246
		mu 1 4 142 157 158 143
		f 4 -414 414 415 -390
		mu 0 4 246 252 269 271
		mu 1 4 143 158 159 144
		f 4 -413 416 417 418
		mu 0 4 252 235 237 258
		mu 1 4 158 157 161 162
		f 4 -415 -419 419 420
		mu 0 4 269 252 258 284
		mu 1 4 159 158 162 163
		f 4 -418 421 -79 422
		mu 0 4 258 237 238 263
		mu 1 4 162 161 9 10
		f 4 423 424 425 -81
		mu 0 4 20 45 53 32
		mu 1 4 1 177 178 15
		f 4 426 427 428 429
		mu 0 4 95 119 148 93
		mu 1 4 182 167 166 181
		f 4 -400 430 431 -409
		mu 0 4 248 273 265 240
		mu 1 4 148 149 168 153
		f 4 -393 -405 432 -410
		mu 0 4 209 184 193 213
		mu 1 4 141 145 150 156
		f 4 433 -429 434 435
		mu 0 4 83 78 125 115
		mu 1 4 180 181 166 171
		f 4 436 437 438 -428
		mu 0 4 119 156 154 148
		mu 1 4 167 188 189 166
		f 4 -411 439 440 -417
		mu 0 4 235 213 219 237
		mu 1 4 157 156 169 161
		f 4 -441 441 -100 -422
		mu 0 4 237 219 227 238
		mu 1 4 161 169 11 9
		f 4 -433 442 443 -440
		mu 0 4 213 193 182 219
		mu 1 4 156 150 173 169
		f 4 -444 444 -104 -442
		mu 0 4 219 182 189 227
		mu 1 4 169 173 2 11
		f 4 -404 445 446 -443
		mu 0 4 193 165 160 182
		mu 1 4 150 151 174 173
		f 4 -407 447 448 -446
		mu 0 4 165 143 132 160
		mu 1 4 151 152 175 174
		f 4 -432 449 -448 -408
		mu 0 4 91 101 132 143
		mu 1 4 153 168 175 152
		f 4 -445 -447 450 -111
		mu 0 4 189 182 160 163
		mu 1 4 2 173 174 12
		f 4 -449 451 -113 -451
		mu 0 4 160 132 149 163
		mu 1 4 174 175 13 12
		f 4 -450 452 -115 -452
		mu 0 4 132 101 110 149
		mu 1 4 175 168 14 13
		f 4 -431 453 -117 -453
		mu 0 4 265 273 307 289
		mu 1 4 168 149 3 14
		f 4 -399 454 -119 -454
		mu 0 4 11 19 7 3
		mu 1 4 149 155 4 3
		f 4 -425 455 456 457
		mu 0 4 53 45 65 74
		mu 1 4 178 177 164 165
		f 4 458 -458 459 460
		mu 0 4 27 13 37 51
		mu 1 4 179 178 165 170
		f 4 461 -434 462 -460
		mu 0 4 37 78 83 51
		mu 1 4 165 181 180 170
		f 4 463 -430 -462 -457
		mu 0 4 65 95 93 74
		mu 1 4 164 182 181 165
		f 4 -439 464 465 -435
		mu 0 4 125 152 141 115
		mu 1 4 166 189 190 171
		f 4 466 467 -436 468
		mu 0 4 89 76 83 115
		mu 1 4 187 185 180 171
		f 4 -461 469 470 471
		mu 0 4 27 51 43 22
		mu 1 4 179 170 183 186
		f 4 -463 -468 472 -470
		mu 0 4 51 83 76 43
		mu 1 4 170 180 185 183
		f 4 -466 473 474 -469
		mu 0 4 115 141 117 89
		mu 1 4 171 190 191 187
		f 4 475 476 477 478
		mu 0 4 178 176 171 169
		mu 1 4 172 160 176 184
		f 4 -438 479 -476 480
		mu 0 4 154 156 211 205
		mu 1 4 189 188 160 172
		f 4 -465 -481 -479 481
		mu 0 4 141 152 178 169
		mu 1 4 190 189 172 184
		f 4 -482 -478 482 -474
		mu 0 4 141 169 171 117
		mu 1 4 190 184 176 191
		f 4 483 -424 -150 484
		mu 0 4 339 341 319 325
		mu 1 4 186 177 1 17
		f 4 -471 485 -456 -484
		mu 0 4 339 363 361 341
		mu 1 4 186 183 164 177
		f 4 -473 486 -464 -486
		mu 0 4 363 393 384 361
		mu 1 4 183 185 182 164
		f 4 -467 487 -427 -487
		mu 0 4 393 419 407 384
		mu 1 4 185 187 167 182
		f 4 -475 488 -437 -488
		mu 0 4 419 452 448 407
		mu 1 4 187 191 188 167
		f 4 -477 -480 -489 -483
		mu 0 4 504 518 450 454
		mu 1 4 176 160 188 191
		f 4 -157 -348 -354 489
		mu 0 4 222 172 188 224
		mu 1 4 7 5 122 127
		f 4 -490 -357 490 -158
		mu 0 4 222 224 260 276
		mu 1 4 7 127 132 19
		f 4 -161 -426 -459 491
		mu 0 4 8 0 13 27
		mu 1 4 16 15 178 179
		f 4 -162 -492 -472 -485
		mu 0 4 9 8 27 22
		mu 1 4 17 16 179 186
		f 4 -349 -164 -363 492
		mu 0 4 127 97 72 99
		mu 1 4 193 18 6 123
		f 4 493 -351 -493 -367
		mu 0 4 108 139 127 99
		mu 1 4 125 194 193 123
		f 4 -382 494 -378 -494
		mu 0 4 108 103 135 139
		mu 1 4 125 136 195 194
		f 4 -396 -402 -392 -495
		mu 0 4 137 162 184 158
		mu 1 4 136 146 145 195
		f 4 -375 495 496 -359
		mu 0 4 244 275 322 260
		mu 1 4 133 134 192 132
		f 4 -423 -170 497 -420
		mu 0 4 258 263 298 284
		mu 1 4 162 10 21 163
		f 4 -497 498 -171 -491
		mu 0 4 260 322 347 276
		mu 1 4 132 192 20 19
		f 4 -421 499 500 -416
		mu 0 4 269 284 309 271
		mu 1 4 159 163 196 144
		f 4 -498 -176 501 -500
		mu 0 4 284 298 338 309
		mu 1 4 163 21 22 196
		f 4 503 504 505 506
		mu 0 4 66 62 57 61
		mu 1 4 200 23 198 202
		f 4 507 -506 508 509
		mu 0 4 123 121 113 106
		mu 1 4 209 202 198 207
		f 4 -345 511 512 513
		mu 0 4 150 133 130 146
		mu 1 4 30 24 200 208
		f 4 -509 514 -346 515
		mu 0 4 106 113 109 96
		mu 1 4 207 198 27 31
		f 4 -513 -507 -508 517
		mu 0 4 146 130 121 123
		mu 1 4 208 200 202 209
		f 4 -401 519 520 521
		mu 0 4 368 353 357 370
		mu 1 4 155 154 205 206
		f 4 -455 -522 522 -191
		mu 0 4 378 368 370 379
		mu 1 4 4 155 206 29
		f 4 -371 523 524 525
		mu 0 4 537 500 512 540
		mu 1 4 131 130 203 204
		f 4 -369 -197 526 -524
		mu 0 4 500 477 482 512
		mu 1 4 130 0 28 203
		f 4 -383 -526 527 -520
		mu 0 4 353 330 332 357
		mu 1 4 154 131 204 205
		f 4 528 -518 529 -519
		mu 0 4 39 29 15 17
		mu 1 4 197 208 209 201
		f 4 530 -516 -201 -517
		mu 0 4 2 6 4 545
		mu 1 4 199 207 31 26
		f 4 -205 -514 -529 -511
		mu 0 4 47 33 29 39
		mu 1 4 25 30 208 197
		f 4 -530 -510 -531 -503
		mu 0 4 17 15 6 2
		mu 1 4 201 209 207 199
		f 4 -343 -504 -512 -344
		mu 0 4 67 62 66 79
		mu 1 4 110 23 200 24
		f 4 -515 -505 -342 -347
		mu 0 4 56 57 62 58
		mu 1 4 27 198 23 108
		f 4 531 532 533 534
		mu 0 4 502 514 535 533
		mu 1 4 303 304 341 340
		f 4 535 536 537 538
		mu 0 4 304 306 316 318
		mu 1 4 284 298 327 293
		f 4 539 540 541 542
		mu 0 4 291 262 288 304
		mu 1 4 273 285 289 284
		f 4 543 -543 -539 544
		mu 0 4 337 291 304 318
		mu 1 4 243 273 284 245
		f 4 545 546 547 548
		mu 0 4 302 324 328 311
		mu 1 4 387 396 400 389
		f 4 549 550 551 552
		mu 0 4 507 510 506 495
		mu 1 4 312 313 264 266
		f 4 553 554 -549 555
		mu 0 4 297 280 302 311
		mu 1 4 371 377 360 389
		f 4 556 557 558 559
		mu 0 4 282 254 256 280
		mu 1 4 323 320 372 377
		f 4 560 561 562 -558
		mu 0 4 254 203 197 256
		mu 1 4 320 321 375 372
		f 4 563 564 565 566
		mu 0 4 456 406 412 464
		mu 1 4 322 299 373 376
		f 4 567 568 569 570
		mu 0 4 472 468 479 486
		mu 1 4 355 363 349 353
		f 4 571 572 573 574
		mu 0 4 466 426 438 474
		mu 1 4 337 335 350 352
		f 3 575 576 -573
		mu 0 3 426 410 438
		mu 1 3 335 361 350
		f 4 577 578 579 -540
		mu 0 4 291 199 201 262
		mu 1 4 273 251 288 285
		f 4 580 -571 581 582
		mu 0 4 267 191 180 295
		mu 1 4 362 355 353 348
		f 4 583 584 585 586
		mu 0 4 502 498 490 476
		mu 1 4 311 312 267 263
		f 3 587 588 -551
		mu 0 3 528 538 525
		mu 1 3 313 310 264
		f 3 589 590 -565
		mu 0 3 406 410 412
		mu 1 3 299 319 373
		f 3 591 592 593
		mu 0 3 392 410 404
		mu 1 3 250 274 286
		f 4 594 595 596 597
		mu 0 4 418 414 396 402
		mu 1 4 275 251 267 247
		f 4 598 -567 599 600
		mu 0 4 444 446 462 460
		mu 1 4 325 322 376 379
		f 4 601 -575 602 -569
		mu 0 4 468 470 484 479
		mu 1 4 363 337 352 349
		f 4 603 -594 604 605
		mu 0 4 360 392 404 366
		mu 1 4 269 250 286 277
		f 4 606 -601 607 -562
		mu 0 4 442 444 460 458
		mu 1 4 321 325 379 375
		f 4 608 -598 609 610
		mu 0 4 416 418 402 400
		mu 1 4 269 275 247 266
		f 4 -553 -610 -597 -585
		mu 0 4 390 400 402 396
		mu 1 4 312 266 247 267
		f 4 611 612 -607 613
		mu 0 4 430 432 444 442
		mu 1 4 288 291 325 321
		f 4 614 615 -599 -613
		mu 0 4 432 434 446 444
		mu 1 4 291 277 322 325
		f 3 -593 -590 616
		mu 0 3 404 410 406
		mu 1 3 286 287 299
		f 3 -577 -588 617
		mu 0 3 531 538 528
		mu 1 3 350 351 313
		f 4 -582 618 -584 -535
		mu 0 4 533 522 498 502
		mu 1 4 348 353 312 311
		f 4 -605 -617 -564 -616
		mu 0 4 366 404 406 377
		mu 1 4 277 286 299 322
		f 4 -580 -614 -561 619
		mu 0 4 262 201 203 254
		mu 1 4 285 288 321 320
		f 4 -541 -620 -557 620
		mu 0 4 288 262 254 282
		mu 1 4 289 285 320 323
		f 4 -574 -618 -550 621
		mu 0 4 519 516 510 507
		mu 1 4 352 350 313 312
		f 4 622 -548 623 624
		mu 0 4 316 311 328 335
		mu 1 4 327 381 384 331
		f 4 -538 -625 625 -545
		mu 0 4 318 316 335 337
		mu 1 4 293 327 331 295
		f 4 -534 626 627 628
		mu 0 4 533 535 544 542
		mu 1 4 392 393 397 396
		f 4 -615 629 -609 -606
		mu 0 4 434 432 418 416
		mu 1 4 277 291 275 269
		f 4 -552 630 -604 -611
		mu 0 4 355 383 392 360
		mu 1 4 266 264 250 269
		f 4 -600 631 -602 632
		mu 0 4 460 462 470 468
		mu 1 4 379 376 337 363
		f 4 -612 -579 -595 -630
		mu 0 4 432 430 414 418
		mu 1 4 291 288 251 275
		f 3 -589 -592 -631
		mu 0 3 383 410 392
		mu 1 3 264 265 250
		f 4 -563 633 -581 634
		mu 0 4 256 197 191 267
		mu 1 4 372 375 355 362
		f 3 -586 -596 -578
		mu 0 3 291 195 199
		mu 1 3 273 267 251
		f 3 -591 -576 635
		mu 0 3 412 410 426
		mu 1 3 373 374 335
		f 4 -566 -636 -572 -632
		mu 0 4 464 412 426 466
		mu 1 4 376 373 335 337
		f 4 -608 -633 -568 -634
		mu 0 4 458 460 468 472
		mu 1 4 375 379 363 355
		f 4 636 637 638 -624
		mu 0 4 328 349 387 335
		mu 1 4 384 385 332 331
		f 4 639 640 641 642
		mu 0 4 387 428 422 375
		mu 1 4 332 333 241 240
		f 4 643 644 -638 645
		mu 0 4 351 398 387 349
		mu 1 4 215 224 228 217
		f 4 -533 646 -644 -627
		mu 0 4 535 514 524 544
		mu 1 4 213 220 224 215
		f 4 -642 647 648 649
		mu 0 4 375 422 424 373
		mu 1 4 240 241 235 234
		f 4 650 651 -532 -587
		mu 0 4 476 488 514 502
		mu 1 4 255 256 304 303
		f 4 652 -650 -651 -544
		mu 0 4 337 375 373 291
		mu 1 4 239 240 234 233
		f 4 -628 -646 -637 -547
		mu 0 4 324 351 349 328
		mu 1 4 396 397 401 400
		f 4 653 -560 -554 654
		mu 0 4 306 282 280 297
		mu 1 4 298 323 377 371
		f 4 -542 -621 -654 -536
		mu 0 4 304 288 282 306
		mu 1 4 284 289 323 298
		f 4 -655 -556 -623 -537
		mu 0 4 306 297 311 316
		mu 1 4 298 371 381 327
		f 4 -559 -635 655 -555
		mu 0 4 280 256 267 302
		mu 1 4 377 372 362 360
		f 4 -619 -570 -603 -622
		mu 0 4 494 486 479 484
		mu 1 4 312 353 349 352
		f 4 656 657 658 -647
		mu 0 4 514 481 492 524
		mu 1 4 220 221 225 224
		f 4 -649 659 -657 -652
		mu 0 4 488 436 481 514
		mu 1 4 256 257 305 304
		f 4 -626 -639 -643 -653
		mu 0 4 337 335 387 375
		mu 1 4 239 331 332 240
		f 4 -659 660 -640 -645
		mu 0 4 398 440 428 387
		mu 1 4 224 225 229 228
		f 4 -656 -583 -629 -546
		mu 0 4 302 267 286 324
		mu 1 4 387 362 348 396
		f 4 661 662 -336 -499
		mu 0 4 322 344 388 347
		mu 1 4 192 210 120 20
		f 4 -377 663 -662 -496
		mu 0 4 275 293 344 322
		mu 1 4 134 140 210 192
		f 4 664 -664 -391 -501
		mu 0 4 309 346 300 271
		mu 1 4 196 210 140 144
		f 4 -341 -663 -665 -502
		mu 0 4 338 381 346 309
		mu 1 4 22 120 210 196
		f 3 -523 665 666
		mu 0 3 379 370 380
		mu 1 3 29 206 211
		f 3 -525 667 668
		mu 0 3 332 313 333
		mu 1 3 204 203 211
		f 3 -198 669 670
		mu 0 3 331 356 333
		mu 1 3 114 115 211
		f 3 -196 671 672
		mu 0 3 277 312 278
		mu 1 3 28 113 211
		f 3 -521 673 -666
		mu 0 3 370 357 371
		mu 1 3 206 205 211
		f 3 -192 -667 674
		mu 0 3 369 379 371
		mu 1 3 116 29 211
		f 3 -194 -671 -672
		mu 0 3 312 331 314
		mu 1 3 113 114 211
		f 3 -528 -669 -674
		mu 0 3 357 332 358
		mu 1 3 205 204 211
		f 3 -527 -673 -668
		mu 0 3 313 277 314
		mu 1 3 203 28 211
		f 3 -189 -675 -670
		mu 0 3 356 369 358
		mu 1 3 115 116 211;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "directionalLight1";
	rename -uid "0E653ECE-411A-A44D-99BC-7EAC9CB8D205";
	setAttr ".t" -type "double3" 0 0 -122.26162022158914 ;
	setAttr ".r" -type "double3" 159.97772567436368 12.27271048269913 -24.163018141076648 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "64F7DC2F-4E73-49D5-0D37-D5BD4A712492";
	setAttr -k off ".v";
	setAttr ".in" 10;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BE4F5A29-4130-DC3F-C3A3-FAB3DB443C94";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C30ABFCB-48CA-C6C1-8953-80A783D28888";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C38FB668-40D9-7BCD-33E4-E9AD9B92F5AB";
createNode displayLayerManager -n "layerManager";
	rename -uid "BCE826FC-42E3-3244-8AA4-04898EE99AFE";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  5 1 3 4;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "66BDB7D1-4A13-45FD-3EFF-24B08056FB7F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "06AECF8E-4FFE-F7D4-CFE5-EFB49E6914C6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "55529802-4D91-296E-D239-8A8DB2B86C39";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E92FA779-4324-B105-CE9E-17880D4A58F6";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "62B99B8E-4CC9-D28F-5C04-8E93C9A6A1A6";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AF3BDBC1-4D6B-C47A-97C6-7382686A7DA4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "03D23C24-4634-D189-FFB9-4DB4B164344D";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode phong -n "MaterialFBXASC046001";
	rename -uid "B4674AE1-4A56-5E7D-8805-919436EA9CF4";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 100;
createNode shadingEngine -n "SkullSG";
	rename -uid "F417713C-4E55-2DFD-EA75-C0A2FAFC28D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "BD6FC5DE-4ED5-8DA5-4742-DD9CCAF54767";
createNode file -n "base_color_texture";
	rename -uid "69CB4B30-4722-261F-F46A-F6AEFFA78ABE";
	setAttr ".ftn" -type "string" "C:/Users/jaden/OneDrive/Pictures/Spriteart- Assets/Textures/BreakerMasters/Skull.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "204B8346-4199-8183-E4A3-BAB11EB52B47";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "27328F5E-4CD1-86F8-3CC5-36A46F450BB2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1277\n            -height 688\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1277\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1277\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F9563BC9-4121-6D20-A154-83B0CEA8DDE0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 541 -ast 0 -aet 541 ";
	setAttr ".st" 6;
createNode displayLayer -n "Skin";
	rename -uid "EC741E9B-4F6E-B34F-B591-4DAE5F60B067";
	setAttr ".hpb" yes;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "65E7A2B8-4CFC-CCCB-F957-D5A087171FAE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -749.99997019767898 -394.04760338957408 ;
	setAttr ".tgi[0].vh" -type "double2" 752.38092248402063 392.85712724640325 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -248.57142639160156;
	setAttr ".tgi[0].ni[0].y" 32.857143402099609;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -248.57142639160156;
	setAttr ".tgi[0].ni[1].y" 134.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -248.57142639160156;
	setAttr ".tgi[0].ni[2].y" -68.571426391601562;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 58.571430206298828;
	setAttr ".tgi[0].ni[3].y" 32.857143402099609;
	setAttr ".tgi[0].ni[3].nvs" 18304;
createNode displayLayer -n "Skeleton";
	rename -uid "E196FA2B-46B9-4A72-D07A-919FDFC62D85";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode displayLayer -n "Control";
	rename -uid "FA877B77-4ED2-5615-2B57-819D25FB36C5";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B56113BD-4725-1D7A-9F6B-C3A83E309633";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -741.66663719548239 -382.14284195786485 ;
	setAttr ".tgi[0].vh" -type "double2" 741.66663719548239 380.95236581469402 ;
	setAttr ".tgi[0].ni[0].x" -100;
	setAttr ".tgi[0].ni[0].y" 248.57142639160156;
	setAttr ".tgi[0].ni[0].nvs" 2066;
createNode skinCluster -n "skinCluster1";
	rename -uid "BD129BAA-4833-FEED-3A97-B6BE16AFED32";
	setAttr -s 342 ".wl";
	setAttr ".wl[0:321].w"
		1 0 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		4 0 0.0062745705924609051 2 0.99232792783631552 8 0.00077963051866766298 
		9 0.00061787105255589917
		2 2 0.99923703269378172 8 0.00076296730621823331
		3 0 0.0013872379972912467 2 0.99820290121796185 8 0.00040986078474694197
		2 2 0.99972698184002806 8 0.00027301815997200015
		3 2 0.99825110891301239 3 0.00079964022574844035 8 0.00094925086123920724
		3 2 0.99704905864614324 3 0.0016770529888220905 8 0.0012738883650347151
		3 2 0.9977840051023269 3 0.0010228302668901011 8 0.0011931646307830062
		3 0 0.0073649145445888768 2 0.99175377295807277 8 0.00088131249733841132
		3 0 0.00045937011847767614 2 0.99927288253537605 3 0.00026774734614627634
		3 0 0.012839659285135039 2 0.98623215285264942 8 0.00092818786221551472
		3 0 0.015354578922459906 2 0.98396091044368073 8 0.00068451063385941899
		3 0 0.00077347497803812327 2 0.99865669439107485 3 0.0005698306308869577
		3 2 0.89613958404912009 3 0.10374103853076959 4 0.00011937742011042714
		3 2 0.97992763411233497 3 0.020056898672406391 4 1.5467215258743857e-05
		3 2 0.97593065647555299 3 0.024048823492471224 4 2.0520031975797827e-05
		3 2 0.89541795134122415 3 0.10445293784196694 4 0.00012911081680891943
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		3 0 7.0795748923407342e-05 2 0.97775179808915647 3 0.022177406161920148
		3 2 0.74705587115093963 3 0.25288892280079195 4 5.5206048268346622e-05
		3 2 0.94119999338250915 3 0.058785090471630753 4 1.4916145860174964e-05
		3 2 0.99245100567556221 3 0.0075335158843532306 4 1.5478440084597463e-05
		3 2 0.95381919449673891 3 0.046170840839444276 4 9.9646638168418776e-06
		3 2 0.99320482359434836 3 0.0067819808781013988 4 1.3195527550259364e-05
		3 2 0.97761563756845704 3 0.022320289302525113 4 6.4073129017705625e-05
		3 2 0.75220105465785136 3 0.24775223944922284 4 4.6705892925728665e-05
		4 0 0.0053998156004509308 2 0.99276466441827138 8 0.0010418531574611634 
		9 0.00079366682381657285
		2 2 0.99983488240524365 8 0.00016511759475638265
		3 0 0.010296648752672067 2 0.98894481530377221 8 0.00075853594355579259
		3 0 0.00038444742969855126 2 0.99929053466514628 3 0.00032501790515525666
		3 2 0.99042982719519379 3 0.0095653829408027576 4 4.7898640034631606e-06
		1 3 1
		1 3 1
		3 2 0.8839596660494784 3 0.11592039483571137 4 0.00011993911481027039
		3 2 0.9787228593132814 3 0.021210308756292359 4 6.683193042627373e-05
		3 2 0.68778347477015189 3 0.3121826893332435 4 3.3835896604650534e-05
		3 2 0.99810889320524154 8 0.0011787961059749976 9 0.00071231068878343845
		3 0 0.001213624859911126 2 0.99840750831610181 3 0.00037886682398709736
		3 2 0.94701582799789097 3 0.052934483727953278 4 4.9688274155785255e-05
		3 2 0.95113280881580975 3 0.048826137346341295 4 4.1053837848933531e-05
		1 3 1
		1 3 1
		3 2 0.89129945072181782 3 0.10867756127838317 4 2.2987999799032577e-05
		3 2 0.99169941815016061 3 0.0082799005250354437 4 2.068132480391193e-05
		3 2 0.99214009803240255 3 0.0078413629862249239 4 1.8538981372492613e-05
		3 2 0.90702155094190684 3 0.092962300613639609 4 1.6148444453627349e-05
		3 2 0.99883671903650384 8 0.0009541862461273237 9 0.00020909471736895436
		3 2 0.99592057463068151 8 0.0028713297341636688 9 0.0012080956351548757
		3 2 0.99808303507157869 8 0.0013557670045146082 9 0.00056119792390676537
		3 2 0.9992842551057185 8 0.0005048369325929879 9 0.00021090796168856684
		3 1 0.00029971504838211064 2 0.99913982953320379 8 0.00056045541841411028
		2 2 0.99920131204375928 8 0.00079868795624070637
		3 2 0.99973814001856831 8 0.00019502105090266932 9 6.6838930529010697e-05
		3 1 1.8456812859513953e-05 2 0.99992094627574002 8 6.0596911400550245e-05
		3 0 0.0038704577699004085 2 0.99533253336277394 3 0.00079700886732570766
		3 0 0.0038115705077175046 2 0.99545773032709373 3 0.00073069916518880059
		3 0 0.006904744743109416 2 0.99170367835751883 3 0.0013915768993717759
		3 1 0.0059463964673728128 2 0.98602869341923383 8 0.0080249101133933499
		3 1 0.016719375473190773 2 0.92726778782122343 8 0.056012836705585725
		3 2 0.87204184572938848 8 0.11474187957453971 9 0.01321627469607186
		3 1 0.0020143983468537286 2 0.98406463836904035 8 0.013920963284105957
		3 1 0.0030665809725553511 2 0.98739768817042217 8 0.0095357308570225025
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 10 1
		1 10 1
		1 10 1
		4 0 0.006274592687547465 5 0.99232790021845818 8 0.00077963366553896601 
		9 0.00061787342845542111
		2 5 0.99924004077911377 8 0.00075995922088623047
		3 0 0.0013872190042354563 5 0.99820292618062023 8 0.00040985481514431888
		3 0 2.548239535826724e-05 5 0.99970150975656469 8 0.00027300784807706097
		3 5 0.99825109712784044 6 0.00079964392909182014 8 0.00094925894306771531
		1 5 1
		1 5 1
		3 0 0.0073649040700697107 5 0.99175378544123083 8 0.00088131048869948014
		3 0 0.00045937093512905868 5 0.99927288282186777 6 0.00026774624300317067
		3 0 0.012839633947091804 5 0.9862321809816792 8 0.00092818507122907753
		3 0 0.01523447550382301 5 0.98408365249633789 8 0.00068187199983909814
		1 5 1
		3 5 0.89614012870887605 6 0.10374049153207389 7 0.00011937975905005558
		3 5 0.97992805609429678 6 0.020056476596096752 7 1.5467309606442917e-05
		3 5 0.97593158929198931 6 0.024047890986924461 7 2.0519721086197532e-05
		3 5 0.89541897705998219 6 0.10445191049875566 7 0.00012911244126222971
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		3 0 7.0796681386715542e-05 5 0.97775192363674135 6 0.022177279681871945
		3 5 0.74705903094453352 6 0.25288576194604806 7 5.5207109418437922e-05
		3 5 0.94120304099778962 6 0.0587820431727238 7 1.4915829486583143e-05
		3 5 0.99245135627314418 6 0.0075331656950916332 7 1.5478031764167471e-05
		3 5 0.95382107006965799 6 0.046168965303359885 7 9.9646269820548734e-06
		3 5 0.9932050039142537 6 0.0067818006201594535 7 1.3195465586861386e-05
		3 5 0.97761558788691993 6 0.022320337557854182 7 6.4074555225897997e-05
		3 5 0.7522035229864189 6 0.24774976983269498 7 4.6707180886153602e-05
		4 0 0.0053997912102031883 5 0.99276469762993402 8 0.0010418482373968322 
		9 0.00079366292246594
		1 5 1
		3 0 0.010296705441251013 5 0.98894475445705066 8 0.0007585401016982692
		3 0 0.00038293518798732291 5 0.99929332733154297 6 0.00032373748046970839
		3 5 0.9904305982729914 6 0.0095646121003821107 7 4.7896266265870901e-06
		1 6 1
		1 6 1
		3 5 0.88396039451525454 6 0.115919664107831 7 0.00011994137691442958
		3 5 0.9787228354099955 6 0.021210331292431571 7 6.6833297573003756e-05
		3 5 0.68778681943787601 6 0.31217934364309519 7 3.3836919028867018e-05
		3 5 0.99810887824651939 8 0.0011788055497967151 9 0.00071231620368389207
		3 0 0.0012136357580726511 5 0.9984074956366602 6 0.00037886860526715761
		3 5 0.94701683432906736 6 0.052933477205400647 7 4.9688465531955503e-05
		3 5 0.95113314701661789 6 0.048825798334611668 7 4.1054648770562294e-05
		1 6 1
		1 6 1
		3 5 0.89130209843536257 6 0.10867491340612226 7 2.2988158515223694e-05
		2 5 0.99169956731477737 6 0.0082797513393334642;
	setAttr ".wl[321:341].w"
		1 7 2.0681345889166261e-05
		3 5 0.99214008179226809 6 0.0078413788030619776 7 1.8539404669920189e-05
		3 5 0.90702279291908705 6 0.092961058220193959 7 1.6148860719013398e-05
		3 5 0.99883671125129836 8 0.00095419268049990586 9 0.00020909606820174417
		3 5 0.99592054801918384 8 0.0028713487535007801 9 0.0012081032273153812
		3 5 0.99808301634740748 8 0.0013557803754011034 9 0.00056120327719139649
		3 5 0.99928424656743053 8 0.00050484300086357185 9 0.00021091043170581286
		3 1 0.00029971514112220413 5 0.99913982920321576 8 0.00056045565566190244
		2 5 0.99920132317021482 8 0.00079867682978516897
		3 5 0.99973814273895456 8 0.0001950190412628341 9 6.6838219782635477e-05
		3 1 1.8457130819316188e-05 5 0.9999209449080505 8 6.0597961130183128e-05
		3 0 0.0038704855931144849 5 0.99533250388259187 6 0.00079701052429349936
		3 0 0.0038115723919210955 5 0.99545773206531074 6 0.00073069554276806884
		1 5 1
		3 1 0.005946358406899499 5 0.98602878177655773 8 0.0080248598165427541
		3 1 0.016719278350618823 5 0.92726820433159096 8 0.056012517317790306
		3 5 0.87204249204593742 8 0.11474130324107967 9 0.013216204712982961
		3 1 0.0020143882848392344 5 0.98406471680924135 8 0.013920894905919391
		3 1 0.0030665647151104374 5 0.98739775401886354 8 0.0095356812660260231
		1 0 1
		1 0 1;
	setAttr -s 12 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.001089134088700705 0.99999940689329248 1.2246460728011223e-16 -0
		 0.99999940689329248 -0.0010891340887008161 -1.3338045755697239e-19 0 -1.4035214469721981e-32 1.2246467991473532e-16 -1 -0
		 -16.569188781095605 0.01804607902686433 -28.3211555480957 1;
	setAttr ".pm[1]" -type "matrix" 0.001089134088700705 0.99999940689329248 1.2246460728011223e-16 -0
		 0.99999940689329248 -0.0010891340887008161 -1.3338045755697239e-19 0 -1.4035214469721981e-32 1.2246467991473532e-16 -1 -0
		 -117.58967971175549 0.1280727290199079 -28.211130557250673 1;
	setAttr ".pm[2]" -type "matrix" 0.19834930008853466 -0.96177788866981229 0.18878783864493545 -0
		 2.0816681711721675e-16 0.19261482618091486 0.98127444108939066 -0 -0.98013139688226902 -0.19463509858484868 0.038205015959659111 -0
		 2.8764169775278003 -75.594197427209735 -35.779120837280558 1;
	setAttr ".pm[3]" -type "matrix" -0.43653926487504641 -0.88678257219732626 -0.15182272514168377 -0
		 0.76520652844749493 -0.45471509221069378 0.45573364341153622 0 -0.47317273700382101 0.082769889228592519 0.87707280564010126 -0
		 -40.665877449442853 -58.711944399442295 -158.79980192015336 1;
	setAttr ".pm[4]" -type "matrix" -0.43653926487504641 -0.88678257219732626 -0.15182272514168377 -0
		 0.76520652844749493 -0.45471509221069378 0.45573364341153622 0 -0.47317273700382101 0.082769889228592519 0.87707280564010126 -0
		 46.390951593609266 -60.542371958581334 -128.66501871459761 1;
	setAttr ".pm[5]" -type "matrix" 0.19834930008853463 -0.96177788866981218 0.18878783864493598 -0
		 1.2490009027033009e-16 -0.19261482618091513 -0.98127444108939055 0 0.98013139688226902 0.19463509858484862 -0.038205015959659298 -0
		 -2.8764134808158324 75.594162269548178 35.779147810297104 1;
	setAttr ".pm[6]" -type "matrix" -0.43653926487504591 -0.88678257219732726 -0.15182272514168349 0
		 -0.76520652844749537 0.45471509221069328 -0.45573364341153683 0 0.47317273700382112 -0.082769889228592755 -0.8770728056401017 -0
		 40.66579875070115 58.711949955154857 158.79989018461595 1;
	setAttr ".pm[7]" -type "matrix" -0.43653926487504591 -0.88678257219732726 -0.15182272514168349 0
		 -0.76520652844749537 0.45471509221069328 -0.45573364341153683 0 0.47317273700382112 -0.082769889228592755 -0.8770728056401017 -0
		 -46.390951593608726 60.542371958582123 128.66501871459772 1;
	setAttr ".pm[8]" -type "matrix" 9.1006767735446393e-08 -0.99988336416770429 0.015272788241399051 -0
		 1.9398066134012642e-16 0.015272788241399224 0.99988336416770818 -0 -0.99999999999999589 -9.0996153080349746e-08 1.3899274543617682e-09 -0
		 4.7647005006201404 -0.45810767820367715 -29.991555753501203 1;
	setAttr ".pm[9]" -type "matrix" 9.1006767735446393e-08 -0.99988336416770429 0.015272788241399051 -0
		 1.9398066134012642e-16 0.015272788241399224 0.99988336416770818 -0 -0.99999999999999589 -9.0996153080349746e-08 1.3899274543617682e-09 -0
		 63.562898246897248 -0.31540072784969636 -20.648775420610615 1;
	setAttr ".pm[10]" -type "matrix" 7.4006055694041178e-10 2.7733891523136811e-16 -1 -0
		 7.2177834605309269e-16 1 5.5511151284673808e-16 -0 1 -6.6281418780780549e-16 7.4006060801908478e-10 -0
		 -61.037391662597706 -70.396400451660099 -4.5171426194298947e-08 1;
	setAttr ".pm[11]" -type "matrix" 7.4006055694041178e-10 2.7733891523136811e-16 -1 -0
		 7.2177834605309269e-16 1 5.5511151284673808e-16 -0 1 -6.6281418780780549e-16 7.4006060801908478e-10 -0
		 -71.149581909176874 -70.396408081048321 -4.517142619429894e-08 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 12 ".ma";
	setAttr -s 12 ".dpf[0:11]"  4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 12 ".lw";
	setAttr -s 12 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 12 ".ifcl";
	setAttr -s 12 ".ifcl";
createNode dagPose -n "bindPose2";
	rename -uid "E2A1B835-40AB-76D6-FD37-AEB2049E6BA9";
	setAttr -s 15 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 15 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 16.569198608398438 -28.321155548095703 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70749174344606336 0.70672160923212868 4.3274217831719644e-17 4.3321374951720097e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 101.02049093065989 -0.11002664999304358
		 -0.11002499084502659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 2.1371793224034263e-15 2.6693389029207089e-31
		 -2.4980018054066022e-16 0 33.028031797497931 -66.556711430545334 -17.794079952219313 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7071789283042047 0.13784219724868757 0.6934634194862449 0.0024449651561282981 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 4.4408920985006271e-16 -2.4980018054065988e-16
		 -1.3045120539345585e-15 0 -138.16888246014577 5.223963353997334 26.613438721181389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20972902124700127 -0.47957345770417803 0.28533699312767435 0.80287348733489217 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -87.056829043052119 1.8304275591390464
		 -30.134783205555749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 7.4376269032505604e-16 -1.110223024625158e-16
		 3.9985376121265399e-16 0 33.172951374350347 66.484570040670448 -17.794084398401552 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69346567108333668 -0.0016896890565735179 0.70702838023575398 0.13861232817118307 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -6.1062266354383639e-16 1.3877787807814422e-16
		 -1.1934897514720437e-15 0 138.16899560293254 -5.223956353485292 -26.613397071656159 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20972902124700116 -0.47957345770417809 0.28533699312767441 0.80287348733489228 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 87.056750344309876 -1.8304220034272802
		 30.134871470018226 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 5.1598264328471778e-16 8.9607685604953432e-08
		 -9.2286972214368622e-08 0 13.425847673631647 -0.01462255704378939 -33.085856048715868 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70708903032943127 -0.0050148466168926584 -0.70708896597954718 0.0050148470732776593 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -58.798197746277104 -0.14270695035398084
		 -9.3427803328905838 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -1.5707971567677164 -6.7897673982199527e-07
		 7.400601377372546e-10 0 53.827169917987248 -0.058625040426882713 -89.358547210693359 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710691623383226 0.00038536041580273188 0.70710643612456126 0.00038536067745373505 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.112190246579168 7.629388212237382e-06
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 15 ".m";
	setAttr -s 15 ".p";
	setAttr -s 15 ".g[0:14]" yes yes yes no no no no no no no no no no 
		no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 299;
	setAttr ".unw" 299;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "Skeleton.di" "Armature.do";
connectAttr "Head_01_Jnt_parentConstraint1.ctx" "Head_01_Jnt.tx";
connectAttr "Head_01_Jnt_parentConstraint1.cty" "Head_01_Jnt.ty";
connectAttr "Head_01_Jnt_parentConstraint1.ctz" "Head_01_Jnt.tz";
connectAttr "Head_01_Jnt_parentConstraint1.crx" "Head_01_Jnt.rx";
connectAttr "Head_01_Jnt_parentConstraint1.cry" "Head_01_Jnt.ry";
connectAttr "Head_01_Jnt_parentConstraint1.crz" "Head_01_Jnt.rz";
connectAttr "Head_01_Jnt.s" "Head_02_Jnt.is";
connectAttr "Head_01_Jnt.s" "R_Claw_01_Jnt.is";
connectAttr "R_Claw_01_Jnt_parentConstraint1.ctx" "R_Claw_01_Jnt.tx";
connectAttr "R_Claw_01_Jnt_parentConstraint1.cty" "R_Claw_01_Jnt.ty";
connectAttr "R_Claw_01_Jnt_parentConstraint1.ctz" "R_Claw_01_Jnt.tz";
connectAttr "R_Claw_01_Jnt_parentConstraint1.crx" "R_Claw_01_Jnt.rx";
connectAttr "R_Claw_01_Jnt_parentConstraint1.cry" "R_Claw_01_Jnt.ry";
connectAttr "R_Claw_01_Jnt_parentConstraint1.crz" "R_Claw_01_Jnt.rz";
connectAttr "R_Claw_01_Jnt.s" "R_Claw_02_Jnt.is";
connectAttr "R_Claw_02_Jnt_parentConstraint1.ctx" "R_Claw_02_Jnt.tx";
connectAttr "R_Claw_02_Jnt_parentConstraint1.cty" "R_Claw_02_Jnt.ty";
connectAttr "R_Claw_02_Jnt_parentConstraint1.ctz" "R_Claw_02_Jnt.tz";
connectAttr "R_Claw_02_Jnt_parentConstraint1.crx" "R_Claw_02_Jnt.rx";
connectAttr "R_Claw_02_Jnt_parentConstraint1.cry" "R_Claw_02_Jnt.ry";
connectAttr "R_Claw_02_Jnt_parentConstraint1.crz" "R_Claw_02_Jnt.rz";
connectAttr "R_Claw_02_Jnt.s" "R_Claw_03_Jnt.is";
connectAttr "R_Claw_02_Jnt.ro" "R_Claw_02_Jnt_parentConstraint1.cro";
connectAttr "R_Claw_02_Jnt.pim" "R_Claw_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Claw_02_Jnt.rp" "R_Claw_02_Jnt_parentConstraint1.crp";
connectAttr "R_Claw_02_Jnt.rpt" "R_Claw_02_Jnt_parentConstraint1.crt";
connectAttr "R_Claw_02_Jnt.jo" "R_Claw_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_02_Ctrl.t" "R_Claw_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_02_Ctrl.rp" "R_Claw_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_02_Ctrl.rpt" "R_Claw_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_02_Ctrl.r" "R_Claw_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_02_Ctrl.ro" "R_Claw_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_02_Ctrl.s" "R_Claw_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_02_Ctrl.pm" "R_Claw_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Claw_02_Jnt_parentConstraint1.w0" "R_Claw_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Claw_01_Jnt.ro" "R_Claw_01_Jnt_parentConstraint1.cro";
connectAttr "R_Claw_01_Jnt.pim" "R_Claw_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Claw_01_Jnt.rp" "R_Claw_01_Jnt_parentConstraint1.crp";
connectAttr "R_Claw_01_Jnt.rpt" "R_Claw_01_Jnt_parentConstraint1.crt";
connectAttr "R_Claw_01_Jnt.jo" "R_Claw_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Arm_01_Ctrl.t" "R_Claw_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_01_Ctrl.rp" "R_Claw_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_01_Ctrl.rpt" "R_Claw_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_01_Ctrl.r" "R_Claw_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_01_Ctrl.ro" "R_Claw_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_01_Ctrl.s" "R_Claw_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_01_Ctrl.pm" "R_Claw_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Claw_01_Jnt_parentConstraint1.w0" "R_Claw_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_01_Jnt.s" "L_Claw_01_Jnt.is";
connectAttr "L_Claw_01_Jnt_parentConstraint1.ctx" "L_Claw_01_Jnt.tx";
connectAttr "L_Claw_01_Jnt_parentConstraint1.cty" "L_Claw_01_Jnt.ty";
connectAttr "L_Claw_01_Jnt_parentConstraint1.ctz" "L_Claw_01_Jnt.tz";
connectAttr "L_Claw_01_Jnt_parentConstraint1.crx" "L_Claw_01_Jnt.rx";
connectAttr "L_Claw_01_Jnt_parentConstraint1.cry" "L_Claw_01_Jnt.ry";
connectAttr "L_Claw_01_Jnt_parentConstraint1.crz" "L_Claw_01_Jnt.rz";
connectAttr "L_Claw_01_Jnt.s" "L_Claw_02_Jnt.is";
connectAttr "L_Claw_02_Jnt_parentConstraint1.ctx" "L_Claw_02_Jnt.tx";
connectAttr "L_Claw_02_Jnt_parentConstraint1.cty" "L_Claw_02_Jnt.ty";
connectAttr "L_Claw_02_Jnt_parentConstraint1.ctz" "L_Claw_02_Jnt.tz";
connectAttr "L_Claw_02_Jnt_parentConstraint1.crx" "L_Claw_02_Jnt.rx";
connectAttr "L_Claw_02_Jnt_parentConstraint1.cry" "L_Claw_02_Jnt.ry";
connectAttr "L_Claw_02_Jnt_parentConstraint1.crz" "L_Claw_02_Jnt.rz";
connectAttr "L_Claw_02_Jnt.s" "L_Claw_03_Jnt.is";
connectAttr "L_Claw_02_Jnt.ro" "L_Claw_02_Jnt_parentConstraint1.cro";
connectAttr "L_Claw_02_Jnt.pim" "L_Claw_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Claw_02_Jnt.rp" "L_Claw_02_Jnt_parentConstraint1.crp";
connectAttr "L_Claw_02_Jnt.rpt" "L_Claw_02_Jnt_parentConstraint1.crt";
connectAttr "L_Claw_02_Jnt.jo" "L_Claw_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_02_Ctrl.t" "L_Claw_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_02_Ctrl.rp" "L_Claw_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_02_Ctrl.rpt" "L_Claw_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_02_Ctrl.r" "L_Claw_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_02_Ctrl.ro" "L_Claw_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_02_Ctrl.s" "L_Claw_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_02_Ctrl.pm" "L_Claw_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Claw_02_Jnt_parentConstraint1.w0" "L_Claw_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Claw_01_Jnt.ro" "L_Claw_01_Jnt_parentConstraint1.cro";
connectAttr "L_Claw_01_Jnt.pim" "L_Claw_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Claw_01_Jnt.rp" "L_Claw_01_Jnt_parentConstraint1.crp";
connectAttr "L_Claw_01_Jnt.rpt" "L_Claw_01_Jnt_parentConstraint1.crt";
connectAttr "L_Claw_01_Jnt.jo" "L_Claw_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Arm_01_Ctrl.t" "L_Claw_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_01_Ctrl.rp" "L_Claw_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_01_Ctrl.rpt" "L_Claw_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_01_Ctrl.r" "L_Claw_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_01_Ctrl.ro" "L_Claw_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_01_Ctrl.s" "L_Claw_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_01_Ctrl.pm" "L_Claw_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Claw_01_Jnt_parentConstraint1.w0" "L_Claw_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_01_Jnt.s" "Jaw_01_Jnt.is";
connectAttr "Jaw_01_Jnt_parentConstraint1.ctx" "Jaw_01_Jnt.tx";
connectAttr "Jaw_01_Jnt_parentConstraint1.cty" "Jaw_01_Jnt.ty";
connectAttr "Jaw_01_Jnt_parentConstraint1.ctz" "Jaw_01_Jnt.tz";
connectAttr "Jaw_01_Jnt_parentConstraint1.crx" "Jaw_01_Jnt.rx";
connectAttr "Jaw_01_Jnt_parentConstraint1.cry" "Jaw_01_Jnt.ry";
connectAttr "Jaw_01_Jnt_parentConstraint1.crz" "Jaw_01_Jnt.rz";
connectAttr "Jaw_01_Jnt.s" "Jaw_02_Jnt.is";
connectAttr "Jaw_01_Jnt.ro" "Jaw_01_Jnt_parentConstraint1.cro";
connectAttr "Jaw_01_Jnt.pim" "Jaw_01_Jnt_parentConstraint1.cpim";
connectAttr "Jaw_01_Jnt.rp" "Jaw_01_Jnt_parentConstraint1.crp";
connectAttr "Jaw_01_Jnt.rpt" "Jaw_01_Jnt_parentConstraint1.crt";
connectAttr "Jaw_01_Jnt.jo" "Jaw_01_Jnt_parentConstraint1.cjo";
connectAttr "Jaw_Ctrl.t" "Jaw_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Jaw_Ctrl.rp" "Jaw_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Jaw_Ctrl.rpt" "Jaw_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Jaw_Ctrl.r" "Jaw_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Jaw_Ctrl.ro" "Jaw_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Jaw_Ctrl.s" "Jaw_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Jaw_Ctrl.pm" "Jaw_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_01_Jnt_parentConstraint1.w0" "Jaw_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_01_Jnt.s" "Eye_01_Jnt.is";
connectAttr "Eye_01_Jnt_aimConstraint1.crx" "Eye_01_Jnt.rx";
connectAttr "Eye_01_Jnt_aimConstraint1.cry" "Eye_01_Jnt.ry";
connectAttr "Eye_01_Jnt_aimConstraint1.crz" "Eye_01_Jnt.rz";
connectAttr "Eye_01_Jnt.s" "Eye_02_Jnt.is";
connectAttr "Eye_01_Jnt.pim" "Eye_01_Jnt_aimConstraint1.cpim";
connectAttr "Eye_01_Jnt.t" "Eye_01_Jnt_aimConstraint1.ct";
connectAttr "Eye_01_Jnt.rp" "Eye_01_Jnt_aimConstraint1.crp";
connectAttr "Eye_01_Jnt.rpt" "Eye_01_Jnt_aimConstraint1.crt";
connectAttr "Eye_01_Jnt.ro" "Eye_01_Jnt_aimConstraint1.cro";
connectAttr "Eye_01_Jnt.jo" "Eye_01_Jnt_aimConstraint1.cjo";
connectAttr "Eye_01_Jnt.is" "Eye_01_Jnt_aimConstraint1.is";
connectAttr "Eye_Ctrl.t" "Eye_01_Jnt_aimConstraint1.tg[0].tt";
connectAttr "Eye_Ctrl.rp" "Eye_01_Jnt_aimConstraint1.tg[0].trp";
connectAttr "Eye_Ctrl.rpt" "Eye_01_Jnt_aimConstraint1.tg[0].trt";
connectAttr "Eye_Ctrl.pm" "Eye_01_Jnt_aimConstraint1.tg[0].tpm";
connectAttr "Eye_01_Jnt_aimConstraint1.w0" "Eye_01_Jnt_aimConstraint1.tg[0].tw";
connectAttr "Head_01_Jnt.ro" "Head_01_Jnt_parentConstraint1.cro";
connectAttr "Head_01_Jnt.pim" "Head_01_Jnt_parentConstraint1.cpim";
connectAttr "Head_01_Jnt.rp" "Head_01_Jnt_parentConstraint1.crp";
connectAttr "Head_01_Jnt.rpt" "Head_01_Jnt_parentConstraint1.crt";
connectAttr "Head_01_Jnt.jo" "Head_01_Jnt_parentConstraint1.cjo";
connectAttr "Head_Ctrl.t" "Head_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Head_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Head_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "Head_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Head_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "Head_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Head_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Head_01_Jnt_parentConstraint1.w0" "Head_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Control.di" "Controls.do";
connectAttr "Head_Ctrl_Grp_parentConstraint1.ctx" "Head_Ctrl_Grp.tx";
connectAttr "Head_Ctrl_Grp_parentConstraint1.cty" "Head_Ctrl_Grp.ty";
connectAttr "Head_Ctrl_Grp_parentConstraint1.ctz" "Head_Ctrl_Grp.tz";
connectAttr "Head_Ctrl_Grp_parentConstraint2.crx" "Head_Ctrl_Grp.rx";
connectAttr "Head_Ctrl_Grp_parentConstraint2.cry" "Head_Ctrl_Grp.ry";
connectAttr "Head_Ctrl_Grp_parentConstraint2.crz" "Head_Ctrl_Grp.rz";
connectAttr "Head_Ctrl_Grp_scaleConstraint1.csx" "Head_Ctrl_Grp.sx";
connectAttr "Head_Ctrl_Grp_scaleConstraint1.csy" "Head_Ctrl_Grp.sy";
connectAttr "Head_Ctrl_Grp_scaleConstraint1.csz" "Head_Ctrl_Grp.sz";
connectAttr "Head_Ctrl_Grp.ro" "Head_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Head_Ctrl_Grp.pim" "Head_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Head_Ctrl_Grp.rp" "Head_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Head_Ctrl_Grp.rpt" "Head_Ctrl_Grp_parentConstraint1.crt";
connectAttr "COG_Ctrl.t" "Head_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Head_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Head_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "Head_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Head_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "Head_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Head_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Head_Ctrl_Grp_parentConstraint1.w0" "Head_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_Ctrl.FollowTranslate" "Head_Ctrl_Grp_parentConstraint1.w0";
connectAttr "Head_Ctrl_Grp.ro" "Head_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Head_Ctrl_Grp.pim" "Head_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Head_Ctrl_Grp.rp" "Head_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Head_Ctrl_Grp.rpt" "Head_Ctrl_Grp_parentConstraint2.crt";
connectAttr "COG_Ctrl.t" "Head_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Head_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Head_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "COG_Ctrl.r" "Head_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Head_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "COG_Ctrl.s" "Head_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Head_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Head_Ctrl_Grp_parentConstraint2.w0" "Head_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Head_Ctrl.FollowRotate" "Head_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Head_Ctrl_Grp.pim" "Head_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "Head_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Head_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Head_Ctrl_Grp_scaleConstraint1.w0" "Head_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Jaw_Ctrl_Grp_parentConstraint1.ctx" "Jaw_Ctrl_Grp.tx";
connectAttr "Jaw_Ctrl_Grp_parentConstraint1.cty" "Jaw_Ctrl_Grp.ty";
connectAttr "Jaw_Ctrl_Grp_parentConstraint1.ctz" "Jaw_Ctrl_Grp.tz";
connectAttr "Jaw_Ctrl_Grp_parentConstraint2.crx" "Jaw_Ctrl_Grp.rx";
connectAttr "Jaw_Ctrl_Grp_parentConstraint2.cry" "Jaw_Ctrl_Grp.ry";
connectAttr "Jaw_Ctrl_Grp_parentConstraint2.crz" "Jaw_Ctrl_Grp.rz";
connectAttr "Jaw_Ctrl_Grp_scaleConstraint1.csx" "Jaw_Ctrl_Grp.sx";
connectAttr "Jaw_Ctrl_Grp_scaleConstraint1.csy" "Jaw_Ctrl_Grp.sy";
connectAttr "Jaw_Ctrl_Grp_scaleConstraint1.csz" "Jaw_Ctrl_Grp.sz";
connectAttr "Jaw_Ctrl_Grp.ro" "Jaw_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Jaw_Ctrl_Grp.pim" "Jaw_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Jaw_Ctrl_Grp.rp" "Jaw_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Jaw_Ctrl_Grp.rpt" "Jaw_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Head_Ctrl.t" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_Ctrl_Grp_parentConstraint1.w0" "Jaw_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Jaw_Ctrl.FollowTranslate" "Jaw_Ctrl_Grp_parentConstraint1.w0";
connectAttr "Jaw_Ctrl_Grp.ro" "Jaw_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Jaw_Ctrl_Grp.pim" "Jaw_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Jaw_Ctrl_Grp.rp" "Jaw_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Jaw_Ctrl_Grp.rpt" "Jaw_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Head_Ctrl.t" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Head_Ctrl.r" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Head_Ctrl.s" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Jaw_Ctrl_Grp_parentConstraint2.w0" "Jaw_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Jaw_Ctrl.FollowRotate" "Jaw_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Jaw_Ctrl_Grp.pim" "Jaw_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Head_Ctrl.s" "Jaw_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Jaw_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Jaw_Ctrl_Grp_scaleConstraint1.w0" "Jaw_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Eye_Ctrl_Grp_parentConstraint1.ctx" "Eye_Ctrl_Grp.tx";
connectAttr "Eye_Ctrl_Grp_parentConstraint1.cty" "Eye_Ctrl_Grp.ty";
connectAttr "Eye_Ctrl_Grp_parentConstraint1.ctz" "Eye_Ctrl_Grp.tz";
connectAttr "Eye_Ctrl_Grp_parentConstraint2.crx" "Eye_Ctrl_Grp.rx";
connectAttr "Eye_Ctrl_Grp_parentConstraint2.cry" "Eye_Ctrl_Grp.ry";
connectAttr "Eye_Ctrl_Grp_parentConstraint2.crz" "Eye_Ctrl_Grp.rz";
connectAttr "Eye_Ctrl_Grp_scaleConstraint1.csx" "Eye_Ctrl_Grp.sx";
connectAttr "Eye_Ctrl_Grp_scaleConstraint1.csy" "Eye_Ctrl_Grp.sy";
connectAttr "Eye_Ctrl_Grp_scaleConstraint1.csz" "Eye_Ctrl_Grp.sz";
connectAttr "Eye_Ctrl_Grp.ro" "Eye_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Eye_Ctrl_Grp.pim" "Eye_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Eye_Ctrl_Grp.rp" "Eye_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Eye_Ctrl_Grp.rpt" "Eye_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Head_Ctrl.t" "Eye_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Eye_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Eye_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "Eye_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Eye_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "Eye_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Eye_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Eye_Ctrl_Grp_parentConstraint1.w0" "Eye_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Eye_Ctrl.FollowTranslate" "Eye_Ctrl_Grp_parentConstraint1.w0";
connectAttr "Eye_Ctrl_Grp.ro" "Eye_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Eye_Ctrl_Grp.pim" "Eye_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Eye_Ctrl_Grp.rp" "Eye_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Eye_Ctrl_Grp.rpt" "Eye_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Head_Ctrl.t" "Eye_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Eye_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Eye_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Head_Ctrl.r" "Eye_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Eye_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Head_Ctrl.s" "Eye_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Eye_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Eye_Ctrl_Grp_parentConstraint2.w0" "Eye_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Eye_Ctrl.FollowRotate" "Eye_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Eye_Ctrl_Grp.pim" "Eye_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Head_Ctrl.s" "Eye_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Eye_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Eye_Ctrl_Grp_scaleConstraint1.w0" "Eye_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_01_Ctrl_Grp.tx";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint1.cty" "L_Arm_01_Ctrl_Grp.ty";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_01_Ctrl_Grp.tz";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint2.crx" "L_Arm_01_Ctrl_Grp.rx";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint2.cry" "L_Arm_01_Ctrl_Grp.ry";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint2.crz" "L_Arm_01_Ctrl_Grp.rz";
connectAttr "L_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "L_Arm_01_Ctrl_Grp.sx";
connectAttr "L_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "L_Arm_01_Ctrl_Grp.sy";
connectAttr "L_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "L_Arm_01_Ctrl_Grp.sz";
connectAttr "L_Arm_01_Ctrl_Grp.ro" "L_Arm_01_Ctrl_Grp_parentConstraint1.cro";
connectAttr "L_Arm_01_Ctrl_Grp.pim" "L_Arm_01_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "L_Arm_01_Ctrl_Grp.rp" "L_Arm_01_Ctrl_Grp_parentConstraint1.crp";
connectAttr "L_Arm_01_Ctrl_Grp.rpt" "L_Arm_01_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Head_Ctrl.t" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint1.w0" "L_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_01_Ctrl.FollowTranslate" "L_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Arm_01_Ctrl_Grp.ro" "L_Arm_01_Ctrl_Grp_parentConstraint2.cro";
connectAttr "L_Arm_01_Ctrl_Grp.pim" "L_Arm_01_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "L_Arm_01_Ctrl_Grp.rp" "L_Arm_01_Ctrl_Grp_parentConstraint2.crp";
connectAttr "L_Arm_01_Ctrl_Grp.rpt" "L_Arm_01_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Head_Ctrl.t" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Head_Ctrl.rp" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Head_Ctrl.r" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Head_Ctrl.ro" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Head_Ctrl.s" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Head_Ctrl.pm" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_Arm_01_Ctrl_Grp_parentConstraint2.w0" "L_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Arm_01_Ctrl.FollowRotate" "L_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_01_Ctrl_Grp.pim" "L_Arm_01_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Head_Ctrl.s" "L_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "L_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "L_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint1.ctx" "L_Arm_02_Ctrl_Grp.tx";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint1.cty" "L_Arm_02_Ctrl_Grp.ty";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint1.ctz" "L_Arm_02_Ctrl_Grp.tz";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint2.crx" "L_Arm_02_Ctrl_Grp.rx";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint2.cry" "L_Arm_02_Ctrl_Grp.ry";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint2.crz" "L_Arm_02_Ctrl_Grp.rz";
connectAttr "L_Arm_02_Ctrl_Grp_scaleConstraint1.csx" "L_Arm_02_Ctrl_Grp.sx";
connectAttr "L_Arm_02_Ctrl_Grp_scaleConstraint1.csy" "L_Arm_02_Ctrl_Grp.sy";
connectAttr "L_Arm_02_Ctrl_Grp_scaleConstraint1.csz" "L_Arm_02_Ctrl_Grp.sz";
connectAttr "L_Arm_02_Ctrl_Grp.ro" "L_Arm_02_Ctrl_Grp_parentConstraint1.cro";
connectAttr "L_Arm_02_Ctrl_Grp.pim" "L_Arm_02_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "L_Arm_02_Ctrl_Grp.rp" "L_Arm_02_Ctrl_Grp_parentConstraint1.crp";
connectAttr "L_Arm_02_Ctrl_Grp.rpt" "L_Arm_02_Ctrl_Grp_parentConstraint1.crt";
connectAttr "L_Arm_01_Ctrl.t" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_01_Ctrl.rp" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "L_Arm_01_Ctrl.rpt" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "L_Arm_01_Ctrl.r" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_01_Ctrl.ro" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "L_Arm_01_Ctrl.s" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_01_Ctrl.pm" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint1.w0" "L_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_02_Ctrl.FollowTranslate" "L_Arm_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Arm_02_Ctrl_Grp.ro" "L_Arm_02_Ctrl_Grp_parentConstraint2.cro";
connectAttr "L_Arm_02_Ctrl_Grp.pim" "L_Arm_02_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "L_Arm_02_Ctrl_Grp.rp" "L_Arm_02_Ctrl_Grp_parentConstraint2.crp";
connectAttr "L_Arm_02_Ctrl_Grp.rpt" "L_Arm_02_Ctrl_Grp_parentConstraint2.crt";
connectAttr "L_Arm_01_Ctrl.t" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Arm_01_Ctrl.rp" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "L_Arm_01_Ctrl.rpt" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "L_Arm_01_Ctrl.r" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Arm_01_Ctrl.ro" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "L_Arm_01_Ctrl.s" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Arm_01_Ctrl.pm" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_Arm_02_Ctrl_Grp_parentConstraint2.w0" "L_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Arm_02_Ctrl.FollowRotate" "L_Arm_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Arm_02_Ctrl_Grp.pim" "L_Arm_02_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "L_Arm_01_Ctrl.s" "L_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_01_Ctrl.pm" "L_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_Arm_02_Ctrl_Grp_scaleConstraint1.w0" "L_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_01_Ctrl_Grp.tx";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint1.cty" "R_Arm_01_Ctrl_Grp.ty";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_01_Ctrl_Grp.tz";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint2.crx" "R_Arm_01_Ctrl_Grp.rx";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint2.cry" "R_Arm_01_Ctrl_Grp.ry";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint2.crz" "R_Arm_01_Ctrl_Grp.rz";
connectAttr "R_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "R_Arm_01_Ctrl_Grp.sx";
connectAttr "R_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "R_Arm_01_Ctrl_Grp.sy";
connectAttr "R_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "R_Arm_01_Ctrl_Grp.sz";
connectAttr "R_Arm_01_Ctrl_Grp.ro" "R_Arm_01_Ctrl_Grp_parentConstraint1.cro";
connectAttr "R_Arm_01_Ctrl_Grp.pim" "R_Arm_01_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "R_Arm_01_Ctrl_Grp.rp" "R_Arm_01_Ctrl_Grp_parentConstraint1.crp";
connectAttr "R_Arm_01_Ctrl_Grp.rpt" "R_Arm_01_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Head_Ctrl.t" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint1.w0" "R_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_01_Ctrl.FollowTranslate" "R_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Arm_01_Ctrl_Grp.ro" "R_Arm_01_Ctrl_Grp_parentConstraint2.cro";
connectAttr "R_Arm_01_Ctrl_Grp.pim" "R_Arm_01_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "R_Arm_01_Ctrl_Grp.rp" "R_Arm_01_Ctrl_Grp_parentConstraint2.crp";
connectAttr "R_Arm_01_Ctrl_Grp.rpt" "R_Arm_01_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Head_Ctrl.t" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Head_Ctrl.rp" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Head_Ctrl.r" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Head_Ctrl.ro" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Head_Ctrl.s" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Head_Ctrl.pm" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_Arm_01_Ctrl_Grp_parentConstraint2.w0" "R_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Arm_01_Ctrl.FollowRotate" "R_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_01_Ctrl_Grp.pim" "R_Arm_01_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Head_Ctrl.s" "R_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "R_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "R_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint1.ctx" "R_Arm_02_Ctrl_Grp.tx";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint1.cty" "R_Arm_02_Ctrl_Grp.ty";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint1.ctz" "R_Arm_02_Ctrl_Grp.tz";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint2.crx" "R_Arm_02_Ctrl_Grp.rx";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint2.cry" "R_Arm_02_Ctrl_Grp.ry";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint2.crz" "R_Arm_02_Ctrl_Grp.rz";
connectAttr "R_Arm_02_Ctrl_Grp_scaleConstraint1.csx" "R_Arm_02_Ctrl_Grp.sx";
connectAttr "R_Arm_02_Ctrl_Grp_scaleConstraint1.csy" "R_Arm_02_Ctrl_Grp.sy";
connectAttr "R_Arm_02_Ctrl_Grp_scaleConstraint1.csz" "R_Arm_02_Ctrl_Grp.sz";
connectAttr "R_Arm_02_Ctrl_Grp.ro" "R_Arm_02_Ctrl_Grp_parentConstraint1.cro";
connectAttr "R_Arm_02_Ctrl_Grp.pim" "R_Arm_02_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "R_Arm_02_Ctrl_Grp.rp" "R_Arm_02_Ctrl_Grp_parentConstraint1.crp";
connectAttr "R_Arm_02_Ctrl_Grp.rpt" "R_Arm_02_Ctrl_Grp_parentConstraint1.crt";
connectAttr "R_Arm_01_Ctrl.t" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_Arm_01_Ctrl.rp" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "R_Arm_01_Ctrl.rpt" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "R_Arm_01_Ctrl.r" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_Arm_01_Ctrl.ro" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "R_Arm_01_Ctrl.s" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_Arm_01_Ctrl.pm" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint1.w0" "R_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_02_Ctrl.FollowTranslate" "R_Arm_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Arm_02_Ctrl_Grp.ro" "R_Arm_02_Ctrl_Grp_parentConstraint2.cro";
connectAttr "R_Arm_02_Ctrl_Grp.pim" "R_Arm_02_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "R_Arm_02_Ctrl_Grp.rp" "R_Arm_02_Ctrl_Grp_parentConstraint2.crp";
connectAttr "R_Arm_02_Ctrl_Grp.rpt" "R_Arm_02_Ctrl_Grp_parentConstraint2.crt";
connectAttr "R_Arm_01_Ctrl.t" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_Arm_01_Ctrl.rp" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "R_Arm_01_Ctrl.rpt" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "R_Arm_01_Ctrl.r" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_Arm_01_Ctrl.ro" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "R_Arm_01_Ctrl.s" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_Arm_01_Ctrl.pm" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_Arm_02_Ctrl_Grp_parentConstraint2.w0" "R_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Arm_02_Ctrl.FollowRotate" "R_Arm_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Arm_02_Ctrl_Grp.pim" "R_Arm_02_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "R_Arm_01_Ctrl.s" "R_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_01_Ctrl.pm" "R_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_Arm_02_Ctrl_Grp_scaleConstraint1.w0" "R_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Skin.di" "Mesh.do";
connectAttr "skinCluster1.og[0]" "MeshShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SkullSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SkullSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "base_color_texture.oc" "MaterialFBXASC046001.c";
connectAttr "MaterialFBXASC046001.oc" "SkullSG.ss";
connectAttr "MeshShape.iog" "SkullSG.dsm" -na;
connectAttr "SkullSG.msg" "materialInfo1.sg";
connectAttr "MaterialFBXASC046001.msg" "materialInfo1.m";
connectAttr "base_color_texture.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "base_color_texture.uv";
connectAttr "place2dTexture1.ofu" "base_color_texture.ofu";
connectAttr "place2dTexture1.ofv" "base_color_texture.ofv";
connectAttr "place2dTexture1.rf" "base_color_texture.rf";
connectAttr "place2dTexture1.reu" "base_color_texture.reu";
connectAttr "place2dTexture1.rev" "base_color_texture.rev";
connectAttr "place2dTexture1.vt1" "base_color_texture.vt1";
connectAttr "place2dTexture1.vt2" "base_color_texture.vt2";
connectAttr "place2dTexture1.vt3" "base_color_texture.vt3";
connectAttr "place2dTexture1.vc1" "base_color_texture.vc1";
connectAttr "place2dTexture1.ofs" "base_color_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture.ws";
connectAttr "layerManager.dli[4]" "Skin.id";
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "layerManager.dli[1]" "Skeleton.id";
connectAttr "layerManager.dli[2]" "Control.id";
connectAttr "directionalLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "MeshShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "MeshShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "Head_01_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Head_02_Jnt.wm" "skinCluster1.ma[1]";
connectAttr "R_Claw_01_Jnt.wm" "skinCluster1.ma[2]";
connectAttr "R_Claw_02_Jnt.wm" "skinCluster1.ma[3]";
connectAttr "R_Claw_03_Jnt.wm" "skinCluster1.ma[4]";
connectAttr "L_Claw_01_Jnt.wm" "skinCluster1.ma[5]";
connectAttr "L_Claw_02_Jnt.wm" "skinCluster1.ma[6]";
connectAttr "L_Claw_03_Jnt.wm" "skinCluster1.ma[7]";
connectAttr "Jaw_01_Jnt.wm" "skinCluster1.ma[8]";
connectAttr "Jaw_02_Jnt.wm" "skinCluster1.ma[9]";
connectAttr "Eye_01_Jnt.wm" "skinCluster1.ma[10]";
connectAttr "Eye_02_Jnt.wm" "skinCluster1.ma[11]";
connectAttr "Head_01_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Head_02_Jnt.liw" "skinCluster1.lw[1]";
connectAttr "R_Claw_01_Jnt.liw" "skinCluster1.lw[2]";
connectAttr "R_Claw_02_Jnt.liw" "skinCluster1.lw[3]";
connectAttr "R_Claw_03_Jnt.liw" "skinCluster1.lw[4]";
connectAttr "L_Claw_01_Jnt.liw" "skinCluster1.lw[5]";
connectAttr "L_Claw_02_Jnt.liw" "skinCluster1.lw[6]";
connectAttr "L_Claw_03_Jnt.liw" "skinCluster1.lw[7]";
connectAttr "Jaw_01_Jnt.liw" "skinCluster1.lw[8]";
connectAttr "Jaw_02_Jnt.liw" "skinCluster1.lw[9]";
connectAttr "Eye_01_Jnt.liw" "skinCluster1.lw[10]";
connectAttr "Eye_02_Jnt.liw" "skinCluster1.lw[11]";
connectAttr "Head_01_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Head_02_Jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "R_Claw_01_Jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "R_Claw_02_Jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "R_Claw_03_Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Claw_01_Jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Claw_02_Jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_Claw_03_Jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "Jaw_01_Jnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "Jaw_02_Jnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "Eye_01_Jnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "Eye_02_Jnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_Claw_02_Jnt.msg" "skinCluster1.ptt";
connectAttr "Skull_Asset.msg" "bindPose2.m[0]";
connectAttr "Scale_Loc.msg" "bindPose2.m[1]";
connectAttr "Armature.msg" "bindPose2.m[2]";
connectAttr "Head_01_Jnt.msg" "bindPose2.m[3]";
connectAttr "Head_02_Jnt.msg" "bindPose2.m[4]";
connectAttr "R_Claw_01_Jnt.msg" "bindPose2.m[5]";
connectAttr "R_Claw_02_Jnt.msg" "bindPose2.m[6]";
connectAttr "R_Claw_03_Jnt.msg" "bindPose2.m[7]";
connectAttr "L_Claw_01_Jnt.msg" "bindPose2.m[8]";
connectAttr "L_Claw_02_Jnt.msg" "bindPose2.m[9]";
connectAttr "L_Claw_03_Jnt.msg" "bindPose2.m[10]";
connectAttr "Jaw_01_Jnt.msg" "bindPose2.m[11]";
connectAttr "Jaw_02_Jnt.msg" "bindPose2.m[12]";
connectAttr "Eye_01_Jnt.msg" "bindPose2.m[13]";
connectAttr "Eye_02_Jnt.msg" "bindPose2.m[14]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[3]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[3]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[3]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[3]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "Head_01_Jnt.bps" "bindPose2.wm[3]";
connectAttr "Head_02_Jnt.bps" "bindPose2.wm[4]";
connectAttr "R_Claw_01_Jnt.bps" "bindPose2.wm[5]";
connectAttr "R_Claw_02_Jnt.bps" "bindPose2.wm[6]";
connectAttr "R_Claw_03_Jnt.bps" "bindPose2.wm[7]";
connectAttr "L_Claw_01_Jnt.bps" "bindPose2.wm[8]";
connectAttr "L_Claw_02_Jnt.bps" "bindPose2.wm[9]";
connectAttr "L_Claw_03_Jnt.bps" "bindPose2.wm[10]";
connectAttr "Jaw_01_Jnt.bps" "bindPose2.wm[11]";
connectAttr "Jaw_02_Jnt.bps" "bindPose2.wm[12]";
connectAttr "Eye_01_Jnt.bps" "bindPose2.wm[13]";
connectAttr "Eye_02_Jnt.bps" "bindPose2.wm[14]";
connectAttr "SkullSG.pa" ":renderPartition.st" -na;
connectAttr "MaterialFBXASC046001.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "base_color_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of Skull.ma
