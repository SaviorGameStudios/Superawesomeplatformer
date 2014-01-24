//Maya ASCII 2010 scene
//Name: Bouncy.ma
//Last modified: Fri, Apr 09, 2010 04:52:20 PM
//Codeset: 1252
requires maya "2010";
currentUnit -l meter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2010";
fileInfo "version" "2010 x64";
fileInfo "cutIdentifier" "200907280308-756013";
fileInfo "osv" "Microsoft Windows Vista  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6077874769353162 1.3285993043514919 4.6715715186698681 ;
	setAttr ".r" -type "double3" -2.1383527295885005 411.3999999999179 -1.5931332635302576e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fd" 0.05;
	setAttr ".coi" 7.1557738307619045;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 10;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 10;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 0.25690226032224744 0.16981674834860411 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 10;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 3.4747119277483653;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bouncy:Bouncy_GRP";
createNode transform -n "bouncy:Master_CTRL" -p "bouncy:Bouncy_GRP";
createNode nurbsCurve -n "bouncy:Master_CTRLShape" -p "bouncy:Master_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.64625904433323544 3.9571953503136137e-017 -0.64625904433323433
		-1.0427057351901886e-016 5.5963193333732687e-017 -0.91394830530233606
		-0.64625904433323467 3.9571953503136168e-017 -0.64625904433323467
		-0.91394830530233606 1.6216733339563527e-032 -2.6483935369535526e-016
		-0.64625904433323489 -3.9571953503136156e-017 0.64625904433323456
		-2.753904611108824e-016 -5.5963193333732712e-017 0.91394830530233617
		0.64625904433323433 -3.9571953503136168e-017 0.64625904433323489
		0.91394830530233606 -3.0057940308877897e-032 4.9088341764834399e-016
		0.64625904433323544 3.9571953503136137e-017 -0.64625904433323433
		-1.0427057351901886e-016 5.5963193333732687e-017 -0.91394830530233606
		-0.64625904433323467 3.9571953503136168e-017 -0.64625904433323467
		;
createNode joint -n "bouncy:L_RFL_Heel_JNT" -p "bouncy:Master_CTRL";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_RFL_Toe_JNT" -p "bouncy:L_RFL_Heel_JNT";
	setAttr ".t" -type "double3" 3.552713678800501e-017 0.51112011381848743 1.1296519275560969e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 0 0 180 ;
	setAttr ".radi" 1.1668943039756015;
createNode joint -n "bouncy:L_RFL_Ball_JNT" -p "bouncy:L_RFL_Toe_JNT";
	setAttr ".t" -type "double3" -7.105427357601002e-017 0.13893289876861623 1.5265566588595904e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 22.07313540078669 180 0 ;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_RFL_Ankle_JNT" -p "bouncy:L_RFL_Ball_JNT";
	setAttr ".t" -type "double3" 1.4210854715202004e-016 0.34935811989396953 -5.3290705182007512e-017 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 67.926864599213317 0 0 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "bouncy:L_RFL_Heel_JNT_parentConstraint1" -p "bouncy:L_RFL_Heel_JNT";
	addAttr -ci true -k true -sn "w0" -ln "L_Foot_CTRLW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 3.552713678800501e-017 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rst" -type "double3" 0.20266400206276097 0.0015806193108495758 -0.11015905003705392 ;
	setAttr -k on ".w0";
createNode joint -n "bouncy:R_RFR_Heel_JNT" -p "bouncy:Master_CTRL";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1.0000000000000002 0
		 0 -1.0000000000000002 2.2204460492503131e-016 0 -20.266400000000001 0.15806200000000001 -11.0159 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_RFR_Toe_JNT" -p "bouncy:R_RFR_Heel_JNT";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.552713678800501e-017 0.51111999999999991 1.1324274851176597e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 7.016709298534876e-015 -7.0167092985348752e-015 180 ;
	setAttr ".bps" -type "matrix" -1 2.7192621468937821e-032 1.2246467991473535e-016 0
		 -1.2246467991473532e-016 -2.2204460492503131e-016 -1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0
		 -20.266400000000004 0.15806200000000004 40.0961 1;
	setAttr ".radi" 1.1668943039756015;
createNode joint -n "bouncy:R_RFR_Ball_JNT" -p "bouncy:R_RFR_Toe_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0.13893299999999997 -3.0808688933348097e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 22.073135400786661 180 0 ;
	setAttr ".bps" -type "matrix" 1 1.2246467991473532e-016 -1.2246467991473537e-016 0
		 -1.5950959976764018e-016 0.37578979503163273 -0.92670493143723154 0 -6.7467645840094359e-017 0.92670493143723165 0.37578979503163273 0
		 -20.266400000000004 0.15806200000000004 26.2028 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_RFR_Ankle_JNT" -p "bouncy:R_RFR_Ball_JNT";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.552713678800501e-017 0.3493580029920369 2.2408746826130256e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 67.926864599213332 -1.5293408230589437e-030 -5.5443461494106293e-031 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "bouncy:R_RFR_Heel_JNT_parentConstraint1" -p "bouncy:R_RFR_Heel_JNT";
	addAttr -ci true -k true -sn "w0" -ln "R_Foot_CTRLW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.552713678800501e-017 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rst" -type "double3" -0.202664 0.00158062 -0.110159 ;
	setAttr -k on ".w0";
createNode transform -n "bouncy:Root_CTRL" -p "bouncy:Master_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" 0 0.99771637281300207 0 ;
	setAttr ".sp" -type "double3" 0 0.99771637281300207 0 ;
createNode nurbsCurve -n "bouncy:Root_CTRLShape" -p "bouncy:Root_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.17317031516710668 0.99771637281300207 -0.17317031516710621
		-8.8021098813577947e-017 1.2400709899387841 -0.77151905256228082
		-0.17317031516710668 0.99771637281300207 -0.17317031516710635
		-0.77151905256228082 1.2400709899387841 -2.5903191597973629e-016
		-0.17317031516710668 0.99771637281300207 0.17317031516710635
		-2.3247374759415116e-016 1.2400709899387838 0.77151905256228093
		0.17317031516710621 0.99771637281300207 0.17317031516710635
		0.77151905256228082 1.2400709899387841 3.7891939173011974e-016
		0.17317031516710668 0.99771637281300207 -0.17317031516710621
		-8.8021098813577947e-017 1.2400709899387841 -0.77151905256228082
		-0.17317031516710668 0.99771637281300207 -0.17317031516710635
		;
createNode joint -n "bouncy:root_JNT" -p "bouncy:Root_CTRL";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 0.99771637281300207 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:head_JNT" -p "bouncy:root_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.3108872417680946e-032 1.0031742641203929 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Shoulder_JNT" -p "bouncy:head_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 4.4869588121456081 0 -90.262050536765713 ;
	setAttr ".bps" -type "matrix" -0.0045736287277748922 -0.99998954090543379 0 0 0.99692473907563706 -0.0045596113154717788 0.078232183681812062 0
		 -0.07823136544400483 0.00035780496272368872 0.9969351661148157 0 47.912950462104291 176.59118518666619 0 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Elbow_JNT" -p "bouncy:L_Shoulder_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 16.540180896824495 -0.075062470734894152 -0.95658759148825778 ;
	setAttr ".bps" -type "matrix" -0.02131894947198933 -0.99977272536982642 -4.3371773186806628e-014 0
		 0.93320235368859206 -0.019899416457960346 0.35879991679863077 0 -0.35871837068023493 0.0076492372967435071 0.93341449512277008 0
		 99.289184570312614 176.35620690876394 4.0316734313964968 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Wrist_JNT" -p "bouncy:L_Elbow_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -8.1286202610573739e-005 -0.13738709332971819 -0.35741419057626861 ;
	setAttr ".bps" -type "matrix" -0.027999940543870928 -0.99960792480328975 -1.9298798670241979e-016 0
		 0.9330517176640224 -0.026135639755047468 0.35879161152235917 0 -0.35865093823069361 0.01004614379026551 0.93341768758749621 0
		 133.23304572839868 175.63239494375324 17.082491950238008 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Fingers_JNT" -p "bouncy:L_Wrist_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 7.1054273576010019e-015 0.34162577960550067 3.552713678800501e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.61663649989640912 21.017368617138182 91.718872681339874 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 -5.2909066017292616e-017 1.6653345369377348e-016 0
		 5.377642775528102e-017 0.99999999999999989 3.4694469519536142e-018 0 -2.7755575615628914e-016 -5.7245874707234634e-017 1 0
		 165.10849777432097 174.73953411307187 29.339738350462 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "bouncy:L_Wrist_JNT_parentConstraint1" -p "bouncy:L_Wrist_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808016e-016 0 ;
	setAttr ".tg[0].tor" -type "double3" 21.026003285837159 1.2250105140324329e-014 
		-91.604488118594176 ;
	setAttr ".lr" -type "double3" -1.2304751511346772e-014 -2.4463843759224606e-014 
		-5.3557809817784696e-014 ;
	setAttr ".rst" -type "double3" 0 0.36373527160448066 1.0658141036401502e-016 ;
	setAttr ".rsrr" -type "double3" -4.3248768682650945e-015 -1.6487854662395129e-014 
		-9.0395420264775363e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bouncy:L_Elbow_JNT_parentConstraint1" -p "bouncy:L_Elbow_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404008e-016 0 ;
	setAttr ".tg[0].tor" -type "double3" 21.026513087717003 2.4850319776444139e-012 
		-91.221578374391029 ;
	setAttr ".lr" -type "double3" -1.4528363791721084e-015 -2.3374095138742975e-012 
		8.4639405450016728e-013 ;
	setAttr ".rst" -type "double3" 2.8421709430404008e-016 0.51534716809059322 -4.4408920985006263e-018 ;
	setAttr ".rsrr" -type "double3" -1.4631250387258059e-015 -2.3221030944697545e-012 
		8.8273437654423283e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bouncy:L_Shoulder_JNT_parentConstraint1" -p "bouncy:L_Shoulder_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 7.105427357601002e-017 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 4.4869588121456081 0 -90.262050536765713 ;
	setAttr ".lr" -type "double3" 4.142489110691276 -4.4737435386947446 -85.592509689675296 ;
	setAttr ".rst" -type "double3" 0.47912950462104292 -0.23497878506673289 0 ;
	setAttr -k on ".w0";
createNode joint -n "bouncy:R_Shoulder_JNT" -p "bouncy:head_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 4.4869579668280739 -3.9756933518293955e-016 90.262074935153265 ;
	setAttr ".bps" -type "matrix" -0.0045740545555157386 0.99998953895774478 6.9388939039072268e-018 0
		 -0.99692473828810935 -0.0045600358434008115 0.078232168973455127 0 0.078231350583429768 0.00035783820888090479 0.99693516726901998 0
		 -47.91299999999999 176.59100000000001 0 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Elbow_JNT" -p "bouncy:R_Shoulder_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 16.54023130022134 0.075085536055110813 0.95688174199369658 ;
	setAttr ".bps" -type "matrix" -0.021324523686178546 0.99977260649087474 3.8974032334770925e-014 0
		 -0.93320193486321346 -0.019904612943777402 0.35880071787987372 0 0.35871912892555913 0.0076512544070108952 0.93341418719070657 0
		 -99.289199999999937 176.35600000000002 4.0316699999999974 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Wrist_JNT" -p "bouncy:R_Elbow_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 7.9199353506941952e-005 0.13672619601753339 0.35569391801272637 ;
	setAttr ".bps" -type "matrix" -0.027973362593837741 0.9996086689225907 -1.526122977990596e-015 0
		 -0.93305107409318022 -0.026110793979317794 0.35879509412940996 0 0.35865468645865506 0.010036705264973583 0.93341634891867409 0
		 -133.23299999999998 175.63200000000001 17.0825 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Fingers_JNT" -p "bouncy:R_Wrist_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -3.4106051316484808e-015 0.34162117042712697 -3.552713678800501e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.61605808740220602 -21.017598680671387 -91.717243263572854 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 4.2934406030425976e-016 -5.5511151231257827e-017 0
		 -4.5102810375396984e-016 0.99999999999999978 2.4286128663675299e-017 0 5.5511151231257827e-017 -3.6429192995512949e-017 1 0
		 -165.10799999999998 174.74000000000004 29.339700000000018 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "bouncy:R_Wrist_JNT_parentConstraint1" -p "bouncy:R_Wrist_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404008e-016 -1.0658141036401502e-016 ;
	setAttr ".tg[0].tor" -type "double3" 21.026217058118796 8.7191924822308443e-014 
		91.602964717508272 ;
	setAttr ".lr" -type "double3" -1.5248278771801345e-014 -2.1633774595323544e-012 
		8.279723169650974e-013 ;
	setAttr ".rst" -type "double3" 0 0.36373477949309474 7.105427357601002e-017 ;
	setAttr ".rsrr" -type "double3" -1.4617661591443267e-015 -7.6975785039271464e-014 
		3.2499648486075006e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bouncy:R_Elbow_JNT_parentConstraint1" -p "bouncy:R_Elbow_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-016 -2.8421709430404008e-016 
		-8.8817841970012525e-018 ;
	setAttr ".tg[0].tor" -type "double3" 21.026562260492955 -2.2332463480563678e-012 
		91.221897825960383 ;
	setAttr ".lr" -type "double3" -9.9446186188415879 -16.877109563791016 17.99186047149627 ;
	setAttr ".rst" -type "double3" 2.8421709430404008e-016 0.51534682636345941 -1.7763568394002505e-017 ;
	setAttr ".rsrr" -type "double3" 5.9528631168724904e-015 2.0784676362529594e-012 
		-8.0712787062998958e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "bouncy:R_Shoulder_JNT_parentConstraint1" -p "bouncy:R_Shoulder_JNT";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 4.4869579668280739 -3.975693351829396e-016 
		90.262074935153265 ;
	setAttr ".lr" -type "double3" 3.5742377871173843 4.393332106917784 78.251524036450803 ;
	setAttr ".rst" -type "double3" -0.47912999999999989 -0.23498063693339474 0 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-016 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "bouncy:hip_root_JNT" -p "bouncy:root_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.451266460341927e-032 0.038388043495797178 -0.06167583238395305 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4512664603419266e-030 103.61044163087992 -6.1675832383953049 1;
	setAttr ".radi" 0.5;
createNode joint -n "bouncy:L_Hip_JNT" -p "bouncy:hip_root_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.20266400206276064 -0.049657900567071638 0.033508361895781207 ;
	setAttr ".r" -type "double3" -0.29123779796508292 -21.103474031860838 1.5634036135707723 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 3.8937075550971878 -1.8054619823717375e-015 -180 ;
	setAttr ".bps" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 1.2218199990309199e-016 -0.99769174252213921 0.067905720695224991 0 2.3076567294586505e-008 0.067905720695224964 0.99769174252213877 0
		 20.266400206276064 98.644651574172755 -2.8167470488171844 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Knee_JNT" -p "bouncy:L_Hip_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.0658141036401502e-016 0.42160279433991937 -3.3306690738754696e-016 ;
	setAttr ".r" -type "double3" 1.0400139920962986e-012 1.6384008183874429e-028 7.1243627077334202e-028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -8.0859011829724636 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 -3.2458947228328349e-009 -0.99732444644478779 -0.07310231544621433 0 2.2847146989282174e-008 -0.073102315446214414 0.99732444644478746 0
		 20.266400206276078 56.581688920453026 0.046177110860077253 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Ankle_JNT" -p "bouncy:L_Knee_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -7.105427357601002e-017 0.42175806282161987 3.552713678800501e-017 ;
	setAttr ".r" -type "double3" -1.3012488502908865 7.4183132535484066 -19.871705158048137 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 73.083188462402717 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 2.091401092068602e-008 -0.36014343578158559 0.93289694268093448 0 9.753568849964891e-009 0.9328969426809347 0.36014343578158542 0
		 20.266400069377859 14.518726266733218 -3.0369719841769527 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:L_Ball_JNT" -p "bouncy:L_Ankle_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -7.105427357601002e-017 0.31806264107243104 -1.7763568394002505e-017 ;
	setAttr ".r" -type "double3" 7.5752331555082904e-022 -1.3942677707109593e-006 -1.8938083752864426e-022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 15.449523325310125 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 2.2756540508426748e-008 -0.098616046250303291 0.99512555761670485 0 3.8298592911374703e-009 0.99512555761670507 0.09861604625030318 0
		 20.266400734574422 3.0639090317741573 26.634994559572483 1;
	setAttr ".radi" 1.1247226679313629;
createNode joint -n "bouncy:L_Toe_JNT" -p "bouncy:L_Ball_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -7.105427357601002e-017 0.13077971580006356 1.7763568394002505e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 84.340518159837572 -7.0622500768802538e-031 -180 ;
	setAttr ".bps" -type "matrix" 1 -1.5670307993337999e-009 -2.3023300765730004e-008 0
		 1.5670307993338015e-009 1 1.3877787807814457e-017 0 2.302330076573e-008 0 0.99999999999999989 0
		 20.266401032183818 1.7742111815801003 39.649218320621728 1;
	setAttr ".radi" 1.1247226679313629;
createNode ikEffector -n "bouncy:effector4" -p "bouncy:L_Ball_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "bouncy:effector3" -p "bouncy:L_Ankle_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "bouncy:effector1" -p "bouncy:L_Knee_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "bouncy:R_Hip_JNT" -p "bouncy:hip_root_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.202664 -0.049657416308799336 0.033508332383953079 ;
	setAttr ".r" -type "double3" -0.37180910701077918 23.660296358022364 -1.7749475260368279 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 3.8937080953118581 -7.946796915747327e-016 180 ;
	setAttr ".bps" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2218199982314015e-016 -0.99769174188188825 0.067905730101986195 0 8.3160535013161454e-018 0.067905730101986195 0.99769174188188814 0
		 -20.266400000000001 98.644699999999986 -2.8167499999999968 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Knee_JNT" -p "bouncy:R_Hip_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -7.105427357601002e-017 0.42160316893732103 2.2204460492503131e-016 ;
	setAttr ".r" -type "double3" 6.2400774353551253e-013 4.8059061018195027e-029 4.0707093222256226e-028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -8.0858953113520826 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2213702010684842e-016 -0.99732445462548858 -0.073102203837996038 0 -8.9524379940819179e-018 -0.073102203837996038 0.99732445462548847 0
		 -20.266399999999997 56.581700000000005 0.046177100000006632 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Ankle_JNT" -p "bouncy:R_Knee_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -3.552713678800501e-017 0.42175843382678652 -2.3980817331903383e-016 ;
	setAttr ".r" -type "double3" -1.6344220025098763 -8.2740321307356464 22.31187984158376 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 73.08323006175074 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -4.4104754852790073e-017 -0.36014265405745993 0.93289724446395972 0 1.1424696243661743e-016 0.93289724446395983 0.36014265405745982 0
		 -20.266399999999997 14.518699999999995 -3.0369699999999882 1;
	setAttr ".radi" 2;
createNode joint -n "bouncy:R_Ball_JNT" -p "bouncy:R_Ankle_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 2.1316282072803005e-016 0.31806257523088105 5.3290705182007512e-017 ;
	setAttr ".r" -type "double3" 6.5472218614722551e-035 -7.4320657352694289e-009 -1.0094856357848065e-024 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 15.449455675644421 0 0 ;
	setAttr ".bps" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2077024309418243e-017 -0.098616387335734246 0.99512552381538721 0 1.2186772874903472e-016 0.99512552381538733 0.098616387335734162 0
		 -20.266400000000019 3.0639099999999981 26.634999999999998 1;
	setAttr ".radi" 1.1247226679313629;
createNode joint -n "bouncy:R_Toe_JNT" -p "bouncy:R_Ball_JNT";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.13077948146785112 1.7763568394002505e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 84.340498521354945 0 -180 ;
	setAttr ".bps" -type "matrix" 1 -1.1038765560531707e-016 -1.2186772874903469e-016 0
		 1.1038765560531709e-016 1.0000000000000002 -5.5511151231257827e-017 0 1.2186772874903469e-016 -1.3877787807814457e-017 1.0000000000000002 0
		 -20.266400000000019 1.7742099999999914 39.649200000000008 1;
	setAttr ".radi" 1.1247226679313629;
createNode ikEffector -n "bouncy:effector6" -p "bouncy:R_Ball_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "bouncy:effector5" -p "bouncy:R_Ankle_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "bouncy:effector2" -p "bouncy:R_Knee_JNT";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "bouncy:head_CTRL" -p "bouncy:Root_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" -6.3108872417680946e-032 2.000890636933395 0 ;
	setAttr ".sp" -type "double3" -6.3108872417680946e-032 2.000890636933395 0 ;
createNode nurbsCurve -n "bouncy:head_CTRLShape" -p "bouncy:head_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.13498880959984255 2.000890636933395 -0.13498880959984233
		-2.177975027049289e-017 2.000890636933395 -0.19090300530469662
		-0.13498880959984239 2.000890636933395 -0.13498880959984239
		-0.19090300530469662 2.000890636933395 -5.531891492120216e-017
		-0.13498880959984244 2.000890636933395 0.13498880959984236
		-5.7522801183949327e-017 2.000890636933395 0.19090300530469667
		0.13498880959984233 2.000890636933395 0.13498880959984244
		0.19090300530469662 2.000890636933395 1.0253437655022466e-016
		0.13498880959984255 2.000890636933395 -0.13498880959984233
		-2.177975027049289e-017 2.000890636933395 -0.19090300530469662
		-0.13498880959984239 2.000890636933395 -0.13498880959984239
		;
createNode transform -n "bouncy:L_Shoulder_CTRL" -p "bouncy:head_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 -85.605964931805346 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" 0.47912950462104287 1.7659118518666619 0 ;
	setAttr ".sp" -type "double3" 0.47912950462104287 1.7659118518666619 0 ;
createNode nurbsCurve -n "bouncy:L_Shoulder_CTRLShape" -p "bouncy:L_Shoulder_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "bouncy:L_Elbow_CTRL" -p "bouncy:L_Shoulder_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" 0.99289184570312583 1.7635620690876397 0.040316734313964951 ;
	setAttr ".sp" -type "double3" 0.99289184570312583 1.7635620690876397 0.040316734313964951 ;
createNode nurbsCurve -n "bouncy:L_Elbow_CTRLShape" -p "bouncy:L_Elbow_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.99289184570312583 1.6794827388836777 -0.043762595889996821
		0.99289184570312583 1.7635620690876397 -0.078589394775723673
		0.99289184570312583 1.8476413992916014 -0.043762595889996855
		0.99289184570312583 1.8824681981773284 0.040316734313964916
		0.99289184570312583 1.8476413992916014 0.12439606451792674
		0.99289184570312583 1.7635620690876397 0.1592228634036536
		0.99289184570312583 1.6794827388836779 0.12439606451792677
		0.99289184570312583 1.644655939997951 0.040316734313965014
		0.99289184570312583 1.6794827388836777 -0.043762595889996821
		0.99289184570312583 1.7635620690876397 -0.078589394775723673
		0.99289184570312583 1.8476413992916014 -0.043762595889996855
		;
createNode transform -n "bouncy:L_Hand_CTRL" -p "bouncy:L_Elbow_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" 1.3323304572839869 1.7563239494375331 0.17082491950238005 ;
	setAttr ".sp" -type "double3" 1.3323304572839869 1.7563239494375331 0.17082491950238005 ;
createNode nurbsCurve -n "bouncy:L_Hand_CTRLShape" -p "bouncy:L_Hand_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4173042932393134 1.7563239494375322 0.066255809649339595
		1.603776536415588 1.7563239494375336 0.10429468407081885
		1.7383211195156643 1.7563239494375347 0.23889263576723707
		1.7421236505033517 1.7563239494375347 0.39120401010247113
		1.6129566582974071 1.7563239494375338 0.47200686969462641
		1.4264844151211327 1.7563239494375325 0.43396799527314728
		1.2919398320210564 1.7563239494375313 0.29937004357672903
		1.2881373010333688 1.7563239494375313 0.14705866924149494
		1.4173042932393134 1.7563239494375322 0.066255809649339595
		1.603776536415588 1.7563239494375336 0.10429468407081885
		1.7383211195156643 1.7563239494375347 0.23889263576723707
		;
createNode transform -n "bouncy:R_Shoulder_CTRL" -p "bouncy:head_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 78.286534760298153 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" -0.47913000000000006 1.76591 0 ;
	setAttr ".sp" -type "double3" -0.47913000000000006 1.76591 0 ;
createNode nurbsCurve -n "bouncy:R_Shoulder_CTRLShape" -p "bouncy:R_Shoulder_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.47913000000000011 1.6148179639503233 -0.15109203604967678
		-0.47913000000000006 1.7659100000000001 -0.21367640654801764
		-0.47913 1.9170020360496773 -0.15109203604967686
		-0.47913 1.9795864065480178 -6.1918076856002163e-017
		-0.47913 1.9170020360496773 0.15109203604967683
		-0.47913000000000006 1.7659100000000001 0.21367640654801767
		-0.47913000000000011 1.6148179639503233 0.15109203604967689
		-0.47913000000000011 1.5522335934519824 1.1476601478287113e-016
		-0.47913000000000011 1.6148179639503233 -0.15109203604967678
		-0.47913000000000006 1.7659100000000001 -0.21367640654801764
		-0.47913 1.9170020360496773 -0.15109203604967686
		;
createNode transform -n "bouncy:R_Elbow_CTRL" -p "bouncy:R_Shoulder_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 22.586702024448293 -8.1878676580830998 7.2131305016155718 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" -0.99289199999999966 1.7635600000000002 0.04031669999999999 ;
	setAttr ".sp" -type "double3" -0.99289199999999966 1.7635600000000002 0.04031669999999999 ;
createNode nurbsCurve -n "bouncy:R_Elbow_CTRLShape" -p "bouncy:R_Elbow_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.99289199999999966 1.6794806697960383 -0.043762630203961782
		-0.99289199999999966 1.7635600000000002 -0.078589429089688634
		-0.99289199999999966 1.847639330203962 -0.043762630203961816
		-0.99289199999999966 1.8824661290896894 0.040316699999999955
		-0.99289199999999966 1.847639330203962 0.12439603020396177
		-0.99289199999999966 1.7635600000000002 0.15922282908968863
		-0.99289199999999966 1.6794806697960385 0.12439603020396181
		-0.99289199999999966 1.6446538709103116 0.040316700000000052
		-0.99289199999999966 1.6794806697960383 -0.043762630203961782
		-0.99289199999999966 1.7635600000000002 -0.078589429089688634
		-0.99289199999999966 1.847639330203962 -0.043762630203961816
		;
createNode transform -n "bouncy:R_hand_CTRL" -p "bouncy:R_Elbow_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" -1.3323299999999996 1.75632 0.17082499999999998 ;
	setAttr ".sp" -type "double3" -1.3323299999999996 1.75632 0.17082499999999998 ;
createNode nurbsCurve -n "bouncy:R_hand_CTRLShape" -p "bouncy:R_hand_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2897178629945183 1.7563199999999992 0.29865088670627754
		-1.4219097756132819 1.7563200000000005 0.43556016937417386
		-1.6076948368613291 1.7563200000000019 0.47682473600832143
		-1.7382426775458699 1.7563200000000019 0.39827236311988545
		-1.7370801431324228 1.756320000000001 0.24591796539032318
		-1.6048882305136589 1.7563199999999994 0.10900868272242718
		-1.419103169265612 1.7563199999999983 0.067744116088279474
		-1.2885553285810709 1.7563199999999983 0.14629648897671502
		-1.2897178629945183 1.7563199999999992 0.29865088670627754
		-1.4219097756132819 1.7563200000000005 0.43556016937417386
		-1.6076948368613291 1.7563200000000019 0.47682473600832143
		;
createNode transform -n "bouncy:R_Foot_CTRL" -p "bouncy:Master_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" -0.20266399999999998 0.00158062 -0.110159 ;
	setAttr ".sp" -type "double3" -0.20266399999999998 0.00158062 -0.110159 ;
createNode nurbsCurve -n "bouncy:R_Foot_CTRLShape" -p "bouncy:R_Foot_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.37115845477505077 6.8915042855643727e-010 -0.13739219566388949
		-0.21885905258124441 6.8915043241924748e-010 -0.25458578044753954
		-0.066559650387438316 6.8915042855643727e-010 -0.13739219566388966
		-0.076055367915485894 6.8915041923078847e-010 0.11110714874763918
		-0.066559650387438302 6.8915040990513966e-010 0.39403749055544779
		-0.19036640989044998 6.8915040604232945e-010 0.51123107533909784
		-0.32268262609690013 6.8915040990513966e-010 0.39403749055544796
		-0.35771553813506191 6.8915041923078847e-010 0.11110714874763952
		-0.37115845477505077 6.8915042855643727e-010 -0.13739219566388949
		-0.21885905258124441 6.8915043241924748e-010 -0.25458578044753954
		-0.066559650387438316 6.8915042855643727e-010 -0.13739219566388966
		;
createNode transform -n "bouncy:R_Knee_CTRL" -p "bouncy:R_Foot_CTRL";
	setAttr ".t" -type "double3" -0.191831 -0.232926 -0.04769410000000001 ;
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".rp" -type "double3" -0.20266400000000023 0.56581688920453022 0.45434506929332635 ;
	setAttr ".sp" -type "double3" -0.20266400000000023 0.56581688920453022 0.45434506929332635 ;
createNode locator -n "bouncy:R_Knee_CTRLShape" -p "bouncy:R_Knee_CTRL";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -0.20266400000000023 0.56581688920453022 0.45434506929332635 ;
createNode transform -n "bouncy:L_Foot_CTRL" -p "bouncy:Master_CTRL";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr -av ".tx";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr ".rp" -type "double3" 0.20266400206276097 0.0015806193108495758 -0.11015905003705395 ;
	setAttr ".sp" -type "double3" 0.20266400206276097 0.0015806193108495758 -0.11015905003705395 ;
createNode nurbsCurve -n "bouncy:L_Foot_CTRLShape" -p "bouncy:L_Foot_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.37115845683781173 4.3296451596217941e-018 -0.13739224570094344
		0.2188590546440054 8.1924553582639571e-018 -0.25458583048459349
		0.066559652450199305 4.3296451596217995e-018 -0.1373922457009436
		0.076055369978246884 -4.9960036108132004e-018 0.11110709871058523
		0.066559652450199278 -1.4321652381248203e-017 0.39403744051839384
		0.19036641195321097 -1.8184462579890367e-017 0.5112310253020439
		0.32268262815966109 -1.432165238124821e-017 0.39403744051839396
		0.35771554019782287 -4.9960036108132112e-018 0.11110709871058556
		0.37115845683781173 4.3296451596217941e-018 -0.13739224570094344
		0.2188590546440054 8.1924553582639571e-018 -0.25458583048459349
		0.066559652450199305 4.3296451596217995e-018 -0.1373922457009436
		;
createNode transform -n "bouncy:L_Knee_CTRL" -p "bouncy:L_Foot_CTRL";
	setAttr ".t" -type "double3" 0.19714900000000002 -0.10455200000000002 0.025484400000000004 ;
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".rp" -type "double3" 0.20266400206276078 0.56581688920453022 0.45434506929332635 ;
	setAttr ".sp" -type "double3" 0.20266400206276078 0.56581688920453022 0.45434506929332635 ;
createNode locator -n "bouncy:L_Knee_CTRLShape" -p "bouncy:L_Knee_CTRL";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0.20266400206276078 0.56581688920453022 0.45434506929332635 ;
createNode transform -n "bouncy:Deformers_GRP" -p "bouncy:Master_CTRL";
createNode ikHandle -n "bouncy:R_Toe_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:R_Toe_IK_parentConstraint1" -p "bouncy:R_Toe_IK";
	addAttr -ci true -k true -sn "w0" -ln "R_RFR_Toe_JNTW0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 7.105427357601002e-017 0.0044689999999999938 
		-0.016161479999999912 ;
	setAttr ".tg[0].tor" -type "double3" 174.34049852135493 6.9670131316370061e-015 
		6.361109362927032e-015 ;
	setAttr ".lr" -type "double3" 84.340498521354945 -7.0167092985348775e-015 180 ;
	setAttr ".rst" -type "double3" -0.20266400000000012 0.017742099999999917 0.396492 ;
	setAttr ".rsrr" -type "double3" 84.340498521354945 -7.0167092985348775e-015 180 ;
	setAttr -k on ".w0";
createNode ikHandle -n "bouncy:R_Ball_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:R_Ball_IK_parentConstraint1" -p "bouncy:R_Ball_IK";
	addAttr -ci true -k true -sn "w0" -ln "R_RFR_Ball_JNTW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-016 0.0069146615294591388 
		0.028552800210196825 ;
	setAttr ".tg[0].tor" -type "double3" 0.96417824649718131 -2.0582443373205879e-015 
		179.99999999999997 ;
	setAttr ".lr" -type "double3" 68.891042845710544 3.0081904773557856e-014 180 ;
	setAttr ".rst" -type "double3" -0.20266400000000018 0.030639099999999992 0.26635 ;
	setAttr ".rsrr" -type "double3" 68.891042845710544 3.0081904773557856e-014 180 ;
	setAttr -k on ".w0";
createNode ikHandle -n "bouncy:L_Toe_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:L_Toe_IK_parentConstraint1" -p "bouncy:L_Toe_IK";
	addAttr -ci true -k true -sn "w0" -ln "L_RFL_Toe_JNTW0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" -8.2590772265689332e-009 0.0044688805752163318 
		-0.016161492504951424 ;
	setAttr ".tg[0].tor" -type "double3" 174.34051815983756 8.9784241341866937e-008 
		-1.3191379509930288e-006 ;
	setAttr ".lr" -type "double3" 84.340518159837572 -1.3191379580097384e-006 180 ;
	setAttr ".rst" -type "double3" 0.20266401032183823 0.017742111815801005 0.39649218320621737 ;
	setAttr ".rsrr" -type "double3" 84.340518159837572 -1.3191379580097384e-006 180 ;
	setAttr -k on ".w0";
createNode ikHandle -n "bouncy:L_Ball_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:L_Ball_IK_parentConstraint1" -p "bouncy:L_Ball_IK";
	addAttr -ci true -k true -sn "w0" -ln "L_RFL_Ball_JNTW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 5.282983117638196e-009 0.0069148614848426248 
		0.028552709421535136 ;
	setAttr ".tg[0].tor" -type "double3" 0.96413023531409969 -5.7892208333454163e-007 
		-179.99999881128838 ;
	setAttr ".lr" -type "double3" 68.890994834527419 -1.1015849322523061e-006 -179.99999955329429 ;
	setAttr ".rst" -type "double3" 0.20266400734574419 0.030639090317741573 0.26634994559572484 ;
	setAttr ".rsrr" -type "double3" 68.890994834527433 -1.1015849322523067e-006 -179.99999955329429 ;
	setAttr -k on ".w0";
createNode ikHandle -n "bouncy:R_Leg_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:R_Leg_IK_parentConstraint1" -p "bouncy:R_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "R_RFR_Ankle_JNTW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-016 0.012320999999999938 
		0.031354000000000083 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244611e-014 -3.1252289327794574e-014 
		-6.967726220519868e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" -0.20266399999999998 0.14518699999999995 -0.030369699999999882 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "bouncy:R_Leg_IK_poleVectorConstraint1" -p "bouncy:R_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "R_Knee_CTRLW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -2.1316282072803005e-016 -0.42063011079546969 0.48251256929332637 ;
	setAttr -k on ".w0";
createNode ikHandle -n "bouncy:L_Leg_IK" -p "bouncy:Deformers_GRP";
	setAttr ".roc" yes;
createNode parentConstraint -n "bouncy:L_Leg_IK_parentConstraint1" -p "bouncy:L_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "L_RFL_Ankle_JNTW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.3066460979871408e-009 0.012321427088891196 
		0.031354007688794157 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317584e-014 1.0417436336335142e-014 
		-7.0700001094584849e-015 ;
	setAttr ".rst" -type "double3" 0.20266400075611504 0.14518726266733217 -0.030369719841769522 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "bouncy:L_Leg_IK_poleVectorConstraint1" -p "bouncy:L_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "L_Knee_CTRLW0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.4210854715202004e-016 -0.42062962653719738 0.48251253978149822 ;
	setAttr -k on ".w0";
createNode transform -n "bouncy:Geometry_GRP" -p "bouncy:Bouncy_GRP";
	setAttr ".t" -type "double3" 0 1.0011531576566526 0 ;
createNode transform -n "bouncy:R_Arm_GRP" -p "bouncy:Geometry_GRP";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "bouncy:R_shoulder_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 0.48147924423217775 0.76187908172607421 0 ;
	setAttr ".sp" -type "double3" 0.48147924423217775 0.76187908172607421 0 ;
createNode mesh -n "bouncy:R_shoulder_GEOShape" -p "bouncy:R_shoulder_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_shoulder_GEOShapeOrig" -p "bouncy:R_shoulder_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  0.49712056 0.7751351 0.10404719 0.48690087 
		0.76543105 0.10584979 0.47314495 0.76187903 0.10572004 0.45953855 0.76543105 0.1036927 
		0.44972757 0.7751351 0.100311 0.4463408 0.78839111 0.096481055 0.45028588 0.80164713 
		0.0932291 0.46050552 0.81135106 0.091426499 0.47426152 0.81490302 0.091556251 0.48786786 
		0.81135106 0.093583584 0.49767888 0.80164713 0.096965283 0.50106555 0.78839111 0.10079522 
		0.5197463 0.76004046 0.098886013 0.5000034 0.74129367 0.10236839 0.47342891 0.73443186 
		0.10211777 0.44714341 0.74129367 0.098201215 0.42818996 0.76004046 0.091668256 0.42164737 
		0.78564918 0.08426936 0.42926854 0.81125778 0.077987075 0.4490115 0.83000457 0.074504703 
		0.47558597 0.83686638 0.074755393 0.50187147 0.83000457 0.078671873 0.52082485 0.81125778 
		0.085204817 0.52736741 0.78564918 0.092603713 0.53976417 0.74507117 0.086985894 0.51184356 
		0.71855909 0.09191075 0.47426152 0.70885503 0.091556266 0.43708804 0.71855909 0.086017445 
		0.41028407 0.74507117 0.076778464 0.40103149 0.78128713 0.066314869 0.41180941 0.81750333 
		0.057430364 0.43973011 0.84401536 0.052505508 0.47731212 0.85371947 0.052859992 0.51448542 
		0.84401536 0.058398787 0.54128939 0.81750333 0.067637809 0.55054212 0.78128713 0.078101404 
		0.55581003 0.73124725 0.069157861 0.52161443 0.69877684 0.075189464 0.47558597 0.68689179 
		0.074755318 0.43005818 0.69877684 0.067971721 0.39722997 0.73124725 0.056656357 0.38589787 
		0.7756027 0.043841105 0.3990981 0.81995821 0.032959845 0.43329373 0.85242862 0.026928211 
		0.47932217 0.86431366 0.027362328 0.52485007 0.85242862 0.034145948 0.55767816 0.81995821 
		0.045461349 0.56901026 0.7756027 0.058276609 0.5667904 0.71951085 0.04661683 0.5286501 
		0.68329483 0.053344265 0.47731212 0.67003876 0.052859992 0.42653236 0.68329483 0.045293897 
		0.38991734 0.71951085 0.032673206 0.37727794 0.76898295 0.018379657 0.39200097 0.81845504 
		0.0062431856 0.43014127 0.85467112 -0.00048417677 0.48147923 0.86792719 -1.1905653e-017 
		0.53225899 0.85467112 0.0075661452 0.568874 0.81845504 0.020186814 0.58151335 0.76898295 
		0.034480371 0.57195693 0.71066177 0.020898923 0.53247118 0.67316818 0.027863627 0.47932217 
		0.65944451 0.027362328 0.42675114 0.67316818 0.01952932 0.38884446 0.71066177 0.006463402 
		0.37575921 0.76187915 -0.0083343396 0.39100155 0.8130964 -0.020898923 0.43048736 
		0.85058999 -0.027863627 0.48363635 0.8643136 -0.027362328 0.53620738 0.85058999 -0.01952932 
		0.57411408 0.8130964 -0.006463402 0.58719927 0.76187915 0.0083343424 0.57095754 0.70530313 
		-0.0062431856 0.53281724 0.66908699 0.00048417677 0.48147923 0.65583098 -1.1893253e-017 
		0.4306995 0.66908699 -0.0075661452 0.39408448 0.70530313 -0.020186814 0.38144505 
		0.75477517 -0.034480371 0.39616811 0.80424726 -0.04661683 0.43430841 0.8404634 -0.053344265 
		0.4856464 0.85371941 -0.052859992 0.53642613 0.8404634 -0.045293897 0.5730412 0.80424726 
		-0.032673206 0.58568054 0.75477517 -0.018379655 0.56386042 0.70379996 -0.032959845 
		0.52966475 0.67132956 -0.026928211 0.48363635 0.65944451 -0.027362328 0.43810844 
		0.67132956 -0.034145948 0.40528035 0.70379996 -0.045461349 0.39394826 0.74815542 
		-0.058276609 0.40714845 0.79251093 -0.069157861 0.44134408 0.82498139 -0.075189464 
		0.48737255 0.83686638 -0.074755318 0.53290033 0.82498139 -0.067971721 0.56572855 
		0.79251093 -0.056656357 0.57706064 0.74815542 -0.043841105 0.55114901 0.70625478 
		-0.057430364 0.52322841 0.67974281 -0.052505508 0.4856464 0.67003876 -0.052859992 
		0.44847307 0.67974281 -0.058398787 0.4216691 0.70625478 -0.067637809 0.41241634 0.74247092 
		-0.078101397 0.42319435 0.778687 -0.086985894 0.45111492 0.80519897 -0.09191075 0.48869702 
		0.81490308 -0.091556266 0.52587032 0.80519897 -0.086017445 0.55267435 0.778687 -0.076778464 
		0.56192708 0.74247092 -0.066314861 0.53368998 0.71250045 -0.077987075 0.51394701 
		0.6937536 -0.074504696 0.48737255 0.68689179 -0.074755393 0.46108705 0.6937536 -0.078671873 
		0.44213364 0.71250045 -0.085204817 0.43559092 0.73810905 -0.092603713 0.44321221 
		0.76371771 -0.098886013 0.46295509 0.7824645 -0.10236839 0.48952961 0.78932631 -0.10211777 
		0.51581514 0.7824645 -0.098201215 0.53476846 0.76371771 -0.091668256 0.54131109 0.73810905 
		-0.08426936 0.5126726 0.72211105 -0.0932291 0.50245303 0.71240699 -0.091426499 0.48869702 
		0.70885503 -0.091556244 0.47509062 0.71240699 -0.093583584 0.4652797 0.72211105 -0.096965283 
		0.46189293 0.73536706 -0.10079524 0.46583793 0.74862307 -0.10404719 0.47605762 0.75832719 
		-0.10584979 0.48981357 0.76187915 -0.10572004 0.50341994 0.75832719 -0.1036927 0.51323092 
		0.74862307 -0.100311 0.5166176 0.73536706 -0.096481062 0.47342891 0.78932631 0.10211772 
		0.48952961 0.73443186 -0.10211772;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_upperArm_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 0.76265079498291022 0.75610664367675784 0.016441071033477785 ;
	setAttr ".sp" -type "double3" 0.76265079498291022 0.75610664367675784 0.016441071033477785 ;
createNode mesh -n "bouncy:R_upperArm_GEOShape" -p "bouncy:R_upperArm_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_upperArm_GEOShapeOrig" -p "bouncy:R_upperArm_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_elbow_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 0.99289180755615236 0.76187908172607421 0.040316732376813887 ;
	setAttr ".sp" -type "double3" 0.99289180755615236 0.76187908172607421 0.040316732376813887 ;
createNode mesh -n "bouncy:R_elbow_GEOShape" -p "bouncy:R_elbow_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_elbow_GEOShapeOrig" -p "bouncy:R_elbow_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  1.0043274 0.71870345 0.038566984 1.0019206 
		0.71870345 0.03308351 0.99709433 0.71870345 0.029538162 0.99114203 0.71870345 0.028880963 
		0.98565859 0.71870345 0.031287946 0.98211324 0.71870345 0.036114182 0.98145598 0.71870345 
		0.042066511 0.983863 0.71870345 0.047549982 0.98868918 0.71870345 0.051095292 0.99464154 
		0.71870345 0.051752523 1.0001252 0.71870345 0.049345538 1.0036705 0.71870345 0.044519275 
		1.014984 0.72316885 0.036936443 1.0103341 0.72316885 0.026343189 1.0010105 0.72316885 
		0.019494139 0.98951149 0.72316885 0.018224513 0.97891825 0.72316885 0.022874439 0.97206914 
		0.72316885 0.032198038 0.97079957 0.72316885 0.043697033 0.97544944 0.72316885 0.054290257 
		0.98477304 0.72316885 0.061139315 0.99627215 0.72316885 0.062408954 1.0068653 0.72316885 
		0.057759013 1.0137143 0.72316885 0.04843542 1.024135 0.73027235 0.035536278 1.0175589 
		0.73027235 0.020555196 1.0043734 0.73027235 0.010869158 0.98811144 0.73027235 0.0090736477 
		0.97313011 0.73027235 0.015649615 0.96344429 0.73027235 0.028835159 0.9616487 0.73027235 
		0.045097187 0.96822476 0.73027235 0.060078315 0.98141021 0.73027235 0.069764286 0.9976722 
		0.73027235 0.071559846 1.0126532 0.73027235 0.064983852 1.0223393 0.73027235 0.051798299 
		1.0311567 0.73952973 0.034461886 1.0231028 0.73952973 0.016113861 1.0069537 0.73952973 
		0.0042509679 0.98703694 0.73952973 0.002051868 0.96868896 0.73952973 0.010105816 
		0.95682609 0.73952973 0.026254738 0.95462686 0.73952973 0.046171568 0.96268088 0.73952973 
		0.064519607 0.9788298 0.73952973 0.076382495 0.99874663 0.73952973 0.078581601 1.0170946 
		0.73952973 0.07052765 1.0289575 0.73952973 0.054378718 1.0355706 0.75031018 0.033786524 
		1.0265877 0.75031018 0.013321949 1.0085759 0.75031018 9.0575537e-005 0.98636144 0.75031018 
		-0.0023621686 0.9658969 0.75031018 0.0066208094 0.95266563 0.75031018 0.024632644 
		0.95021278 0.75031018 0.046846941 0.95919591 0.75031018 0.06731154 0.97720766 0.75031018 
		0.080542892 0.99942207 0.75031018 0.082995661 1.0198865 0.75031018 0.074012667 1.0331179 
		0.75031018 0.056000851 1.0370762 0.76187915 0.03355613 1.0277764 0.76187915 0.012369642 
		1.0091292 0.76187915 -0.0013284568 0.98613119 0.76187915 -0.0038677063 0.96494478 
		0.76187915 0.0054321461 0.95124656 0.76187915 0.024079347 0.9487074 0.76187915 0.047077313 
		0.95800722 0.76187915 0.068263799 0.97665435 0.76187915 0.08196193 0.99965233 0.76187915 
		0.08450117 1.020839 0.76187915 0.07520131 1.0345368 0.76187915 0.056554113 1.0355706 
		0.77344793 0.033786524 1.0265877 0.77344793 0.013321949 1.0085759 0.77344793 9.0575537e-005 
		0.98636144 0.77344793 -0.0023621686 0.9658969 0.77344793 0.0066208094 0.95266563 
		0.77344793 0.024632644 0.95021278 0.77344793 0.046846941 0.95919591 0.77344793 0.06731154 
		0.97720766 0.77344793 0.080542892 0.99942207 0.77344793 0.082995661 1.0198865 0.77344793 
		0.074012667 1.0331179 0.77344793 0.056000851 1.0311567 0.78422844 0.034461886 1.0231028 
		0.78422844 0.016113861 1.0069537 0.78422844 0.0042509679 0.98703694 0.78422844 0.002051868 
		0.96868896 0.78422844 0.010105816 0.95682609 0.78422844 0.026254738 0.95462686 0.78422844 
		0.046171568 0.96268088 0.78422844 0.064519607 0.9788298 0.78422844 0.076382495 0.99874663 
		0.78422844 0.078581601 1.0170946 0.78422844 0.07052765 1.0289575 0.78422844 0.054378718 
		1.024135 0.79348582 0.035536278 1.0175589 0.79348582 0.020555196 1.0043734 0.79348582 
		0.010869158 0.98811144 0.79348582 0.0090736477 0.97313011 0.79348582 0.015649615 
		0.96344429 0.79348582 0.028835159 0.9616487 0.79348582 0.045097187 0.96822476 0.79348582 
		0.060078315 0.98141021 0.79348582 0.069764286 0.9976722 0.79348582 0.071559846 1.0126532 
		0.79348582 0.064983852 1.0223393 0.79348582 0.051798299 1.014984 0.80058932 0.036936443 
		1.0103341 0.80058932 0.026343189 1.0010105 0.80058932 0.019494139 0.98951149 0.80058932 
		0.018224513 0.97891825 0.80058932 0.022874439 0.97206914 0.80058932 0.032198038 0.97079957 
		0.80058932 0.043697033 0.97544944 0.80058932 0.054290257 0.98477304 0.80058932 0.061139315 
		0.99627215 0.80058932 0.062408954 1.0068653 0.80058932 0.057759013 1.0137143 0.80058932 
		0.04843542 1.0043274 0.80505472 0.038566984 1.0019206 0.80505472 0.03308351 0.99709433 
		0.80505472 0.029538162 0.99114203 0.80505472 0.028880963 0.98565859 0.80505472 0.031287946 
		0.98211324 0.80505472 0.036114182 0.98145598 0.80505472 0.042066511 0.983863 0.80505472 
		0.047549982 0.98868918 0.80505472 0.051095292 0.99464154 0.80505472 0.051752523 1.0001252 
		0.80505472 0.049345538 1.0036705 0.80505472 0.044519275 0.99289185 0.71718043 0.040316734 
		0.99289185 0.80657774 0.040316734;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_lowerARM_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 1.1627888488769531 0.75610668182373053 0.10361551403999329 ;
	setAttr ".sp" -type "double3" 1.1627888488769531 0.75610668182373053 0.10361551403999329 ;
createNode mesh -n "bouncy:R_lowerARM_GEOShape" -p "bouncy:R_lowerARM_GEO";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_lowerARM_GEOShapeOrig" -p "bouncy:R_lowerARM_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  1.0292652 0.75078982 0.029080622 1.0259793 
		0.7786293 0.037508268 1.0153458 0.7786293 0.064780727 1.0120598 0.75078982 0.073208414 
		1.0206624 0.73358405 0.051144492 1.3135179 0.75246298 0.14790919 1.3112662 0.77154166 
		0.15368469 1.3039789 0.77154166 0.1723748 1.3017268 0.75246298 0.1781504 1.3076222 
		0.74067169 0.16302975;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_wrist_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 1.3315214538574218 0.75819866180419926 0.17234796524047852 ;
	setAttr ".sp" -type "double3" 1.3315214538574218 0.75819866180419926 0.17234796524047852 ;
createNode mesh -n "bouncy:R_wrist_GEOShape" -p "bouncy:R_wrist_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_wrist_GEOShapeOrig" -p "bouncy:R_wrist_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  1.3565401 0.76398307 0.13576135 1.3525949 
		0.76821762 0.13422312 1.3472055 0.76976752 0.13212183 1.3418163 0.76821762 0.13002057 
		1.337871 0.76398307 0.12848233 1.336427 0.75819862 0.12791927 1.337871 0.75241417 
		0.12848233 1.3418163 0.74817967 0.13002057 1.3472055 0.74662977 0.13212183 1.3525949 
		0.74817967 0.13422312 1.3565401 0.75241417 0.13576135 1.3579842 0.75819862 0.13632439 
		1.3636163 0.7693733 0.1433132 1.3559946 0.77755374 0.14034158 1.3455833 0.78054792 
		0.13628219 1.3351723 0.77755374 0.13222285 1.3275505 0.7693733 0.12925129 1.3247609 
		0.75819862 0.12816352 1.3275506 0.747024 0.12925124 1.3351723 0.73884362 0.13222286 
		1.3455833 0.73584938 0.13628222 1.3559946 0.73884362 0.14034158 1.3636163 0.747024 
		0.1433132 1.366406 0.75819862 0.14440089 1.3685052 0.77400208 0.15284373 1.3577267 
		0.78557098 0.14864121 1.3430029 0.78980535 0.14290042 1.3282793 0.78557098 0.13715965 
		1.3175006 0.77400208 0.13295704 1.3135555 0.75819862 0.13141885 1.3175006 0.74239522 
		0.13295706 1.3282793 0.73082644 0.13715963 1.3430029 0.72659194 0.14290038 1.3577267 
		0.73082644 0.14864115 1.3685052 0.74239522 0.15284373 1.3724506 0.75819862 0.15438201 
		1.370874 0.77755374 0.16370344 1.357673 0.79172266 0.1585564 1.33964 0.79690886 0.15152544 
		1.3216072 0.79172266 0.14449444 1.3084061 0.77755374 0.1393473 1.3035746 0.75819862 
		0.13746344 1.3084061 0.73884356 0.1393473 1.3216072 0.7246747 0.14449444 1.33964 
		0.71948844 0.15152541 1.357673 0.7246747 0.1585564 1.370874 0.73884356 0.16370346 
		1.3757061 0.75819862 0.16558743 1.3705608 0.77978647 0.17515224 1.3558371 0.7955898 
		0.16941148 1.335724 0.80137426 0.1615694 1.3156111 0.7955898 0.15372735 1.3008871 
		0.77978647 0.14798659 1.2954978 0.75819862 0.14588529 1.3008871 0.73661089 0.14798659 
		1.3156111 0.72080749 0.15372735 1.335724 0.71502304 0.1615694 1.3558371 0.72080749 
		0.16941148 1.3705608 0.73661089 0.17515223 1.3759502 0.75819862 0.17725353 1.3675873 
		0.78054804 0.18640999 1.3523439 0.79690886 0.18046661 1.3315213 0.80289733 0.17234798 
		1.3106989 0.79690886 0.1642293 1.2954556 0.78054804 0.15828601 1.2898762 0.75819862 
		0.15611061 1.2954556 0.73584932 0.15828601 1.3106989 0.71948844 0.16422927 1.3315213 
		0.71349996 0.17234798 1.3523439 0.71948844 0.18046665 1.3675873 0.73584932 0.18640999 
		1.3731667 0.75819862 0.1885854 1.3621558 0.77978647 0.19670936 1.3474319 0.7955898 
		0.19096859 1.3273189 0.80137426 0.18312646 1.3072058 0.7955898 0.17528448 1.292482 
		0.77978647 0.16954373 1.2870927 0.75819862 0.16744241 1.292482 0.73661077 0.1695437 
		1.3072058 0.72080743 0.17528448 1.3273189 0.71502304 0.18312651 1.3474319 0.72080743 
		0.19096859 1.3621558 0.73661077 0.19670936 1.367545 0.75819862 0.19881065 1.3546367 
		0.7775538 0.20534861 1.3414356 0.79172266 0.20020153 1.3234029 0.79690886 0.19317053 
		1.3053699 0.79172266 0.18613958 1.2921687 0.7775538 0.18099248 1.2873371 0.75819862 
		0.17910856 1.2921687 0.73884356 0.18099248 1.3053699 0.72467458 0.18613958 1.3234029 
		0.71948844 0.19317053 1.3414356 0.72467458 0.20020157 1.3546367 0.73884356 0.20534863 
		1.3594682 0.75819862 0.20723255 1.3455422 0.77400202 0.21173887 1.3347636 0.78557086 
		0.20753637 1.3200396 0.78980535 0.20179558 1.305316 0.78557086 0.1960548 1.2945375 
		0.77400202 0.19185221 1.2905923 0.75819862 0.19031399 1.2945375 0.74239522 0.19185221 
		1.305316 0.73082644 0.19605476 1.3200396 0.72659189 0.2017955 1.3347636 0.73082644 
		0.2075363 1.3455422 0.74239522 0.21173887 1.3494874 0.75819862 0.21327715 1.3354923 
		0.7693733 0.21544476 1.3278708 0.77755374 0.21247311 1.3174596 0.78054804 0.20841372 
		1.3070481 0.77755374 0.20435438 1.2994267 0.7693733 0.20138277 1.2966368 0.75819862 
		0.20029505 1.2994267 0.747024 0.20138277 1.3070481 0.73884356 0.20435441 1.3174596 
		0.73584932 0.20841375 1.3278708 0.73884356 0.21247312 1.3354923 0.747024 0.21544474 
		1.338282 0.75819862 0.21653242 1.3251718 0.76398307 0.21621363 1.3212266 0.76821762 
		0.21467538 1.3158373 0.76976752 0.21257414 1.3104482 0.76821762 0.21047287 1.3065027 
		0.76398307 0.20893459 1.3050587 0.75819862 0.20837156 1.3065027 0.75241423 0.20893459 
		1.3104482 0.74817967 0.21047284 1.3158373 0.74662977 0.21257412 1.3212266 0.74817967 
		0.21467538 1.3251718 0.75241423 0.21621363 1.3266159 0.75819862 0.21677665 1.3477588 
		0.75819868 0.13070281 1.315284 0.75819862 0.21399313;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_hand_GEO" -p "bouncy:R_Arm_GRP";
	setAttr ".rp" -type "double3" 1.4916309356689454 0.74411182403564458 0.24338027477264404 ;
	setAttr ".sp" -type "double3" 1.4916309356689454 0.74411182403564458 0.24338027477264404 ;
createNode mesh -n "bouncy:R_hand_GEOShape" -p "bouncy:R_hand_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_hand_GEOShapeOrig" -p "bouncy:R_hand_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.46089172 0.25 0.46089172 0.5 0.46089172 0.75 0.46089172 
		0 0.46089172 1 0.625 0.36555141 0.74055141 0.25 0.46089172 0.36555141 0.25944859 
		0.25 0.375 0.36555141 0.25944859 0 0.375 0.88444859 0.46089172 0.88444859 0.625 0.88444859 
		0.74055141 0 0.375 0 0.46089172 0 0.46089172 0.25 0.375 0.25 0.375 0 0.46089172 0 
		0.46089172 0.25 0.375 0.25 0.25944859 0 0.375 0 0.375 0.25 0.25944859 0.25 0.125 
		0 0.125 0.25 0.125 0.12043312 0.375 0.62956691 0.125 0.12043312 0.25944859 0.12043312 
		0.375 0.12043312 0.375 0.12043312 0.375 0.12043312 0.375 0.12043312 0.46089172 0.12043312 
		0.46089172 0.12043312 0.46089172 0.12043312 0.625 0.12043312 0.74055141 0.12043312 
		0.625 0.62956691 0.875 0.12043312 0.46089172 0.62956691 0.55142176 0.5 0.55142176 
		0.62956691 0.55142176 0.75 0.55142176 0.88444859 0.55142176 0 0.55142176 1 0.55142176 
		0.12043312 0.55142176 0.25 0.55142176 0.36555141;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  1.3645688 0.73414212 0.28242609 1.601297 
		0.72398889 0.32734472 1.3645688 0.78184348 0.28242609 1.6016846 0.77169031 0.32749575 
		1.4317076 0.78184348 0.11023101 1.6394582 0.77169031 0.23061618 1.4317076 0.73414212 
		0.11023101 1.6390704 0.72398889 0.23046507 1.4422728 0.78184348 0.3127228 1.5094115 
		0.78184348 0.14052774 1.5094115 0.73414212 0.14052774 1.4422728 0.73414212 0.3127228 
		1.637653 0.77176553 0.28993425 1.4733049 0.78731292 0.23313327 1.3956008 0.78731292 
		0.20283657 1.3956008 0.72867274 0.20283657 1.4733049 0.72867274 0.23313327 1.6372654 
		0.72391367 0.28978321 1.3816386 0.7183435 0.31964433 1.4385158 0.72982895 0.32745942 
		1.4274706 0.76755995 0.33178151 1.3781269 0.76186556 0.31797788 1.4267732 0.69696403 
		0.37139091 1.4588147 0.7050212 0.37333363 1.4515289 0.73589426 0.37755316 1.4194875 
		0.72783697 0.3756105 1.3703232 0.72472602 0.18931061 1.3381976 0.7309317 0.22483647 
		1.3381976 0.78505397 0.22483647 1.3703232 0.79125959 0.18931061 1.3707602 0.7309317 
		0.14132124 1.3707602 0.78505397 0.14132124 1.428703 0.75856149 0.10159175 1.3644223 
		0.75843781 0.13438234 1.3630937 0.75819862 0.18465804 1.3300791 0.75843781 0.22246508 
		1.3578925 0.75856149 0.28320438 1.3697661 0.73642969 0.32481334 1.4217349 0.70795333 
		0.38516879 1.4631766 0.72029996 0.38377637 1.4428842 0.74894661 0.33781421 1.4398462 
		0.75856149 0.31515807 1.6133438 0.7484082 0.33283168 1.6512791 0.74840528 0.29321587 
		1.6531829 0.7484082 0.23065364 1.5106567 0.75856149 0.13354544 1.5811512 0.78051001 
		0.19022487 1.5892812 0.75722802 0.18711498 1.580938 0.73280859 0.1901415 1.5637535 
		0.73031497 0.26438412 1.5299984 0.73280859 0.32078895 1.5355561 0.75722802 0.32490769 
		1.5302123 0.78051001 0.32087231 1.5639671 0.78300375 0.26446742;
	setAttr -s 104 ".ed[0:103]"  0 11 0 2 8 0 
		4 9 0 6 10 0 0 36 0 1 42 0 
		2 14 0 3 12 0 4 32 0 5 44 0 
		6 15 0 7 17 0 8 52 0 9 46 0 
		8 13 0 10 48 0 9 45 0 11 50 0 
		10 16 0 11 41 0 12 5 0 13 9 0 
		12 53 0 14 4 0 13 14 0 15 0 0 
		16 11 0 15 16 0 17 1 0 16 49 0 
		17 43 0 0 18 0 11 19 0 18 19 0 
		8 20 0 19 40 0 2 21 0 21 20 0 
		18 37 0 18 22 0 19 23 0 22 23 0 
		20 24 0 23 39 0 21 25 0 25 24 0 
		22 38 0 15 26 0 0 27 0 26 27 0 
		2 28 0 27 35 0 14 29 0 28 29 0 
		29 34 0 6 30 0 30 26 0 4 31 0 
		29 31 0 31 33 0 32 6 0 33 30 0 
		32 33 0 34 26 0 33 34 0 35 28 0 
		34 35 0 36 2 0 35 36 0 37 21 0 
		36 37 0 38 25 0 37 38 0 39 24 0 
		38 39 0 40 20 0 39 40 0 41 8 0 
		40 41 0 42 3 0 41 51 0 43 12 0 
		42 43 0 44 7 0 43 44 0 45 10 0 
		44 47 0 45 32 0 46 5 0 47 45 0 
		46 47 0 48 7 0 47 48 0 49 17 0 
		48 49 0 50 1 0 49 50 0 51 42 0 
		50 51 0 52 3 0 51 52 0 53 13 0 
		52 53 0 53 46 0;
	setAttr -s 52 ".fc[0:51]" -type "polyFaces" 
		f 4 74 73 -46 -72 
		mu 0 4 50 51 35 36 
		f 4 1 14 24 -7 
		mu 0 4 2 14 21 23 
		f 4 2 16 87 -9 
		mu 0 4 4 15 58 44 
		f 4 27 26 -1 -26 
		mu 0 4 25 26 18 8 
		f 4 82 81 -8 -80 
		mu 0 4 54 55 20 3 
		f 4 66 65 53 54 
		mu 0 4 46 47 39 40 
		f 4 12 102 101 -15 
		mu 0 4 14 66 67 21 
		f 4 -17 13 90 89 
		mu 0 4 58 15 59 60 
		f 4 -27 29 96 -18 
		mu 0 4 18 26 62 64 
		f 4 -78 80 100 -13 
		mu 0 4 14 53 65 66 
		f 4 -102 103 -14 -22 
		mu 0 4 21 67 59 15 
		f 4 -25 21 -3 -24 
		mu 0 4 23 21 15 4 
		f 4 64 -55 58 59 
		mu 0 4 45 46 40 42 
		f 4 3 18 -28 -11 
		mu 0 4 6 16 26 25 
		f 4 -30 -19 15 94 
		mu 0 4 62 26 16 61 
		f 4 -82 84 -10 -21 
		mu 0 4 20 55 57 11 
		f 4 0 32 -34 -32 
		mu 0 4 0 17 30 29 
		f 4 77 34 -76 78 
		mu 0 4 53 14 31 52 
		f 4 -2 36 37 -35 
		mu 0 4 14 2 32 31 
		f 4 -68 70 69 -37 
		mu 0 4 2 48 49 32 
		f 4 33 40 -42 -40 
		mu 0 4 29 30 34 33 
		f 4 75 42 -74 76 
		mu 0 4 52 31 35 51 
		f 4 -38 44 45 -43 
		mu 0 4 31 32 36 35 
		f 4 -70 72 71 -45 
		mu 0 4 32 49 50 36 
		f 4 25 48 -50 -48 
		mu 0 4 24 0 38 37 
		f 4 67 50 -66 68 
		mu 0 4 48 2 39 47 
		f 4 6 52 -54 -51 
		mu 0 4 2 22 40 39 
		f 4 10 47 -57 -56 
		mu 0 4 12 24 37 41 
		f 4 23 57 -59 -53 
		mu 0 4 22 13 42 40 
		f 4 8 62 -60 -58 
		mu 0 4 13 43 45 42 
		f 4 60 55 -62 -63 
		mu 0 4 43 12 41 45 
		f 4 56 -64 -65 61 
		mu 0 4 41 37 46 45 
		f 4 49 51 -67 63 
		mu 0 4 37 38 47 46 
		f 4 4 -69 -52 -49 
		mu 0 4 0 48 47 38 
		f 4 -71 -5 31 38 
		mu 0 4 49 48 0 29 
		f 4 -73 -39 39 46 
		mu 0 4 50 49 29 33 
		f 4 41 43 -75 -47 
		mu 0 4 33 34 51 50 
		f 4 35 -77 -44 -41 
		mu 0 4 30 52 51 34 
		f 4 19 -79 -36 -33 
		mu 0 4 17 53 52 30 
		f 4 -81 -20 17 98 
		mu 0 4 65 53 17 63 
		f 4 -29 30 -83 -6 
		mu 0 4 1 28 55 54 
		f 4 -85 -31 -12 -84 
		mu 0 4 57 55 28 10 
		f 4 -86 -90 92 -16 
		mu 0 4 16 58 60 61 
		f 4 -88 85 -4 -61 
		mu 0 4 44 58 16 6 
		f 4 -91 88 9 86 
		mu 0 4 60 59 5 56 
		f 4 -93 -87 83 -92 
		mu 0 4 61 60 56 7 
		f 4 -94 -95 91 11 
		mu 0 4 27 62 61 7 
		f 4 -97 93 28 -96 
		mu 0 4 64 62 27 9 
		f 4 -98 -99 95 5 
		mu 0 4 54 65 63 1 
		f 4 -101 97 79 -100 
		mu 0 4 66 65 54 3 
		f 4 -103 99 7 22 
		mu 0 4 67 66 3 19 
		f 4 -104 -23 20 -89 
		mu 0 4 59 67 19 5 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Arm_GRP" -p "bouncy:Geometry_GRP";
createNode transform -n "bouncy:L_shoulder_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" 0 4.4408920985006263e-018 -1.5720931501039814e-019 ;
	setAttr ".r" -type "double3" -9.1202706913607492e-016 -5.2201513045565103e-016 4.1546858557483062e-033 ;
	setAttr ".rp" -type "double3" 0.48147924423217775 0.76187908172607421 0 ;
	setAttr ".sp" -type "double3" 0.48147924423217775 0.76187908172607421 0 ;
createNode mesh -n "bouncy:L_shoulder_GEOShape" -p "bouncy:L_shoulder_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_shoulder_GEOShapeOrig" -p "bouncy:L_shoulder_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  0.49712056 0.7751351 0.10404719 0.48690087 
		0.76543105 0.10584979 0.47314495 0.76187903 0.10572004 0.45953855 0.76543105 0.1036927 
		0.44972757 0.7751351 0.100311 0.4463408 0.78839111 0.096481055 0.45028588 0.80164713 
		0.0932291 0.46050552 0.81135106 0.091426499 0.47426152 0.81490302 0.091556251 0.48786786 
		0.81135106 0.093583584 0.49767888 0.80164713 0.096965283 0.50106555 0.78839111 0.10079522 
		0.5197463 0.76004046 0.098886013 0.5000034 0.74129367 0.10236839 0.47342891 0.73443186 
		0.10211777 0.44714341 0.74129367 0.098201215 0.42818996 0.76004046 0.091668256 0.42164737 
		0.78564918 0.08426936 0.42926854 0.81125778 0.077987075 0.4490115 0.83000457 0.074504703 
		0.47558597 0.83686638 0.074755393 0.50187147 0.83000457 0.078671873 0.52082485 0.81125778 
		0.085204817 0.52736741 0.78564918 0.092603713 0.53976417 0.74507117 0.086985894 0.51184356 
		0.71855909 0.09191075 0.47426152 0.70885503 0.091556266 0.43708804 0.71855909 0.086017445 
		0.41028407 0.74507117 0.076778464 0.40103149 0.78128713 0.066314869 0.41180941 0.81750333 
		0.057430364 0.43973011 0.84401536 0.052505508 0.47731212 0.85371947 0.052859992 0.51448542 
		0.84401536 0.058398787 0.54128939 0.81750333 0.067637809 0.55054212 0.78128713 0.078101404 
		0.55581003 0.73124725 0.069157861 0.52161443 0.69877684 0.075189464 0.47558597 0.68689179 
		0.074755318 0.43005818 0.69877684 0.067971721 0.39722997 0.73124725 0.056656357 0.38589787 
		0.7756027 0.043841105 0.3990981 0.81995821 0.032959845 0.43329373 0.85242862 0.026928211 
		0.47932217 0.86431366 0.027362328 0.52485007 0.85242862 0.034145948 0.55767816 0.81995821 
		0.045461349 0.56901026 0.7756027 0.058276609 0.5667904 0.71951085 0.04661683 0.5286501 
		0.68329483 0.053344265 0.47731212 0.67003876 0.052859992 0.42653236 0.68329483 0.045293897 
		0.38991734 0.71951085 0.032673206 0.37727794 0.76898295 0.018379657 0.39200097 0.81845504 
		0.0062431856 0.43014127 0.85467112 -0.00048417677 0.48147923 0.86792719 6.98367e-018 
		0.53225899 0.85467112 0.0075661452 0.568874 0.81845504 0.020186814 0.58151335 0.76898295 
		0.034480371 0.57195693 0.71066177 0.020898923 0.53247118 0.67316818 0.027863627 0.47932217 
		0.65944451 0.027362328 0.42675114 0.67316818 0.01952932 0.38884446 0.71066177 0.006463402 
		0.37575921 0.76187915 -0.0083343396 0.39100155 0.8130964 -0.020898923 0.43048736 
		0.85058999 -0.027863627 0.48363635 0.8643136 -0.027362328 0.53620738 0.85058999 -0.01952932 
		0.57411408 0.8130964 -0.006463402 0.58719927 0.76187915 0.0083343424 0.57095754 0.70530313 
		-0.0062431856 0.53281724 0.66908699 0.00048417677 0.48147923 0.65583098 6.9160823e-018 
		0.4306995 0.66908699 -0.0075661452 0.39408448 0.70530313 -0.020186814 0.38144505 
		0.75477517 -0.034480371 0.39616811 0.80424726 -0.04661683 0.43430841 0.8404634 -0.053344265 
		0.4856464 0.85371941 -0.052859992 0.53642613 0.8404634 -0.045293897 0.5730412 0.80424726 
		-0.032673206 0.58568054 0.75477517 -0.018379655 0.56386042 0.70379996 -0.032959845 
		0.52966475 0.67132956 -0.026928211 0.48363635 0.65944451 -0.027362328 0.43810844 
		0.67132956 -0.034145948 0.40528035 0.70379996 -0.045461349 0.39394826 0.74815542 
		-0.058276609 0.40714845 0.79251093 -0.069157861 0.44134408 0.82498139 -0.075189464 
		0.48737255 0.83686638 -0.074755318 0.53290033 0.82498139 -0.067971721 0.56572855 
		0.79251093 -0.056656357 0.57706064 0.74815542 -0.043841105 0.55114901 0.70625478 
		-0.057430364 0.52322841 0.67974281 -0.052505508 0.4856464 0.67003876 -0.052859992 
		0.44847307 0.67974281 -0.058398787 0.4216691 0.70625478 -0.067637809 0.41241634 0.74247092 
		-0.078101397 0.42319435 0.778687 -0.086985894 0.45111492 0.80519897 -0.09191075 0.48869702 
		0.81490308 -0.091556266 0.52587032 0.80519897 -0.086017445 0.55267435 0.778687 -0.076778464 
		0.56192708 0.74247092 -0.066314861 0.53368998 0.71250045 -0.077987075 0.51394701 
		0.6937536 -0.074504696 0.48737255 0.68689179 -0.074755393 0.46108705 0.6937536 -0.078671873 
		0.44213364 0.71250045 -0.085204817 0.43559092 0.73810905 -0.092603713 0.44321221 
		0.76371771 -0.098886013 0.46295509 0.7824645 -0.10236839 0.48952961 0.78932631 -0.10211777 
		0.51581514 0.7824645 -0.098201215 0.53476846 0.76371771 -0.091668256 0.54131109 0.73810905 
		-0.08426936 0.5126726 0.72211105 -0.0932291 0.50245303 0.71240699 -0.091426499 0.48869702 
		0.70885503 -0.091556244 0.47509062 0.71240699 -0.093583584 0.4652797 0.72211105 -0.096965283 
		0.46189293 0.73536706 -0.10079524 0.46583793 0.74862307 -0.10404719 0.47605762 0.75832719 
		-0.10584979 0.48981357 0.76187915 -0.10572004 0.50341994 0.75832719 -0.1036927 0.51323092 
		0.74862307 -0.100311 0.5166176 0.73536706 -0.096481062 0.47342891 0.78932631 0.10211772 
		0.48952961 0.73443186 -0.10211772;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_upperArm_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" 4.4408920985006263e-018 2.2204460492503131e-018 1.3877787807814457e-019 ;
	setAttr ".r" -type "double3" -9.1202706913607492e-016 -5.2201513045565103e-016 4.1546858557483062e-033 ;
	setAttr ".rp" -type "double3" 0.76265079498291022 0.75610664367675784 0.016441071033477785 ;
	setAttr ".sp" -type "double3" 0.76265079498291022 0.75610664367675784 0.016441071033477785 ;
createNode mesh -n "bouncy:L_upperArm_GEOShape" -p "bouncy:L_upperArm_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_upperArm_GEOShapeOrig" -p "bouncy:L_upperArm_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_elbow_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" 8.8817841970012525e-018 4.4408920985006263e-018 2.7755575615628914e-019 ;
	setAttr ".r" -type "double3" -5.876571735672827e-015 2.3665312250193831e-015 -2.9810905740902402e-015 ;
	setAttr ".rp" -type "double3" 0.99289180755615236 0.76187908172607421 0.040316732376813887 ;
	setAttr ".sp" -type "double3" 0.99289180755615236 0.76187908172607421 0.040316732376813887 ;
createNode mesh -n "bouncy:L_elbow_GEOShape" -p "bouncy:L_elbow_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_elbow_GEOShapeOrig" -p "bouncy:L_elbow_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  1.0043274 0.71870345 0.038566984 1.0019206 
		0.71870345 0.03308351 0.99709433 0.71870345 0.029538162 0.99114203 0.71870345 0.028880963 
		0.98565859 0.71870345 0.031287946 0.98211324 0.71870345 0.036114182 0.98145598 0.71870345 
		0.042066511 0.983863 0.71870345 0.047549982 0.98868918 0.71870345 0.051095292 0.99464154 
		0.71870345 0.051752523 1.0001252 0.71870345 0.049345538 1.0036705 0.71870345 0.044519275 
		1.014984 0.72316885 0.036936443 1.0103341 0.72316885 0.026343189 1.0010105 0.72316885 
		0.019494139 0.98951149 0.72316885 0.018224513 0.97891825 0.72316885 0.022874439 0.97206914 
		0.72316885 0.032198038 0.97079957 0.72316885 0.043697033 0.97544944 0.72316885 0.054290257 
		0.98477304 0.72316885 0.061139315 0.99627215 0.72316885 0.062408954 1.0068653 0.72316885 
		0.057759013 1.0137143 0.72316885 0.04843542 1.024135 0.73027235 0.035536278 1.0175589 
		0.73027235 0.020555196 1.0043734 0.73027235 0.010869158 0.98811144 0.73027235 0.0090736477 
		0.97313011 0.73027235 0.015649615 0.96344429 0.73027235 0.028835159 0.9616487 0.73027235 
		0.045097187 0.96822476 0.73027235 0.060078315 0.98141021 0.73027235 0.069764286 0.9976722 
		0.73027235 0.071559846 1.0126532 0.73027235 0.064983852 1.0223393 0.73027235 0.051798299 
		1.0311567 0.73952973 0.034461886 1.0231028 0.73952973 0.016113861 1.0069537 0.73952973 
		0.0042509679 0.98703694 0.73952973 0.002051868 0.96868896 0.73952973 0.010105816 
		0.95682609 0.73952973 0.026254738 0.95462686 0.73952973 0.046171568 0.96268088 0.73952973 
		0.064519607 0.9788298 0.73952973 0.076382495 0.99874663 0.73952973 0.078581601 1.0170946 
		0.73952973 0.07052765 1.0289575 0.73952973 0.054378718 1.0355706 0.75031018 0.033786524 
		1.0265877 0.75031018 0.013321949 1.0085759 0.75031018 9.0575537e-005 0.98636144 0.75031018 
		-0.0023621686 0.9658969 0.75031018 0.0066208094 0.95266563 0.75031018 0.024632644 
		0.95021278 0.75031018 0.046846941 0.95919591 0.75031018 0.06731154 0.97720766 0.75031018 
		0.080542892 0.99942207 0.75031018 0.082995661 1.0198865 0.75031018 0.074012667 1.0331179 
		0.75031018 0.056000851 1.0370762 0.76187915 0.03355613 1.0277764 0.76187915 0.012369642 
		1.0091292 0.76187915 -0.0013284568 0.98613119 0.76187915 -0.0038677063 0.96494478 
		0.76187915 0.0054321461 0.95124656 0.76187915 0.024079347 0.9487074 0.76187915 0.047077313 
		0.95800722 0.76187915 0.068263799 0.97665435 0.76187915 0.08196193 0.99965233 0.76187915 
		0.08450117 1.020839 0.76187915 0.07520131 1.0345368 0.76187915 0.056554113 1.0355706 
		0.77344793 0.033786524 1.0265877 0.77344793 0.013321949 1.0085759 0.77344793 9.0575537e-005 
		0.98636144 0.77344793 -0.0023621686 0.9658969 0.77344793 0.0066208094 0.95266563 
		0.77344793 0.024632644 0.95021278 0.77344793 0.046846941 0.95919591 0.77344793 0.06731154 
		0.97720766 0.77344793 0.080542892 0.99942207 0.77344793 0.082995661 1.0198865 0.77344793 
		0.074012667 1.0331179 0.77344793 0.056000851 1.0311567 0.78422844 0.034461886 1.0231028 
		0.78422844 0.016113861 1.0069537 0.78422844 0.0042509679 0.98703694 0.78422844 0.002051868 
		0.96868896 0.78422844 0.010105816 0.95682609 0.78422844 0.026254738 0.95462686 0.78422844 
		0.046171568 0.96268088 0.78422844 0.064519607 0.9788298 0.78422844 0.076382495 0.99874663 
		0.78422844 0.078581601 1.0170946 0.78422844 0.07052765 1.0289575 0.78422844 0.054378718 
		1.024135 0.79348582 0.035536278 1.0175589 0.79348582 0.020555196 1.0043734 0.79348582 
		0.010869158 0.98811144 0.79348582 0.0090736477 0.97313011 0.79348582 0.015649615 
		0.96344429 0.79348582 0.028835159 0.9616487 0.79348582 0.045097187 0.96822476 0.79348582 
		0.060078315 0.98141021 0.79348582 0.069764286 0.9976722 0.79348582 0.071559846 1.0126532 
		0.79348582 0.064983852 1.0223393 0.79348582 0.051798299 1.014984 0.80058932 0.036936443 
		1.0103341 0.80058932 0.026343189 1.0010105 0.80058932 0.019494139 0.98951149 0.80058932 
		0.018224513 0.97891825 0.80058932 0.022874439 0.97206914 0.80058932 0.032198038 0.97079957 
		0.80058932 0.043697033 0.97544944 0.80058932 0.054290257 0.98477304 0.80058932 0.061139315 
		0.99627215 0.80058932 0.062408954 1.0068653 0.80058932 0.057759013 1.0137143 0.80058932 
		0.04843542 1.0043274 0.80505472 0.038566984 1.0019206 0.80505472 0.03308351 0.99709433 
		0.80505472 0.029538162 0.99114203 0.80505472 0.028880963 0.98565859 0.80505472 0.031287946 
		0.98211324 0.80505472 0.036114182 0.98145598 0.80505472 0.042066511 0.983863 0.80505472 
		0.047549982 0.98868918 0.80505472 0.051095292 0.99464154 0.80505472 0.051752523 1.0001252 
		0.80505472 0.049345538 1.0036705 0.80505472 0.044519275 0.99289185 0.71718043 0.040316734 
		0.99289185 0.80657774 0.040316734;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_lowerARM_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" 8.8817841970012525e-018 6.661338147750939e-018 -1.1102230246251566e-018 ;
	setAttr ".r" -type "double3" -5.876571735672827e-015 2.3665312250193831e-015 -2.9810905740902402e-015 ;
	setAttr ".rp" -type "double3" 1.1627888488769531 0.75610668182373053 0.10361551403999329 ;
	setAttr ".sp" -type "double3" 1.1627888488769531 0.75610668182373053 0.10361551403999329 ;
createNode mesh -n "bouncy:L_lowerARM_GEOShape" -p "bouncy:L_lowerARM_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_lowerARM_GEOShapeOrig" -p "bouncy:L_lowerARM_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  1.0292652 0.75078982 0.029080622 1.0259793 
		0.7786293 0.037508268 1.0153458 0.7786293 0.064780727 1.0120598 0.75078982 0.073208414 
		1.0206624 0.73358405 0.051144492 1.3135179 0.75246298 0.14790919 1.3112662 0.77154166 
		0.15368469 1.3039789 0.77154166 0.1723748 1.3017268 0.75246298 0.1781504 1.3076222 
		0.74067169 0.16302975;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_wrist_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" -8.8817841970012525e-018 -2.2204460492503131e-018 
		-2.2204460492503131e-018 ;
	setAttr ".rp" -type "double3" 1.3315214538574218 0.75819824218749998 0.17234821319580079 ;
	setAttr ".sp" -type "double3" 1.3315214538574218 0.75819824218749998 0.17234821319580079 ;
createNode mesh -n "bouncy:L_wrist_GEOShape" -p "bouncy:L_wrist_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_wrist_GEOShapeOrig" -p "bouncy:L_wrist_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  1.3565401 0.76398909 0.13576263 1.3525949 
		0.76822394 0.13422514 1.3472055 0.76977426 0.13212413 1.3418163 0.76822472 0.1300226 
		1.337871 0.7639904 0.12848361 1.336427 0.75820613 0.12791952 1.337871 0.75242156 
		0.12848157 1.3418163 0.74818683 0.13001905 1.3472055 0.74663651 0.13212004 1.3525949 
		0.74818605 0.1342216 1.3565401 0.75242025 0.13576059 1.3579842 0.75820458 0.13632464 
		1.3636163 0.76937807 0.14331543 1.3559946 0.77755898 0.14034525 1.3455833 0.780554 
		0.13628641 1.3351723 0.77756041 0.13222653 1.3275505 0.76938057 0.12925351 1.3247609 
		0.75820601 0.12816375 1.3275506 0.74703115 0.12924951 1.3351723 0.73885024 0.1322197 
		1.3455833 0.73585534 0.13627851 1.3559946 0.73884887 0.14033841 1.3636163 0.74702871 
		0.14331147 1.366406 0.75820321 0.14440113 1.3685052 0.77400512 0.15284678 1.3577267 
		0.78557473 0.14864631 1.3430029 0.78981018 0.14290628 1.3282793 0.78557676 0.13716474 
		1.3175006 0.77400863 0.1329601 1.3135555 0.75820547 0.13141911 1.3175006 0.7424019 
		0.13295452 1.3282793 0.73083222 0.13715503 1.3430029 0.72659677 0.14289504 1.3577267 
		0.73083025 0.14863656 1.3685052 0.74239832 0.15284118 1.3724506 0.75820142 0.15438224 
		1.370874 0.77755487 0.16370712 1.357673 0.79172468 0.15856257 1.33964 0.79691213 
		0.15153253 1.3216072 0.79172724 0.14450061 1.3084061 0.7775591 0.13935098 1.3035746 
		0.7582044 0.13746369 1.3084061 0.73884892 0.13934414 1.3216072 0.72467917 0.14448875 
		1.33964 0.71949172 0.15151881 1.357673 0.72467667 0.15855069 1.370874 0.73884469 
		0.16370028 1.3757061 0.75819945 0.16558768 1.3705608 0.77978551 0.17515631 1.3558371 
		0.79558992 0.16941835 1.335724 0.80137575 0.16157728 1.3156111 0.79559273 0.15373422 
		1.3008871 0.77979034 0.14799064 1.2954978 0.75820297 0.14588554 1.3008871 0.73661476 
		0.14798301 1.3156111 0.72081041 0.153721 1.335724 0.71502459 0.16156201 1.3558371 
		0.72080767 0.16940512 1.3705608 0.73660994 0.17514868 1.3759502 0.75819743 0.17725378 
		1.3675873 0.78054512 0.1864142 1.3523439 0.79690695 0.18047373 1.3315213 0.80289698 
		0.17235614 1.3106989 0.79690987 0.16423641 1.2954556 0.78055006 0.15829021 1.2898762 
		0.75820112 0.15611085 1.2954556 0.73585135 0.15828231 1.3106989 0.71948951 0.16422267 
		1.3315213 0.71349955 0.17234032 1.3523439 0.71948659 0.18046005 1.3675873 0.7358464 
		0.18640628 1.3731667 0.7581954 0.18858564 1.3621558 0.7797817 0.19671343 1.3474319 
		0.79558611 0.19097546 1.3273189 0.80137193 0.18313436 1.3072058 0.79558891 0.17529134 
		1.292482 0.77978653 0.16954778 1.2870927 0.7581991 0.16744266 1.292482 0.73661095 
		0.16954014 1.3072058 0.72080648 0.17527811 1.3273189 0.71502066 0.18311912 1.3474319 
		0.72080374 0.19096224 1.3621558 0.73660612 0.1967058 1.367545 0.75819349 0.19881091 
		1.3546367 0.77754754 0.20535229 1.3414356 0.79171729 0.20020771 1.3234029 0.79690474 
		0.19317763 1.3053699 0.79171979 0.18614577 1.2921687 0.77755183 0.18099615 1.2873371 
		0.75819701 0.17910883 1.2921687 0.73884165 0.18098931 1.3053699 0.72467178 0.18613392 
		1.3234029 0.71948433 0.19316393 1.3414356 0.72466928 0.20019586 1.3546367 0.7388373 
		0.20534545 1.3594682 0.75819206 0.20723282 1.3455422 0.77399462 0.21174194 1.3347636 
		0.78556418 0.20754147 1.3200396 0.78979975 0.20180142 1.305316 0.78556627 0.1960599 
		1.2945375 0.7739982 0.19185524 1.2905923 0.75819504 0.19031425 1.2945375 0.74239141 
		0.19184965 1.305316 0.73082179 0.19605018 1.3200396 0.72658628 0.20179014 1.3347636 
		0.73081976 0.20753172 1.3455422 0.74238795 0.21173634 1.3494874 0.75819099 0.2132774 
		1.3354923 0.76936525 0.21544699 1.3278708 0.77754623 0.21247679 1.3174596 0.78054124 
		0.20841794 1.3070481 0.77754766 0.20435806 1.2994267 0.76936775 0.20138501 1.2966368 
		0.75819325 0.2002953 1.2994267 0.74701846 0.20138106 1.3070481 0.73883748 0.20435123 
		1.3174596 0.73584253 0.20841004 1.3278708 0.73883605 0.21246998 1.3354923 0.74701589 
		0.21544302 1.338282 0.75819039 0.21653266 1.3251718 0.76397491 0.21621491 1.3212266 
		0.7682097 0.21467741 1.3158373 0.76975995 0.21257643 1.3104482 0.76821047 0.21047489 
		1.3065027 0.76397622 0.20893587 1.3050587 0.75819188 0.20837182 1.3065027 0.75240737 
		0.20893383 1.3104482 0.74817258 0.21047133 1.3158373 0.74662226 0.21257232 1.3212266 
		0.74817187 0.21467386 1.3251718 0.75240606 0.21621287 1.3266159 0.75819039 0.21677691 
		1.3477588 0.75820565 0.13070306 1.315284 0.75819093 0.21399337;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_hand_GEO" -p "bouncy:L_Arm_GRP";
	setAttr ".t" -type "double3" -8.8817841970012525e-018 -2.2204460492503131e-018 
		-1.1102230246251566e-018 ;
	setAttr ".r" -type "double3" -6.4356536132738348e-015 6.3919753415862559e-015 -1.5716412781450585e-015 ;
	setAttr ".rp" -type "double3" 1.4916309356689454 0.74409229278564459 0.24337612152099611 ;
	setAttr ".sp" -type "double3" 1.4916309356689454 0.74409229278564459 0.24337612152099611 ;
createNode mesh -n "bouncy:L_hand_GEOShape" -p "bouncy:L_hand_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_hand_GEOShapeOrig" -p "bouncy:L_hand_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.46089172 0.25 0.46089172 0.5 0.46089172 0.75 0.46089172 
		0 0.46089172 1 0.625 0.36555141 0.74055141 0.25 0.46089172 0.36555141 0.25944859 
		0.25 0.375 0.36555141 0.25944859 0 0.375 0.88444859 0.46089172 0.88444859 0.625 0.88444859 
		0.74055141 0 0.375 0 0.46089172 0 0.46089172 0.25 0.375 0.25 0.375 0 0.46089172 0 
		0.46089172 0.25 0.375 0.25 0.25944859 0 0.375 0 0.375 0.25 0.25944859 0.25 0.125 
		0 0.125 0.25 0.125 0.12043312 0.375 0.62956691 0.125 0.12043312 0.25944859 0.12043312 
		0.375 0.12043312 0.375 0.12043312 0.375 0.12043312 0.375 0.12043312 0.46089172 0.12043312 
		0.46089172 0.12043312 0.46089172 0.12043312 0.625 0.12043312 0.74055141 0.12043312 
		0.625 0.62956691 0.875 0.12043312 0.46089172 0.62956691 0.55142176 0.5 0.55142176 
		0.62956691 0.55142176 0.75 0.55142176 0.88444859 0.55142176 0 0.55142176 1 0.55142176 
		0.12043312 0.55142176 0.25 0.55142176 0.36555141;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  1.3645688 0.73412222 0.2824221 1.601297 
		0.72396106 0.3273389 1.3645688 0.78182364 0.28243053 1.6016846 0.77166247 0.32749841 
		1.4317076 0.78185409 0.11023545 1.6394582 0.77167952 0.23061882 1.4317076 0.73415267 
		0.11022701 1.6390704 0.72397822 0.23045927 1.4422728 0.78181833 0.31272727 1.5094115 
		0.78184873 0.14053217 1.5094115 0.73414731 0.14052373 1.4422728 0.73411691 0.31271881 
		1.637653 0.77174431 0.2899369 1.4733049 0.78730178 0.2331387 1.3956008 0.78730714 
		0.20284197 1.3956008 0.7286669 0.2028316 1.4733049 0.7286616 0.23312832 1.6372654 
		0.72389245 0.2897774 1.3816386 0.71831703 0.31963754 1.4385158 0.72980112 0.32745466 
		1.4274706 0.76753134 0.33178341 1.3781269 0.76183939 0.31797877 1.4267732 0.69692838 
		0.37138036 1.4588147 0.70498526 0.37332448 1.4515289 0.73585755 0.37754947 1.4194875 
		0.72780067 0.3756054 1.3703232 0.72472268 0.18930492 1.3381976 0.73092198 0.22483188 
		1.3381976 0.78504425 0.22484146 1.3703232 0.79125619 0.18931669 1.3707602 0.73093683 
		0.14131668 1.3707602 0.78505903 0.14132625 1.428703 0.75857359 0.10159206 1.3644223 
		0.75844407 0.13438264 1.3630937 0.75819612 0.18465827 1.3300791 0.75842851 0.22246537 
		1.3578925 0.75854146 0.2832047 1.3697661 0.73640233 0.32480976 1.4217349 0.70791525 
		0.38516018 1.4631766 0.72026223 0.3837699 1.4428842 0.74891692 0.33781284 1.4398462 
		0.75853586 0.3151584 1.6133438 0.74837947 0.33283019 1.6512791 0.74838358 0.29321441 
		1.6531829 0.74839753 0.23065214 1.5106567 0.75856799 0.13354577 1.5811512 0.78050643 
		0.19022907 1.5892812 0.75722498 0.18711506 1.580938 0.73280507 0.19013727 1.5637535 
		0.73029822 0.26437941 1.5299984 0.73278201 0.32078472 1.5355561 0.7572006 0.32490775 
		1.5302123 0.78048342 0.32087651 1.5639671 0.78298706 0.26447204;
	setAttr -s 104 ".ed[0:103]"  0 11 0 2 8 0 
		4 9 0 6 10 0 0 36 0 1 42 0 
		2 14 0 3 12 0 4 32 0 5 44 0 
		6 15 0 7 17 0 8 52 0 9 46 0 
		8 13 0 10 48 0 9 45 0 11 50 0 
		10 16 0 11 41 0 12 5 0 13 9 0 
		12 53 0 14 4 0 13 14 0 15 0 0 
		16 11 0 15 16 0 17 1 0 16 49 0 
		17 43 0 0 18 0 11 19 0 18 19 0 
		8 20 0 19 40 0 2 21 0 21 20 0 
		18 37 0 18 22 0 19 23 0 22 23 0 
		20 24 0 23 39 0 21 25 0 25 24 0 
		22 38 0 15 26 0 0 27 0 26 27 0 
		2 28 0 27 35 0 14 29 0 28 29 0 
		29 34 0 6 30 0 30 26 0 4 31 0 
		29 31 0 31 33 0 32 6 0 33 30 0 
		32 33 0 34 26 0 33 34 0 35 28 0 
		34 35 0 36 2 0 35 36 0 37 21 0 
		36 37 0 38 25 0 37 38 0 39 24 0 
		38 39 0 40 20 0 39 40 0 41 8 0 
		40 41 0 42 3 0 41 51 0 43 12 0 
		42 43 0 44 7 0 43 44 0 45 10 0 
		44 47 0 45 32 0 46 5 0 47 45 0 
		46 47 0 48 7 0 47 48 0 49 17 0 
		48 49 0 50 1 0 49 50 0 51 42 0 
		50 51 0 52 3 0 51 52 0 53 13 0 
		52 53 0 53 46 0;
	setAttr -s 52 ".fc[0:51]" -type "polyFaces" 
		f 4 74 73 -46 -72 
		mu 0 4 50 51 35 36 
		f 4 1 14 24 -7 
		mu 0 4 2 14 21 23 
		f 4 2 16 87 -9 
		mu 0 4 4 15 58 44 
		f 4 27 26 -1 -26 
		mu 0 4 25 26 18 8 
		f 4 82 81 -8 -80 
		mu 0 4 54 55 20 3 
		f 4 66 65 53 54 
		mu 0 4 46 47 39 40 
		f 4 12 102 101 -15 
		mu 0 4 14 66 67 21 
		f 4 -17 13 90 89 
		mu 0 4 58 15 59 60 
		f 4 -27 29 96 -18 
		mu 0 4 18 26 62 64 
		f 4 -78 80 100 -13 
		mu 0 4 14 53 65 66 
		f 4 -102 103 -14 -22 
		mu 0 4 21 67 59 15 
		f 4 -25 21 -3 -24 
		mu 0 4 23 21 15 4 
		f 4 64 -55 58 59 
		mu 0 4 45 46 40 42 
		f 4 3 18 -28 -11 
		mu 0 4 6 16 26 25 
		f 4 -30 -19 15 94 
		mu 0 4 62 26 16 61 
		f 4 -82 84 -10 -21 
		mu 0 4 20 55 57 11 
		f 4 0 32 -34 -32 
		mu 0 4 0 17 30 29 
		f 4 77 34 -76 78 
		mu 0 4 53 14 31 52 
		f 4 -2 36 37 -35 
		mu 0 4 14 2 32 31 
		f 4 -68 70 69 -37 
		mu 0 4 2 48 49 32 
		f 4 33 40 -42 -40 
		mu 0 4 29 30 34 33 
		f 4 75 42 -74 76 
		mu 0 4 52 31 35 51 
		f 4 -38 44 45 -43 
		mu 0 4 31 32 36 35 
		f 4 -70 72 71 -45 
		mu 0 4 32 49 50 36 
		f 4 25 48 -50 -48 
		mu 0 4 24 0 38 37 
		f 4 67 50 -66 68 
		mu 0 4 48 2 39 47 
		f 4 6 52 -54 -51 
		mu 0 4 2 22 40 39 
		f 4 10 47 -57 -56 
		mu 0 4 12 24 37 41 
		f 4 23 57 -59 -53 
		mu 0 4 22 13 42 40 
		f 4 8 62 -60 -58 
		mu 0 4 13 43 45 42 
		f 4 60 55 -62 -63 
		mu 0 4 43 12 41 45 
		f 4 56 -64 -65 61 
		mu 0 4 41 37 46 45 
		f 4 49 51 -67 63 
		mu 0 4 37 38 47 46 
		f 4 4 -69 -52 -49 
		mu 0 4 0 48 47 38 
		f 4 -71 -5 31 38 
		mu 0 4 49 48 0 29 
		f 4 -73 -39 39 46 
		mu 0 4 50 49 29 33 
		f 4 41 43 -75 -47 
		mu 0 4 33 34 51 50 
		f 4 35 -77 -44 -41 
		mu 0 4 30 52 51 34 
		f 4 19 -79 -36 -33 
		mu 0 4 17 53 52 30 
		f 4 -81 -20 17 98 
		mu 0 4 65 53 17 63 
		f 4 -29 30 -83 -6 
		mu 0 4 1 28 55 54 
		f 4 -85 -31 -12 -84 
		mu 0 4 57 55 28 10 
		f 4 -86 -90 92 -16 
		mu 0 4 16 58 60 61 
		f 4 -88 85 -4 -61 
		mu 0 4 44 58 16 6 
		f 4 -91 88 9 86 
		mu 0 4 60 59 5 56 
		f 4 -93 -87 83 -92 
		mu 0 4 61 60 56 7 
		f 4 -94 -95 91 11 
		mu 0 4 27 62 61 7 
		f 4 -97 93 28 -96 
		mu 0 4 64 62 27 9 
		f 4 -98 -99 95 5 
		mu 0 4 54 65 63 1 
		f 4 -101 97 79 -100 
		mu 0 4 66 65 54 3 
		f 4 -103 99 7 22 
		mu 0 4 67 66 3 19 
		f 4 -104 -23 20 -89 
		mu 0 4 59 67 19 5 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:Body_GRP" -p "bouncy:Geometry_GRP";
	setAttr ".s" -type "double3" 19.623002520385928 19.623002520385928 19.623002520385928 ;
createNode transform -n "bouncy:body_GEO" -p "bouncy:Body_GRP";
	setAttr ".t" -type "double3" 0 0.025467734382171973 0 ;
	setAttr ".rp" -type "double3" 1.1920928955078125e-009 0 0 ;
	setAttr ".sp" -type "double3" 1.1920928955078125e-009 0 0 ;
createNode mesh -n "bouncy:body_GEOShape" -p "bouncy:body_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:body_GEOShapeOrig" -p "bouncy:body_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 248 ".uvst[0].uvsp[0:247]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.66666663 0.083333336 0.74999994 0.083333336 
		0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 0 0.16666667 
		0.083333336 0.16666667 0.16666667 0.16666667 0.66666663 0.16666667 0.74999994 0.16666667 
		0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 0.16666667 0 0.25 0.083333336 
		0.25 0.16666667 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 
		0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.66666663 
		0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 0.33333334 0.99999988 
		0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 0.66666663 0.41666669 
		0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 0.41666669 0.99999988 0.41666669 
		0 0.5 0.083333336 0.5 0.16666667 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 
		0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 0.58333331 
		0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 0.91666657 0.58333331 
		0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 0.66666663 0.66666663 
		0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 0.91666657 0.66666663 0.99999988 
		0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 0.74999994 0.66666663 0.74999994 
		0.74999994 0.74999994 0.83333325 0.74999994 0.91666657 0.74999994 0.99999988 0.74999994 
		0 0.83333325 0.083333336 0.83333325 0.16666667 0.83333325 0.66666663 0.83333325 0.74999994 
		0.83333325 0.83333325 0.83333325 0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 
		0.083333336 0.91666657 0.16666667 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 
		0.83333325 0.91666657 0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 
		0 0.70833337 0 0.79166669 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.70833337 
		1 0.79166669 1 0.87500006 1 0.95833337 1 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994 0 0.083333336 0.083333336 0.083333336 
		0.083333336 0.16666667 0 0.16666667 0.16666667 0.083333336 0.16666667 0.16666667 
		0.66666663 0.083333336 0.74999994 0.083333336 0.74999994 0.16666667 0.66666663 0.16666667 
		0.83333325 0.083333336 0.83333325 0.16666667 0.91666657 0.083333336 0.91666657 0.16666667 
		0.99999988 0.083333336 0.99999988 0.16666667 0.083333336 0.25 0 0.25 0.16666667 0.25 
		0.74999994 0.25 0.66666663 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0.083333336 
		0.33333334 0 0.33333334 0.16666667 0.33333334 0.74999994 0.33333334 0.66666663 0.33333334 
		0.83333325 0.33333334 0.91666657 0.33333334 0.99999988 0.33333334 0.083333336 0.41666669 
		0 0.41666669 0.16666667 0.41666669 0.74999994 0.41666669 0.66666663 0.41666669 0.83333325 
		0.41666669 0.91666657 0.41666669 0.99999988 0.41666669 0.083333336 0.5 0 0.5 0.16666667 
		0.5 0.74999994 0.5 0.66666663 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0.083333336 
		0.58333331 0 0.58333331 0.16666667 0.58333331 0.74999994 0.58333331 0.66666663 0.58333331 
		0.83333325 0.58333331 0.91666657 0.58333331 0.99999988 0.58333331 0.083333336 0.66666663 
		0 0.66666663 0.16666667 0.66666663 0.74999994 0.66666663 0.66666663 0.66666663 0.83333325 
		0.66666663 0.83333325 0.58333331 0.91666657 0.58333331 0.91666657 0.66666663 0.83333325 
		0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.083333336 0.74999994 0 0.74999994 
		0.16666667 0.74999994 0.74999994 0.74999994 0.66666663 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.83333325 0.74999994 0.99999988 0.74999994 0.083333336 0.83333325 
		0 0.83333325 0.16666667 0.83333325 0.74999994 0.83333325 0.66666663 0.83333325 0.83333325 
		0.83333325 0.91666657 0.74999994 0.91666657 0.83333325 0.99999988 0.74999994 0.99999988 
		0.83333325 0.083333336 0.91666657 0 0.91666657 0.16666667 0.91666657 0.74999994 0.91666657 
		0.66666663 0.91666657 0.83333325 0.91666657 0.91666657 0.91666657 0.99999988 0.91666657 
		0.041666668 0 0.125 0 0.70833337 0 0.79166669 0 0.87500006 0 0.95833337 0 0.041666668 
		1 0.125 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1 0.91666657 0.58333331 
		0.83333325 0.58333331 0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 
		0.99999988 0.66666663 0.83333325 0.74999994 0.91666657 0.74999994 0.99999988 0.74999994 
		0.91666657 0.58333331 0.83333325 0.58333331 0.83333325 0.66666663 0.99999988 0.58333331 
		0.99999988 0.66666663 0.83333325 0.74999994 0.91666657 0.74999994 0.99999988 0.74999994;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 182 ".vt";
	setAttr ".vt[0:165]"  0.0057681859 -0.024857428 -0.0033302638 0.0033302638 
		-0.024857428 -0.0057681859 -2.2681596e-011 -0.024857428 -0.0066605275 -3.4262405e-011 
		-0.024857428 0.006660528 0.0033302638 -0.024857428 0.0057681859 0.0057681859 -0.024857428 
		0.0033302638 0.0066605275 -0.024857428 0 0.01114328 -0.02228656 -0.0064335759 0.0064335759 
		-0.02228656 -0.01114328 -8.9865705e-011 -0.02228656 -0.012867152 -1.0144651e-010 
		-0.02228656 0.012867152 0.0064335759 -0.02228656 0.01114328 0.01114328 -0.02228656 
		0.0064335759 0.012867152 -0.02228656 0 0.015758976 -0.018196899 -0.0090984497 0.0090984497 
		-0.018196899 -0.015758976 2.4509603e-011 -0.018196899 -0.018196899 3.4356785e-011 
		-0.018196899 0.018196899 0.0090984497 -0.018196899 0.015758976 0.015758976 -0.018196899 
		0.0090984497 0.018196899 -0.018196899 0 0.019300727 -0.01286715 -0.01114328 0.01114328 
		-0.01286715 -0.019300727 1.3419264e-010 -0.01286715 -0.02228656 1.3443799e-010 -0.01286715 
		0.02228656 0.01114328 -0.01286715 0.019300727 0.019300727 -0.01286715 0.01114328 
		0.02228656 -0.01286715 0 0.021527164 -0.006660528 -0.012428714 0.012428714 -0.006660528 
		-0.021527164 2.9542951e-010 -0.006660528 -0.024857428 4.7049953e-010 -0.006660528 
		0.024857428 0.012428714 -0.006660528 0.021527164 0.021527164 -0.006660528 0.012428714 
		0.024857428 -0.006660528 0 0.02228656 0 -0.012867152 0.012867152 0 -0.02228656 4.7691251e-010 
		5.3824857e-012 -0.0257343 6.4003203e-010 1.3123422e-011 0.0257343 0.012867152 0 0.02228656 
		0.02228656 0 0.012867152 0.025734304 0 0 0.021527164 0.006660528 -0.012428714 0.012428714 
		0.006660528 -0.021527164 1.7296768e-010 0.006660528 -0.024857428 1.7551258e-010 0.006660528 
		0.024857428 0.012428714 0.006660528 0.021527164 0.021527164 0.006660528 0.012428714 
		0.024857428 0.006660528 0 0.019300727 0.01286715 -0.01114328 0.01114328 0.01286715 
		-0.019300727 5.9099274e-011 0.01286715 -0.02228656 1.2518801e-010 0.01286715 0.02228656 
		0.01114328 0.01286715 0.019300727 0.019300727 0.01286715 0.01114328 0.015758976 0.018196899 
		-0.0090984497 0.0090984497 0.018196899 -0.015758976 -1.3126793e-011 0.018196899 -0.018196898 
		2.2561543e-011 0.018196899 0.018196899 0.0090984497 0.018196899 0.015758976 0.015758976 
		0.018196899 0.0090984497 0.016340477 0.021219 0 0.01114328 0.02228656 -0.0064335759 
		0.0064335759 0.02228656 -0.01114328 -8.9865705e-011 0.02228656 -0.012867152 -8.9865705e-011 
		0.02228656 0.012867152 0.0064335759 0.02228656 0.01114328 0.01114328 0.02228656 0.0064335759 
		0.012867152 0.02228656 0 0.0057681859 0.024857428 -0.0033302638 0.0033302638 0.024857428 
		-0.0057681859 -2.2681596e-011 0.024857428 -0.0066605275 -2.2681596e-011 0.024857428 
		0.0066605275 0.0033302638 0.024857428 0.0057681859 0.0057681859 0.024857428 0.0033302638 
		0.0066605275 0.024857428 0 9.2294852e-012 -0.025734304 -3.2401262e-011 9.2294852e-012 
		0.025734304 3.2401262e-011 0.022972288 0.0082474202 0.0058655809 0.025377126 0.0073019052 
		2.2351741e-010 0.023094373 0.014597914 0.0076335031 0.022972288 0.0082474193 -0.0058655809 
		0.023094373 0.014597914 -0.0076335031 0.02376698 0.019998809 7.4505804e-011 0.022010293 
		0.018172646 0.00514133 0.022010295 0.018172646 -0.00514133 0.023776991 0.0094096353 
		0.0049966942 0.025219895 0.0088423258 -4.0563855e-010 0.023733286 0.014222873 0.0059994962 
		0.023776997 0.0094096344 -0.0049966956 0.023733284 0.014222876 -0.0059994967 0.024019895 
		0.018466355 1.3243805e-010 0.022965882 0.017370658 0.0034650243 0.02296588 0.01737066 
		-0.0034650234 0.022484057 0.009246517 0.0048226095 0.023926962 0.0086792056 -1.0244549e-009 
		0.022613637 0.013459504 3.3225832e-011 0.022440661 0.014059298 0.0058235736 0.022484062 
		0.0092465132 -0.0048226118 0.022440657 0.014059298 -0.0058235745 0.022727575 0.01830232 
		4.4703483e-010 0.021673562 0.017206624 0.0032872646 0.02167356 0.017206624 -0.0032872632 
		-0.0057681859 -0.024857428 -0.0033302638 -0.0033302638 -0.024857428 -0.0057681859 
		-0.0064335759 -0.02228656 -0.01114328 -0.01114328 -0.022286562 -0.0064335759 -0.0033302638 
		-0.024857428 0.0057681859 -0.0064335759 -0.02228656 0.01114328 -0.0057681859 -0.024857428 
		0.0033302638 -0.01114328 -0.02228656 0.0064335759 -0.0066605275 -0.024857428 -1.1537406e-011 
		-0.012867152 -0.022286562 -7.4448711e-011 -0.0090984497 -0.018196899 -0.015758976 
		-0.015758976 -0.018196899 -0.0090984497 -0.0090984497 -0.018196899 0.015758976 -0.015758976 
		-0.018196899 0.0090984497 -0.018196899 -0.018196899 -3.7163887e-011 -0.01114328 -0.01286715 
		-0.019300727 -0.019300727 -0.012867152 -0.01114328 -0.01114328 -0.01286715 0.019300727 
		-0.019300727 -0.012867149 0.01114328 -0.02228656 -0.012867152 2.6026245e-010 -0.012428714 
		-0.0066605275 -0.021527164 -0.021527164 -0.006660528 -0.012428714 -0.012428714 -0.0066605275 
		0.021527164 -0.021527164 -0.0066605275 0.012428714 -0.024857428 -0.006660528 7.3058011e-011 
		-0.012867153 1.0305062e-010 -0.022286559 -0.02228656 -2.0257986e-011 -0.012867152 
		-0.012867153 1.1038445e-010 0.022286559 -0.02228656 1.2998061e-010 0.01286715 -0.0257343 
		1.2927801e-011 -1.4012879e-011 -0.012428714 0.006660528 -0.021527164 -0.021527164 
		0.006660528 -0.012428714 -0.012428714 0.006660528 0.021527164 -0.021527162 0.0066605275 
		0.012428713 -0.024857426 0.0066605275 3.1583517e-011 -0.011143279 0.01286715 -0.019300725 
		-0.019300727 0.01286715 -0.01114328 -0.01114328 0.01286715 0.019300725 -0.019300725 
		0.01286715 0.011143279 -0.022484057 0.009246517 0.0048226095 -0.023926962 0.0086792065 
		-1.1745425e-009 -0.022613637 0.013459504 -5.0653759e-010 -0.022440661 0.014059301 
		0.0058235731 -0.022484062 0.0092465142 -0.0048226123 -0.022440657 0.014059298 -0.0058235754 
		-0.0090984497 0.018196899 -0.015758976 -0.015758974 0.018196899 -0.0090984497 -0.0090984497 
		0.018196899 0.015758976 -0.015758976 0.018196899 0.0090984497 -0.022727575 0.01830232 
		2.1135786e-010 -0.021673562 0.017206624 0.0032872644 -0.02167356 0.017206622 -0.0032872634 
		-0.0064335749 0.02228656 -0.01114328 -0.01114328 0.02228656 -0.0064335759 -0.0064335763 
		0.022286562 0.01114328 -0.011143281 0.02228656 0.0064335763 -0.016340477 0.021219 
		2.6099883e-010 -0.012867152 0.02228656 2.1379458e-010 -0.0033302638 0.024857428 -0.0057681859 
		-0.0057681859 0.024857428 -0.0033302638 -0.0033302638 0.024857428 0.0057681859 -0.0057681859 
		0.024857428 0.0033302638 -0.0066605275 0.024857428 0;
	setAttr ".vt[166:181]" -0.025377126 0.0073019052 2.396926e-010 -0.022972288 
		0.0082474193 0.0058655804 -0.023094373 0.014597914 0.0076335026 -0.022972288 0.0082474193 
		-0.0058655809 -0.023094373 0.014597914 -0.0076335035 -0.022010293 0.018172646 0.005141329 
		-0.02376698 0.019998809 -1.2360581e-010 -0.022010295 0.018172646 -0.00514133 -0.025219895 
		0.0088423267 -2.4344424e-010 -0.023776993 0.0094096353 0.0049966942 -0.023733286 
		0.014222873 0.0059994962 -0.023776997 0.0094096353 -0.004996696 -0.023733284 0.014222876 
		-0.0059994971 -0.022965882 0.01737066 0.0034650243 -0.024019895 0.018466353 1.1303757e-012 
		-0.022965876 0.01737066 -0.0034650234;
	setAttr -s 372 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 
		0 4 5 0 5 6 0 6 0 0 7 8 
		0 8 9 0 10 11 0 11 12 0 12 13 
		0 13 7 0 14 15 0 15 16 0 17 18 
		0 18 19 0 19 20 0 20 14 0 21 22 
		0 22 23 0 24 25 0 25 26 0 26 27 
		0 27 21 0 28 29 0 29 30 0 31 32 
		0 32 33 0 33 34 0 34 28 0 35 36 
		0 36 37 0 38 39 0 39 40 0 40 41 
		0 41 35 0 42 43 0 43 44 0 45 46 
		0 46 47 0 47 48 0 48 42 0 49 50 
		0 50 51 0 52 53 0 53 54 0 55 56 
		0 56 57 0 58 59 0 59 60 0 60 61 
		0 61 55 0 62 63 0 63 64 0 65 66 
		0 66 67 0 67 68 0 68 62 0 69 70 
		0 70 71 0 72 73 0 73 74 0 74 75 
		0 75 69 0 0 7 0 1 8 0 2 9 
		0 3 10 0 4 11 0 5 12 0 6 13 
		0 7 14 0 8 15 0 9 16 0 10 17 
		0 11 18 0 12 19 0 13 20 0 14 21 
		0 15 22 0 16 23 0 17 24 0 18 25 
		0 19 26 0 20 27 0 21 28 0 22 29 
		0 23 30 0 24 31 0 25 32 0 26 33 
		0 27 34 0 28 35 0 29 36 0 30 37 
		0 31 38 0 32 39 0 33 40 0 34 41 
		0 35 42 0 36 43 0 37 44 0 38 45 
		0 39 46 0 40 47 0 41 48 0 42 49 
		0 43 50 0 44 51 0 45 52 0 46 53 
		0 47 54 0 49 55 0 50 56 0 51 57 
		0 52 58 0 53 59 0 54 60 0 55 62 
		0 56 63 0 57 64 0 58 65 0 59 66 
		0 60 67 0 61 68 0 62 69 0 63 70 
		0 64 71 0 65 72 0 66 73 0 67 74 
		0 68 75 0 76 0 0 76 1 0 76 2 
		0 76 3 0 76 4 0 76 5 0 76 6 
		0 69 77 0 70 77 0 71 77 0 72 77 
		0 73 77 0 74 77 0 75 77 0 47 78 
		0 48 79 0 78 79 0 54 80 0 78 80 
		0 42 81 0 79 81 0 49 82 0 81 82 
		0 61 83 0 60 84 0 84 83 0 80 84 
		0 55 85 0 82 85 0 83 85 0 78 86 
		0 79 87 0 86 87 0 80 88 0;
	setAttr ".ed[166:331]" 86 88 0 81 89 0 87 89 
		0 82 90 0 89 90 0 83 91 0 84 92 
		0 92 91 0 88 92 0 85 93 0 90 93 
		0 91 93 0 86 94 0 87 95 0 94 95 
		0 95 96 0 88 97 0 97 96 0 94 97 
		0 89 98 0 95 98 0 90 99 0 98 99 
		0 96 99 0 91 100 0 96 100 0 92 101 
		0 101 100 0 97 101 0 93 102 0 99 102 
		0 100 102 0 103 104 0 104 105 0 106 105 
		0 103 106 0 104 2 0 105 9 0 3 107 
		0 107 108 0 10 108 0 107 109 0 109 110 
		0 108 110 0 109 111 0 111 112 0 110 112 
		0 111 103 0 112 106 0 105 113 0 114 113 
		0 106 114 0 113 16 0 108 115 0 17 115 
		0 110 116 0 115 116 0 112 117 0 116 117 
		0 117 114 0 113 118 0 119 118 0 114 119 
		0 118 23 0 115 120 0 24 120 0 116 121 
		0 120 121 0 117 122 0 121 122 0 122 119 
		0 118 123 0 124 123 0 119 124 0 123 30 
		0 120 125 0 31 125 0 121 126 0 125 126 
		0 122 127 0 126 127 0 127 124 0 123 128 
		0 129 128 0 124 129 0 128 37 0 125 130 
		0 38 130 0 126 131 0 130 131 0 127 132 
		0 131 132 0 132 129 0 128 133 0 134 133 
		0 129 134 0 133 44 0 130 135 0 45 135 
		0 131 136 0 135 136 0 132 137 0 136 137 
		0 137 134 0 133 138 0 139 138 0 134 139 
		0 138 51 0 135 140 0 52 140 0 136 141 
		0 140 141 0 142 143 0 143 144 0 145 144 
		0 142 145 0 143 146 0 146 147 0 144 147 
		0 138 148 0 149 148 0 139 149 0 148 57 
		0 140 150 0 58 150 0 141 151 0 150 151 
		0 144 152 0 153 152 0 145 153 0 147 154 
		0 152 154 0 148 155 0 156 155 0 149 156 
		0 155 64 0 150 157 0 65 157 0 151 158 
		0 157 158 0 151 159 0 159 160 0 158 160 
		0 159 149 0 160 156 0 155 161 0 162 161 
		0 156 162 0 161 71 0 157 163 0 72 163 
		0 158 164 0 163 164 0 160 165 0 164 165 
		0 165 162 0 76 103 0 76 104 0 76 107 
		0 76 109 0 76 111 0 161 77 0 162 77 
		0 163 77 0 164 77 0 165 77 0;
	setAttr ".ed[332:371]" 137 166 0 167 166 0 136 167 
		0 167 168 0 141 168 0 134 169 0 166 169 
		0 139 170 0 169 170 0 151 171 0 171 172 
		0 159 172 0 168 171 0 149 173 0 170 173 
		0 172 173 0 166 174 0 175 174 0 167 175 
		0 175 176 0 168 176 0 169 177 0 174 177 
		0 170 178 0 177 178 0 171 179 0 179 180 
		0 172 180 0 176 179 0 173 181 0 178 181 
		0 180 181 0 174 143 0 175 142 0 176 145 
		0 177 146 0 178 147 0 179 153 0 180 152 
		0 181 154 0;
	setAttr -s 192 ".fc[0:191]" -type "polyFaces" 
		f 4 0 65 -7 -65 
		mu 0 4 0 1 9 8 
		f 4 1 66 -8 -66 
		mu 0 4 1 2 10 9 
		f 4 2 68 -9 -68 
		mu 0 4 3 4 12 11 
		f 4 3 69 -10 -69 
		mu 0 4 4 5 13 12 
		f 4 4 70 -11 -70 
		mu 0 4 5 6 14 13 
		f 4 5 64 -12 -71 
		mu 0 4 6 7 15 14 
		f 4 6 72 -13 -72 
		mu 0 4 8 9 17 16 
		f 4 7 73 -14 -73 
		mu 0 4 9 10 18 17 
		f 4 8 75 -15 -75 
		mu 0 4 11 12 20 19 
		f 4 9 76 -16 -76 
		mu 0 4 12 13 21 20 
		f 4 10 77 -17 -77 
		mu 0 4 13 14 22 21 
		f 4 11 71 -18 -78 
		mu 0 4 14 15 23 22 
		f 4 12 79 -19 -79 
		mu 0 4 16 17 25 24 
		f 4 13 80 -20 -80 
		mu 0 4 17 18 26 25 
		f 4 14 82 -21 -82 
		mu 0 4 19 20 28 27 
		f 4 15 83 -22 -83 
		mu 0 4 20 21 29 28 
		f 4 16 84 -23 -84 
		mu 0 4 21 22 30 29 
		f 4 17 78 -24 -85 
		mu 0 4 22 23 31 30 
		f 4 18 86 -25 -86 
		mu 0 4 24 25 33 32 
		f 4 19 87 -26 -87 
		mu 0 4 25 26 34 33 
		f 4 20 89 -27 -89 
		mu 0 4 27 28 36 35 
		f 4 21 90 -28 -90 
		mu 0 4 28 29 37 36 
		f 4 22 91 -29 -91 
		mu 0 4 29 30 38 37 
		f 4 23 85 -30 -92 
		mu 0 4 30 31 39 38 
		f 4 24 93 -31 -93 
		mu 0 4 32 33 41 40 
		f 4 25 94 -32 -94 
		mu 0 4 33 34 42 41 
		f 4 26 96 -33 -96 
		mu 0 4 35 36 44 43 
		f 4 27 97 -34 -97 
		mu 0 4 36 37 45 44 
		f 4 28 98 -35 -98 
		mu 0 4 37 38 46 45 
		f 4 29 92 -36 -99 
		mu 0 4 38 39 47 46 
		f 4 30 100 -37 -100 
		mu 0 4 40 41 49 48 
		f 4 31 101 -38 -101 
		mu 0 4 41 42 50 49 
		f 4 32 103 -39 -103 
		mu 0 4 43 44 52 51 
		f 4 33 104 -40 -104 
		mu 0 4 44 45 53 52 
		f 4 34 105 -41 -105 
		mu 0 4 45 46 54 53 
		f 4 35 99 -42 -106 
		mu 0 4 46 47 55 54 
		f 4 36 107 -43 -107 
		mu 0 4 48 49 57 56 
		f 4 37 108 -44 -108 
		mu 0 4 49 50 58 57 
		f 4 38 110 -45 -110 
		mu 0 4 51 52 60 59 
		f 4 39 111 -46 -111 
		mu 0 4 52 53 61 60 
		f 4 180 181 -184 -185 
		mu 0 4 116 117 62 118 
		f 4 186 188 -190 -182 
		mu 0 4 117 119 120 62 
		f 4 42 113 -47 -113 
		mu 0 4 56 57 65 64 
		f 4 43 114 -48 -114 
		mu 0 4 57 58 66 65 
		f 4 44 116 -49 -116 
		mu 0 4 59 60 68 67 
		f 4 45 117 -50 -117 
		mu 0 4 60 61 69 68 
		f 4 183 191 -194 -195 
		mu 0 4 118 62 121 122 
		f 4 189 196 -198 -192 
		mu 0 4 62 120 123 121 
		f 4 46 119 -53 -119 
		mu 0 4 64 65 73 72 
		f 4 47 120 -54 -120 
		mu 0 4 65 66 74 73 
		f 4 48 122 -55 -122 
		mu 0 4 67 68 76 75 
		f 4 49 123 -56 -123 
		mu 0 4 68 69 77 76 
		f 4 50 124 -57 -124 
		mu 0 4 69 70 78 77 
		f 4 51 118 -58 -125 
		mu 0 4 70 71 79 78 
		f 4 52 126 -59 -126 
		mu 0 4 72 73 81 80 
		f 4 53 127 -60 -127 
		mu 0 4 73 74 82 81 
		f 4 54 129 -61 -129 
		mu 0 4 75 76 84 83 
		f 4 55 130 -62 -130 
		mu 0 4 76 77 85 84 
		f 4 56 131 -63 -131 
		mu 0 4 77 78 86 85 
		f 4 57 125 -64 -132 
		mu 0 4 78 79 87 86 
		f 3 -1 -133 133 
		mu 0 3 1 0 88 
		f 3 -2 -134 134 
		mu 0 3 2 1 89 
		f 3 -3 -136 136 
		mu 0 3 4 3 90 
		f 3 -4 -137 137 
		mu 0 3 5 4 91 
		f 3 -5 -138 138 
		mu 0 3 6 5 92 
		f 3 -6 -139 132 
		mu 0 3 7 6 93 
		f 3 58 140 -140 
		mu 0 3 80 81 94 
		f 3 59 141 -141 
		mu 0 3 81 82 95 
		f 3 60 143 -143 
		mu 0 3 83 84 96 
		f 3 61 144 -144 
		mu 0 3 84 85 97 
		f 3 62 145 -145 
		mu 0 3 85 86 98 
		f 3 63 139 -146 
		mu 0 3 86 87 99 
		f 4 40 147 -149 -147 
		mu 0 4 53 54 101 100 
		f 4 -112 146 150 -150 
		mu 0 4 61 53 100 102 
		f 4 41 151 -153 -148 
		mu 0 4 54 55 103 101 
		f 4 106 153 -155 -152 
		mu 0 4 55 63 104 103 
		f 4 -51 156 157 -156 
		mu 0 4 70 69 106 105 
		f 4 -118 149 158 -157 
		mu 0 4 69 61 102 106 
		f 4 112 159 -161 -154 
		mu 0 4 63 71 107 104 
		f 4 -52 155 161 -160 
		mu 0 4 71 70 105 107 
		f 4 148 163 -165 -163 
		mu 0 4 100 101 109 108 
		f 4 -151 162 166 -166 
		mu 0 4 102 100 108 110 
		f 4 152 167 -169 -164 
		mu 0 4 101 103 111 109 
		f 4 154 169 -171 -168 
		mu 0 4 103 104 112 111 
		f 4 -158 172 173 -172 
		mu 0 4 105 106 114 113 
		f 4 -159 165 174 -173 
		mu 0 4 106 102 110 114 
		f 4 160 175 -177 -170 
		mu 0 4 104 107 115 112 
		f 4 -162 171 177 -176 
		mu 0 4 107 105 113 115 
		f 4 164 179 -181 -179 
		mu 0 4 108 109 117 116 
		f 4 -167 178 184 -183 
		mu 0 4 110 108 116 118 
		f 4 168 185 -187 -180 
		mu 0 4 109 111 119 117 
		f 4 170 187 -189 -186 
		mu 0 4 111 112 120 119 
		f 4 -174 192 193 -191 
		mu 0 4 113 114 122 121 
		f 4 -175 182 194 -193 
		mu 0 4 114 110 118 122 
		f 4 176 195 -197 -188 
		mu 0 4 112 115 123 120 
		f 4 -178 190 197 -196 
		mu 0 4 115 113 121 123 
		f 4 201 200 -200 -199 
		mu 0 4 124 127 126 125 
		f 4 199 203 -67 -203 
		mu 0 4 125 126 129 128 
		f 4 67 206 -206 -205 
		mu 0 4 130 133 132 131 
		f 4 205 209 -209 -208 
		mu 0 4 131 132 135 134 
		f 4 208 212 -212 -211 
		mu 0 4 134 135 137 136 
		f 4 211 214 -202 -214 
		mu 0 4 136 137 139 138 
		f 4 217 216 -216 -201 
		mu 0 4 127 141 140 126 
		f 4 215 218 -74 -204 
		mu 0 4 126 140 142 129 
		f 4 74 220 -220 -207 
		mu 0 4 133 144 143 132 
		f 4 219 222 -222 -210 
		mu 0 4 132 143 145 135 
		f 4 221 224 -224 -213 
		mu 0 4 135 145 146 137 
		f 4 223 225 -218 -215 
		mu 0 4 137 146 147 139 
		f 4 228 227 -227 -217 
		mu 0 4 141 149 148 140 
		f 4 226 229 -81 -219 
		mu 0 4 140 148 150 142 
		f 4 81 231 -231 -221 
		mu 0 4 144 152 151 143 
		f 4 230 233 -233 -223 
		mu 0 4 143 151 153 145 
		f 4 232 235 -235 -225 
		mu 0 4 145 153 154 146 
		f 4 234 236 -229 -226 
		mu 0 4 146 154 155 147 
		f 4 239 238 -238 -228 
		mu 0 4 149 157 156 148 
		f 4 237 240 -88 -230 
		mu 0 4 148 156 158 150 
		f 4 88 242 -242 -232 
		mu 0 4 152 160 159 151 
		f 4 241 244 -244 -234 
		mu 0 4 151 159 161 153 
		f 4 243 246 -246 -236 
		mu 0 4 153 161 162 154 
		f 4 245 247 -240 -237 
		mu 0 4 154 162 163 155 
		f 4 250 249 -249 -239 
		mu 0 4 157 165 164 156 
		f 4 248 251 -95 -241 
		mu 0 4 156 164 166 158 
		f 4 95 253 -253 -243 
		mu 0 4 160 168 167 159 
		f 4 252 255 -255 -245 
		mu 0 4 159 167 169 161 
		f 4 254 257 -257 -247 
		mu 0 4 161 169 170 162 
		f 4 256 258 -251 -248 
		mu 0 4 162 170 171 163 
		f 4 261 260 -260 -250 
		mu 0 4 165 173 172 164 
		f 4 259 262 -102 -252 
		mu 0 4 164 172 174 166 
		f 4 102 264 -264 -254 
		mu 0 4 168 176 175 167 
		f 4 263 266 -266 -256 
		mu 0 4 167 175 177 169 
		f 4 265 268 -268 -258 
		mu 0 4 169 177 178 170 
		f 4 267 269 -262 -259 
		mu 0 4 170 178 179 171 
		f 4 272 271 -271 -261 
		mu 0 4 173 181 180 172 
		f 4 270 273 -109 -263 
		mu 0 4 172 180 182 174 
		f 4 109 275 -275 -265 
		mu 0 4 176 184 183 175 
		f 4 274 277 -277 -267 
		mu 0 4 175 183 185 177 
		f 4 281 280 -280 -279 
		mu 0 4 186 189 188 187 
		f 4 279 284 -284 -283 
		mu 0 4 187 188 191 190 
		f 4 287 286 -286 -272 
		mu 0 4 181 193 192 180 
		f 4 285 288 -115 -274 
		mu 0 4 180 192 194 182 
		f 4 115 290 -290 -276 
		mu 0 4 184 196 195 183 
		f 4 289 292 -292 -278 
		mu 0 4 183 195 197 185 
		f 4 295 294 -294 -281 
		mu 0 4 189 199 198 188 
		f 4 293 297 -297 -285 
		mu 0 4 188 198 200 191 
		f 4 300 299 -299 -287 
		mu 0 4 193 202 201 192 
		f 4 298 301 -121 -289 
		mu 0 4 192 201 203 194 
		f 4 121 303 -303 -291 
		mu 0 4 196 205 204 195 
		f 4 302 305 -305 -293 
		mu 0 4 195 204 206 197 
		f 4 304 308 -308 -307 
		mu 0 4 197 206 208 207 
		f 4 307 310 -301 -310 
		mu 0 4 207 208 210 209 
		f 4 313 312 -312 -300 
		mu 0 4 202 212 211 201 
		f 4 311 314 -128 -302 
		mu 0 4 201 211 213 203 
		f 4 128 316 -316 -304 
		mu 0 4 205 215 214 204 
		f 4 315 318 -318 -306 
		mu 0 4 204 214 216 206 
		f 4 317 320 -320 -309 
		mu 0 4 206 216 217 208 
		f 4 319 321 -314 -311 
		mu 0 4 208 217 218 210 
		f 3 -324 322 198 
		mu 0 3 125 219 124 
		f 3 -135 323 202 
		mu 0 3 128 220 125 
		f 3 -325 135 204 
		mu 0 3 131 221 130 
		f 3 -326 324 207 
		mu 0 3 134 222 131 
		f 3 -327 325 210 
		mu 0 3 136 223 134 
		f 3 -323 326 213 
		mu 0 3 138 224 136 
		f 3 328 -328 -313 
		mu 0 3 212 225 211 
		f 3 327 -142 -315 
		mu 0 3 211 226 213 
		f 3 142 -330 -317 
		mu 0 3 215 227 214 
		f 3 329 -331 -319 
		mu 0 3 214 228 216 
		f 3 330 -332 -321 
		mu 0 3 216 229 217 
		f 3 331 -329 -322 
		mu 0 3 217 230 218 
		f 4 334 333 -333 -269 
		mu 0 4 177 232 231 178 
		f 4 336 -336 -335 276 
		mu 0 4 185 233 232 177 
		f 4 332 338 -338 -270 
		mu 0 4 178 231 234 179 
		f 4 337 340 -340 -273 
		mu 0 4 179 234 236 235 
		f 4 343 -343 -342 306 
		mu 0 4 207 238 237 197 
		f 4 341 -345 -337 291 
		mu 0 4 197 237 233 185 
		f 4 339 346 -346 -288 
		mu 0 4 235 236 239 209 
		f 4 345 -348 -344 309 
		mu 0 4 209 239 238 207 
		f 4 350 349 -349 -334 
		mu 0 4 232 241 240 231 
		f 4 352 -352 -351 335 
		mu 0 4 233 242 241 232 
		f 4 348 354 -354 -339 
		mu 0 4 231 240 243 234 
		f 4 353 356 -356 -341 
		mu 0 4 234 243 244 236 
		f 4 359 -359 -358 342 
		mu 0 4 238 246 245 237 
		f 4 357 -361 -353 344 
		mu 0 4 237 245 242 233 
		f 4 355 362 -362 -347 
		mu 0 4 236 244 247 239 
		f 4 361 -364 -360 347 
		mu 0 4 239 247 246 238 
		f 4 365 278 -365 -350 
		mu 0 4 241 186 187 240 
		f 4 366 -282 -366 351 
		mu 0 4 242 189 186 241 
		f 4 364 282 -368 -355 
		mu 0 4 240 187 190 243 
		f 4 367 283 -369 -357 
		mu 0 4 243 190 191 244 
		f 4 370 -295 -370 358 
		mu 0 4 246 198 199 245 
		f 4 369 -296 -367 360 
		mu 0 4 245 199 189 242 
		f 4 368 296 -372 -363 
		mu 0 4 244 191 200 247 
		f 4 371 -298 -371 363 
		mu 0 4 247 200 198 246 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:belt_GEO" -p "bouncy:Body_GRP";
	setAttr ".t" -type "double3" 0 0.025467734382171977 0 ;
	setAttr ".rp" -type "double3" 0 -0.009790534973144532 -3.5762786865234374e-009 ;
	setAttr ".sp" -type "double3" 0 -0.009790534973144532 -3.5762786865234374e-009 ;
createNode mesh -n "bouncy:belt_GEOShape" -p "bouncy:belt_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:pasted__polySurfaceShape1" -p "bouncy:belt_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.66666663 0.083333336 0.74999994 0.083333336 
		0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 0 0.16666667 
		0.083333336 0.16666667 0.16666667 0.16666667 0.66666663 0.16666667 0.74999994 0.16666667 
		0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 0.16666667 0 0.25 0.083333336 
		0.25 0.16666667 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 0.25 
		0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.66666663 
		0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 0.33333334 0.99999988 
		0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 0.66666663 0.41666669 
		0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 0.41666669 0.99999988 0.41666669 
		0 0.5 0.083333336 0.5 0.16666667 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 0.5 
		0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 0.58333331 
		0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 0.91666657 0.58333331 
		0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 0.66666663 0.66666663 
		0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 0.91666657 0.66666663 0.99999988 
		0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 0.74999994 0.66666663 0.74999994 
		0.74999994 0.74999994 0.83333325 0.74999994 0.91666657 0.74999994 0.99999988 0.74999994 
		0 0.83333325 0.083333336 0.83333325 0.16666667 0.83333325 0.66666663 0.83333325 0.74999994 
		0.83333325 0.83333325 0.83333325 0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 
		0.083333336 0.91666657 0.16666667 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 
		0.83333325 0.91666657 0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 
		0 0.70833337 0 0.79166669 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.70833337 
		1 0.79166669 1 0.87500006 1 0.95833337 1 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994 0.83333325 0.58333331 0.91666657 0.58333331 
		0.83333325 0.66666663 0.99999988 0.58333331 0.99999988 0.66666663 0.91666657 0.74999994 
		0.83333325 0.74999994 0.99999988 0.74999994;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 103 ".vt[0:102]"  0.0057681859 -0.024857428 -0.0033302638 
		0.0033302638 -0.024857428 -0.0057681859 0 -0.024857428 -0.0066605275 0 -0.024857428 
		0.0066605275 0.0033302638 -0.024857428 0.0057681859 0.0057681859 -0.024857428 0.0033302638 
		0.0066605275 -0.024857428 0 0.01114328 -0.02228656 -0.0064335759 0.0064335759 -0.02228656 
		-0.01114328 0 -0.02228656 -0.012867152 0 -0.02228656 0.012867152 0.0064335759 -0.02228656 
		0.01114328 0.01114328 -0.02228656 0.0064335759 0.012867152 -0.02228656 0 0.015758976 
		-0.018196899 -0.0090984497 0.0090984497 -0.018196899 -0.015758976 0 -0.018196899 
		-0.018196899 0 -0.018196899 0.018196899 0.0090984497 -0.018196899 0.015758976 0.015758976 
		-0.018196899 0.0090984497 0.018196899 -0.018196899 0 0.019300727 -0.01286715 -0.01114328 
		0.01114328 -0.01286715 -0.019300727 0 -0.01286715 -0.02228656 0 -0.01286715 0.02228656 
		0.01114328 -0.01286715 0.019300727 0.019300727 -0.01286715 0.01114328 0.02228656 
		-0.01286715 0 0.021527164 -0.006660528 -0.012428714 0.012428714 -0.006660528 -0.021527164 
		0 -0.006660528 -0.024857428 0 -0.006660528 0.024857428 0.012428714 -0.006660528 0.021527164 
		0.021527164 -0.006660528 0.012428714 0.024857428 -0.006660528 0 0.02228656 0 -0.012867152 
		0.012867152 0 -0.02228656 0 0 -0.025734304 0 0 0.025734304 0.012867152 0 0.02228656 
		0.02228656 0 0.012867152 0.025734304 0 0 0.021527164 0.006660528 -0.012428714 0.012428714 
		0.006660528 -0.021527164 0 0.006660528 -0.024857428 0 0.006660528 0.024857428 0.012428714 
		0.006660528 0.021527164 0.021527164 0.006660528 0.012428714 0.024857428 0.006660528 
		0 0.019300727 0.01286715 -0.01114328 0.01114328 0.01286715 -0.019300727 0 0.01286715 
		-0.02228656 0 0.01286715 0.02228656 0.01114328 0.01286715 0.019300727 0.019300727 
		0.01286715 0.01114328 0.015758976 0.018196899 -0.0090984497 0.0090984497 0.018196899 
		-0.015758976 0 0.018196899 -0.018196899 0 0.018196899 0.018196899 0.0090984497 0.018196899 
		0.015758976 0.015758976 0.018196899 0.0090984497 0.016340477 0.021219 0 0.01114328 
		0.02228656 -0.0064335759 0.0064335759 0.02228656 -0.01114328 0 0.02228656 -0.012867152 
		0 0.02228656 0.012867152 0.0064335759 0.02228656 0.01114328 0.01114328 0.02228656 
		0.0064335759 0.012867152 0.02228656 0 0.0057681859 0.024857428 -0.0033302638 0.0033302638 
		0.024857428 -0.0057681859 0 0.024857428 -0.0066605275 0 0.024857428 0.0066605275 
		0.0033302638 0.024857428 0.0057681859 0.0057681859 0.024857428 0.0033302638 0.0066605275 
		0.024857428 0 0 -0.025734304 0 0 0.025734304 0 0.022972288 0.0082474202 0.0058655809 
		0.025377126 0.0073019052 2.2351741e-010 0.023094373 0.014597914 0.0076335031 0.022972288 
		0.0082474193 -0.0058655809 0.023094373 0.014597914 -0.0076335031 0.02376698 0.019998809 
		7.4505804e-011 0.022010293 0.018172646 0.00514133 0.022010295 0.018172646 -0.00514133 
		0.023776991 0.0094096353 0.0049966942 0.025219895 0.0088423258 -4.0563855e-010 0.023733286 
		0.014222873 0.0059994962 0.023776997 0.0094096344 -0.0049966956 0.023733284 0.014222876 
		-0.0059994967 0.024019895 0.018466355 1.3243805e-010 0.022965882 0.017370658 0.0034650243 
		0.02296588 0.01737066 -0.0034650234 0.022484057 0.009246517 0.0048226095 0.023926962 
		0.0086792056 -1.0244549e-009 0.022613637 0.013459504 3.3225832e-011 0.022440661 0.014059298 
		0.0058235736 0.022484062 0.0092465132 -0.0048226118 0.022440657 0.014059298 -0.0058235745 
		0.022727575 0.01830232 4.4703483e-010 0.021673562 0.017206624 0.0032872646 0.02167356 
		0.017206624 -0.0032872632;
	setAttr -s 198 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 
		0 4 5 0 5 6 0 6 0 0 7 8 
		0 8 9 0 10 11 0 11 12 0 12 13 
		0 13 7 0 14 15 0 15 16 0 17 18 
		0 18 19 0 19 20 0 20 14 0 21 22 
		0 22 23 0 24 25 0 25 26 0 26 27 
		0 27 21 0 28 29 0 29 30 0 31 32 
		0 32 33 0 33 34 0 34 28 0 35 36 
		0 36 37 0 38 39 0 39 40 0 40 41 
		0 41 35 0 42 43 0 43 44 0 45 46 
		0 46 47 0 47 48 0 48 42 0 49 50 
		0 50 51 0 52 53 0 53 54 0 55 56 
		0 56 57 0 58 59 0 59 60 0 60 61 
		0 61 55 0 62 63 0 63 64 0 65 66 
		0 66 67 0 67 68 0 68 62 0 69 70 
		0 70 71 0 72 73 0 73 74 0 74 75 
		0 75 69 0 0 7 0 1 8 0 2 9 
		0 3 10 0 4 11 0 5 12 0 6 13 
		0 7 14 0 8 15 0 9 16 0 10 17 
		0 11 18 0 12 19 0 13 20 0 14 21 
		0 15 22 0 16 23 0 17 24 0 18 25 
		0 19 26 0 20 27 0 21 28 0 22 29 
		0 23 30 0 24 31 0 25 32 0 26 33 
		0 27 34 0 28 35 0 29 36 0 30 37 
		0 31 38 0 32 39 0 33 40 0 34 41 
		0 35 42 0 36 43 0 37 44 0 38 45 
		0 39 46 0 40 47 0 41 48 0 42 49 
		0 43 50 0 44 51 0 45 52 0 46 53 
		0 47 54 0 49 55 0 50 56 0 51 57 
		0 52 58 0 53 59 0 54 60 0 55 62 
		0 56 63 0 57 64 0 58 65 0 59 66 
		0 60 67 0 61 68 0 62 69 0 63 70 
		0 64 71 0 65 72 0 66 73 0 67 74 
		0 68 75 0 76 0 0 76 1 0 76 2 
		0 76 3 0 76 4 0 76 5 0 76 6 
		0 69 77 0 70 77 0 71 77 0 72 77 
		0 73 77 0 74 77 0 75 77 0 47 78 
		0 48 79 1 78 79 0 54 80 1 78 80 
		0 42 81 0 79 81 0 49 82 1 81 82 
		0 61 83 1 60 84 0 84 83 0 80 84 
		0 55 85 0 82 85 0 83 85 0 78 86 
		1 79 87 1 86 87 0 80 88 1;
	setAttr ".ed[166:197]" 86 88 0 81 89 1 87 89 
		0 82 90 1 89 90 0 83 91 0 84 92 
		1 92 91 0 88 92 0 85 93 1 90 93 
		0 91 93 0 86 94 0 87 95 1 94 95 
		0 95 96 0 88 97 0 97 96 0 94 97 
		0 89 98 0 95 98 0 90 99 0 98 99 
		0 96 99 0 91 100 0 96 100 0 92 101 
		0 101 100 0 97 101 0 93 102 0 99 102 
		0 100 102 0;
	setAttr -s 96 ".fc[0:95]" -type "polyFaces" 
		f 4 0 65 -7 -65 
		mu 0 4 0 1 9 8 
		f 4 1 66 -8 -66 
		mu 0 4 1 2 10 9 
		f 4 2 68 -9 -68 
		mu 0 4 3 4 12 11 
		f 4 3 69 -10 -69 
		mu 0 4 4 5 13 12 
		f 4 4 70 -11 -70 
		mu 0 4 5 6 14 13 
		f 4 5 64 -12 -71 
		mu 0 4 6 7 15 14 
		f 4 6 72 -13 -72 
		mu 0 4 8 9 17 16 
		f 4 7 73 -14 -73 
		mu 0 4 9 10 18 17 
		f 4 8 75 -15 -75 
		mu 0 4 11 12 20 19 
		f 4 9 76 -16 -76 
		mu 0 4 12 13 21 20 
		f 4 10 77 -17 -77 
		mu 0 4 13 14 22 21 
		f 4 11 71 -18 -78 
		mu 0 4 14 15 23 22 
		f 4 12 79 -19 -79 
		mu 0 4 16 17 25 24 
		f 4 13 80 -20 -80 
		mu 0 4 17 18 26 25 
		f 4 14 82 -21 -82 
		mu 0 4 19 20 28 27 
		f 4 15 83 -22 -83 
		mu 0 4 20 21 29 28 
		f 4 16 84 -23 -84 
		mu 0 4 21 22 30 29 
		f 4 17 78 -24 -85 
		mu 0 4 22 23 31 30 
		f 4 18 86 -25 -86 
		mu 0 4 24 25 33 32 
		f 4 19 87 -26 -87 
		mu 0 4 25 26 34 33 
		f 4 20 89 -27 -89 
		mu 0 4 27 28 36 35 
		f 4 21 90 -28 -90 
		mu 0 4 28 29 37 36 
		f 4 22 91 -29 -91 
		mu 0 4 29 30 38 37 
		f 4 23 85 -30 -92 
		mu 0 4 30 31 39 38 
		f 4 24 93 -31 -93 
		mu 0 4 32 33 41 40 
		f 4 25 94 -32 -94 
		mu 0 4 33 34 42 41 
		f 4 26 96 -33 -96 
		mu 0 4 35 36 44 43 
		f 4 27 97 -34 -97 
		mu 0 4 36 37 45 44 
		f 4 28 98 -35 -98 
		mu 0 4 37 38 46 45 
		f 4 29 92 -36 -99 
		mu 0 4 38 39 47 46 
		f 4 30 100 -37 -100 
		mu 0 4 40 41 49 48 
		f 4 31 101 -38 -101 
		mu 0 4 41 42 50 49 
		f 4 32 103 -39 -103 
		mu 0 4 43 44 52 51 
		f 4 33 104 -40 -104 
		mu 0 4 44 45 53 52 
		f 4 34 105 -41 -105 
		mu 0 4 45 46 54 53 
		f 4 35 99 -42 -106 
		mu 0 4 46 47 55 54 
		f 4 36 107 -43 -107 
		mu 0 4 48 49 57 56 
		f 4 37 108 -44 -108 
		mu 0 4 49 50 58 57 
		f 4 38 110 -45 -110 
		mu 0 4 51 52 60 59 
		f 4 39 111 -46 -111 
		mu 0 4 52 53 61 60 
		f 4 180 181 -184 -185 
		mu 0 4 116 117 62 118 
		f 4 186 188 -190 -182 
		mu 0 4 117 119 120 62 
		f 4 42 113 -47 -113 
		mu 0 4 56 57 65 64 
		f 4 43 114 -48 -114 
		mu 0 4 57 58 66 65 
		f 4 44 116 -49 -116 
		mu 0 4 59 60 68 67 
		f 4 45 117 -50 -117 
		mu 0 4 60 61 69 68 
		f 4 183 191 -194 -195 
		mu 0 4 118 62 121 122 
		f 4 189 196 -198 -192 
		mu 0 4 62 120 123 121 
		f 4 46 119 -53 -119 
		mu 0 4 64 65 73 72 
		f 4 47 120 -54 -120 
		mu 0 4 65 66 74 73 
		f 4 48 122 -55 -122 
		mu 0 4 67 68 76 75 
		f 4 49 123 -56 -123 
		mu 0 4 68 69 77 76 
		f 4 50 124 -57 -124 
		mu 0 4 69 70 78 77 
		f 4 51 118 -58 -125 
		mu 0 4 70 71 79 78 
		f 4 52 126 -59 -126 
		mu 0 4 72 73 81 80 
		f 4 53 127 -60 -127 
		mu 0 4 73 74 82 81 
		f 4 54 129 -61 -129 
		mu 0 4 75 76 84 83 
		f 4 55 130 -62 -130 
		mu 0 4 76 77 85 84 
		f 4 56 131 -63 -131 
		mu 0 4 77 78 86 85 
		f 4 57 125 -64 -132 
		mu 0 4 78 79 87 86 
		f 3 -1 -133 133 
		mu 0 3 1 0 88 
		f 3 -2 -134 134 
		mu 0 3 2 1 89 
		f 3 -3 -136 136 
		mu 0 3 4 3 90 
		f 3 -4 -137 137 
		mu 0 3 5 4 91 
		f 3 -5 -138 138 
		mu 0 3 6 5 92 
		f 3 -6 -139 132 
		mu 0 3 7 6 93 
		f 3 58 140 -140 
		mu 0 3 80 81 94 
		f 3 59 141 -141 
		mu 0 3 81 82 95 
		f 3 60 143 -143 
		mu 0 3 83 84 96 
		f 3 61 144 -144 
		mu 0 3 84 85 97 
		f 3 62 145 -145 
		mu 0 3 85 86 98 
		f 3 63 139 -146 
		mu 0 3 86 87 99 
		f 4 40 147 -149 -147 
		mu 0 4 53 54 101 100 
		f 4 -112 146 150 -150 
		mu 0 4 61 53 100 102 
		f 4 41 151 -153 -148 
		mu 0 4 54 55 103 101 
		f 4 106 153 -155 -152 
		mu 0 4 55 63 104 103 
		f 4 -51 156 157 -156 
		mu 0 4 70 69 106 105 
		f 4 -118 149 158 -157 
		mu 0 4 69 61 102 106 
		f 4 112 159 -161 -154 
		mu 0 4 63 71 107 104 
		f 4 -52 155 161 -160 
		mu 0 4 71 70 105 107 
		f 4 148 163 -165 -163 
		mu 0 4 100 101 109 108 
		f 4 -151 162 166 -166 
		mu 0 4 102 100 108 110 
		f 4 152 167 -169 -164 
		mu 0 4 101 103 111 109 
		f 4 154 169 -171 -168 
		mu 0 4 103 104 112 111 
		f 4 -158 172 173 -172 
		mu 0 4 105 106 114 113 
		f 4 -159 165 174 -173 
		mu 0 4 106 102 110 114 
		f 4 160 175 -177 -170 
		mu 0 4 104 107 115 112 
		f 4 -162 171 177 -176 
		mu 0 4 107 105 113 115 
		f 4 164 179 -181 -179 
		mu 0 4 108 109 117 116 
		f 4 -167 178 184 -183 
		mu 0 4 110 108 116 118 
		f 4 168 185 -187 -180 
		mu 0 4 109 111 119 117 
		f 4 170 187 -189 -186 
		mu 0 4 111 112 120 119 
		f 4 -174 192 193 -191 
		mu 0 4 113 114 122 121 
		f 4 -175 182 194 -193 
		mu 0 4 114 110 118 122 
		f 4 176 195 -197 -188 
		mu 0 4 112 115 123 120 
		f 4 -178 190 197 -196 
		mu 0 4 115 113 121 123 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "bouncy:belt_GEOShapeOrig" -p "bouncy:belt_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 128 ".uvst[0].uvsp[0:127]" -type "float2" 0 0.33333334 0.083333336 
		0.33333334 0.16666667 0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 
		0.33333334 0.91666657 0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 
		0.16666667 0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 
		0.91666657 0.41666669 0.99999988 0.41666669 0.083333336 0.33333334 0 0.33333334 0.16666667 
		0.33333334 0.74999994 0.33333334 0.66666663 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0.083333336 0.41666669 0 0.41666669 0.16666667 0.41666669 
		0.74999994 0.41666669 0.66666663 0.41666669 0.83333325 0.41666669 0.91666657 0.41666669 
		0.99999988 0.41666669 0 0.33333334 0.083333336 0.33333334 0.083333336 0.41666669 
		0 0.41666669 0.16666667 0.33333334 0.16666667 0.41666669 0.66666663 0.33333334 0.74999994 
		0.33333334 0.74999994 0.41666669 0.66666663 0.41666669 0.83333325 0.33333334 0.83333325 
		0.41666669 0.91666657 0.33333334 0.91666657 0.41666669 0.99999988 0.33333334 0.99999988 
		0.41666669 0 0.41666669 0.083333336 0.41666669 0.083333336 0.33333334 0 0.33333334 
		0.16666667 0.41666669 0.16666667 0.33333334 0.66666663 0.41666669 0.74999994 0.41666669 
		0.74999994 0.33333334 0.66666663 0.33333334 0.83333325 0.41666669 0.83333325 0.33333334 
		0.91666657 0.41666669 0.91666657 0.33333334 0.99999988 0.41666669 0.99999988 0.33333334 
		0 0.41666669 0.99999988 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 0.16666667 
		0.41666669 0.083333336 0.41666669 0.99999988 0.41666669 0 0.41666669 0.91666657 0.41666669 
		0.83333325 0.41666669 0.74999994 0.41666669 0.66666663 0.41666669 0.66666663 0.41666669 
		0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 0.41666669 0.91666657 0.33333334 
		0.83333325 0.33333334 0.74999994 0.33333334 0.66666663 0.33333334 0.66666663 0.33333334 
		0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 0.33333334 0 0.33333334 0.99999988 
		0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.16666667 0.33333334 0.083333336 
		0.33333334 0.99999988 0.33333334 0 0.33333334 0.91666657 0.34026548 0.83333325 0.34026548 
		0.74999994 0.34026548 0.66666663 0.34026548 0.66666663 0.34026548 0.74999994 0.34026548 
		0.83333325 0.34026548 0.91666657 0.34026548 0 0.34026548 0.99999988 0.34026548 0.083333336 
		0.34026548 0.16666667 0.34026548 0.16666667 0.34026548 0.083333336 0.34026548 0.99999988 
		0.34026548 0 0.34026548 0.91666657 0.41276547 0.83333325 0.41276547 0.74999994 0.41276547 
		0.66666663 0.41276547 0.66666663 0.41276547 0.74999994 0.41276547 0.83333325 0.41276547 
		0.91666657 0.41276547 0 0.41276547 0.99999988 0.41276547 0.083333336 0.41276547 0.16666667 
		0.41276547 0.16666667 0.41276547 0.083333336 0.41276547 0.99999988 0.41276547 0 0.41276547;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 96 ".vt[0:95]"  0.018370578 -0.012247051 -0.01060626 0.010606259 
		-0.012247051 -0.01837058 1.2772557e-010 -0.012247051 -0.02121252 1.2795912e-010 -0.012247051 
		0.021212516 0.010606259 -0.012247051 0.018370574 0.018370578 -0.012247051 0.010606259 
		0.021212518 -0.012247051 -7.4019896e-010 0.020489719 -0.0063395416 -0.011829746 0.011829746 
		-0.0063395416 -0.020489719 2.8119204e-010 -0.0063395416 -0.023659492 4.4782503e-010 
		-0.0063395416 0.023659486 0.011829746 -0.0063395416 0.020489719 0.020489719 -0.0063395416 
		0.011829741 0.023659492 -0.0063395416 -7.4019896e-010 -0.010606259 -0.012247051 -0.01837058 
		-0.018370578 -0.012247053 -0.01060626 -0.010606259 -0.012247051 0.018370574 -0.018370578 
		-0.01224705 0.010606259 -0.021212518 -0.012247053 -7.4019896e-010 -0.011829746 -0.0063395407 
		-0.020489719 -0.020489719 -0.0063395416 -0.011829746 -0.011829746 -0.0063395407 0.020489719 
		-0.020489719 -0.0063395407 0.011829741 -0.023659492 -0.0063395416 -7.4019896e-010 
		0.0204498 -0.013241525 -0.011806694 0.011806699 -0.013241526 -0.0204498 0.013030184 
		-0.0073340172 -0.022568939 0.022568941 -0.0073340172 -0.01303018 -2.8911045e-011 
		-0.013241527 -0.023613395 1.4455523e-010 -0.0073340191 -0.026060369 -2.8911046e-010 
		-0.013241529 0.023613391 0.011806697 -0.013241526 0.020449802 0.01303018 -0.0073340191 
		0.022568947 2.8911045e-011 -0.0073340209 0.026060361 0.020449799 -0.013241529 0.011806701 
		0.022568939 -0.0073340191 0.013030184 0.023613395 -0.013241527 -7.4019896e-010 0.026060367 
		-0.0073340191 -7.4019896e-010 -0.0204498 -0.013241529 -0.011806694 -0.022568941 -0.0073340158 
		-0.01303018 -0.013030184 -0.0073340135 -0.022568936 -0.011806699 -0.013241525 -0.020449799 
		-0.01303018 -0.0073340172 0.022568939 -0.011806696 -0.013241527 0.020449795 -0.022568939 
		-0.0073340116 0.01303019 -0.0204498 -0.013241524 0.011806709 -0.026060367 -0.0073340135 
		6.6610291e-009 -0.023613395 -0.013241525 6.6610291e-009 0.020916138 -0.0065434952 
		-0.012075938 0.012075939 -0.0065434952 -0.020916138 2.5316971e-010 -0.0065434957 
		-0.024151878 -0.012075939 -0.0065434934 -0.020916138 -0.020916138 -0.0065434952 -0.012075938 
		-0.024151878 -0.0065434943 7.776918e-010 -0.020916138 -0.0065434929 0.012075935 -0.012075938 
		-0.0065434938 0.020916138 3.619115e-010 -0.0065434957 0.024151873 0.012075938 -0.0065434957 
		0.020916138 0.020916138 -0.0065434957 0.012075935 0.024151878 -0.0065434957 -7.4019896e-010 
		0.02131914 -0.012291214 -7.4019896e-010 0.018462919 -0.012291214 0.01065957 0.01065957 
		-0.012291214 0.018462913 1.09437e-010 -0.012291214 0.021319136 -0.01065957 -0.012291214 
		0.018462913 -0.018462919 -0.012291214 0.01065957 -0.02131914 -0.012291217 -4.1150969e-010 
		-0.018462919 -0.012291217 -0.010659571 -0.01065957 -0.012291214 -0.018462919 1.2076934e-010 
		-0.012291214 -0.021319142 0.01065957 -0.012291214 -0.018462919 0.018462919 -0.012291214 
		-0.010659571 0.023816949 -0.012750106 -7.4019896e-010 0.020626079 -0.01275011 0.011908477 
		0.011908473 -0.012750106 0.020626087 -2.6265559e-010 -0.012750111 0.023816943 -0.011908473 
		-0.012750106 0.020626077 -0.020626083 -0.012750102 0.011908485 -0.023816949 -0.012750106 
		6.6610291e-009 -0.020626083 -0.012750108 -0.011908473 -0.011908473 -0.012750106 -0.020626077 
		-1.4481128e-011 -0.012750106 -0.023816949 0.011908475 -0.012750106 -0.020626085 0.020626083 
		-0.012750106 -0.011908473 0.025945814 -0.0076105762 -7.4019896e-010 0.022469733 -0.0076105762 
		0.012972907 0.012972904 -0.0076105762 0.022469737 1.4023038e-011 -0.0076105772 0.025945807 
		-0.012972904 -0.0076105744 0.022469733 -0.022469733 -0.0076105683 0.012972913 -0.025945814 
		-0.0076105706 6.6610291e-009 -0.022469735 -0.007610573 -0.012972903 -0.012972907 
		-0.0076105706 -0.022469731 1.3643447e-010 -0.0076105762 -0.025945816 0.012972909 
		-0.0076105744 -0.022469733 0.022469735 -0.0076105744 -0.012972903;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 
		0 4 5 0 5 6 0 6 0 0 7 8 
		0 8 9 0 10 11 0 11 12 0 12 13 
		0 13 7 0 15 14 0 14 2 0 3 16 
		0 16 17 0 17 18 0 18 15 0 20 19 
		0 19 9 0 10 21 0 21 22 0 22 23 
		0 23 20 0 0 71 0 1 70 0 24 25 
		0 8 49 0 25 82 0 7 48 0 27 26 
		0 24 83 0 2 69 0 25 28 0 9 50 
		0 28 81 0 26 29 0 3 63 0 4 62 
		0 30 31 0 11 57 0 31 74 0 10 56 
		0 33 32 0 30 75 0 5 61 0 31 34 
		0 12 58 0 34 73 0 32 35 0 6 60 
		0 34 36 0 13 59 0 36 72 0 35 37 
		0 36 24 0 37 27 0 15 67 0 20 52 
		0 38 79 0 19 51 0 39 40 0 14 68 
		0 41 80 0 38 41 0 40 29 0 41 28 
		0 21 55 0 33 42 0 16 64 0 43 76 
		0 30 43 0 22 54 0 42 44 0 17 65 
		0 45 77 0 43 45 0 23 53 0 44 46 
		0 18 66 0 47 78 0 45 47 0 46 39 
		0 47 38 0 48 27 0 49 26 0 48 49 
		0 50 29 0 49 50 0 51 40 0 50 51 
		0 52 39 0 51 52 0 53 46 0 52 53 
		0 54 44 0 53 54 0 55 42 0 54 55 
		0 56 33 0 55 56 0 57 32 0 56 57 
		0 58 35 0 57 58 0 59 37 0 58 59 
		0 59 48 0 60 36 0 61 34 0 60 61 
		0 62 31 0 61 62 0 63 30 0 62 63 
		0 64 43 0 63 64 0 65 45 0 64 65 
		0 66 47 0 65 66 0 67 38 0 66 67 
		0 68 41 0 67 68 0 69 28 0 68 69 
		0 70 25 0 69 70 0 71 24 0 70 71 
		0 71 60 0 72 84 0 73 85 0 72 73 
		0 74 86 0 73 74 0 75 87 0 74 75 
		0 76 88 0 75 76 0 77 89 0 76 77 
		0 78 90 0 77 78 0 79 91 0 78 79 
		0 80 92 0 79 80 0 81 93 0 80 81 
		0 82 94 0 81 82 0 83 95 0 82 83 
		0 83 72 0 84 37 0 85 35 0 84 85 
		0 86 32 0 85 86 0 87 33 0 86 87 
		0 88 42 0 87 88 0 89 44 0;
	setAttr ".ed[166:179]" 88 89 0 90 46 0 89 90 
		0 91 39 0 90 91 0 92 40 0 91 92 
		0 93 29 0 92 93 0 94 26 0 93 94 
		0 95 27 0 94 95 0 95 84 0;
	setAttr -s 84 ".fc[0:83]" -type "polyFaces" 
		f 4 26 28 154 -32 
		mu 0 4 32 33 109 111 
		f 4 33 35 152 -29 
		mu 0 4 33 36 107 109 
		f 4 39 41 138 -45 
		mu 0 4 38 39 98 100 
		f 4 46 48 136 -42 
		mu 0 4 39 42 97 98 
		f 4 51 53 134 -49 
		mu 0 4 42 44 96 97 
		f 4 55 31 155 -54 
		mu 0 4 44 46 110 96 
		f 4 59 148 -64 -65 
		mu 0 4 51 104 106 50 
		f 4 63 150 -36 -67 
		mu 0 4 50 106 108 53 
		f 4 44 140 -71 -72 
		mu 0 4 57 99 101 56 
		f 4 70 142 -76 -77 
		mu 0 4 56 101 102 59 
		f 4 75 144 -81 -82 
		mu 0 4 59 102 103 61 
		f 4 80 146 -60 -84 
		mu 0 4 61 103 105 63 
		f 4 0 25 130 -25 
		mu 0 4 0 1 93 95 
		f 4 -7 29 86 -28 
		mu 0 4 9 8 64 66 
		f 4 1 32 128 -26 
		mu 0 4 1 2 91 93 
		f 4 -8 27 88 -35 
		mu 0 4 10 9 66 68 
		f 4 2 38 114 -38 
		mu 0 4 3 4 82 84 
		f 4 -9 42 102 -41 
		mu 0 4 12 11 75 77 
		f 4 3 45 112 -39 
		mu 0 4 4 5 81 82 
		f 4 -10 40 104 -48 
		mu 0 4 13 12 77 78 
		f 4 4 50 110 -46 
		mu 0 4 5 6 80 81 
		f 4 -11 47 106 -53 
		mu 0 4 14 13 78 79 
		f 4 5 24 131 -51 
		mu 0 4 6 7 94 80 
		f 4 -12 52 107 -30 
		mu 0 4 15 14 79 65 
		f 4 18 60 92 -59 
		mu 0 4 25 24 69 71 
		f 4 -13 57 124 -63 
		mu 0 4 16 17 88 90 
		f 4 19 34 90 -61 
		mu 0 4 24 26 67 69 
		f 4 -14 62 126 -33 
		mu 0 4 18 16 90 92 
		f 4 20 67 100 -43 
		mu 0 4 28 27 74 76 
		f 4 -15 37 116 -70 
		mu 0 4 19 20 83 85 
		f 4 21 72 98 -68 
		mu 0 4 27 29 73 74 
		f 4 -16 69 118 -75 
		mu 0 4 21 19 85 86 
		f 4 22 77 96 -73 
		mu 0 4 29 30 72 73 
		f 4 -17 74 120 -80 
		mu 0 4 22 21 86 87 
		f 4 23 58 94 -78 
		mu 0 4 30 31 70 72 
		f 4 -18 79 122 -58 
		mu 0 4 23 22 87 89 
		f 4 -87 84 30 -86 
		mu 0 4 66 64 35 34 
		f 4 -89 85 36 -88 
		mu 0 4 68 66 34 37 
		f 4 -91 87 -66 -90 
		mu 0 4 69 67 52 49 
		f 4 -93 89 -62 -92 
		mu 0 4 71 69 49 48 
		f 4 -95 91 -83 -94 
		mu 0 4 72 70 62 60 
		f 4 -97 93 -79 -96 
		mu 0 4 73 72 60 58 
		f 4 -99 95 -74 -98 
		mu 0 4 74 73 58 55 
		f 4 -101 97 -69 -100 
		mu 0 4 76 74 55 54 
		f 4 -103 99 43 -102 
		mu 0 4 77 75 41 40 
		f 4 -105 101 49 -104 
		mu 0 4 78 77 40 43 
		f 4 -107 103 54 -106 
		mu 0 4 79 78 43 45 
		f 4 -108 105 56 -85 
		mu 0 4 65 79 45 47 
		f 4 -111 108 -52 -110 
		mu 0 4 81 80 44 42 
		f 4 -113 109 -47 -112 
		mu 0 4 82 81 42 39 
		f 4 -115 111 -40 -114 
		mu 0 4 84 82 39 38 
		f 4 -117 113 71 -116 
		mu 0 4 85 83 57 56 
		f 4 -119 115 76 -118 
		mu 0 4 86 85 56 59 
		f 4 -121 117 81 -120 
		mu 0 4 87 86 59 61 
		f 4 -123 119 83 -122 
		mu 0 4 89 87 61 63 
		f 4 -125 121 64 -124 
		mu 0 4 90 88 51 50 
		f 4 -127 123 66 -126 
		mu 0 4 92 90 50 53 
		f 4 -129 125 -34 -128 
		mu 0 4 93 91 36 33 
		f 4 -131 127 -27 -130 
		mu 0 4 95 93 33 32 
		f 4 -132 129 -56 -109 
		mu 0 4 80 94 46 44 
		f 4 -135 132 158 -134 
		mu 0 4 97 96 112 113 
		f 4 -137 133 160 -136 
		mu 0 4 98 97 113 114 
		f 4 -139 135 162 -138 
		mu 0 4 100 98 114 116 
		f 4 -141 137 164 -140 
		mu 0 4 101 99 115 117 
		f 4 -143 139 166 -142 
		mu 0 4 102 101 117 118 
		f 4 -145 141 168 -144 
		mu 0 4 103 102 118 119 
		f 4 -147 143 170 -146 
		mu 0 4 105 103 119 121 
		f 4 -149 145 172 -148 
		mu 0 4 106 104 120 122 
		f 4 -151 147 174 -150 
		mu 0 4 108 106 122 124 
		f 4 -153 149 176 -152 
		mu 0 4 109 107 123 125 
		f 4 -155 151 178 -154 
		mu 0 4 111 109 125 127 
		f 4 -156 153 179 -133 
		mu 0 4 96 110 126 112 
		f 4 -159 156 -55 -158 
		mu 0 4 113 112 45 43 
		f 4 -161 157 -50 -160 
		mu 0 4 114 113 43 40 
		f 4 -163 159 -44 -162 
		mu 0 4 116 114 40 41 
		f 4 -165 161 68 -164 
		mu 0 4 117 115 54 55 
		f 4 -167 163 73 -166 
		mu 0 4 118 117 55 58 
		f 4 -169 165 78 -168 
		mu 0 4 119 118 58 60 
		f 4 -171 167 82 -170 
		mu 0 4 121 119 60 62 
		f 4 -173 169 61 -172 
		mu 0 4 122 120 48 49 
		f 4 -175 171 65 -174 
		mu 0 4 124 122 49 52 
		f 4 -177 173 -37 -176 
		mu 0 4 125 123 37 34 
		f 4 -179 175 -31 -178 
		mu 0 4 127 125 34 35 
		f 4 -180 177 -57 -157 
		mu 0 4 112 126 47 45 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:Spikes_GRP" -p "bouncy:Body_GRP";
	setAttr ".t" -type "double3" 0 -0.00064517398143351559 0 ;
	setAttr ".s" -type "double3" 0.050960600905040954 0.050960600905040954 0.050960600905040954 ;
createNode transform -n "bouncy:spike_01_GEO" -p "bouncy:Spikes_GRP";
	setAttr ".t" -type "double3" -0.0063433745267511641 0.96249735054159702 -0.26573505488412574 ;
	setAttr ".r" -type "double3" -29.108061524985917 0 0 ;
	setAttr ".s" -type "double3" 0.28827319996510609 0.52652143865830026 0.28827319996510609 ;
	setAttr ".rp" -type "double3" -4.1237812037244717e-009 0 -5.4983749382992972e-009 ;
	setAttr ".rpt" -type "double3" 0 -2.6747302104467547e-009 6.9442393277881442e-010 ;
	setAttr ".sp" -type "double3" -1.4305114746093749e-008 0 -1.9073486328125e-008 ;
	setAttr ".spt" -type "double3" 1.018133354236928e-008 0 1.3575111389825706e-008 ;
createNode mesh -n "bouncy:spike_01_GEOShape" -p "bouncy:spike_01_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:spike_01_GEOShapeOrig" -p "bouncy:spike_01_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457 
		0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007 
		0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 
		0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 
		0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 
		0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 
		0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 
		0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 
		0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 
		1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0.10392043 -0.077264383 -0.033765797 0.088399999 
		-0.077264383 -0.064226359 0.064226359 -0.077264383 -0.088399999 0.033765789 -0.077264383 
		-0.10392042 0 -0.077264383 -0.10926839 -0.033765789 -0.077264383 -0.10392042 -0.064226344 
		-0.077264383 -0.088399984 -0.088399976 -0.077264383 -0.064226337 -0.10392039 -0.077264383 
		-0.033765782 -0.10926837 -0.077264383 0 -0.10392039 -0.077264383 0.033765782 -0.088399962 
		-0.077264383 0.064226329 -0.064226329 -0.077264383 0.088399962 -0.033765782 -0.077264383 
		0.10392039 -3.2564502e-009 -0.077264383 0.10926835 0.03376577 -0.077264383 0.10392037 
		0.064226314 -0.077264383 0.088399954 0.088399947 -0.077264383 0.064226329 0.10392037 
		-0.077264383 0.033765778 0.10926834 -0.077264383 0 0 0.077264383 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 0 20 0 1 20 0 
		2 20 0 3 20 0 4 20 0 5 20 0 
		6 20 0 7 20 0 8 20 0 9 20 0 
		10 20 0 11 20 0 12 20 0 13 20 0 
		14 20 0 15 20 0 16 20 0 17 20 0 
		18 20 0 19 20 0;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 
		-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		mu 0 20 0 19 18 17 16 15 14 13 12 
		11 10 9 8 7 6 5 4 3 2 1 
		f 3 0 21 -21 
		mu 0 3 20 21 41 
		f 3 1 22 -22 
		mu 0 3 21 22 41 
		f 3 2 23 -23 
		mu 0 3 22 23 41 
		f 3 3 24 -24 
		mu 0 3 23 24 41 
		f 3 4 25 -25 
		mu 0 3 24 25 41 
		f 3 5 26 -26 
		mu 0 3 25 26 41 
		f 3 6 27 -27 
		mu 0 3 26 27 41 
		f 3 7 28 -28 
		mu 0 3 27 28 41 
		f 3 8 29 -29 
		mu 0 3 28 29 41 
		f 3 9 30 -30 
		mu 0 3 29 30 41 
		f 3 10 31 -31 
		mu 0 3 30 31 41 
		f 3 11 32 -32 
		mu 0 3 31 32 41 
		f 3 12 33 -33 
		mu 0 3 32 33 41 
		f 3 13 34 -34 
		mu 0 3 33 34 41 
		f 3 14 35 -35 
		mu 0 3 34 35 41 
		f 3 15 36 -36 
		mu 0 3 35 36 41 
		f 3 16 37 -37 
		mu 0 3 36 37 41 
		f 3 17 38 -38 
		mu 0 3 37 38 41 
		f 3 18 39 -39 
		mu 0 3 38 39 41 
		f 3 19 20 -40 
		mu 0 3 39 40 41 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:spike_02_GEO" -p "bouncy:Spikes_GRP";
	setAttr ".t" -type "double3" -0.0063433745267511641 0.88547426128095241 -0.39725779413532225 ;
	setAttr ".r" -type "double3" -50.013491678443032 0 0 ;
	setAttr ".s" -type "double3" 0.43414520726936501 0.79295182190276869 0.43414520726936501 ;
	setAttr ".rp" -type "double3" -6.2104970064549199e-009 0 -8.2806626752732288e-009 ;
	setAttr ".rpt" -type "double3" 0 -6.3446088121755478e-009 2.9594491518250709e-009 ;
	setAttr ".sp" -type "double3" -1.4305114746093749e-008 0 -1.9073486328125e-008 ;
	setAttr ".spt" -type "double3" 8.0946177396388304e-009 0 1.0792823652851772e-008 ;
createNode mesh -n "bouncy:spike_02_GEOShape" -p "bouncy:spike_02_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:spike_02_GEOShapeOrig" -p "bouncy:spike_02_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457 
		0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007 
		0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 
		0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 
		0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 
		0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 
		0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 
		0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 
		0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 
		1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0.10392043 -0.077264383 -0.033765797 0.088399999 
		-0.077264383 -0.064226359 0.064226359 -0.077264383 -0.088399999 0.033765789 -0.077264383 
		-0.10392042 0 -0.077264383 -0.10926839 -0.033765789 -0.077264383 -0.10392042 -0.064226344 
		-0.077264383 -0.088399984 -0.088399976 -0.077264383 -0.064226337 -0.10392039 -0.077264383 
		-0.033765782 -0.10926837 -0.077264383 0 -0.10392039 -0.077264383 0.033765782 -0.088399962 
		-0.077264383 0.064226329 -0.064226329 -0.077264383 0.088399962 -0.033765782 -0.077264383 
		0.10392039 -3.2564502e-009 -0.077264383 0.10926835 0.03376577 -0.077264383 0.10392037 
		0.064226314 -0.077264383 0.088399954 0.088399947 -0.077264383 0.064226329 0.10392037 
		-0.077264383 0.033765778 0.10926834 -0.077264383 0 0 0.077264383 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 0 20 0 1 20 0 
		2 20 0 3 20 0 4 20 0 5 20 0 
		6 20 0 7 20 0 8 20 0 9 20 0 
		10 20 0 11 20 0 12 20 0 13 20 0 
		14 20 0 15 20 0 16 20 0 17 20 0 
		18 20 0 19 20 0;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 
		-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		mu 0 20 0 19 18 17 16 15 14 13 12 
		11 10 9 8 7 6 5 4 3 2 1 
		f 3 0 21 -21 
		mu 0 3 20 21 41 
		f 3 1 22 -22 
		mu 0 3 21 22 41 
		f 3 2 23 -23 
		mu 0 3 22 23 41 
		f 3 3 24 -24 
		mu 0 3 23 24 41 
		f 3 4 25 -25 
		mu 0 3 24 25 41 
		f 3 5 26 -26 
		mu 0 3 25 26 41 
		f 3 6 27 -27 
		mu 0 3 26 27 41 
		f 3 7 28 -28 
		mu 0 3 27 28 41 
		f 3 8 29 -29 
		mu 0 3 28 29 41 
		f 3 9 30 -30 
		mu 0 3 29 30 41 
		f 3 10 31 -31 
		mu 0 3 30 31 41 
		f 3 11 32 -32 
		mu 0 3 31 32 41 
		f 3 12 33 -33 
		mu 0 3 32 33 41 
		f 3 13 34 -34 
		mu 0 3 33 34 41 
		f 3 14 35 -35 
		mu 0 3 34 35 41 
		f 3 15 36 -36 
		mu 0 3 35 36 41 
		f 3 16 37 -37 
		mu 0 3 36 37 41 
		f 3 17 38 -38 
		mu 0 3 37 38 41 
		f 3 18 39 -39 
		mu 0 3 38 39 41 
		f 3 19 20 -40 
		mu 0 3 39 40 41 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:spike_03_GEO" -p "bouncy:Spikes_GRP";
	setAttr ".t" -type "double3" -0.0063433745267511641 0.77112686090964744 -0.46682855630486664 ;
	setAttr ".r" -type "double3" -58.819684647787454 0 0 ;
	setAttr ".s" -type "double3" 0.35560569872370806 0.64950201444241284 0.35560569872370806 ;
	setAttr ".rp" -type "double3" -5.086980324607489e-009 0 -6.7826404328099856e-009 ;
	setAttr ".rpt" -type "double3" 0 -5.8028350093595398e-009 3.2710429195775681e-009 ;
	setAttr ".sp" -type "double3" -1.4305114746093749e-008 0 -1.9073486328125e-008 ;
	setAttr ".spt" -type "double3" 9.2181344214862613e-009 0 1.2290845895315014e-008 ;
createNode mesh -n "bouncy:spike_03_GEOShape" -p "bouncy:spike_03_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:spike_03_GEOShapeOrig" -p "bouncy:spike_03_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457 
		0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007 
		0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 
		0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 
		0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 
		0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 
		0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 
		0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 
		0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 
		1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0.10392043 -0.077264383 -0.033765797 0.088399999 
		-0.077264383 -0.064226359 0.064226359 -0.077264383 -0.088399999 0.033765789 -0.077264383 
		-0.10392042 0 -0.077264383 -0.10926839 -0.033765789 -0.077264383 -0.10392042 -0.064226344 
		-0.077264383 -0.088399984 -0.088399976 -0.077264383 -0.064226337 -0.10392039 -0.077264383 
		-0.033765782 -0.10926837 -0.077264383 0 -0.10392039 -0.077264383 0.033765782 -0.088399962 
		-0.077264383 0.064226329 -0.064226329 -0.077264383 0.088399962 -0.033765782 -0.077264383 
		0.10392039 -3.2564502e-009 -0.077264383 0.10926835 0.03376577 -0.077264383 0.10392037 
		0.064226314 -0.077264383 0.088399954 0.088399947 -0.077264383 0.064226329 0.10392037 
		-0.077264383 0.033765778 0.10926834 -0.077264383 0 0 0.077264383 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 0 20 0 1 20 0 
		2 20 0 3 20 0 4 20 0 5 20 0 
		6 20 0 7 20 0 8 20 0 9 20 0 
		10 20 0 11 20 0 12 20 0 13 20 0 
		14 20 0 15 20 0 16 20 0 17 20 0 
		18 20 0 19 20 0;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 
		-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		mu 0 20 0 19 18 17 16 15 14 13 12 
		11 10 9 8 7 6 5 4 3 2 1 
		f 3 0 21 -21 
		mu 0 3 20 21 41 
		f 3 1 22 -22 
		mu 0 3 21 22 41 
		f 3 2 23 -23 
		mu 0 3 22 23 41 
		f 3 3 24 -24 
		mu 0 3 23 24 41 
		f 3 4 25 -25 
		mu 0 3 24 25 41 
		f 3 5 26 -26 
		mu 0 3 25 26 41 
		f 3 6 27 -27 
		mu 0 3 26 27 41 
		f 3 7 28 -28 
		mu 0 3 27 28 41 
		f 3 8 29 -29 
		mu 0 3 28 29 41 
		f 3 9 30 -30 
		mu 0 3 29 30 41 
		f 3 10 31 -31 
		mu 0 3 30 31 41 
		f 3 11 32 -32 
		mu 0 3 31 32 41 
		f 3 12 33 -33 
		mu 0 3 32 33 41 
		f 3 13 34 -34 
		mu 0 3 33 34 41 
		f 3 14 35 -35 
		mu 0 3 34 35 41 
		f 3 15 36 -36 
		mu 0 3 35 36 41 
		f 3 16 37 -37 
		mu 0 3 36 37 41 
		f 3 17 38 -38 
		mu 0 3 37 38 41 
		f 3 18 39 -39 
		mu 0 3 38 39 41 
		f 3 19 20 -40 
		mu 0 3 39 40 41 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:spike_04_GEO" -p "bouncy:Spikes_GRP";
	setAttr ".t" -type "double3" -0.0063433745267511641 0.65224376965974151 -0.51293376703494653 ;
	setAttr ".r" -type "double3" -74.760676427044558 0 0 ;
	setAttr ".s" -type "double3" 0.30096922575153695 0.54971030867161963 0.30096922575153695 ;
	setAttr ".rp" -type "double3" -4.3053993094187303e-009 0 -5.7405324125583088e-009 ;
	setAttr ".rpt" -type "double3" 0 -5.5386741677779232e-009 4.2316252441672053e-009 ;
	setAttr ".sp" -type "double3" -1.4305114746093749e-008 0 -1.9073486328125e-008 ;
	setAttr ".spt" -type "double3" 9.99971543667502e-009 0 1.3332953915566692e-008 ;
createNode mesh -n "bouncy:spike_04_GEOShape" -p "bouncy:spike_04_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:spike_04_GEOShapeOrig" -p "bouncy:spike_04_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457 
		0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007 
		0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 
		0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 
		0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 
		0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 
		0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 
		0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 
		0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 
		1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0.10392043 -0.077264383 -0.033765797 0.088399999 
		-0.077264383 -0.064226359 0.064226359 -0.077264383 -0.088399999 0.033765789 -0.077264383 
		-0.10392042 0 -0.077264383 -0.10926839 -0.033765789 -0.077264383 -0.10392042 -0.064226344 
		-0.077264383 -0.088399984 -0.088399976 -0.077264383 -0.064226337 -0.10392039 -0.077264383 
		-0.033765782 -0.10926837 -0.077264383 0 -0.10392039 -0.077264383 0.033765782 -0.088399962 
		-0.077264383 0.064226329 -0.064226329 -0.077264383 0.088399962 -0.033765782 -0.077264383 
		0.10392039 -3.2564502e-009 -0.077264383 0.10926835 0.03376577 -0.077264383 0.10392037 
		0.064226314 -0.077264383 0.088399954 0.088399947 -0.077264383 0.064226329 0.10392037 
		-0.077264383 0.033765778 0.10926834 -0.077264383 0 0 0.077264383 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 0 20 0 1 20 0 
		2 20 0 3 20 0 4 20 0 5 20 0 
		6 20 0 7 20 0 8 20 0 9 20 0 
		10 20 0 11 20 0 12 20 0 13 20 0 
		14 20 0 15 20 0 16 20 0 17 20 0 
		18 20 0 19 20 0;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 
		-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		mu 0 20 0 19 18 17 16 15 14 13 12 
		11 10 9 8 7 6 5 4 3 2 1 
		f 3 0 21 -21 
		mu 0 3 20 21 41 
		f 3 1 22 -22 
		mu 0 3 21 22 41 
		f 3 2 23 -23 
		mu 0 3 22 23 41 
		f 3 3 24 -24 
		mu 0 3 23 24 41 
		f 3 4 25 -25 
		mu 0 3 24 25 41 
		f 3 5 26 -26 
		mu 0 3 25 26 41 
		f 3 6 27 -27 
		mu 0 3 26 27 41 
		f 3 7 28 -28 
		mu 0 3 27 28 41 
		f 3 8 29 -29 
		mu 0 3 28 29 41 
		f 3 9 30 -30 
		mu 0 3 29 30 41 
		f 3 10 31 -31 
		mu 0 3 30 31 41 
		f 3 11 32 -32 
		mu 0 3 31 32 41 
		f 3 12 33 -33 
		mu 0 3 32 33 41 
		f 3 13 34 -34 
		mu 0 3 33 34 41 
		f 3 14 35 -35 
		mu 0 3 34 35 41 
		f 3 15 36 -36 
		mu 0 3 35 36 41 
		f 3 16 37 -37 
		mu 0 3 36 37 41 
		f 3 17 38 -38 
		mu 0 3 37 38 41 
		f 3 18 39 -39 
		mu 0 3 38 39 41 
		f 3 19 20 -40 
		mu 0 3 39 40 41 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:spike_05_GEO" -p "bouncy:Spikes_GRP";
	setAttr ".t" -type "double3" -0.0063433745267511641 0.49879904378984768 -0.52270250885689618 ;
	setAttr ".r" -type "double3" -89.793709911646346 0 0 ;
	setAttr ".s" -type "double3" 0.21635753621218784 0.39516986402064219 0.21635753621218784 ;
	setAttr ".rp" -type "double3" -3.0950193816974785e-009 0 -4.1266925089299721e-009 ;
	setAttr ".rpt" -type "double3" 0 -4.1266657614356674e-009 4.1118346270709299e-009 ;
	setAttr ".sp" -type "double3" -1.4305114746093749e-008 0 -1.9073486328125e-008 ;
	setAttr ".spt" -type "double3" 1.121009536439627e-008 0 1.4946793819195026e-008 ;
createNode mesh -n "bouncy:spike_05_GEOShape" -p "bouncy:spike_05_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:spike_05_GEOShapeOrig" -p "bouncy:spike_05_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457 
		0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007 
		0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573 
		0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573 
		0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631 
		0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002 
		0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005 
		0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994 
		0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5 
		1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0.10392043 -0.077264383 -0.033765797 0.088399999 
		-0.077264383 -0.064226359 0.064226359 -0.077264383 -0.088399999 0.033765789 -0.077264383 
		-0.10392042 0 -0.077264383 -0.10926839 -0.033765789 -0.077264383 -0.10392042 -0.064226344 
		-0.077264383 -0.088399984 -0.088399976 -0.077264383 -0.064226337 -0.10392039 -0.077264383 
		-0.033765782 -0.10926837 -0.077264383 0 -0.10392039 -0.077264383 0.033765782 -0.088399962 
		-0.077264383 0.064226329 -0.064226329 -0.077264383 0.088399962 -0.033765782 -0.077264383 
		0.10392039 -3.2564502e-009 -0.077264383 0.10926835 0.03376577 -0.077264383 0.10392037 
		0.064226314 -0.077264383 0.088399954 0.088399947 -0.077264383 0.064226329 0.10392037 
		-0.077264383 0.033765778 0.10926834 -0.077264383 0 0 0.077264383 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 0 20 0 1 20 0 
		2 20 0 3 20 0 4 20 0 5 20 0 
		6 20 0 7 20 0 8 20 0 9 20 0 
		10 20 0 11 20 0 12 20 0 13 20 0 
		14 20 0 15 20 0 16 20 0 17 20 0 
		18 20 0 19 20 0;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 
		-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 
		mu 0 20 0 19 18 17 16 15 14 13 12 
		11 10 9 8 7 6 5 4 3 2 1 
		f 3 0 21 -21 
		mu 0 3 20 21 41 
		f 3 1 22 -22 
		mu 0 3 21 22 41 
		f 3 2 23 -23 
		mu 0 3 22 23 41 
		f 3 3 24 -24 
		mu 0 3 23 24 41 
		f 3 4 25 -25 
		mu 0 3 24 25 41 
		f 3 5 26 -26 
		mu 0 3 25 26 41 
		f 3 6 27 -27 
		mu 0 3 26 27 41 
		f 3 7 28 -28 
		mu 0 3 27 28 41 
		f 3 8 29 -29 
		mu 0 3 28 29 41 
		f 3 9 30 -30 
		mu 0 3 29 30 41 
		f 3 10 31 -31 
		mu 0 3 30 31 41 
		f 3 11 32 -32 
		mu 0 3 31 32 41 
		f 3 12 33 -33 
		mu 0 3 32 33 41 
		f 3 13 34 -34 
		mu 0 3 33 34 41 
		f 3 14 35 -35 
		mu 0 3 34 35 41 
		f 3 15 36 -36 
		mu 0 3 35 36 41 
		f 3 16 37 -37 
		mu 0 3 36 37 41 
		f 3 17 38 -38 
		mu 0 3 37 38 41 
		f 3 18 39 -39 
		mu 0 3 38 39 41 
		f 3 19 20 -40 
		mu 0 3 39 40 41 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Leg_GRP" -p "bouncy:Geometry_GRP";
	setAttr ".t" -type "double3" -0.085229712842024574 0 0 ;
	setAttr ".rp" -type "double3" 0.085229712842024574 0 0 ;
	setAttr ".sp" -type "double3" 0.085229712842024574 0 0 ;
createNode transform -n "bouncy:L_upperLeg_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28447383880615235 -0.26130096435546873 -0.022097110748291016 ;
	setAttr ".sp" -type "double3" 0.28447383880615235 -0.26130096435546873 -0.022097110748291016 ;
createNode mesh -n "bouncy:L_upperLeg_GEOShape" -p "bouncy:L_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_upperLeg_GEOShapeOrig" -p "bouncy:L_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_upperLeg_GEOShapeOrig1" -p "bouncy:L_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  -0.28650752 -0.85913604 -0.044689752 
		-0.22424559 -0.90197909 -0.038319848 -0.22082247 -0.90656626 -0.017706405 -0.28096873 
		-0.86655825 -0.011336494 -0.32156456 -0.83724481 -0.028013127 -0.69492948 -1.1574628 
		-0.055633888 -0.6530869 -1.1862549 -0.051353078 -0.65078646 -1.1893376 -0.037500095 
		-0.69120729 -1.1624508 -0.033219296 -0.71848899 -1.1427511 -0.044426594;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_lowerLeg_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28447384834289552 -0.65818634033203127 -0.0079148936271667483 ;
	setAttr ".sp" -type "double3" 0.28447384834289552 -0.65818634033203127 -0.0079148936271667483 ;
createNode mesh -n "bouncy:L_lowerLeg_GEOShape" -p "bouncy:L_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:L_lowerLeg_GEOShapeOrig" -p "bouncy:L_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_lowerLeg_GEOShapeOrig1" -p "bouncy:L_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  -0.28458968 -1.2232963 -0.017248791 
		-0.23236991 -1.2679614 -0.014402797 -0.22894678 -1.2784448 -0.005192948 -0.27905092 
		-1.2402588 -0.0023469406 -0.31344023 -1.2061752 -0.0097978786 -0.69394267 -1.5801375 
		-0.069407523 -0.65726745 -1.6102542 -0.066992171 -0.65496695 -1.6176234 -0.059175946 
		-0.69022042 -1.5920613 -0.056760624 -0.71430856 -1.5688938 -0.063084073;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Hip_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789370536804199 -0.012660255432128906 -0.029292192459106445 ;
	setAttr ".sp" -type "double3" 0.28789370536804199 -0.012660255432128906 -0.029292192459106445 ;
createNode mesh -n "bouncy:L_Hip_GEOShape" -p "bouncy:L_Hip_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Hip_GEOShapeOrig" -p "bouncy:L_Hip_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  0.15336001 -0.043878898 -0.047316294 0.15336001 
		-0.030684346 -0.060510844 0.15336001 -0.012660251 -0.065340392 0.15336001 0.0053638471 
		-0.060510844 0.15336001 0.0185584 -0.047316294 0.15336001 0.023387944 -0.029292194 
		0.15336001 0.0185584 -0.011268097 0.15336001 0.0053638471 0.0019264555 0.15336001 
		-0.012660251 0.0067560007 0.15336001 -0.030684346 0.0019264555 0.15336001 -0.043878898 
		-0.011268097 0.15336001 -0.04870845 -0.029292194 0.16727409 -0.072970055 -0.064112082 
		0.16727409 -0.047480136 -0.089602001 0.16727409 -0.012660251 -0.098931961 0.16727409 
		0.022159634 -0.089602001 0.16727409 0.047649555 -0.064112082 0.16727409 0.056979518 
		-0.029292194 0.16727409 0.047649555 0.0055276896 0.16727409 0.022159634 0.031017611 
		0.16727409 -0.012660251 0.040347576 0.16727409 -0.047480136 0.031017611 0.16727409 
		-0.072970055 0.0055276896 0.16727409 -0.082300015 -0.029292194 0.18940823 -0.097951181 
		-0.078534946 0.18940823 -0.061903 -0.11458313 0.18940823 -0.012660251 -0.1277777 
		0.18940823 0.0365825 -0.11458313 0.18940823 0.072630689 -0.078534946 0.18940823 0.08582525 
		-0.029292194 0.18940823 0.072630689 0.019950554 0.18940823 0.0365825 0.055998746 
		0.18940823 -0.012660251 0.069193304 0.18940823 -0.061903 0.055998746 0.18940823 -0.097951181 
		0.019950554 0.18940823 -0.11114574 -0.029292194 0.21825396 -0.1171199 -0.089602016 
		0.21825396 -0.072970062 -0.13375185 0.21825396 -0.012660251 -0.14991182 0.21825396 
		0.047649566 -0.13375185 0.21825396 0.091799408 -0.089602016 0.21825396 0.10795937 
		-0.029292194 0.21825396 0.091799408 0.03101762 0.21825396 0.047649566 0.075167462 
		0.21825396 -0.012660251 0.091327436 0.21825396 -0.072970062 0.075167462 0.21825396 
		-0.1171199 0.03101762 0.21825396 -0.13327986 -0.029292194 0.25184551 -0.12916985 
		-0.096559048 0.25184551 -0.079927102 -0.1458018 0.25184551 -0.012660251 -0.1638259 
		0.25184551 0.054606602 -0.1458018 0.25184551 0.10384935 -0.096559048 0.25184551 0.12187345 
		-0.029292194 0.25184551 0.10384935 0.037974656 0.25184551 0.054606602 0.087217405 
		0.25184551 -0.012660251 0.10524151 0.25184551 -0.079927102 0.087217405 0.25184551 
		-0.12916985 0.037974656 0.25184551 -0.14719395 -0.029292194 0.28789371 -0.13327986 
		-0.098931961 0.28789371 -0.082300015 -0.14991182 0.28789371 -0.012660251 -0.16857174 
		0.28789371 0.056979518 -0.14991182 0.28789371 0.10795937 -0.098931961 0.28789371 
		0.12661928 -0.029292194 0.28789371 0.10795937 0.040347576 0.28789371 0.056979518 
		0.091327421 0.28789371 -0.012660251 0.10998736 0.28789371 -0.082300015 0.091327421 
		0.28789371 -0.13327986 0.040347576 0.28789371 -0.15193979 -0.029292194 0.32394192 
		-0.12916985 -0.096559048 0.32394192 -0.079927102 -0.1458018 0.32394192 -0.012660251 
		-0.1638259 0.32394192 0.054606602 -0.1458018 0.32394192 0.10384935 -0.096559048 0.32394192 
		0.12187345 -0.029292194 0.32394192 0.10384935 0.037974656 0.32394192 0.054606602 
		0.087217405 0.32394192 -0.012660251 0.10524151 0.32394192 -0.079927102 0.087217405 
		0.32394192 -0.12916985 0.037974656 0.32394192 -0.14719395 -0.029292194 0.35753348 
		-0.1171199 -0.089602016 0.35753348 -0.072970062 -0.13375185 0.35753348 -0.012660251 
		-0.14991182 0.35753348 0.047649566 -0.13375185 0.35753348 0.091799408 -0.089602016 
		0.35753348 0.10795937 -0.029292194 0.35753348 0.091799408 0.03101762 0.35753348 0.047649566 
		0.075167462 0.35753348 -0.012660251 0.091327436 0.35753348 -0.072970062 0.075167462 
		0.35753348 -0.1171199 0.03101762 0.35753348 -0.13327986 -0.029292194 0.38637921 -0.097951181 
		-0.078534946 0.38637921 -0.061903 -0.11458313 0.38637921 -0.012660251 -0.1277777 
		0.38637921 0.0365825 -0.11458313 0.38637921 0.072630689 -0.078534946 0.38637921 0.08582525 
		-0.029292194 0.38637921 0.072630689 0.019950554 0.38637921 0.0365825 0.055998746 
		0.38637921 -0.012660251 0.069193304 0.38637921 -0.061903 0.055998746 0.38637921 -0.097951181 
		0.019950554 0.38637921 -0.11114574 -0.029292194 0.40851334 -0.072970055 -0.064112082 
		0.40851334 -0.047480136 -0.089602001 0.40851334 -0.012660251 -0.098931961 0.40851334 
		0.022159634 -0.089602001 0.40851334 0.047649555 -0.064112082 0.40851334 0.056979518 
		-0.029292194 0.40851334 0.047649555 0.0055276896 0.40851334 0.022159634 0.031017611 
		0.40851334 -0.012660251 0.040347576 0.40851334 -0.047480136 0.031017611 0.40851334 
		-0.072970055 0.0055276896 0.40851334 -0.082300015 -0.029292194 0.42242742 -0.043878898 
		-0.047316294 0.42242742 -0.030684346 -0.060510844 0.42242742 -0.012660251 -0.065340392 
		0.42242742 0.0053638471 -0.060510844 0.42242742 0.0185584 -0.047316294 0.42242742 
		0.023387944 -0.029292194 0.42242742 0.0185584 -0.011268097 0.42242742 0.0053638471 
		0.0019264555 0.42242742 -0.012660251 0.0067560007 0.42242742 -0.030684346 0.0019264555 
		0.42242742 -0.043878898 -0.011268097 0.42242742 -0.04870845 -0.029292194 0.14861418 
		-0.012660251 -0.029292194 0.42717323 -0.012660251 -0.029292194;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Knee_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789371490478516 -0.43610170364379885 0.0050093674659729007 ;
	setAttr ".sp" -type "double3" 0.28789371490478516 -0.43610170364379885 0.0050093674659729007 ;
createNode mesh -n "bouncy:L_Knee_GEOShape" -p "bouncy:L_Knee_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Knee_GEOShapeOrig" -p "bouncy:L_Knee_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".pt[0:133]" -type "float3"  0.19402754 -0.35757896 0.0081443097 
		0.20336235 -0.35053906 0.010439248 0.21611397 -0.34092239 0.011279254 0.22886556 
		-0.33130574 0.010439248 0.2382004 -0.32426587 0.0081443097 0.24161719 -0.32168907 
		0.0050093667 0.2382004 -0.32426587 0.0018744231 0.22886556 -0.33130574 -0.00042051441 
		0.21611397 -0.34092239 -0.0012605202 0.20336235 -0.35053906 -0.00042051441 0.19402754 
		-0.35757896 0.0018744231 0.19061075 -0.36015576 0.0050093667 0.18087004 -0.38294426 
		0.011065613 0.19890355 -0.36934426 0.015499093 0.22353774 -0.3507663 0.017121859 
		0.24817196 -0.33218831 0.015499093 0.26620546 -0.31858829 0.011065613 0.2728062 -0.31361035 
		0.0050093667 0.26620546 -0.31858829 -0.0010468793 0.24817196 -0.33218831 -0.0054803584 
		0.22353774 -0.3507663 -0.0071031256 0.19890355 -0.36934426 -0.0054803584 0.18087004 
		-0.38294426 -0.0010468793 0.17426933 -0.3879222 0.0050093667 0.17500605 -0.41193217 
		0.013574191 0.20050927 -0.39269882 0.019844078 0.23534729 -0.36642563 0.022139018 
		0.27018535 -0.34015238 0.019844078 0.29568854 -0.32091907 0.013574191 0.30502337 
		-0.31387919 0.0050093667 0.29568854 -0.32091907 -0.0035554583 0.27018535 -0.34015238 
		-0.0098253451 0.23534729 -0.36642563 -0.012120282 0.20050927 -0.39269882 -0.0098253451 
		0.17500605 -0.41193217 -0.0035554583 0.16567121 -0.41897205 0.0050093667 0.17683513 
		-0.44256717 0.015499094 0.20807007 -0.41901127 0.023178106 0.25073779 -0.38683328 
		0.025988819 0.2934055 -0.3546553 0.023178106 0.32464042 -0.33109936 0.015499094 0.33607322 
		-0.32247731 0.0050093667 0.32464042 -0.33109936 -0.0054803598 0.2934055 -0.3546553 
		-0.013159373 0.25073779 -0.38683328 -0.015970087 0.20807007 -0.41901127 -0.013159373 
		0.17683513 -0.44256717 -0.0054803598 0.16540235 -0.45118928 0.0050093667 0.1862327 
		-0.47276157 0.016709136 0.22107075 -0.44648835 0.02527396 0.2686604 -0.41059849 0.028408904 
		0.31625003 -0.37470859 0.02527396 0.35108808 -0.3484354 0.016709136 0.36383969 -0.33881873 
		0.0050093667 0.35108808 -0.3484354 -0.006690402 0.31625003 -0.37470859 -0.015255227 
		0.2686604 -0.41059849 -0.018390171 0.22107075 -0.44648835 -0.015255227 0.1862327 
		-0.47276157 -0.006690402 0.17348111 -0.48237824 0.0050093667 0.20255831 -0.50045764 
		0.017121859 0.2386253 -0.47325763 0.025988817 0.28789371 -0.43610168 0.02923435 0.33716214 
		-0.39894578 0.025988817 0.37322915 -0.37174571 0.017121859 0.38643059 -0.36178982 
		0.0050093667 0.37322915 -0.37174571 -0.0071031256 0.33716214 -0.39894578 -0.015970085 
		0.28789371 -0.43610168 -0.019215617 0.2386253 -0.47325763 -0.015970085 0.20255831 
		-0.50045764 -0.0071031256 0.18935686 -0.51041359 0.0050093667 0.22469936 -0.52376801 
		0.016709136 0.2595374 -0.49749482 0.02527396 0.30712706 -0.46160492 0.028408904 0.35471669 
		-0.42571503 0.02527396 0.38955474 -0.39944184 0.016709136 0.40230632 -0.38982517 
		0.0050093667 0.38955474 -0.39944184 -0.006690402 0.35471669 -0.42571503 -0.015255227 
		0.30712706 -0.46160492 -0.018390171 0.2595374 -0.49749482 -0.015255227 0.22469936 
		-0.52376801 -0.006690402 0.21194777 -0.53338468 0.0050093667 0.251147 -0.54110402 
		0.015499094 0.28238192 -0.51754808 0.023178106 0.32504967 -0.48537013 0.025988819 
		0.36771736 -0.45319214 0.023178106 0.39895231 -0.42963624 0.015499094 0.4103851 -0.42101413 
		0.0050093667 0.39895231 -0.42963624 -0.0054803598 0.36771736 -0.45319214 -0.013159373 
		0.32504967 -0.48537013 -0.015970087 0.28238192 -0.51754808 -0.013159373 0.251147 
		-0.54110402 -0.0054803598 0.23971422 -0.54972613 0.0050093667 0.28009889 -0.55128431 
		0.013574191 0.3056021 -0.53205097 0.019844078 0.34044015 -0.50577778 0.022139018 
		0.37527817 -0.47950456 0.019844078 0.40078139 -0.46027124 0.013574191 0.41011623 
		-0.45323136 0.0050093667 0.40078139 -0.46027124 -0.0035554583 0.37527817 -0.47950456 
		-0.0098253451 0.34044015 -0.50577778 -0.012120282 0.3056021 -0.53205097 -0.0098253451 
		0.28009889 -0.55128431 -0.0035554583 0.27076405 -0.55832422 0.0050093667 0.309582 
		-0.55361509 0.011065613 0.32761547 -0.54001504 0.015499093 0.35224968 -0.52143711 
		0.017121859 0.37688389 -0.50285918 0.015499093 0.3949174 -0.48925915 0.011065613 
		0.40151811 -0.48428118 0.0050093667 0.3949174 -0.48925915 -0.0010468793 0.37688389 
		-0.50285918 -0.0054803584 0.35224968 -0.52143711 -0.0071031256 0.32761547 -0.54001504 
		-0.0054803584 0.309582 -0.55361509 -0.0010468793 0.30298126 -0.55859303 0.0050093667 
		0.33758706 -0.54793757 0.0081443097 0.34692189 -0.54089761 0.010439248 0.35967347 
		-0.53128099 0.011279254 0.37242508 -0.52166432 0.010439248 0.38175991 -0.51462442 
		0.0081443097 0.38517669 -0.51204765 0.0050093667 0.38175991 -0.51462442 0.0018744231 
		0.37242508 -0.52166432 -0.00042051441 0.35967347 -0.53128099 -0.0012605202 0.34692189 
		-0.54089761 -0.00042051441 0.33758706 -0.54793757 0.0018744231 0.33417025 -0.55051434 
		0.0050093667 0.21358185 -0.33756486 0.0050093667 0.36220559 -0.53463858 0.0050093667;
	setAttr -s 134 ".vt[0:133]"  0.02208643 -0.09517929 -0.012751605 0.012751605 
		-0.09517929 -0.02208643 0 -0.09517929 -0.025503213 -0.012751605 -0.09517929 -0.02208643 
		-0.02208643 -0.09517929 -0.012751605 -0.025503213 -0.09517929 0 -0.02208643 -0.09517929 
		0.012751605 -0.012751605 -0.09517929 0.02208643 0 -0.09517929 0.025503213 0.012751605 
		-0.09517929 0.02208643 0.02208643 -0.09517929 0.012751605 0.025503213 -0.09517929 
		0 0.042667709 -0.085335419 -0.024634214 0.024634214 -0.085335419 -0.042667709 0 -0.085335419 
		-0.049268428 -0.024634214 -0.085335419 -0.042667709 -0.042667709 -0.085335419 -0.024634214 
		-0.049268428 -0.085335419 0 -0.042667709 -0.085335419 0.024634214 -0.024634214 -0.085335419 
		0.042667709 0 -0.085335419 0.049268428 0.024634214 -0.085335419 0.042667709 0.042667709 
		-0.085335419 0.024634214 0.049268428 -0.085335419 0 0.06034125 -0.069676071 -0.034838036 
		0.034838036 -0.069676071 -0.06034125 0 -0.069676071 -0.069676071 -0.034838036 -0.069676071 
		-0.06034125 -0.06034125 -0.069676071 -0.034838036 -0.069676071 -0.069676071 0 -0.06034125 
		-0.069676071 0.034838036 -0.034838036 -0.069676071 0.06034125 0 -0.069676071 0.069676071 
		0.034838036 -0.069676071 0.06034125 0.06034125 -0.069676071 0.034838036 0.069676071 
		-0.069676071 0 0.073902644 -0.049268421 -0.042667713 0.042667713 -0.049268421 -0.073902644 
		0 -0.049268421 -0.085335426 -0.042667713 -0.049268421 -0.073902644 -0.073902644 -0.049268421 
		-0.042667713 -0.085335426 -0.049268421 0 -0.073902644 -0.049268421 0.042667713 -0.042667713 
		-0.049268421 0.073902644 0 -0.049268421 0.085335426 0.042667713 -0.049268421 0.073902644 
		0.073902644 -0.049268421 0.042667713 0.085335426 -0.049268421 0 0.08242768 -0.025503218 
		-0.047589645 0.047589645 -0.025503218 -0.08242768 0 -0.025503218 -0.09517929 -0.047589645 
		-0.025503218 -0.08242768 -0.08242768 -0.025503218 -0.047589645 -0.09517929 -0.025503218 
		0 -0.08242768 -0.025503218 0.047589645 -0.047589645 -0.025503218 0.08242768 0 -0.025503218 
		0.09517929 0.047589645 -0.025503218 0.08242768 0.08242768 -0.025503218 0.047589645 
		0.09517929 -0.025503218 0 0.085335419 0 -0.049268428 0.049268428 0 -0.085335419 0 
		0 -0.098536856 -0.049268428 0 -0.085335419 -0.085335419 0 -0.049268428 -0.098536856 
		0 0 -0.085335419 0 0.049268428 -0.049268428 0 0.085335419 0 0 0.098536856 0.049268428 
		0 0.085335419 0.085335419 0 0.049268428 0.098536856 0 0 0.08242768 0.025503218 -0.047589645 
		0.047589645 0.025503218 -0.08242768 0 0.025503218 -0.09517929 -0.047589645 0.025503218 
		-0.08242768 -0.08242768 0.025503218 -0.047589645 -0.09517929 0.025503218 0 -0.08242768 
		0.025503218 0.047589645 -0.047589645 0.025503218 0.08242768 0 0.025503218 0.09517929 
		0.047589645 0.025503218 0.08242768 0.08242768 0.025503218 0.047589645 0.09517929 
		0.025503218 0 0.073902644 0.049268421 -0.042667713 0.042667713 0.049268421 -0.073902644 
		0 0.049268421 -0.085335426 -0.042667713 0.049268421 -0.073902644 -0.073902644 0.049268421 
		-0.042667713 -0.085335426 0.049268421 0 -0.073902644 0.049268421 0.042667713 -0.042667713 
		0.049268421 0.073902644 0 0.049268421 0.085335426 0.042667713 0.049268421 0.073902644 
		0.073902644 0.049268421 0.042667713 0.085335426 0.049268421 0 0.06034125 0.069676071 
		-0.034838036 0.034838036 0.069676071 -0.06034125 0 0.069676071 -0.069676071 -0.034838036 
		0.069676071 -0.06034125 -0.06034125 0.069676071 -0.034838036 -0.069676071 0.069676071 
		0 -0.06034125 0.069676071 0.034838036 -0.034838036 0.069676071 0.06034125 0 0.069676071 
		0.069676071 0.034838036 0.069676071 0.06034125 0.06034125 0.069676071 0.034838036 
		0.069676071 0.069676071 0 0.042667709 0.085335419 -0.024634214 0.024634214 0.085335419 
		-0.042667709 0 0.085335419 -0.049268428 -0.024634214 0.085335419 -0.042667709 -0.042667709 
		0.085335419 -0.024634214 -0.049268428 0.085335419 0 -0.042667709 0.085335419 0.024634214 
		-0.024634214 0.085335419 0.042667709 0 0.085335419 0.049268428 0.024634214 0.085335419 
		0.042667709 0.042667709 0.085335419 0.024634214 0.049268428 0.085335419 0 0.02208643 
		0.09517929 -0.012751605 0.012751605 0.09517929 -0.02208643 0 0.09517929 -0.025503213 
		-0.012751605 0.09517929 -0.02208643 -0.02208643 0.09517929 -0.012751605 -0.025503213 
		0.09517929 0 -0.02208643 0.09517929 0.012751605 -0.012751605 0.09517929 0.02208643 
		0 0.09517929 0.025503213 0.012751605 0.09517929 0.02208643 0.02208643 0.09517929 
		0.012751605 0.025503213 0.09517929 0 0 -0.098536856 0 0 0.098536856 0;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Ankle_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789372444152833 -0.85969940185546878 -0.025499217510223389 ;
	setAttr ".sp" -type "double3" 0.28789372444152833 -0.85969940185546878 -0.025499217510223389 ;
createNode mesh -n "bouncy:L_Ankle_GEOShape" -p "bouncy:L_Ankle_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Ankle_GEOShapeOrig" -p "bouncy:L_Ankle_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".pt[0:133]" -type "float3"  0.1990415 -0.7800132 -0.021692531 
		0.20837632 -0.77346504 -0.018905843 0.22112793 -0.76452011 -0.017885843 0.23387952 
		-0.75557518 -0.018905843 0.24321435 -0.74902701 -0.021692531 0.24663113 -0.74663025 
		-0.025499217 0.24321435 -0.74902701 -0.029305901 0.23387952 -0.75557518 -0.03209259 
		0.22112793 -0.76452011 -0.033112589 0.20837632 -0.77346504 -0.03209259 0.1990415 
		-0.7800132 -0.029305901 0.19562471 -0.78240997 -0.025499217 0.18536542 -0.80429429 
		-0.018145263 0.20339893 -0.79164422 -0.012761796 0.22803314 -0.77436399 -0.01079131 
		0.25266734 -0.75708371 -0.012761796 0.27070084 -0.74443364 -0.018145263 0.27730158 
		-0.73980349 -0.025499217 0.27070084 -0.74443364 -0.032853171 0.25266734 -0.75708371 
		-0.038236637 0.22803314 -0.77436399 -0.040207125 0.20339893 -0.79164422 -0.038236637 
		0.18536542 -0.80429429 -0.032853171 0.17876473 -0.8089245 -0.025499217 0.17867652 
		-0.83235115 -0.015099156 0.20417972 -0.81446129 -0.0074857841 0.23901777 -0.79002333 
		-0.0046990956 0.27385581 -0.7655853 -0.0074857841 0.29935902 -0.74769557 -0.015099156 
		0.30869386 -0.7411474 -0.025499217 0.29935902 -0.74769557 -0.035899278 0.27385581 
		-0.7655853 -0.04351265 0.23901777 -0.79002333 -0.046299338 0.20417972 -0.81446129 
		-0.04351265 0.17867652 -0.83235115 -0.035899278 0.1693417 -0.83889931 -0.025499217 
		0.17943056 -0.86227173 -0.012761794 0.21066549 -0.84036124 -0.0034373545 0.25333321 
		-0.810431 -2.4372112e-005 0.29600093 -0.78050071 -0.0034373545 0.32723582 -0.75859016 
		-0.012761794 0.33866864 -0.75057036 -0.025499217 0.32723582 -0.75859016 -0.03823664 
		0.29600093 -0.78050071 -0.047561079 0.25333321 -0.810431 -0.05097406 0.21066549 -0.84036124 
		-0.047561079 0.17943056 -0.86227173 -0.03823664 0.16799778 -0.87029159 -0.025499217 
		0.1875762 -0.89201707 -0.01129247 0.22241423 -0.86757904 -0.00089240918 0.27000389 
		-0.83419615 0.0029142774 0.31759351 -0.80081332 -0.00089240918 0.35243157 -0.77637529 
		-0.01129247 0.36518317 -0.76743042 -0.025499217 0.35243157 -0.77637529 -0.039705962 
		0.31759351 -0.80081332 -0.050106026 0.27000389 -0.83419615 -0.05391271 0.22241423 
		-0.86757904 -0.050106026 0.1875762 -0.89201707 -0.039705962 0.17482458 -0.900962 
		-0.025499217 0.20255831 -0.91955996 -0.01079131 0.2386253 -0.89425993 -2.4374958e-005 
		0.28789371 -0.85969943 0.0039165975 0.33716214 -0.82513887 -2.4374958e-005 0.37322915 
		-0.79983878 -0.01079131 0.38643059 -0.79057837 -0.025499217 0.37322915 -0.79983878 
		-0.040207125 0.33716214 -0.82513887 -0.05097406 0.28789371 -0.85969943 -0.054915033 
		0.2386253 -0.89425993 -0.05097406 0.20255831 -0.91955996 -0.040207125 0.18935686 
		-0.92882043 -0.025499217 0.22335589 -0.9430235 -0.01129247 0.25819391 -0.91858554 
		-0.00089240918 0.30578357 -0.88520265 0.0029142774 0.35337323 -0.85181969 -0.00089240918 
		0.38821125 -0.82738173 -0.01129247 0.40096286 -0.8184368 -0.025499217 0.38821125 
		-0.82738173 -0.039705962 0.35337323 -0.85181969 -0.050106026 0.30578357 -0.88520265 
		-0.05391271 0.25819391 -0.91858554 -0.050106026 0.22335589 -0.9430235 -0.039705962 
		0.21060427 -0.95196837 -0.025499217 0.24855159 -0.96080863 -0.012761794 0.27978653 
		-0.93889809 -0.0034373545 0.32245421 -0.90896779 -2.4372112e-005 0.36512196 -0.87903756 
		-0.0034373545 0.39635688 -0.85712701 -0.012761794 0.40778965 -0.84910721 -0.025499217 
		0.39635688 -0.85712701 -0.03823664 0.36512196 -0.87903756 -0.047561079 0.32245421 
		-0.90896779 -0.05097406 0.27978653 -0.93889809 -0.047561079 0.24855159 -0.96080863 
		-0.03823664 0.23711881 -0.96882844 -0.025499217 0.27642843 -0.97170329 -0.015099156 
		0.30193162 -0.95381349 -0.0074857841 0.33676967 -0.92937547 -0.0046990956 0.37160769 
		-0.90493751 -0.0074857841 0.39711094 -0.88704765 -0.015099156 0.40644574 -0.88049948 
		-0.025499217 0.39711094 -0.88704765 -0.035899278 0.37160769 -0.90493751 -0.04351265 
		0.33676967 -0.92937547 -0.046299338 0.30193162 -0.95381349 -0.04351265 0.27642843 
		-0.97170329 -0.035899278 0.2670936 -0.9782514 -0.025499217 0.30508658 -0.97496516 
		-0.018145263 0.32312009 -0.96231508 -0.012761796 0.3477543 -0.9450348 -0.01079131 
		0.37238848 -0.92775458 -0.012761796 0.39042202 -0.91510451 -0.018145263 0.39702269 
		-0.9104743 -0.025499217 0.39042202 -0.91510451 -0.032853171 0.37238848 -0.92775458 
		-0.038236637 0.3477543 -0.9450348 -0.040207125 0.32312009 -0.96231508 -0.038236637 
		0.30508658 -0.97496516 -0.032853171 0.29848588 -0.97959536 -0.025499217 0.33257309 
		-0.97037178 -0.021692531 0.34190792 -0.96382362 -0.018905843 0.3546595 -0.95487869 
		-0.017885843 0.36741111 -0.94593376 -0.018905843 0.37674594 -0.93938559 -0.021692531 
		0.38016275 -0.93698883 -0.025499217 0.37674594 -0.93938559 -0.029305901 0.36741111 
		-0.94593376 -0.03209259 0.3546595 -0.95487869 -0.033112589 0.34190792 -0.96382362 
		-0.03209259 0.33257309 -0.97037178 -0.029305901 0.32915631 -0.97276855 -0.025499217 
		0.21877268 -0.76116258 -0.025499217 0.35701478 -0.95823622 -0.025499217;
	setAttr -s 134 ".vt[0:133]"  0.02208643 -0.09517929 -0.012751605 0.012751605 
		-0.09517929 -0.02208643 0 -0.09517929 -0.025503213 -0.012751605 -0.09517929 -0.02208643 
		-0.02208643 -0.09517929 -0.012751605 -0.025503213 -0.09517929 0 -0.02208643 -0.09517929 
		0.012751605 -0.012751605 -0.09517929 0.02208643 0 -0.09517929 0.025503213 0.012751605 
		-0.09517929 0.02208643 0.02208643 -0.09517929 0.012751605 0.025503213 -0.09517929 
		0 0.042667709 -0.085335419 -0.024634214 0.024634214 -0.085335419 -0.042667709 0 -0.085335419 
		-0.049268428 -0.024634214 -0.085335419 -0.042667709 -0.042667709 -0.085335419 -0.024634214 
		-0.049268428 -0.085335419 0 -0.042667709 -0.085335419 0.024634214 -0.024634214 -0.085335419 
		0.042667709 0 -0.085335419 0.049268428 0.024634214 -0.085335419 0.042667709 0.042667709 
		-0.085335419 0.024634214 0.049268428 -0.085335419 0 0.06034125 -0.069676071 -0.034838036 
		0.034838036 -0.069676071 -0.06034125 0 -0.069676071 -0.069676071 -0.034838036 -0.069676071 
		-0.06034125 -0.06034125 -0.069676071 -0.034838036 -0.069676071 -0.069676071 0 -0.06034125 
		-0.069676071 0.034838036 -0.034838036 -0.069676071 0.06034125 0 -0.069676071 0.069676071 
		0.034838036 -0.069676071 0.06034125 0.06034125 -0.069676071 0.034838036 0.069676071 
		-0.069676071 0 0.073902644 -0.049268421 -0.042667713 0.042667713 -0.049268421 -0.073902644 
		0 -0.049268421 -0.085335426 -0.042667713 -0.049268421 -0.073902644 -0.073902644 -0.049268421 
		-0.042667713 -0.085335426 -0.049268421 0 -0.073902644 -0.049268421 0.042667713 -0.042667713 
		-0.049268421 0.073902644 0 -0.049268421 0.085335426 0.042667713 -0.049268421 0.073902644 
		0.073902644 -0.049268421 0.042667713 0.085335426 -0.049268421 0 0.08242768 -0.025503218 
		-0.047589645 0.047589645 -0.025503218 -0.08242768 0 -0.025503218 -0.09517929 -0.047589645 
		-0.025503218 -0.08242768 -0.08242768 -0.025503218 -0.047589645 -0.09517929 -0.025503218 
		0 -0.08242768 -0.025503218 0.047589645 -0.047589645 -0.025503218 0.08242768 0 -0.025503218 
		0.09517929 0.047589645 -0.025503218 0.08242768 0.08242768 -0.025503218 0.047589645 
		0.09517929 -0.025503218 0 0.085335419 0 -0.049268428 0.049268428 0 -0.085335419 0 
		0 -0.098536856 -0.049268428 0 -0.085335419 -0.085335419 0 -0.049268428 -0.098536856 
		0 0 -0.085335419 0 0.049268428 -0.049268428 0 0.085335419 0 0 0.098536856 0.049268428 
		0 0.085335419 0.085335419 0 0.049268428 0.098536856 0 0 0.08242768 0.025503218 -0.047589645 
		0.047589645 0.025503218 -0.08242768 0 0.025503218 -0.09517929 -0.047589645 0.025503218 
		-0.08242768 -0.08242768 0.025503218 -0.047589645 -0.09517929 0.025503218 0 -0.08242768 
		0.025503218 0.047589645 -0.047589645 0.025503218 0.08242768 0 0.025503218 0.09517929 
		0.047589645 0.025503218 0.08242768 0.08242768 0.025503218 0.047589645 0.09517929 
		0.025503218 0 0.073902644 0.049268421 -0.042667713 0.042667713 0.049268421 -0.073902644 
		0 0.049268421 -0.085335426 -0.042667713 0.049268421 -0.073902644 -0.073902644 0.049268421 
		-0.042667713 -0.085335426 0.049268421 0 -0.073902644 0.049268421 0.042667713 -0.042667713 
		0.049268421 0.073902644 0 0.049268421 0.085335426 0.042667713 0.049268421 0.073902644 
		0.073902644 0.049268421 0.042667713 0.085335426 0.049268421 0 0.06034125 0.069676071 
		-0.034838036 0.034838036 0.069676071 -0.06034125 0 0.069676071 -0.069676071 -0.034838036 
		0.069676071 -0.06034125 -0.06034125 0.069676071 -0.034838036 -0.069676071 0.069676071 
		0 -0.06034125 0.069676071 0.034838036 -0.034838036 0.069676071 0.06034125 0 0.069676071 
		0.069676071 0.034838036 0.069676071 0.06034125 0.06034125 0.069676071 0.034838036 
		0.069676071 0.069676071 0 0.042667709 0.085335419 -0.024634214 0.024634214 0.085335419 
		-0.042667709 0 0.085335419 -0.049268428 -0.024634214 0.085335419 -0.042667709 -0.042667709 
		0.085335419 -0.024634214 -0.049268428 0.085335419 0 -0.042667709 0.085335419 0.024634214 
		-0.024634214 0.085335419 0.042667709 0 0.085335419 0.049268428 0.024634214 0.085335419 
		0.042667709 0.042667709 0.085335419 0.024634214 0.049268428 0.085335419 0 0.02208643 
		0.09517929 -0.012751605 0.012751605 0.09517929 -0.02208643 0 0.09517929 -0.025503213 
		-0.012751605 0.09517929 -0.02208643 -0.02208643 0.09517929 -0.012751605 -0.025503213 
		0.09517929 0 -0.02208643 0.09517929 0.012751605 -0.012751605 0.09517929 0.02208643 
		0 0.09517929 0.025503213 0.012751605 0.09517929 0.02208643 0.02208643 0.09517929 
		0.012751605 0.025503213 0.09517929 0 0 -0.098536856 0 0 0.098536856 0;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Ball_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28690192222595218 -0.96742717742919926 0.26669853210449218 ;
	setAttr ".sp" -type "double3" 0.28690192222595218 -0.96742717742919926 0.26669853210449218 ;
createNode mesh -n "bouncy:L_Ball_GEOShape" -p "bouncy:L_Ball_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Ball_GEOShapeOrig" -p "bouncy:L_Ball_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.59742022 0.034088783 
		0.46523106 0.0039175153 0.3592236 0.088455707 0.35922363 0.22404437 0.46523112 0.30858248 
		0.59742028 0.27841115 0.65625 0.15625 0.375 0.3125 0.4107143 0.3125 0.4464286 0.3125 
		0.4821429 0.3125 0.51785719 0.3125 0.55357146 0.3125 0.58928573 0.3125 0.625 0.3125 
		0.375 0.68843985 0.4107143 0.68843985 0.4464286 0.68843985 0.4821429 0.68843985 0.51785719 
		0.68843985 0.55357146 0.68843985 0.58928573 0.68843985 0.625 0.68843985 0.59742022 
		0.72158879 0.46523106 0.69141752 0.3592236 0.77595568 0.35922363 0.91154438 0.46523112 
		0.99608248 0.59742028 0.96591115 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0.21129698 -0.99619073 0.2572768 0.21129698 
		-0.97897881 0.23825668 0.21129698 -0.95337683 0.2398546 0.21129698 -0.93866366 0.2608673 
		0.21129698 -0.94591844 0.2854718 0.21129698 -0.96967834 0.29514039 0.21129698 -0.9920516 
		0.28259245 0.36250687 -0.99619073 0.2572768 0.36250687 -0.97897881 0.23825668 0.36250687 
		-0.95337683 0.2398546 0.36250687 -0.93866366 0.2608673 0.36250687 -0.94591844 0.2854718 
		0.36250687 -0.96967834 0.29514039 0.36250687 -0.9920516 0.28259245 0.21129698 -0.96783692 
		0.26563716 0.36250687 -0.96783692 0.26563716;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 0 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 7 0 
		0 7 0 1 8 0 2 9 0 3 10 0 
		4 11 0 5 12 0 6 13 0 14 0 1 
		14 1 1 14 2 1 14 3 1 14 4 1 
		14 5 1 14 6 1 7 15 1 8 15 1 
		9 15 1 10 15 1 11 15 1 12 15 1 
		13 15 1;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 4 0 15 -8 -15 
		mu 0 4 7 8 16 15 
		f 4 1 16 -9 -16 
		mu 0 4 8 9 17 16 
		f 4 2 17 -10 -17 
		mu 0 4 9 10 18 17 
		f 4 3 18 -11 -18 
		mu 0 4 10 11 19 18 
		f 4 4 19 -12 -19 
		mu 0 4 11 12 20 19 
		f 4 5 20 -13 -20 
		mu 0 4 12 13 21 20 
		f 4 6 14 -14 -21 
		mu 0 4 13 14 22 21 
		f 3 -1 -22 22 
		mu 0 3 1 0 30 
		f 3 -2 -23 23 
		mu 0 3 2 1 30 
		f 3 -3 -24 24 
		mu 0 3 3 2 30 
		f 3 -4 -25 25 
		mu 0 3 4 3 30 
		f 3 -5 -26 26 
		mu 0 3 5 4 30 
		f 3 -6 -27 27 
		mu 0 3 6 5 30 
		f 3 -7 -28 21 
		mu 0 3 0 6 30 
		f 3 7 29 -29 
		mu 0 3 28 27 31 
		f 3 8 30 -30 
		mu 0 3 27 26 31 
		f 3 9 31 -31 
		mu 0 3 26 25 31 
		f 3 10 32 -32 
		mu 0 3 25 24 31 
		f 3 11 33 -33 
		mu 0 3 24 23 31 
		f 3 12 34 -34 
		mu 0 3 23 29 31 
		f 3 13 28 -35 
		mu 0 3 29 28 31 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Foot_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.29119953155517581 -0.93431041717529295 0.069714512825012204 ;
	setAttr ".sp" -type "double3" 0.29119953155517581 -0.93431041717529295 0.069714512825012204 ;
createNode mesh -n "bouncy:L_Foot_GEOShape" -p "bouncy:L_Foot_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Foot_GEOShapeOrig" -p "bouncy:L_Foot_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.20902109 0 0.375 0.83402109 0.20902109 0.25 0.375 
		0.41597891 0.625 0.41597891 0.79097891 0.25 0.625 0.83402109 0.79097891 0 0.375 0.13229093 
		0.20902109 0.13229093 0.125 0.13229093 0.375 0.61770904 0.625 0.61770904 0.875 0.13229093 
		0.79097891 0.13229093 0.625 0.13229093 0.2908107 0.13229093 0.2908107 0 0.375 0.9158107 
		0.625 0.9158107 0.7091893 0 0.7091893 0.13229093 0.625 0.3341893 0.7091893 0.25 0.2908107 
		0.25 0.375 0.3341893 0.52733266 0.41597891 0.52733266 0.5 0.52733266 0.61770904 0.52733266 
		0.75 0.52733266 0.83402109 0.52733266 0.9158107 0.52733266 0 0.52733266 1 0.52733266 
		0.13229093 0.52733266 0.25 0.52733266 0.3341893;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.21066643 -0.93784231 0.25880635 0.21066643 
		-0.99936318 0.25880635 0.36333182 -0.93784231 0.25880635 0.36333182 -0.99936318 0.25880635 
		0.34979326 -0.884556 -0.082119361 0.36333182 -0.99936318 -0.085988857 0.22420503 
		-0.884556 -0.082119361 0.21066643 -0.99936318 -0.085988857 0.20403606 -0.88699687 
		0.02989142 0.37836295 -0.88699687 0.02989142 0.37836295 -0.99936318 0.02989142 0.20403606 
		-0.99936318 0.02989142 0.29145142 -0.93784231 0.25880635 0.29145142 -0.86925769 0.043445539 
		0.29066175 -0.884556 -0.10503375 0.29145142 -0.99936318 -0.10890324 0.29145142 -0.99936318 
		0.02989142 0.29145142 -0.99936318 0.25880635 0.29875994 -0.91205198 0.15431692 0.21581833 
		-0.91205198 0.14269407 0.21581833 -0.99936318 0.14269407 0.29875994 -0.99936318 0.14269407 
		0.3778533 -0.99936318 0.14269407 0.3778533 -0.91205198 0.14269407 0.38313976 -0.95489931 
		0.027324377 0.36725232 -0.95489931 -0.095157519 0.2912769 -0.95489931 -0.11937732 
		0.20588963 -0.95489931 -0.095157519 0.1992593 -0.95489931 0.027324377 0.21133506 
		-0.96524519 0.14655332 0.20588963 -0.97589469 0.25039959 0.2912769 -0.97589469 0.25039959 
		0.36725232 -0.97589469 0.25039959 0.38260105 -0.96524519 0.14655332;
	setAttr -s 64 ".ed[0:63]"  0 30 0 2 32 0 
		4 25 0 6 27 0 0 12 0 1 17 0 
		2 23 0 3 22 0 4 14 0 5 15 0 
		6 8 0 7 11 0 8 19 0 9 4 0 
		8 13 1 10 5 0 9 24 1 11 20 0 
		10 16 1 11 28 1 12 2 0 13 9 1 
		12 18 1 14 6 0 13 14 1 15 7 0 
		14 26 1 16 11 1 15 16 1 17 3 0 
		16 21 1 17 31 1 18 13 1 19 0 0 
		18 19 1 20 1 0 19 29 1 21 17 1 
		20 21 1 22 10 0 21 22 1 23 9 0 
		22 33 1 23 18 1 24 10 1 25 5 0 
		24 25 1 26 15 1 25 26 1 27 7 0 
		26 27 1 28 8 1 27 28 1 29 20 1 
		28 29 1 30 1 0 29 30 1 31 12 1 
		30 31 1 32 3 0 31 32 1 33 23 1 
		32 33 1 33 24 1;
	setAttr -s 32 ".fc[0:31]" -type "polyFaces" 
		f 4 0 58 57 -5 
		mu 0 4 0 46 48 22 
		f 4 16 46 -3 -14 
		mu 0 4 17 40 41 4 
		f 4 26 50 -4 -24 
		mu 0 4 25 42 43 6 
		f 4 3 52 51 -11 
		mu 0 4 6 43 44 15 
		f 4 -12 -26 28 27 
		mu 0 4 21 10 27 28 
		f 4 10 14 24 23 
		mu 0 4 12 14 23 24 
		f 4 33 4 22 34 
		mu 0 4 31 0 22 30 
		f 4 1 62 61 -7 
		mu 0 4 2 49 50 39 
		f 4 -36 38 37 -6 
		mu 0 4 1 34 35 29 
		f 4 36 56 -1 -34 
		mu 0 4 32 45 47 8 
		f 4 43 -23 20 6 
		mu 0 4 38 30 22 2 
		f 4 -25 21 13 8 
		mu 0 4 24 23 16 13 
		f 4 2 48 -27 -9 
		mu 0 4 4 41 42 25 
		f 4 -29 -10 -16 18 
		mu 0 4 28 27 11 19 
		f 4 -38 40 -8 -30 
		mu 0 4 29 35 37 3 
		f 4 -58 60 -2 -21 
		mu 0 4 22 48 49 2 
		f 4 12 -35 32 -15 
		mu 0 4 14 31 30 23 
		f 4 -52 54 -37 -13 
		mu 0 4 15 44 45 32 
		f 4 -39 -18 -28 30 
		mu 0 4 35 34 21 28 
		f 4 -41 -31 -19 -40 
		mu 0 4 37 35 28 19 
		f 4 -62 63 -17 -42 
		mu 0 4 39 50 40 17 
		f 4 -33 -44 41 -22 
		mu 0 4 23 30 38 16 
		f 4 44 15 -46 -47 
		mu 0 4 40 18 5 41 
		f 4 -49 45 9 -48 
		mu 0 4 42 41 5 26 
		f 4 -51 47 25 -50 
		mu 0 4 43 42 26 7 
		f 4 -53 49 11 19 
		mu 0 4 44 43 7 20 
		f 4 -55 -20 17 -54 
		mu 0 4 45 44 20 33 
		f 4 -57 53 35 -56 
		mu 0 4 47 45 33 9 
		f 4 -59 55 5 31 
		mu 0 4 48 46 1 29 
		f 4 -61 -32 29 -60 
		mu 0 4 49 48 29 3 
		f 4 -63 59 7 42 
		mu 0 4 50 49 3 36 
		f 4 -64 -43 39 -45 
		mu 0 4 40 50 36 18 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:L_Toes_GEO" -p "bouncy:L_Leg_GRP";
	setAttr ".rp" -type "double3" 0.2809657669067383 -0.97072151184082034 0.33519322395324708 ;
	setAttr ".sp" -type "double3" 0.2809657669067383 -0.97072151184082034 0.33519322395324708 ;
createNode mesh -n "bouncy:L_Toes_GEOShape" -p "bouncy:L_Toes_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:L_Toes_GEOShapeOrig" -p "bouncy:L_Toes_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.50161535 0.25 0.50161535 0.5 0.50161535 0.75 0.50161535 
		0 0.50161535 1 0.625 0.44247943 0.81747949 0.25 0.50161535 0.44247943 0.18252057 
		0.25 0.375 0.44247943 0.18252057 0 0.375 0.80752057 0.50161535 0.80752057 0.625 0.80752057 
		0.81747949 0 0.375 0.12362754 0.18252057 0.12362754 0.125 0.12362754 0.375 0.62637246 
		0.50161535 0.62637246 0.625 0.62637246 0.875 0.12362754 0.81747949 0.12362754 0.625 
		0.12362754 0.50161535 0.12362754;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  0.1985997 -0.99936318 0.34295142 0.36333182 
		-0.99936318 0.36927226 0.1985997 -0.97534478 0.34295142 0.36333182 -0.97534478 0.36927226 
		0.21066643 -0.94207984 0.2769407 0.36333182 -0.94207984 0.2769407 0.21066643 -0.99936318 
		0.2769407 0.36333182 -0.99936318 0.2769407 0.26929396 -0.97534478 0.39344573 0.28798553 
		-0.94207984 0.2769407 0.28798553 -0.99936318 0.2769407 0.26929396 -0.99936318 0.39344573 
		0.36333182 -0.94647098 0.29818457 0.28368491 -0.94647098 0.30374646 0.20789009 -0.94647098 
		0.29212859 0.20789009 -0.99936318 0.29212859 0.28368491 -0.99936318 0.30374646 0.36333182 
		-0.99936318 0.29818457 0.19420029 -0.98792511 0.34336579 0.2039869 -0.97288412 0.28982839 
		0.20691155 -0.97059661 0.27382925 0.28836051 -0.97059661 0.27382925 0.36773124 -0.97059661 
		0.27382925 0.36773124 -0.97288412 0.29620782 0.36773124 -0.98792511 0.37109253 0.26867059 
		-0.98792511 0.39655721;
	setAttr -s 48 ".ed[0:47]"  0 11 0 2 8 0 
		4 9 0 6 10 0 0 18 0 1 24 0 
		2 14 0 3 12 0 4 20 0 5 22 0 
		6 15 0 7 17 0 8 3 0 9 5 0 
		8 13 1 10 7 0 9 21 1 11 1 0 
		10 16 1 11 25 1 12 5 0 13 9 1 
		12 13 1 14 4 0 13 14 1 15 0 0 
		14 19 1 16 11 1 15 16 1 17 1 0 
		16 17 1 17 23 1 18 2 0 19 15 1 
		18 19 1 20 6 0 19 20 1 21 10 1 
		20 21 1 22 7 0 21 22 1 23 12 1 
		22 23 1 24 3 0 23 24 1 25 8 1 
		24 25 1 25 18 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 47 -5 
		mu 0 4 0 17 38 29 
		f 4 1 14 24 -7 
		mu 0 4 2 14 21 23 
		f 4 38 37 -4 -36 
		mu 0 4 32 33 16 6 
		f 4 28 27 -1 -26 
		mu 0 4 25 26 18 8 
		f 4 -30 31 44 -6 
		mu 0 4 1 28 36 37 
		f 4 25 4 34 33 
		mu 0 4 24 0 29 30 
		f 4 12 7 22 -15 
		mu 0 4 14 3 19 21 
		f 4 -38 40 39 -16 
		mu 0 4 16 33 34 7 
		f 4 -28 30 29 -18 
		mu 0 4 18 26 27 9 
		f 4 -20 17 5 46 
		mu 0 4 38 17 1 37 
		f 4 -23 20 -14 -22 
		mu 0 4 21 19 5 15 
		f 4 -25 21 -3 -24 
		mu 0 4 23 21 15 4 
		f 4 10 -34 36 35 
		mu 0 4 12 24 30 31 
		f 4 3 18 -29 -11 
		mu 0 4 6 16 26 25 
		f 4 -31 -19 15 11 
		mu 0 4 27 26 16 7 
		f 4 -32 -12 -40 42 
		mu 0 4 36 28 10 35 
		f 4 -35 32 6 26 
		mu 0 4 30 29 2 22 
		f 4 -37 -27 23 8 
		mu 0 4 31 30 22 13 
		f 4 2 16 -39 -9 
		mu 0 4 4 15 33 32 
		f 4 -41 -17 13 9 
		mu 0 4 34 33 15 5 
		f 4 -42 -43 -10 -21 
		mu 0 4 20 36 35 11 
		f 4 -45 41 -8 -44 
		mu 0 4 37 36 20 3 
		f 4 -46 -47 43 -13 
		mu 0 4 14 38 37 3 
		f 4 -48 45 -2 -33 
		mu 0 4 29 38 14 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Leg_GRP" -p "bouncy:Geometry_GRP";
	setAttr ".t" -type "double3" -0.085229712842024574 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" 0.085229712842024574 0 0 ;
	setAttr ".sp" -type "double3" 0.085229712842024574 0 0 ;
createNode transform -n "bouncy:R_upperLeg_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28447383880615235 -0.26130096435546873 -0.022097110748291016 ;
	setAttr ".sp" -type "double3" 0.28447383880615235 -0.26130096435546873 -0.022097110748291016 ;
createNode mesh -n "bouncy:R_upperLeg_GEOShape" -p "bouncy:R_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_upperLeg_GEOShapeOrig" -p "bouncy:R_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_upperLeg_GEOShapeOrig1" -p "bouncy:R_upperLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  -0.28650752 -0.85913604 -0.044689752 
		-0.22424559 -0.90197909 -0.038319848 -0.22082247 -0.90656626 -0.017706405 -0.28096873 
		-0.86655825 -0.011336494 -0.32156456 -0.83724481 -0.028013127 -0.69492948 -1.1574628 
		-0.055633888 -0.6530869 -1.1862549 -0.051353078 -0.65078646 -1.1893376 -0.037500095 
		-0.69120729 -1.1624508 -0.033219296 -0.71848899 -1.1427511 -0.044426594;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_lowerLeg_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28447384834289552 -0.65818634033203127 -0.0079148936271667483 ;
	setAttr ".sp" -type "double3" 0.28447384834289552 -0.65818634033203127 -0.0079148936271667483 ;
createNode mesh -n "bouncy:R_lowerLeg_GEOShape" -p "bouncy:R_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
	setAttr ".dr" 1;
createNode mesh -n "bouncy:R_lowerLeg_GEOShapeOrig" -p "bouncy:R_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_lowerLeg_GEOShapeOrig1" -p "bouncy:R_lowerLeg_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.54828393 0.00764741 
		0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625 
		0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125 
		0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004 
		0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911 
		0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  -0.28458968 -1.2232963 -0.017248791 
		-0.23236991 -1.2679614 -0.014402797 -0.22894678 -1.2784448 -0.005192948 -0.27905092 
		-1.2402588 -0.0023469406 -0.31344023 -1.2061752 -0.0097978786 -0.69394267 -1.5801375 
		-0.069407523 -0.65726745 -1.6102542 -0.066992171 -0.65496695 -1.6176234 -0.059175946 
		-0.69022042 -1.5920613 -0.056760624 -0.71430856 -1.5688938 -0.063084073;
	setAttr -s 10 ".vt[0:9]"  0.55929244 0.74819511 -0.029213661 0.55823469 
		0.78962058 -0.015795318 0.55481154 0.78962058 0.027627341 0.55375367 0.74819511 0.041045684 
		0.55652314 0.72259271 0.0059160138 0.9715479 0.75078982 0.014878988 0.97083694 0.7786293 
		0.023896586 0.96853644 0.7786293 0.053078189 0.96782571 0.75078982 0.062095806 0.96968681 
		0.73358405 0.03848739;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 0 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 5 0 
		0 5 0 1 6 0 2 7 0 3 8 0 
		4 9 0;
	setAttr -s 7 ".fc[0:6]" -type "polyFaces" 
		f 4 0 11 -6 -11 
		mu 0 4 5 6 12 11 
		f 4 1 12 -7 -12 
		mu 0 4 6 7 13 12 
		f 4 2 13 -8 -13 
		mu 0 4 7 8 14 13 
		f 4 3 14 -9 -14 
		mu 0 4 8 9 15 14 
		f 4 4 10 -10 -15 
		mu 0 4 9 10 16 15 
		f 5 -5 -4 -3 -2 -1 
		mu 0 5 0 4 3 2 1 
		f 5 5 6 7 8 9 
		mu 0 5 20 19 18 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Hip_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789370536804199 -0.012660255432128906 -0.029292192459106445 ;
	setAttr ".sp" -type "double3" 0.28789370536804199 -0.012660255432128906 -0.029292192459106445 ;
createNode mesh -n "bouncy:R_Hip_GEOShape" -p "bouncy:R_Hip_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Hip_GEOShapeOrig" -p "bouncy:R_Hip_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  0.15336001 -0.043878898 -0.047316294 0.15336001 
		-0.030684346 -0.060510844 0.15336001 -0.012660251 -0.065340392 0.15336001 0.0053638471 
		-0.060510844 0.15336001 0.0185584 -0.047316294 0.15336001 0.023387944 -0.029292194 
		0.15336001 0.0185584 -0.011268097 0.15336001 0.0053638471 0.0019264555 0.15336001 
		-0.012660251 0.0067560007 0.15336001 -0.030684346 0.0019264555 0.15336001 -0.043878898 
		-0.011268097 0.15336001 -0.04870845 -0.029292194 0.16727409 -0.072970055 -0.064112082 
		0.16727409 -0.047480136 -0.089602001 0.16727409 -0.012660251 -0.098931961 0.16727409 
		0.022159634 -0.089602001 0.16727409 0.047649555 -0.064112082 0.16727409 0.056979518 
		-0.029292194 0.16727409 0.047649555 0.0055276896 0.16727409 0.022159634 0.031017611 
		0.16727409 -0.012660251 0.040347576 0.16727409 -0.047480136 0.031017611 0.16727409 
		-0.072970055 0.0055276896 0.16727409 -0.082300015 -0.029292194 0.18940823 -0.097951181 
		-0.078534946 0.18940823 -0.061903 -0.11458313 0.18940823 -0.012660251 -0.1277777 
		0.18940823 0.0365825 -0.11458313 0.18940823 0.072630689 -0.078534946 0.18940823 0.08582525 
		-0.029292194 0.18940823 0.072630689 0.019950554 0.18940823 0.0365825 0.055998746 
		0.18940823 -0.012660251 0.069193304 0.18940823 -0.061903 0.055998746 0.18940823 -0.097951181 
		0.019950554 0.18940823 -0.11114574 -0.029292194 0.21825396 -0.1171199 -0.089602016 
		0.21825396 -0.072970062 -0.13375185 0.21825396 -0.012660251 -0.14991182 0.21825396 
		0.047649566 -0.13375185 0.21825396 0.091799408 -0.089602016 0.21825396 0.10795937 
		-0.029292194 0.21825396 0.091799408 0.03101762 0.21825396 0.047649566 0.075167462 
		0.21825396 -0.012660251 0.091327436 0.21825396 -0.072970062 0.075167462 0.21825396 
		-0.1171199 0.03101762 0.21825396 -0.13327986 -0.029292194 0.25184551 -0.12916985 
		-0.096559048 0.25184551 -0.079927102 -0.1458018 0.25184551 -0.012660251 -0.1638259 
		0.25184551 0.054606602 -0.1458018 0.25184551 0.10384935 -0.096559048 0.25184551 0.12187345 
		-0.029292194 0.25184551 0.10384935 0.037974656 0.25184551 0.054606602 0.087217405 
		0.25184551 -0.012660251 0.10524151 0.25184551 -0.079927102 0.087217405 0.25184551 
		-0.12916985 0.037974656 0.25184551 -0.14719395 -0.029292194 0.28789371 -0.13327986 
		-0.098931961 0.28789371 -0.082300015 -0.14991182 0.28789371 -0.012660251 -0.16857174 
		0.28789371 0.056979518 -0.14991182 0.28789371 0.10795937 -0.098931961 0.28789371 
		0.12661928 -0.029292194 0.28789371 0.10795937 0.040347576 0.28789371 0.056979518 
		0.091327421 0.28789371 -0.012660251 0.10998736 0.28789371 -0.082300015 0.091327421 
		0.28789371 -0.13327986 0.040347576 0.28789371 -0.15193979 -0.029292194 0.32394192 
		-0.12916985 -0.096559048 0.32394192 -0.079927102 -0.1458018 0.32394192 -0.012660251 
		-0.1638259 0.32394192 0.054606602 -0.1458018 0.32394192 0.10384935 -0.096559048 0.32394192 
		0.12187345 -0.029292194 0.32394192 0.10384935 0.037974656 0.32394192 0.054606602 
		0.087217405 0.32394192 -0.012660251 0.10524151 0.32394192 -0.079927102 0.087217405 
		0.32394192 -0.12916985 0.037974656 0.32394192 -0.14719395 -0.029292194 0.35753348 
		-0.1171199 -0.089602016 0.35753348 -0.072970062 -0.13375185 0.35753348 -0.012660251 
		-0.14991182 0.35753348 0.047649566 -0.13375185 0.35753348 0.091799408 -0.089602016 
		0.35753348 0.10795937 -0.029292194 0.35753348 0.091799408 0.03101762 0.35753348 0.047649566 
		0.075167462 0.35753348 -0.012660251 0.091327436 0.35753348 -0.072970062 0.075167462 
		0.35753348 -0.1171199 0.03101762 0.35753348 -0.13327986 -0.029292194 0.38637921 -0.097951181 
		-0.078534946 0.38637921 -0.061903 -0.11458313 0.38637921 -0.012660251 -0.1277777 
		0.38637921 0.0365825 -0.11458313 0.38637921 0.072630689 -0.078534946 0.38637921 0.08582525 
		-0.029292194 0.38637921 0.072630689 0.019950554 0.38637921 0.0365825 0.055998746 
		0.38637921 -0.012660251 0.069193304 0.38637921 -0.061903 0.055998746 0.38637921 -0.097951181 
		0.019950554 0.38637921 -0.11114574 -0.029292194 0.40851334 -0.072970055 -0.064112082 
		0.40851334 -0.047480136 -0.089602001 0.40851334 -0.012660251 -0.098931961 0.40851334 
		0.022159634 -0.089602001 0.40851334 0.047649555 -0.064112082 0.40851334 0.056979518 
		-0.029292194 0.40851334 0.047649555 0.0055276896 0.40851334 0.022159634 0.031017611 
		0.40851334 -0.012660251 0.040347576 0.40851334 -0.047480136 0.031017611 0.40851334 
		-0.072970055 0.0055276896 0.40851334 -0.082300015 -0.029292194 0.42242742 -0.043878898 
		-0.047316294 0.42242742 -0.030684346 -0.060510844 0.42242742 -0.012660251 -0.065340392 
		0.42242742 0.0053638471 -0.060510844 0.42242742 0.0185584 -0.047316294 0.42242742 
		0.023387944 -0.029292194 0.42242742 0.0185584 -0.011268097 0.42242742 0.0053638471 
		0.0019264555 0.42242742 -0.012660251 0.0067560007 0.42242742 -0.030684346 0.0019264555 
		0.42242742 -0.043878898 -0.011268097 0.42242742 -0.04870845 -0.029292194 0.14861418 
		-0.012660251 -0.029292194 0.42717323 -0.012660251 -0.029292194;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Knee_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789371490478516 -0.43610170364379885 0.0050093674659729007 ;
	setAttr ".sp" -type "double3" 0.28789371490478516 -0.43610170364379885 0.0050093674659729007 ;
createNode mesh -n "bouncy:R_Knee_GEOShape" -p "bouncy:R_Knee_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Knee_GEOShapeOrig" -p "bouncy:R_Knee_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".pt[0:133]" -type "float3"  0.19402754 -0.35757896 0.0081443097 
		0.20336235 -0.35053906 0.010439248 0.21611397 -0.34092239 0.011279254 0.22886556 
		-0.33130574 0.010439248 0.2382004 -0.32426587 0.0081443097 0.24161719 -0.32168907 
		0.0050093667 0.2382004 -0.32426587 0.0018744231 0.22886556 -0.33130574 -0.00042051441 
		0.21611397 -0.34092239 -0.0012605202 0.20336235 -0.35053906 -0.00042051441 0.19402754 
		-0.35757896 0.0018744231 0.19061075 -0.36015576 0.0050093667 0.18087004 -0.38294426 
		0.011065613 0.19890355 -0.36934426 0.015499093 0.22353774 -0.3507663 0.017121859 
		0.24817196 -0.33218831 0.015499093 0.26620546 -0.31858829 0.011065613 0.2728062 -0.31361035 
		0.0050093667 0.26620546 -0.31858829 -0.0010468793 0.24817196 -0.33218831 -0.0054803584 
		0.22353774 -0.3507663 -0.0071031256 0.19890355 -0.36934426 -0.0054803584 0.18087004 
		-0.38294426 -0.0010468793 0.17426933 -0.3879222 0.0050093667 0.17500605 -0.41193217 
		0.013574191 0.20050927 -0.39269882 0.019844078 0.23534729 -0.36642563 0.022139018 
		0.27018535 -0.34015238 0.019844078 0.29568854 -0.32091907 0.013574191 0.30502337 
		-0.31387919 0.0050093667 0.29568854 -0.32091907 -0.0035554583 0.27018535 -0.34015238 
		-0.0098253451 0.23534729 -0.36642563 -0.012120282 0.20050927 -0.39269882 -0.0098253451 
		0.17500605 -0.41193217 -0.0035554583 0.16567121 -0.41897205 0.0050093667 0.17683513 
		-0.44256717 0.015499094 0.20807007 -0.41901127 0.023178106 0.25073779 -0.38683328 
		0.025988819 0.2934055 -0.3546553 0.023178106 0.32464042 -0.33109936 0.015499094 0.33607322 
		-0.32247731 0.0050093667 0.32464042 -0.33109936 -0.0054803598 0.2934055 -0.3546553 
		-0.013159373 0.25073779 -0.38683328 -0.015970087 0.20807007 -0.41901127 -0.013159373 
		0.17683513 -0.44256717 -0.0054803598 0.16540235 -0.45118928 0.0050093667 0.1862327 
		-0.47276157 0.016709136 0.22107075 -0.44648835 0.02527396 0.2686604 -0.41059849 0.028408904 
		0.31625003 -0.37470859 0.02527396 0.35108808 -0.3484354 0.016709136 0.36383969 -0.33881873 
		0.0050093667 0.35108808 -0.3484354 -0.006690402 0.31625003 -0.37470859 -0.015255227 
		0.2686604 -0.41059849 -0.018390171 0.22107075 -0.44648835 -0.015255227 0.1862327 
		-0.47276157 -0.006690402 0.17348111 -0.48237824 0.0050093667 0.20255831 -0.50045764 
		0.017121859 0.2386253 -0.47325763 0.025988817 0.28789371 -0.43610168 0.02923435 0.33716214 
		-0.39894578 0.025988817 0.37322915 -0.37174571 0.017121859 0.38643059 -0.36178982 
		0.0050093667 0.37322915 -0.37174571 -0.0071031256 0.33716214 -0.39894578 -0.015970085 
		0.28789371 -0.43610168 -0.019215617 0.2386253 -0.47325763 -0.015970085 0.20255831 
		-0.50045764 -0.0071031256 0.18935686 -0.51041359 0.0050093667 0.22469936 -0.52376801 
		0.016709136 0.2595374 -0.49749482 0.02527396 0.30712706 -0.46160492 0.028408904 0.35471669 
		-0.42571503 0.02527396 0.38955474 -0.39944184 0.016709136 0.40230632 -0.38982517 
		0.0050093667 0.38955474 -0.39944184 -0.006690402 0.35471669 -0.42571503 -0.015255227 
		0.30712706 -0.46160492 -0.018390171 0.2595374 -0.49749482 -0.015255227 0.22469936 
		-0.52376801 -0.006690402 0.21194777 -0.53338468 0.0050093667 0.251147 -0.54110402 
		0.015499094 0.28238192 -0.51754808 0.023178106 0.32504967 -0.48537013 0.025988819 
		0.36771736 -0.45319214 0.023178106 0.39895231 -0.42963624 0.015499094 0.4103851 -0.42101413 
		0.0050093667 0.39895231 -0.42963624 -0.0054803598 0.36771736 -0.45319214 -0.013159373 
		0.32504967 -0.48537013 -0.015970087 0.28238192 -0.51754808 -0.013159373 0.251147 
		-0.54110402 -0.0054803598 0.23971422 -0.54972613 0.0050093667 0.28009889 -0.55128431 
		0.013574191 0.3056021 -0.53205097 0.019844078 0.34044015 -0.50577778 0.022139018 
		0.37527817 -0.47950456 0.019844078 0.40078139 -0.46027124 0.013574191 0.41011623 
		-0.45323136 0.0050093667 0.40078139 -0.46027124 -0.0035554583 0.37527817 -0.47950456 
		-0.0098253451 0.34044015 -0.50577778 -0.012120282 0.3056021 -0.53205097 -0.0098253451 
		0.28009889 -0.55128431 -0.0035554583 0.27076405 -0.55832422 0.0050093667 0.309582 
		-0.55361509 0.011065613 0.32761547 -0.54001504 0.015499093 0.35224968 -0.52143711 
		0.017121859 0.37688389 -0.50285918 0.015499093 0.3949174 -0.48925915 0.011065613 
		0.40151811 -0.48428118 0.0050093667 0.3949174 -0.48925915 -0.0010468793 0.37688389 
		-0.50285918 -0.0054803584 0.35224968 -0.52143711 -0.0071031256 0.32761547 -0.54001504 
		-0.0054803584 0.309582 -0.55361509 -0.0010468793 0.30298126 -0.55859303 0.0050093667 
		0.33758706 -0.54793757 0.0081443097 0.34692189 -0.54089761 0.010439248 0.35967347 
		-0.53128099 0.011279254 0.37242508 -0.52166432 0.010439248 0.38175991 -0.51462442 
		0.0081443097 0.38517669 -0.51204765 0.0050093667 0.38175991 -0.51462442 0.0018744231 
		0.37242508 -0.52166432 -0.00042051441 0.35967347 -0.53128099 -0.0012605202 0.34692189 
		-0.54089761 -0.00042051441 0.33758706 -0.54793757 0.0018744231 0.33417025 -0.55051434 
		0.0050093667 0.21358185 -0.33756486 0.0050093667 0.36220559 -0.53463858 0.0050093667;
	setAttr -s 134 ".vt[0:133]"  0.02208643 -0.09517929 -0.012751605 0.012751605 
		-0.09517929 -0.02208643 0 -0.09517929 -0.025503213 -0.012751605 -0.09517929 -0.02208643 
		-0.02208643 -0.09517929 -0.012751605 -0.025503213 -0.09517929 0 -0.02208643 -0.09517929 
		0.012751605 -0.012751605 -0.09517929 0.02208643 0 -0.09517929 0.025503213 0.012751605 
		-0.09517929 0.02208643 0.02208643 -0.09517929 0.012751605 0.025503213 -0.09517929 
		0 0.042667709 -0.085335419 -0.024634214 0.024634214 -0.085335419 -0.042667709 0 -0.085335419 
		-0.049268428 -0.024634214 -0.085335419 -0.042667709 -0.042667709 -0.085335419 -0.024634214 
		-0.049268428 -0.085335419 0 -0.042667709 -0.085335419 0.024634214 -0.024634214 -0.085335419 
		0.042667709 0 -0.085335419 0.049268428 0.024634214 -0.085335419 0.042667709 0.042667709 
		-0.085335419 0.024634214 0.049268428 -0.085335419 0 0.06034125 -0.069676071 -0.034838036 
		0.034838036 -0.069676071 -0.06034125 0 -0.069676071 -0.069676071 -0.034838036 -0.069676071 
		-0.06034125 -0.06034125 -0.069676071 -0.034838036 -0.069676071 -0.069676071 0 -0.06034125 
		-0.069676071 0.034838036 -0.034838036 -0.069676071 0.06034125 0 -0.069676071 0.069676071 
		0.034838036 -0.069676071 0.06034125 0.06034125 -0.069676071 0.034838036 0.069676071 
		-0.069676071 0 0.073902644 -0.049268421 -0.042667713 0.042667713 -0.049268421 -0.073902644 
		0 -0.049268421 -0.085335426 -0.042667713 -0.049268421 -0.073902644 -0.073902644 -0.049268421 
		-0.042667713 -0.085335426 -0.049268421 0 -0.073902644 -0.049268421 0.042667713 -0.042667713 
		-0.049268421 0.073902644 0 -0.049268421 0.085335426 0.042667713 -0.049268421 0.073902644 
		0.073902644 -0.049268421 0.042667713 0.085335426 -0.049268421 0 0.08242768 -0.025503218 
		-0.047589645 0.047589645 -0.025503218 -0.08242768 0 -0.025503218 -0.09517929 -0.047589645 
		-0.025503218 -0.08242768 -0.08242768 -0.025503218 -0.047589645 -0.09517929 -0.025503218 
		0 -0.08242768 -0.025503218 0.047589645 -0.047589645 -0.025503218 0.08242768 0 -0.025503218 
		0.09517929 0.047589645 -0.025503218 0.08242768 0.08242768 -0.025503218 0.047589645 
		0.09517929 -0.025503218 0 0.085335419 0 -0.049268428 0.049268428 0 -0.085335419 0 
		0 -0.098536856 -0.049268428 0 -0.085335419 -0.085335419 0 -0.049268428 -0.098536856 
		0 0 -0.085335419 0 0.049268428 -0.049268428 0 0.085335419 0 0 0.098536856 0.049268428 
		0 0.085335419 0.085335419 0 0.049268428 0.098536856 0 0 0.08242768 0.025503218 -0.047589645 
		0.047589645 0.025503218 -0.08242768 0 0.025503218 -0.09517929 -0.047589645 0.025503218 
		-0.08242768 -0.08242768 0.025503218 -0.047589645 -0.09517929 0.025503218 0 -0.08242768 
		0.025503218 0.047589645 -0.047589645 0.025503218 0.08242768 0 0.025503218 0.09517929 
		0.047589645 0.025503218 0.08242768 0.08242768 0.025503218 0.047589645 0.09517929 
		0.025503218 0 0.073902644 0.049268421 -0.042667713 0.042667713 0.049268421 -0.073902644 
		0 0.049268421 -0.085335426 -0.042667713 0.049268421 -0.073902644 -0.073902644 0.049268421 
		-0.042667713 -0.085335426 0.049268421 0 -0.073902644 0.049268421 0.042667713 -0.042667713 
		0.049268421 0.073902644 0 0.049268421 0.085335426 0.042667713 0.049268421 0.073902644 
		0.073902644 0.049268421 0.042667713 0.085335426 0.049268421 0 0.06034125 0.069676071 
		-0.034838036 0.034838036 0.069676071 -0.06034125 0 0.069676071 -0.069676071 -0.034838036 
		0.069676071 -0.06034125 -0.06034125 0.069676071 -0.034838036 -0.069676071 0.069676071 
		0 -0.06034125 0.069676071 0.034838036 -0.034838036 0.069676071 0.06034125 0 0.069676071 
		0.069676071 0.034838036 0.069676071 0.06034125 0.06034125 0.069676071 0.034838036 
		0.069676071 0.069676071 0 0.042667709 0.085335419 -0.024634214 0.024634214 0.085335419 
		-0.042667709 0 0.085335419 -0.049268428 -0.024634214 0.085335419 -0.042667709 -0.042667709 
		0.085335419 -0.024634214 -0.049268428 0.085335419 0 -0.042667709 0.085335419 0.024634214 
		-0.024634214 0.085335419 0.042667709 0 0.085335419 0.049268428 0.024634214 0.085335419 
		0.042667709 0.042667709 0.085335419 0.024634214 0.049268428 0.085335419 0 0.02208643 
		0.09517929 -0.012751605 0.012751605 0.09517929 -0.02208643 0 0.09517929 -0.025503213 
		-0.012751605 0.09517929 -0.02208643 -0.02208643 0.09517929 -0.012751605 -0.025503213 
		0.09517929 0 -0.02208643 0.09517929 0.012751605 -0.012751605 0.09517929 0.02208643 
		0 0.09517929 0.025503213 0.012751605 0.09517929 0.02208643 0.02208643 0.09517929 
		0.012751605 0.025503213 0.09517929 0 0 -0.098536856 0 0 0.098536856 0;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Ankle_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28789372444152833 -0.85969940185546878 -0.025499217510223389 ;
	setAttr ".sp" -type "double3" 0.28789372444152833 -0.85969940185546878 -0.025499217510223389 ;
createNode mesh -n "bouncy:R_Ankle_GEOShape" -p "bouncy:R_Ankle_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Ankle_GEOShapeOrig" -p "bouncy:R_Ankle_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336 
		0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669 
		0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994 
		0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336 
		0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334 
		0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663 
		0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988 
		0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669 
		0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657 
		0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25 
		0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331 
		0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657 
		0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669 
		0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331 
		0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657 
		0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334 
		0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325 
		0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667 
		0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331 
		0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331 
		0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667 
		0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663 
		0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663 
		0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667 
		0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994 
		0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994 
		0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667 
		0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325 
		0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325 
		0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667 
		0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657 
		0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657 
		0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166666 
		0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669 0 0.87500006 
		0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375 1 0.45833334 
		1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".pt[0:133]" -type "float3"  0.1990415 -0.7800132 -0.021692531 
		0.20837632 -0.77346504 -0.018905843 0.22112793 -0.76452011 -0.017885843 0.23387952 
		-0.75557518 -0.018905843 0.24321435 -0.74902701 -0.021692531 0.24663113 -0.74663025 
		-0.025499217 0.24321435 -0.74902701 -0.029305901 0.23387952 -0.75557518 -0.03209259 
		0.22112793 -0.76452011 -0.033112589 0.20837632 -0.77346504 -0.03209259 0.1990415 
		-0.7800132 -0.029305901 0.19562471 -0.78240997 -0.025499217 0.18536542 -0.80429429 
		-0.018145263 0.20339893 -0.79164422 -0.012761796 0.22803314 -0.77436399 -0.01079131 
		0.25266734 -0.75708371 -0.012761796 0.27070084 -0.74443364 -0.018145263 0.27730158 
		-0.73980349 -0.025499217 0.27070084 -0.74443364 -0.032853171 0.25266734 -0.75708371 
		-0.038236637 0.22803314 -0.77436399 -0.040207125 0.20339893 -0.79164422 -0.038236637 
		0.18536542 -0.80429429 -0.032853171 0.17876473 -0.8089245 -0.025499217 0.17867652 
		-0.83235115 -0.015099156 0.20417972 -0.81446129 -0.0074857841 0.23901777 -0.79002333 
		-0.0046990956 0.27385581 -0.7655853 -0.0074857841 0.29935902 -0.74769557 -0.015099156 
		0.30869386 -0.7411474 -0.025499217 0.29935902 -0.74769557 -0.035899278 0.27385581 
		-0.7655853 -0.04351265 0.23901777 -0.79002333 -0.046299338 0.20417972 -0.81446129 
		-0.04351265 0.17867652 -0.83235115 -0.035899278 0.1693417 -0.83889931 -0.025499217 
		0.17943056 -0.86227173 -0.012761794 0.21066549 -0.84036124 -0.0034373545 0.25333321 
		-0.810431 -2.4372112e-005 0.29600093 -0.78050071 -0.0034373545 0.32723582 -0.75859016 
		-0.012761794 0.33866864 -0.75057036 -0.025499217 0.32723582 -0.75859016 -0.03823664 
		0.29600093 -0.78050071 -0.047561079 0.25333321 -0.810431 -0.05097406 0.21066549 -0.84036124 
		-0.047561079 0.17943056 -0.86227173 -0.03823664 0.16799778 -0.87029159 -0.025499217 
		0.1875762 -0.89201707 -0.01129247 0.22241423 -0.86757904 -0.00089240918 0.27000389 
		-0.83419615 0.0029142774 0.31759351 -0.80081332 -0.00089240918 0.35243157 -0.77637529 
		-0.01129247 0.36518317 -0.76743042 -0.025499217 0.35243157 -0.77637529 -0.039705962 
		0.31759351 -0.80081332 -0.050106026 0.27000389 -0.83419615 -0.05391271 0.22241423 
		-0.86757904 -0.050106026 0.1875762 -0.89201707 -0.039705962 0.17482458 -0.900962 
		-0.025499217 0.20255831 -0.91955996 -0.01079131 0.2386253 -0.89425993 -2.4374958e-005 
		0.28789371 -0.85969943 0.0039165975 0.33716214 -0.82513887 -2.4374958e-005 0.37322915 
		-0.79983878 -0.01079131 0.38643059 -0.79057837 -0.025499217 0.37322915 -0.79983878 
		-0.040207125 0.33716214 -0.82513887 -0.05097406 0.28789371 -0.85969943 -0.054915033 
		0.2386253 -0.89425993 -0.05097406 0.20255831 -0.91955996 -0.040207125 0.18935686 
		-0.92882043 -0.025499217 0.22335589 -0.9430235 -0.01129247 0.25819391 -0.91858554 
		-0.00089240918 0.30578357 -0.88520265 0.0029142774 0.35337323 -0.85181969 -0.00089240918 
		0.38821125 -0.82738173 -0.01129247 0.40096286 -0.8184368 -0.025499217 0.38821125 
		-0.82738173 -0.039705962 0.35337323 -0.85181969 -0.050106026 0.30578357 -0.88520265 
		-0.05391271 0.25819391 -0.91858554 -0.050106026 0.22335589 -0.9430235 -0.039705962 
		0.21060427 -0.95196837 -0.025499217 0.24855159 -0.96080863 -0.012761794 0.27978653 
		-0.93889809 -0.0034373545 0.32245421 -0.90896779 -2.4372112e-005 0.36512196 -0.87903756 
		-0.0034373545 0.39635688 -0.85712701 -0.012761794 0.40778965 -0.84910721 -0.025499217 
		0.39635688 -0.85712701 -0.03823664 0.36512196 -0.87903756 -0.047561079 0.32245421 
		-0.90896779 -0.05097406 0.27978653 -0.93889809 -0.047561079 0.24855159 -0.96080863 
		-0.03823664 0.23711881 -0.96882844 -0.025499217 0.27642843 -0.97170329 -0.015099156 
		0.30193162 -0.95381349 -0.0074857841 0.33676967 -0.92937547 -0.0046990956 0.37160769 
		-0.90493751 -0.0074857841 0.39711094 -0.88704765 -0.015099156 0.40644574 -0.88049948 
		-0.025499217 0.39711094 -0.88704765 -0.035899278 0.37160769 -0.90493751 -0.04351265 
		0.33676967 -0.92937547 -0.046299338 0.30193162 -0.95381349 -0.04351265 0.27642843 
		-0.97170329 -0.035899278 0.2670936 -0.9782514 -0.025499217 0.30508658 -0.97496516 
		-0.018145263 0.32312009 -0.96231508 -0.012761796 0.3477543 -0.9450348 -0.01079131 
		0.37238848 -0.92775458 -0.012761796 0.39042202 -0.91510451 -0.018145263 0.39702269 
		-0.9104743 -0.025499217 0.39042202 -0.91510451 -0.032853171 0.37238848 -0.92775458 
		-0.038236637 0.3477543 -0.9450348 -0.040207125 0.32312009 -0.96231508 -0.038236637 
		0.30508658 -0.97496516 -0.032853171 0.29848588 -0.97959536 -0.025499217 0.33257309 
		-0.97037178 -0.021692531 0.34190792 -0.96382362 -0.018905843 0.3546595 -0.95487869 
		-0.017885843 0.36741111 -0.94593376 -0.018905843 0.37674594 -0.93938559 -0.021692531 
		0.38016275 -0.93698883 -0.025499217 0.37674594 -0.93938559 -0.029305901 0.36741111 
		-0.94593376 -0.03209259 0.3546595 -0.95487869 -0.033112589 0.34190792 -0.96382362 
		-0.03209259 0.33257309 -0.97037178 -0.029305901 0.32915631 -0.97276855 -0.025499217 
		0.21877268 -0.76116258 -0.025499217 0.35701478 -0.95823622 -0.025499217;
	setAttr -s 134 ".vt[0:133]"  0.02208643 -0.09517929 -0.012751605 0.012751605 
		-0.09517929 -0.02208643 0 -0.09517929 -0.025503213 -0.012751605 -0.09517929 -0.02208643 
		-0.02208643 -0.09517929 -0.012751605 -0.025503213 -0.09517929 0 -0.02208643 -0.09517929 
		0.012751605 -0.012751605 -0.09517929 0.02208643 0 -0.09517929 0.025503213 0.012751605 
		-0.09517929 0.02208643 0.02208643 -0.09517929 0.012751605 0.025503213 -0.09517929 
		0 0.042667709 -0.085335419 -0.024634214 0.024634214 -0.085335419 -0.042667709 0 -0.085335419 
		-0.049268428 -0.024634214 -0.085335419 -0.042667709 -0.042667709 -0.085335419 -0.024634214 
		-0.049268428 -0.085335419 0 -0.042667709 -0.085335419 0.024634214 -0.024634214 -0.085335419 
		0.042667709 0 -0.085335419 0.049268428 0.024634214 -0.085335419 0.042667709 0.042667709 
		-0.085335419 0.024634214 0.049268428 -0.085335419 0 0.06034125 -0.069676071 -0.034838036 
		0.034838036 -0.069676071 -0.06034125 0 -0.069676071 -0.069676071 -0.034838036 -0.069676071 
		-0.06034125 -0.06034125 -0.069676071 -0.034838036 -0.069676071 -0.069676071 0 -0.06034125 
		-0.069676071 0.034838036 -0.034838036 -0.069676071 0.06034125 0 -0.069676071 0.069676071 
		0.034838036 -0.069676071 0.06034125 0.06034125 -0.069676071 0.034838036 0.069676071 
		-0.069676071 0 0.073902644 -0.049268421 -0.042667713 0.042667713 -0.049268421 -0.073902644 
		0 -0.049268421 -0.085335426 -0.042667713 -0.049268421 -0.073902644 -0.073902644 -0.049268421 
		-0.042667713 -0.085335426 -0.049268421 0 -0.073902644 -0.049268421 0.042667713 -0.042667713 
		-0.049268421 0.073902644 0 -0.049268421 0.085335426 0.042667713 -0.049268421 0.073902644 
		0.073902644 -0.049268421 0.042667713 0.085335426 -0.049268421 0 0.08242768 -0.025503218 
		-0.047589645 0.047589645 -0.025503218 -0.08242768 0 -0.025503218 -0.09517929 -0.047589645 
		-0.025503218 -0.08242768 -0.08242768 -0.025503218 -0.047589645 -0.09517929 -0.025503218 
		0 -0.08242768 -0.025503218 0.047589645 -0.047589645 -0.025503218 0.08242768 0 -0.025503218 
		0.09517929 0.047589645 -0.025503218 0.08242768 0.08242768 -0.025503218 0.047589645 
		0.09517929 -0.025503218 0 0.085335419 0 -0.049268428 0.049268428 0 -0.085335419 0 
		0 -0.098536856 -0.049268428 0 -0.085335419 -0.085335419 0 -0.049268428 -0.098536856 
		0 0 -0.085335419 0 0.049268428 -0.049268428 0 0.085335419 0 0 0.098536856 0.049268428 
		0 0.085335419 0.085335419 0 0.049268428 0.098536856 0 0 0.08242768 0.025503218 -0.047589645 
		0.047589645 0.025503218 -0.08242768 0 0.025503218 -0.09517929 -0.047589645 0.025503218 
		-0.08242768 -0.08242768 0.025503218 -0.047589645 -0.09517929 0.025503218 0 -0.08242768 
		0.025503218 0.047589645 -0.047589645 0.025503218 0.08242768 0 0.025503218 0.09517929 
		0.047589645 0.025503218 0.08242768 0.08242768 0.025503218 0.047589645 0.09517929 
		0.025503218 0 0.073902644 0.049268421 -0.042667713 0.042667713 0.049268421 -0.073902644 
		0 0.049268421 -0.085335426 -0.042667713 0.049268421 -0.073902644 -0.073902644 0.049268421 
		-0.042667713 -0.085335426 0.049268421 0 -0.073902644 0.049268421 0.042667713 -0.042667713 
		0.049268421 0.073902644 0 0.049268421 0.085335426 0.042667713 0.049268421 0.073902644 
		0.073902644 0.049268421 0.042667713 0.085335426 0.049268421 0 0.06034125 0.069676071 
		-0.034838036 0.034838036 0.069676071 -0.06034125 0 0.069676071 -0.069676071 -0.034838036 
		0.069676071 -0.06034125 -0.06034125 0.069676071 -0.034838036 -0.069676071 0.069676071 
		0 -0.06034125 0.069676071 0.034838036 -0.034838036 0.069676071 0.06034125 0 0.069676071 
		0.069676071 0.034838036 0.069676071 0.06034125 0.06034125 0.069676071 0.034838036 
		0.069676071 0.069676071 0 0.042667709 0.085335419 -0.024634214 0.024634214 0.085335419 
		-0.042667709 0 0.085335419 -0.049268428 -0.024634214 0.085335419 -0.042667709 -0.042667709 
		0.085335419 -0.024634214 -0.049268428 0.085335419 0 -0.042667709 0.085335419 0.024634214 
		-0.024634214 0.085335419 0.042667709 0 0.085335419 0.049268428 0.024634214 0.085335419 
		0.042667709 0.042667709 0.085335419 0.024634214 0.049268428 0.085335419 0 0.02208643 
		0.09517929 -0.012751605 0.012751605 0.09517929 -0.02208643 0 0.09517929 -0.025503213 
		-0.012751605 0.09517929 -0.02208643 -0.02208643 0.09517929 -0.012751605 -0.025503213 
		0.09517929 0 -0.02208643 0.09517929 0.012751605 -0.012751605 0.09517929 0.02208643 
		0 0.09517929 0.025503213 0.012751605 0.09517929 0.02208643 0.02208643 0.09517929 
		0.012751605 0.025503213 0.09517929 0 0 -0.098536856 0 0 0.098536856 0;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 0 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 22 0 22 23 
		0 23 12 0 24 25 0 25 26 0 26 27 
		0 27 28 0 28 29 0 29 30 0 30 31 
		0 31 32 0 32 33 0 33 34 0 34 35 
		0 35 24 0 36 37 0 37 38 0 38 39 
		0 39 40 0 40 41 0 41 42 0 42 43 
		0 43 44 0 44 45 0 45 46 0 46 47 
		0 47 36 0 48 49 0 49 50 0 50 51 
		0 51 52 0 52 53 0 53 54 0 54 55 
		0 55 56 0 56 57 0 57 58 0 58 59 
		0 59 48 0 60 61 0 61 62 0 62 63 
		0 63 64 0 64 65 0 65 66 0 66 67 
		0 67 68 0 68 69 0 69 70 0 70 71 
		0 71 60 0 72 73 0 73 74 0 74 75 
		0 75 76 0 76 77 0 77 78 0 78 79 
		0 79 80 0 80 81 0 81 82 0 82 83 
		0 83 72 0 84 85 0 85 86 0 86 87 
		0 87 88 0 88 89 0 89 90 0 90 91 
		0 91 92 0 92 93 0 93 94 0 94 95 
		0 95 84 0 96 97 0 97 98 0 98 99 
		0 99 100 0 100 101 0 101 102 0 102 103 
		0 103 104 0 104 105 0 105 106 0 106 107 
		0 107 96 0 108 109 0 109 110 0 110 111 
		0 111 112 0 112 113 0 113 114 0 114 115 
		0 115 116 0 116 117 0 117 118 0 118 119 
		0 119 108 0 120 121 0 121 122 0 122 123 
		0 123 124 0 124 125 0 125 126 0 126 127 
		0 127 128 0 128 129 0 129 130 0 130 131 
		0 131 120 0 0 12 0 1 13 0 2 14 
		0 3 15 0 4 16 0 5 17 0 6 18 
		0 7 19 0 8 20 0 9 21 0 10 22 
		0 11 23 0 12 24 0 13 25 0 14 26 
		0 15 27 0 16 28 0 17 29 0 18 30 
		0 19 31 0 20 32 0 21 33 0 22 34 
		0 23 35 0 24 36 0 25 37 0 26 38 
		0 27 39 0 28 40 0 29 41 0 30 42 
		0 31 43 0 32 44 0 33 45 0;
	setAttr ".ed[166:275]" 34 46 0 35 47 0 36 48 
		0 37 49 0 38 50 0 39 51 0 40 52 
		0 41 53 0 42 54 0 43 55 0 44 56 
		0 45 57 0 46 58 0 47 59 0 48 60 
		0 49 61 0 50 62 0 51 63 0 52 64 
		0 53 65 0 54 66 0 55 67 0 56 68 
		0 57 69 0 58 70 0 59 71 0 60 72 
		0 61 73 0 62 74 0 63 75 0 64 76 
		0 65 77 0 66 78 0 67 79 0 68 80 
		0 69 81 0 70 82 0 71 83 0 72 84 
		0 73 85 0 74 86 0 75 87 0 76 88 
		0 77 89 0 78 90 0 79 91 0 80 92 
		0 81 93 0 82 94 0 83 95 0 84 96 
		0 85 97 0 86 98 0 87 99 0 88 100 
		0 89 101 0 90 102 0 91 103 0 92 104 
		0 93 105 0 94 106 0 95 107 0 96 108 
		0 97 109 0 98 110 0 99 111 0 100 112 
		0 101 113 0 102 114 0 103 115 0 104 116 
		0 105 117 0 106 118 0 107 119 0 108 120 
		0 109 121 0 110 122 0 111 123 0 112 124 
		0 113 125 0 114 126 0 115 127 0 116 128 
		0 117 129 0 118 130 0 119 131 0 132 0 
		0 132 1 0 132 2 0 132 3 0 132 4 
		0 132 5 0 132 6 0 132 7 0 132 8 
		0 132 9 0 132 10 0 132 11 0 120 133 
		0 121 133 0 122 133 0 123 133 0 124 133 
		0 125 133 0 126 133 0 127 133 0 128 133 
		0 129 133 0 130 133 0 131 133 0;
	setAttr -s 144 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133 
		mu 0 4 0 1 14 13 
		f 4 1 134 -14 -134 
		mu 0 4 1 2 15 14 
		f 4 2 135 -15 -135 
		mu 0 4 2 3 16 15 
		f 4 3 136 -16 -136 
		mu 0 4 3 4 17 16 
		f 4 4 137 -17 -137 
		mu 0 4 4 5 18 17 
		f 4 5 138 -18 -138 
		mu 0 4 5 6 19 18 
		f 4 6 139 -19 -139 
		mu 0 4 6 7 20 19 
		f 4 7 140 -20 -140 
		mu 0 4 7 8 21 20 
		f 4 8 141 -21 -141 
		mu 0 4 8 9 22 21 
		f 4 9 142 -22 -142 
		mu 0 4 9 10 23 22 
		f 4 10 143 -23 -143 
		mu 0 4 10 11 24 23 
		f 4 11 132 -24 -144 
		mu 0 4 11 12 25 24 
		f 4 12 145 -25 -145 
		mu 0 4 13 14 27 26 
		f 4 13 146 -26 -146 
		mu 0 4 14 15 28 27 
		f 4 14 147 -27 -147 
		mu 0 4 15 16 29 28 
		f 4 15 148 -28 -148 
		mu 0 4 16 17 30 29 
		f 4 16 149 -29 -149 
		mu 0 4 17 18 31 30 
		f 4 17 150 -30 -150 
		mu 0 4 18 19 32 31 
		f 4 18 151 -31 -151 
		mu 0 4 19 20 33 32 
		f 4 19 152 -32 -152 
		mu 0 4 20 21 34 33 
		f 4 20 153 -33 -153 
		mu 0 4 21 22 35 34 
		f 4 21 154 -34 -154 
		mu 0 4 22 23 36 35 
		f 4 22 155 -35 -155 
		mu 0 4 23 24 37 36 
		f 4 23 144 -36 -156 
		mu 0 4 24 25 38 37 
		f 4 24 157 -37 -157 
		mu 0 4 26 27 40 39 
		f 4 25 158 -38 -158 
		mu 0 4 27 28 41 40 
		f 4 26 159 -39 -159 
		mu 0 4 28 29 42 41 
		f 4 27 160 -40 -160 
		mu 0 4 29 30 43 42 
		f 4 28 161 -41 -161 
		mu 0 4 30 31 44 43 
		f 4 29 162 -42 -162 
		mu 0 4 31 32 45 44 
		f 4 30 163 -43 -163 
		mu 0 4 32 33 46 45 
		f 4 31 164 -44 -164 
		mu 0 4 33 34 47 46 
		f 4 32 165 -45 -165 
		mu 0 4 34 35 48 47 
		f 4 33 166 -46 -166 
		mu 0 4 35 36 49 48 
		f 4 34 167 -47 -167 
		mu 0 4 36 37 50 49 
		f 4 35 156 -48 -168 
		mu 0 4 37 38 51 50 
		f 4 36 169 -49 -169 
		mu 0 4 39 40 53 52 
		f 4 37 170 -50 -170 
		mu 0 4 40 41 54 53 
		f 4 38 171 -51 -171 
		mu 0 4 41 42 55 54 
		f 4 39 172 -52 -172 
		mu 0 4 42 43 56 55 
		f 4 40 173 -53 -173 
		mu 0 4 43 44 57 56 
		f 4 41 174 -54 -174 
		mu 0 4 44 45 58 57 
		f 4 42 175 -55 -175 
		mu 0 4 45 46 59 58 
		f 4 43 176 -56 -176 
		mu 0 4 46 47 60 59 
		f 4 44 177 -57 -177 
		mu 0 4 47 48 61 60 
		f 4 45 178 -58 -178 
		mu 0 4 48 49 62 61 
		f 4 46 179 -59 -179 
		mu 0 4 49 50 63 62 
		f 4 47 168 -60 -180 
		mu 0 4 50 51 64 63 
		f 4 48 181 -61 -181 
		mu 0 4 52 53 66 65 
		f 4 49 182 -62 -182 
		mu 0 4 53 54 67 66 
		f 4 50 183 -63 -183 
		mu 0 4 54 55 68 67 
		f 4 51 184 -64 -184 
		mu 0 4 55 56 69 68 
		f 4 52 185 -65 -185 
		mu 0 4 56 57 70 69 
		f 4 53 186 -66 -186 
		mu 0 4 57 58 71 70 
		f 4 54 187 -67 -187 
		mu 0 4 58 59 72 71 
		f 4 55 188 -68 -188 
		mu 0 4 59 60 73 72 
		f 4 56 189 -69 -189 
		mu 0 4 60 61 74 73 
		f 4 57 190 -70 -190 
		mu 0 4 61 62 75 74 
		f 4 58 191 -71 -191 
		mu 0 4 62 63 76 75 
		f 4 59 180 -72 -192 
		mu 0 4 63 64 77 76 
		f 4 60 193 -73 -193 
		mu 0 4 65 66 79 78 
		f 4 61 194 -74 -194 
		mu 0 4 66 67 80 79 
		f 4 62 195 -75 -195 
		mu 0 4 67 68 81 80 
		f 4 63 196 -76 -196 
		mu 0 4 68 69 82 81 
		f 4 64 197 -77 -197 
		mu 0 4 69 70 83 82 
		f 4 65 198 -78 -198 
		mu 0 4 70 71 84 83 
		f 4 66 199 -79 -199 
		mu 0 4 71 72 85 84 
		f 4 67 200 -80 -200 
		mu 0 4 72 73 86 85 
		f 4 68 201 -81 -201 
		mu 0 4 73 74 87 86 
		f 4 69 202 -82 -202 
		mu 0 4 74 75 88 87 
		f 4 70 203 -83 -203 
		mu 0 4 75 76 89 88 
		f 4 71 192 -84 -204 
		mu 0 4 76 77 90 89 
		f 4 72 205 -85 -205 
		mu 0 4 78 79 92 91 
		f 4 73 206 -86 -206 
		mu 0 4 79 80 93 92 
		f 4 74 207 -87 -207 
		mu 0 4 80 81 94 93 
		f 4 75 208 -88 -208 
		mu 0 4 81 82 95 94 
		f 4 76 209 -89 -209 
		mu 0 4 82 83 96 95 
		f 4 77 210 -90 -210 
		mu 0 4 83 84 97 96 
		f 4 78 211 -91 -211 
		mu 0 4 84 85 98 97 
		f 4 79 212 -92 -212 
		mu 0 4 85 86 99 98 
		f 4 80 213 -93 -213 
		mu 0 4 86 87 100 99 
		f 4 81 214 -94 -214 
		mu 0 4 87 88 101 100 
		f 4 82 215 -95 -215 
		mu 0 4 88 89 102 101 
		f 4 83 204 -96 -216 
		mu 0 4 89 90 103 102 
		f 4 84 217 -97 -217 
		mu 0 4 91 92 105 104 
		f 4 85 218 -98 -218 
		mu 0 4 92 93 106 105 
		f 4 86 219 -99 -219 
		mu 0 4 93 94 107 106 
		f 4 87 220 -100 -220 
		mu 0 4 94 95 108 107 
		f 4 88 221 -101 -221 
		mu 0 4 95 96 109 108 
		f 4 89 222 -102 -222 
		mu 0 4 96 97 110 109 
		f 4 90 223 -103 -223 
		mu 0 4 97 98 111 110 
		f 4 91 224 -104 -224 
		mu 0 4 98 99 112 111 
		f 4 92 225 -105 -225 
		mu 0 4 99 100 113 112 
		f 4 93 226 -106 -226 
		mu 0 4 100 101 114 113 
		f 4 94 227 -107 -227 
		mu 0 4 101 102 115 114 
		f 4 95 216 -108 -228 
		mu 0 4 102 103 116 115 
		f 4 96 229 -109 -229 
		mu 0 4 104 105 118 117 
		f 4 97 230 -110 -230 
		mu 0 4 105 106 119 118 
		f 4 98 231 -111 -231 
		mu 0 4 106 107 120 119 
		f 4 99 232 -112 -232 
		mu 0 4 107 108 121 120 
		f 4 100 233 -113 -233 
		mu 0 4 108 109 122 121 
		f 4 101 234 -114 -234 
		mu 0 4 109 110 123 122 
		f 4 102 235 -115 -235 
		mu 0 4 110 111 124 123 
		f 4 103 236 -116 -236 
		mu 0 4 111 112 125 124 
		f 4 104 237 -117 -237 
		mu 0 4 112 113 126 125 
		f 4 105 238 -118 -238 
		mu 0 4 113 114 127 126 
		f 4 106 239 -119 -239 
		mu 0 4 114 115 128 127 
		f 4 107 228 -120 -240 
		mu 0 4 115 116 129 128 
		f 4 108 241 -121 -241 
		mu 0 4 117 118 131 130 
		f 4 109 242 -122 -242 
		mu 0 4 118 119 132 131 
		f 4 110 243 -123 -243 
		mu 0 4 119 120 133 132 
		f 4 111 244 -124 -244 
		mu 0 4 120 121 134 133 
		f 4 112 245 -125 -245 
		mu 0 4 121 122 135 134 
		f 4 113 246 -126 -246 
		mu 0 4 122 123 136 135 
		f 4 114 247 -127 -247 
		mu 0 4 123 124 137 136 
		f 4 115 248 -128 -248 
		mu 0 4 124 125 138 137 
		f 4 116 249 -129 -249 
		mu 0 4 125 126 139 138 
		f 4 117 250 -130 -250 
		mu 0 4 126 127 140 139 
		f 4 118 251 -131 -251 
		mu 0 4 127 128 141 140 
		f 4 119 240 -132 -252 
		mu 0 4 128 129 142 141 
		f 3 -1 -253 253 
		mu 0 3 1 0 143 
		f 3 -2 -254 254 
		mu 0 3 2 1 144 
		f 3 -3 -255 255 
		mu 0 3 3 2 145 
		f 3 -4 -256 256 
		mu 0 3 4 3 146 
		f 3 -5 -257 257 
		mu 0 3 5 4 147 
		f 3 -6 -258 258 
		mu 0 3 6 5 148 
		f 3 -7 -259 259 
		mu 0 3 7 6 149 
		f 3 -8 -260 260 
		mu 0 3 8 7 150 
		f 3 -9 -261 261 
		mu 0 3 9 8 151 
		f 3 -10 -262 262 
		mu 0 3 10 9 152 
		f 3 -11 -263 263 
		mu 0 3 11 10 153 
		f 3 -12 -264 252 
		mu 0 3 12 11 154 
		f 3 120 265 -265 
		mu 0 3 130 131 155 
		f 3 121 266 -266 
		mu 0 3 131 132 156 
		f 3 122 267 -267 
		mu 0 3 132 133 157 
		f 3 123 268 -268 
		mu 0 3 133 134 158 
		f 3 124 269 -269 
		mu 0 3 134 135 159 
		f 3 125 270 -270 
		mu 0 3 135 136 160 
		f 3 126 271 -271 
		mu 0 3 136 137 161 
		f 3 127 272 -272 
		mu 0 3 137 138 162 
		f 3 128 273 -273 
		mu 0 3 138 139 163 
		f 3 129 274 -274 
		mu 0 3 139 140 164 
		f 3 130 275 -275 
		mu 0 3 140 141 165 
		f 3 131 264 -276 
		mu 0 3 141 142 166 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Ball_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.28690192222595218 -0.96742717742919926 0.26669853210449218 ;
	setAttr ".sp" -type "double3" 0.28690192222595218 -0.96742717742919926 0.26669853210449218 ;
createNode mesh -n "bouncy:R_Ball_GEOShape" -p "bouncy:R_Ball_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Ball_GEOShapeOrig" -p "bouncy:R_Ball_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.59742022 0.034088783 
		0.46523106 0.0039175153 0.3592236 0.088455707 0.35922363 0.22404437 0.46523112 0.30858248 
		0.59742028 0.27841115 0.65625 0.15625 0.375 0.3125 0.4107143 0.3125 0.4464286 0.3125 
		0.4821429 0.3125 0.51785719 0.3125 0.55357146 0.3125 0.58928573 0.3125 0.625 0.3125 
		0.375 0.68843985 0.4107143 0.68843985 0.4464286 0.68843985 0.4821429 0.68843985 0.51785719 
		0.68843985 0.55357146 0.68843985 0.58928573 0.68843985 0.625 0.68843985 0.59742022 
		0.72158879 0.46523106 0.69141752 0.3592236 0.77595568 0.35922363 0.91154438 0.46523112 
		0.99608248 0.59742028 0.96591115 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0.21129698 -0.99619073 0.2572768 0.21129698 
		-0.97897881 0.23825668 0.21129698 -0.95337683 0.2398546 0.21129698 -0.93866366 0.2608673 
		0.21129698 -0.94591844 0.2854718 0.21129698 -0.96967834 0.29514039 0.21129698 -0.9920516 
		0.28259245 0.36250687 -0.99619073 0.2572768 0.36250687 -0.97897881 0.23825668 0.36250687 
		-0.95337683 0.2398546 0.36250687 -0.93866366 0.2608673 0.36250687 -0.94591844 0.2854718 
		0.36250687 -0.96967834 0.29514039 0.36250687 -0.9920516 0.28259245 0.21129698 -0.96783692 
		0.26563716 0.36250687 -0.96783692 0.26563716;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 0 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 7 0 
		0 7 0 1 8 0 2 9 0 3 10 0 
		4 11 0 5 12 0 6 13 0 14 0 1 
		14 1 1 14 2 1 14 3 1 14 4 1 
		14 5 1 14 6 1 7 15 1 8 15 1 
		9 15 1 10 15 1 11 15 1 12 15 1 
		13 15 1;
	setAttr -s 21 ".fc[0:20]" -type "polyFaces" 
		f 4 0 15 -8 -15 
		mu 0 4 7 8 16 15 
		f 4 1 16 -9 -16 
		mu 0 4 8 9 17 16 
		f 4 2 17 -10 -17 
		mu 0 4 9 10 18 17 
		f 4 3 18 -11 -18 
		mu 0 4 10 11 19 18 
		f 4 4 19 -12 -19 
		mu 0 4 11 12 20 19 
		f 4 5 20 -13 -20 
		mu 0 4 12 13 21 20 
		f 4 6 14 -14 -21 
		mu 0 4 13 14 22 21 
		f 3 -1 -22 22 
		mu 0 3 1 0 30 
		f 3 -2 -23 23 
		mu 0 3 2 1 30 
		f 3 -3 -24 24 
		mu 0 3 3 2 30 
		f 3 -4 -25 25 
		mu 0 3 4 3 30 
		f 3 -5 -26 26 
		mu 0 3 5 4 30 
		f 3 -6 -27 27 
		mu 0 3 6 5 30 
		f 3 -7 -28 21 
		mu 0 3 0 6 30 
		f 3 7 29 -29 
		mu 0 3 28 27 31 
		f 3 8 30 -30 
		mu 0 3 27 26 31 
		f 3 9 31 -31 
		mu 0 3 26 25 31 
		f 3 10 32 -32 
		mu 0 3 25 24 31 
		f 3 11 33 -33 
		mu 0 3 24 23 31 
		f 3 12 34 -34 
		mu 0 3 23 29 31 
		f 3 13 28 -35 
		mu 0 3 29 28 31 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Foot_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.29119953155517581 -0.93431041717529295 0.069714512825012204 ;
	setAttr ".sp" -type "double3" 0.29119953155517581 -0.93431041717529295 0.069714512825012204 ;
createNode mesh -n "bouncy:R_Foot_GEOShape" -p "bouncy:R_Foot_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Foot_GEOShapeOrig" -p "bouncy:R_Foot_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.20902109 0 0.375 0.83402109 0.20902109 0.25 0.375 
		0.41597891 0.625 0.41597891 0.79097891 0.25 0.625 0.83402109 0.79097891 0 0.375 0.13229093 
		0.20902109 0.13229093 0.125 0.13229093 0.375 0.61770904 0.625 0.61770904 0.875 0.13229093 
		0.79097891 0.13229093 0.625 0.13229093 0.2908107 0.13229093 0.2908107 0 0.375 0.9158107 
		0.625 0.9158107 0.7091893 0 0.7091893 0.13229093 0.625 0.3341893 0.7091893 0.25 0.2908107 
		0.25 0.375 0.3341893 0.52733266 0.41597891 0.52733266 0.5 0.52733266 0.61770904 0.52733266 
		0.75 0.52733266 0.83402109 0.52733266 0.9158107 0.52733266 0 0.52733266 1 0.52733266 
		0.13229093 0.52733266 0.25 0.52733266 0.3341893;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.21066643 -0.93784231 0.25880635 0.21066643 
		-0.99936318 0.25880635 0.36333182 -0.93784231 0.25880635 0.36333182 -0.99936318 0.25880635 
		0.34979326 -0.884556 -0.082119361 0.36333182 -0.99936318 -0.085988857 0.22420503 
		-0.884556 -0.082119361 0.21066643 -0.99936318 -0.085988857 0.20403606 -0.88699687 
		0.02989142 0.37836295 -0.88699687 0.02989142 0.37836295 -0.99936318 0.02989142 0.20403606 
		-0.99936318 0.02989142 0.29145142 -0.93784231 0.25880635 0.29145142 -0.86925769 0.043445539 
		0.29066175 -0.884556 -0.10503375 0.29145142 -0.99936318 -0.10890324 0.29145142 -0.99936318 
		0.02989142 0.29145142 -0.99936318 0.25880635 0.29875994 -0.91205198 0.15431692 0.21581833 
		-0.91205198 0.14269407 0.21581833 -0.99936318 0.14269407 0.29875994 -0.99936318 0.14269407 
		0.3778533 -0.99936318 0.14269407 0.3778533 -0.91205198 0.14269407 0.38313976 -0.95489931 
		0.027324377 0.36725232 -0.95489931 -0.095157519 0.2912769 -0.95489931 -0.11937732 
		0.20588963 -0.95489931 -0.095157519 0.1992593 -0.95489931 0.027324377 0.21133506 
		-0.96524519 0.14655332 0.20588963 -0.97589469 0.25039959 0.2912769 -0.97589469 0.25039959 
		0.36725232 -0.97589469 0.25039959 0.38260105 -0.96524519 0.14655332;
	setAttr -s 64 ".ed[0:63]"  0 30 0 2 32 0 
		4 25 0 6 27 0 0 12 0 1 17 0 
		2 23 0 3 22 0 4 14 0 5 15 0 
		6 8 0 7 11 0 8 19 0 9 4 0 
		8 13 1 10 5 0 9 24 1 11 20 0 
		10 16 1 11 28 1 12 2 0 13 9 1 
		12 18 1 14 6 0 13 14 1 15 7 0 
		14 26 1 16 11 1 15 16 1 17 3 0 
		16 21 1 17 31 1 18 13 1 19 0 0 
		18 19 1 20 1 0 19 29 1 21 17 1 
		20 21 1 22 10 0 21 22 1 23 9 0 
		22 33 1 23 18 1 24 10 1 25 5 0 
		24 25 1 26 15 1 25 26 1 27 7 0 
		26 27 1 28 8 1 27 28 1 29 20 1 
		28 29 1 30 1 0 29 30 1 31 12 1 
		30 31 1 32 3 0 31 32 1 33 23 1 
		32 33 1 33 24 1;
	setAttr -s 32 ".fc[0:31]" -type "polyFaces" 
		f 4 0 58 57 -5 
		mu 0 4 0 46 48 22 
		f 4 16 46 -3 -14 
		mu 0 4 17 40 41 4 
		f 4 26 50 -4 -24 
		mu 0 4 25 42 43 6 
		f 4 3 52 51 -11 
		mu 0 4 6 43 44 15 
		f 4 -12 -26 28 27 
		mu 0 4 21 10 27 28 
		f 4 10 14 24 23 
		mu 0 4 12 14 23 24 
		f 4 33 4 22 34 
		mu 0 4 31 0 22 30 
		f 4 1 62 61 -7 
		mu 0 4 2 49 50 39 
		f 4 -36 38 37 -6 
		mu 0 4 1 34 35 29 
		f 4 36 56 -1 -34 
		mu 0 4 32 45 47 8 
		f 4 43 -23 20 6 
		mu 0 4 38 30 22 2 
		f 4 -25 21 13 8 
		mu 0 4 24 23 16 13 
		f 4 2 48 -27 -9 
		mu 0 4 4 41 42 25 
		f 4 -29 -10 -16 18 
		mu 0 4 28 27 11 19 
		f 4 -38 40 -8 -30 
		mu 0 4 29 35 37 3 
		f 4 -58 60 -2 -21 
		mu 0 4 22 48 49 2 
		f 4 12 -35 32 -15 
		mu 0 4 14 31 30 23 
		f 4 -52 54 -37 -13 
		mu 0 4 15 44 45 32 
		f 4 -39 -18 -28 30 
		mu 0 4 35 34 21 28 
		f 4 -41 -31 -19 -40 
		mu 0 4 37 35 28 19 
		f 4 -62 63 -17 -42 
		mu 0 4 39 50 40 17 
		f 4 -33 -44 41 -22 
		mu 0 4 23 30 38 16 
		f 4 44 15 -46 -47 
		mu 0 4 40 18 5 41 
		f 4 -49 45 9 -48 
		mu 0 4 42 41 5 26 
		f 4 -51 47 25 -50 
		mu 0 4 43 42 26 7 
		f 4 -53 49 11 19 
		mu 0 4 44 43 7 20 
		f 4 -55 -20 17 -54 
		mu 0 4 45 44 20 33 
		f 4 -57 53 35 -56 
		mu 0 4 47 45 33 9 
		f 4 -59 55 5 31 
		mu 0 4 48 46 1 29 
		f 4 -61 -32 29 -60 
		mu 0 4 49 48 29 3 
		f 4 -63 59 7 42 
		mu 0 4 50 49 3 36 
		f 4 -64 -43 39 -45 
		mu 0 4 40 50 36 18 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode transform -n "bouncy:R_Toes_GEO" -p "bouncy:R_Leg_GRP";
	setAttr ".rp" -type "double3" 0.2809657669067383 -0.97072151184082034 0.33519322395324708 ;
	setAttr ".sp" -type "double3" 0.2809657669067383 -0.97072151184082034 0.33519322395324708 ;
createNode mesh -n "bouncy:R_Toes_GEOShape" -p "bouncy:R_Toes_GEO";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode mesh -n "bouncy:R_Toes_GEOShapeOrig" -p "bouncy:R_Toes_GEO";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.50161535 0.25 0.50161535 0.5 0.50161535 0.75 0.50161535 
		0 0.50161535 1 0.625 0.44247943 0.81747949 0.25 0.50161535 0.44247943 0.18252057 
		0.25 0.375 0.44247943 0.18252057 0 0.375 0.80752057 0.50161535 0.80752057 0.625 0.80752057 
		0.81747949 0 0.375 0.12362754 0.18252057 0.12362754 0.125 0.12362754 0.375 0.62637246 
		0.50161535 0.62637246 0.625 0.62637246 0.875 0.12362754 0.81747949 0.12362754 0.625 
		0.12362754 0.50161535 0.12362754;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  0.1985997 -0.99936318 0.34295142 0.36333182 
		-0.99936318 0.36927226 0.1985997 -0.97534478 0.34295142 0.36333182 -0.97534478 0.36927226 
		0.21066643 -0.94207984 0.2769407 0.36333182 -0.94207984 0.2769407 0.21066643 -0.99936318 
		0.2769407 0.36333182 -0.99936318 0.2769407 0.26929396 -0.97534478 0.39344573 0.28798553 
		-0.94207984 0.2769407 0.28798553 -0.99936318 0.2769407 0.26929396 -0.99936318 0.39344573 
		0.36333182 -0.94647098 0.29818457 0.28368491 -0.94647098 0.30374646 0.20789009 -0.94647098 
		0.29212859 0.20789009 -0.99936318 0.29212859 0.28368491 -0.99936318 0.30374646 0.36333182 
		-0.99936318 0.29818457 0.19420029 -0.98792511 0.34336579 0.2039869 -0.97288412 0.28982839 
		0.20691155 -0.97059661 0.27382925 0.28836051 -0.97059661 0.27382925 0.36773124 -0.97059661 
		0.27382925 0.36773124 -0.97288412 0.29620782 0.36773124 -0.98792511 0.37109253 0.26867059 
		-0.98792511 0.39655721;
	setAttr -s 48 ".ed[0:47]"  0 11 0 2 8 0 
		4 9 0 6 10 0 0 18 0 1 24 0 
		2 14 0 3 12 0 4 20 0 5 22 0 
		6 15 0 7 17 0 8 3 0 9 5 0 
		8 13 1 10 7 0 9 21 1 11 1 0 
		10 16 1 11 25 1 12 5 0 13 9 1 
		12 13 1 14 4 0 13 14 1 15 0 0 
		14 19 1 16 11 1 15 16 1 17 1 0 
		16 17 1 17 23 1 18 2 0 19 15 1 
		18 19 1 20 6 0 19 20 1 21 10 1 
		20 21 1 22 7 0 21 22 1 23 12 1 
		22 23 1 24 3 0 23 24 1 25 8 1 
		24 25 1 25 18 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 47 -5 
		mu 0 4 0 17 38 29 
		f 4 1 14 24 -7 
		mu 0 4 2 14 21 23 
		f 4 38 37 -4 -36 
		mu 0 4 32 33 16 6 
		f 4 28 27 -1 -26 
		mu 0 4 25 26 18 8 
		f 4 -30 31 44 -6 
		mu 0 4 1 28 36 37 
		f 4 25 4 34 33 
		mu 0 4 24 0 29 30 
		f 4 12 7 22 -15 
		mu 0 4 14 3 19 21 
		f 4 -38 40 39 -16 
		mu 0 4 16 33 34 7 
		f 4 -28 30 29 -18 
		mu 0 4 18 26 27 9 
		f 4 -20 17 5 46 
		mu 0 4 38 17 1 37 
		f 4 -23 20 -14 -22 
		mu 0 4 21 19 5 15 
		f 4 -25 21 -3 -24 
		mu 0 4 23 21 15 4 
		f 4 10 -34 36 35 
		mu 0 4 12 24 30 31 
		f 4 3 18 -29 -11 
		mu 0 4 6 16 26 25 
		f 4 -31 -19 15 11 
		mu 0 4 27 26 16 7 
		f 4 -32 -12 -40 42 
		mu 0 4 36 28 10 35 
		f 4 -35 32 6 26 
		mu 0 4 30 29 2 22 
		f 4 -37 -27 23 8 
		mu 0 4 31 30 22 13 
		f 4 2 16 -39 -9 
		mu 0 4 4 15 33 32 
		f 4 -41 -17 13 9 
		mu 0 4 34 33 15 5 
		f 4 -42 -43 -10 -21 
		mu 0 4 20 36 35 11 
		f 4 -45 41 -8 -44 
		mu 0 4 37 36 20 3 
		f 4 -46 -47 43 -13 
		mu 0 4 14 38 37 3 
		f 4 -48 45 -2 -33 
		mu 0 4 29 38 14 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".bw" 10;
	setAttr ".ns" 0.3032;
createNode lightLinker -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "bouncy_008_animation_readyRN";
	setAttr -s 3 ".fn";
	setAttr ".fn[0]" -type "string" "F:/Steven Murdoch/My Documents/Class and Committee/2010/HDMMD312 - New Technologies/01_Teaching_Resources/Character Animation/3d_Development//assets/bouncy_009_animation_ready.ma";
	setAttr ".fn[1]" -type "string" "F:/Steven Murdoch/My Documents/Class and Committee/2010/HDMMD312 - New Technologies/01_Teaching_Resources/Character Animation/3d_Development//assets/bouncy_008_animation_ready.ma";
	setAttr ".fn[2]" -type "string" "F:/Steven Murdoch/My Documents/Class and Committee/2010/HDMMD312 - New Technologies/01_Teaching_Resources/Character Animation/3d_Development//assets/bouncy_001_modeled.ma";
	setAttr ".ed" -type "dataReferenceEdits" 
		"bouncy_008_animation_readyRN"
		"bouncy_008_animation_readyRN" 1
		2 "bouncy:Bouncy" "attributeAliasList" " -type \"attributeAlias\" bouncy:R_Elbow_CTRL_rotateZ"
		
		"bouncy_008_animation_readyRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.041667\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                -constrainDrag 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.041667\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 180 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lightLinker -n "bouncy:lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "bouncy:layerManager";
	setAttr ".cdl" 7;
	setAttr -s 8 ".dli[1:7]"  1 2 3 4 5 6 7;
	setAttr -s 5 ".dli";
createNode displayLayer -n "bouncy:defaultLayer";
createNode renderLayerManager -n "bouncy:renderLayerManager";
createNode renderLayer -n "bouncy:defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "bouncy:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n"
		+ "                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                -constrainDrag 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12.000000000000002 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "bouncy:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "bouncy:red";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "bouncy:lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "bouncy:materialInfo1";
createNode lambert -n "bouncy:green";
	setAttr ".c" -type "float3" 0.05066669 1 0 ;
createNode shadingEngine -n "bouncy:lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 20 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "bouncy:materialInfo2";
createNode displayLayer -n "bouncy:Arms_LYR";
	setAttr ".do" 2;
createNode displayLayer -n "bouncy:Body_LYR";
	setAttr ".do" 3;
createNode displayLayer -n "bouncy:Legs_LYR";
	setAttr ".do" 4;
createNode ikSCsolver -n "bouncy:ikSCsolver";
createNode ikRPsolver -n "bouncy:ikRPsolver";
createNode unitConversion -n "bouncy:unitConversion1";
	setAttr ".cf" 0.01;
createNode unitConversion -n "bouncy:unitConversion2";
	setAttr ".cf" 0.01;
createNode unitConversion -n "bouncy:unitConversion3";
	setAttr ".cf" 0.01;
createNode unitConversion -n "bouncy:unitConversion4";
	setAttr ".cf" 0.01;
createNode unitConversion -n "bouncy:unitConversion5";
	setAttr ".cf" 0.01;
createNode unitConversion -n "bouncy:unitConversion6";
	setAttr ".cf" 0.01;
createNode makeNurbCircle -n "bouncy:makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 0.01 0 ;
	setAttr ".r" 0.19281494971523738;
createNode transformGeometry -n "bouncy:transformGeometry1";
	setAttr ".txf" -type "matrix" -4.4408920985006262e-016 -1 0 0 1 -4.4408920985006262e-016 0 0
		 0 0 1 0 47.912950462104284 176.59118518666619 0 1;
createNode skinCluster -n "bouncy:skinCluster9";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.0045736287277749156 0.99692473907563717 -0.07823136544400483 0
		 -0.99998954090543413 -0.0045596113154717562 0.00035780496272369783 0 -1.0896231833479323e-017 0.078232183681812076 0.99693516611481581 0
		 176.80847424942675 -46.960418471587552 3.6851103346683325 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 -1.5720931501039814e-017 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak9";
createNode objectSet -n "bouncy:skinCluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose5";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045736287277748922 -0.99998954090543379 0 0 0.99692473907563706 -0.0045596113154717788 0.078232183681812062 0
		 -0.07823136544400483 0.00035780496272368872 0.9969351661148157 0 47.912950462104291 176.59118518666619 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.912950462104291 -23.497878506673317
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.02761709829472107 -0.027743698822829187 -0.70817872146762184 0.70494714803160408 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster10";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.0045736287277749156 0.99692473907563717 -0.07823136544400483 0
		 -0.99998954090543413 -0.0045596113154717562 0.00035780496272369783 0 -1.0896231833479323e-017 0.078232183681812076 0.99693516611481581 0
		 176.80847424942675 -46.960418471587552 3.6851103346683325 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak10";
createNode objectSet -n "bouncy:skinCluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster11";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.021318949471989364 0.9332023536885925 -0.3587183706802351 0
		 -0.99977272536982698 -0.019899416457960332 0.007649237296743514 0 -4.3383699410703988e-014 0.35879991679863082 0.93341449512277019 0
		 178.43286672602972 -90.594079222357422 30.504641619366101 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak11";
createNode objectSet -n "bouncy:skinCluster11Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster11GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster11GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose13";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045736287277748922 -0.99998954090543379 0 0 0.99692473907563706 -0.0045596113154717788 0.078232183681812062 0
		 -0.07823136544400483 0.00035780496272368872 0.9969351661148157 0 47.912950462104291 176.59118518666619 0 1;
	setAttr ".wm[5]" -type "matrix" -0.02131894947198933 -0.99977272536982642 -4.3371773186806628e-014 0
		 0.93320235368859206 -0.019899416457960346 0.35879991679863077 0 -0.35871837068023493 0.0076492372967435071 0.93341449512277008 0
		 99.289184570312614 176.35620690876394 4.0316734313964968 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.912950462104291 -23.497878506673317
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.02761709829472107 -0.027743698822829187 -0.70817872146762184 0.70494714803160408 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -2.5512632371610029e-017 -4.0570845294407576e-014
		 1.5306549430715854e-014 0 5.6843418860808015e-014 51.534716809059361 -1.3322676295501878e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14382917508579501 -0.0018489396764907774 -0.0081666771714983908 0.98956710495053812 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster12";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.021318949471989364 0.9332023536885925 -0.3587183706802351 0
		 -0.99977272536982698 -0.019899416457960332 0.007649237296743514 0 -4.3383699410703988e-014 0.35879991679863082 0.93341449512277019 0
		 178.43286672602972 -90.594079222357422 30.504641619366101 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak12";
createNode objectSet -n "bouncy:skinCluster12Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster12GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster12GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster13";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.027999940543870953 0.93305171766402273 -0.35865093823069361 0
		 -0.99960792480329008 -0.026135639755047461 0.010046143790265513 0 -2.0296264668928648e-016 0.35879161152235917 0.93341768758749599 0
		 179.29405119683105 -125.85211197856916 30.074628425566274 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak13";
createNode objectSet -n "bouncy:skinCluster13Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster13GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster13GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose7";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045736287277748922 -0.99998954090543379 0 0 0.99692473907563706 -0.0045596113154717788 0.078232183681812062 0
		 -0.07823136544400483 0.00035780496272368872 0.9969351661148157 0 47.912950462104291 176.59118518666619 0 1;
	setAttr ".wm[5]" -type "matrix" -0.02131894947198933 -0.99977272536982642 -4.3371773186806628e-014 0
		 0.93320235368859206 -0.019899416457960346 0.35879991679863077 0 -0.35871837068023493 0.0076492372967435071 0.93341449512277008 0
		 99.289184570312614 176.35620690876394 4.0316734313964968 1;
	setAttr ".wm[6]" -type "matrix" -0.027999940543870928 -0.99960792480328975 -1.9298798670241979e-016 0
		 0.9330517176640224 -0.026135639755047468 0.35879161152235917 0 -0.35865093823069361 0.01004614379026551 0.93341768758749621 0
		 133.23304572839868 175.63239494375324 17.082491950238008 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.912950462104291 -23.497878506673317
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.02761709829472107 -0.027743698822829187 -0.70817872146762184 0.70494714803160408 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -2.5512632371610029e-017 -4.0570845294407576e-014
		 1.5306549430715854e-014 0 5.6843418860808015e-014 51.534716809059361 -1.3322676295501878e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14382917508579501 -0.0018489396764907774 -0.0081666771714983908 0.98956710495053812 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -7.548334109456695e-017 -2.8776735044909301e-016
		 -1.5776977123443345e-016 0 0 36.373527160448035 1.4210854715202004e-014 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -4.4488358305651974e-006 -0.001198920232668663 -0.0031190207610756336 0.99999441712440351 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster14";
	setAttr -s 54 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.027999940543870953 0.93305171766402273 -0.35865093823069361 0
		 -0.99960792480329008 -0.026135639755047461 0.010046143790265513 0 -2.0296264668928648e-016 0.35879161152235917 0.93341768758749599 0
		 179.29405119683105 -125.85211197856916 30.074628425566274 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak14";
createNode objectSet -n "bouncy:skinCluster14Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster14GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster14GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster15";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.0045740545555158453 -0.99692473828810968 0.078231350583429796 0
		 0.99998953895774501 -0.0045600358434007074 0.00035783820888090256 0 1.2902005852577506e-017 0.078232168973455113 0.99693516726901998 0
		 -176.80830935000557 -46.960393695976215 3.6851076933593836 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak15";
createNode objectSet -n "bouncy:skinCluster15Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster15GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster15GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet15";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose8";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045740545555157386 0.99998953895774478 6.9388939039072268e-018 0
		 -0.99692473828810935 -0.0045600358434008115 0.078232168973455127 0 0.078231350583429768 0.00035783820888090479 0.99693516726901998 0
		 -47.91299999999999 176.59100000000001 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.3877787807814457e-017 0 0 0 -47.91299999999999
		 -23.498063693339503 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027617087187396448 0.027743699478868591 0.70817887176686101 0.70494699745266376 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster16";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.0045740545555158453 -0.99692473828810968 0.078231350583429796 0
		 0.99998953895774501 -0.0045600358434007074 0.00035783820888090256 0 1.2902005852577506e-017 0.078232168973455113 0.99693516726901998 0
		 -176.80830935000557 -46.960393695976215 3.6851076933593836 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak16";
createNode objectSet -n "bouncy:skinCluster16Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster16GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster16GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster17";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.021324523686178664 -0.9332019348632139 0.35871912892555918 0
		 0.99977260649087496 -0.019904612943777301 0.0076512544070108648 0 3.8982705952150815e-014 0.35880071787987372 0.93341418719070646 0
		 -178.43319268748664 -90.593141720962493 30.504372737441649 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak17";
createNode objectSet -n "bouncy:skinCluster17Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster17GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster17GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose9";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045740545555157386 0.99998953895774478 6.9388939039072268e-018 0
		 -0.99692473828810935 -0.0045600358434008115 0.078232168973455127 0 0.078231350583429768 0.00035783820888090479 0.99693516726901998 0
		 -47.91299999999999 176.59100000000001 0 1;
	setAttr ".wm[5]" -type "matrix" -0.021324523686178546 0.99977260649087474 3.8974032334770925e-014 0
		 -0.93320193486321346 -0.019904612943777402 0.35880071787987372 0 0.35871912892555913 0.0076512544070108952 0.93341418719070657 0
		 -99.289199999999937 176.35600000000002 4.0316699999999974 1;
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.3877787807814457e-017 0 0 0 -47.91299999999999
		 -23.498063693339503 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027617087187396448 0.027743699478868591 0.70817887176686101 0.70494699745266376 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.0445949118693637e-016 3.6423988825085006e-014
		 -1.3888846669973804e-014 0 0 51.53468263634592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0.14382960392058997 0.0018495116542577277 0.0081691875721446351 0.98956702083138259 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 6 ".g[0:5]" yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster18";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.021324523686178664 -0.9332019348632139 0.35871912892555918 0
		 0.99977260649087496 -0.019904612943777301 0.0076512544070108648 0 3.8982705952150815e-014 0.35880071787987372 0.93341418719070646 0
		 -178.43319268748664 -90.593141720962493 30.504372737441649 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak18";
createNode objectSet -n "bouncy:skinCluster18Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster18GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster18GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster19";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.027973362593837859 -0.93305107409318055 0.35865468645865511 0
		 0.99960866892259093 -0.026110793979317693 0.010036705264973553 0 -1.5178830414797066e-015 0.35879509412940991 0.9334163489186742 0
		 -179.29024475867723 -125.8564199819468 30.076788441444911 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak19";
createNode objectSet -n "bouncy:skinCluster19Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster19GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster19GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose10";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.3108872417680944e-030 200.08906369333948 0 1;
	setAttr ".wm[4]" -type "matrix" -0.0045740545555157386 0.99998953895774478 6.9388939039072268e-018 0
		 -0.99692473828810935 -0.0045600358434008115 0.078232168973455127 0 0.078231350583429768 0.00035783820888090479 0.99693516726901998 0
		 -47.91299999999999 176.59100000000001 0 1;
	setAttr ".wm[5]" -type "matrix" -0.021324523686178546 0.99977260649087474 3.8974032334770925e-014 0
		 -0.93320193486321346 -0.019904612943777402 0.35880071787987372 0 0.35871912892555913 0.0076512544070108952 0.93341418719070657 0
		 -99.289199999999937 176.35600000000002 4.0316699999999974 1;
	setAttr ".wm[6]" -type "matrix" -0.027973362593837741 0.9996086689225907 -1.526122977990596e-015 0
		 -0.93305107409318022 -0.026110793979317794 0.35879509412940996 0 0.35865468645865506 0.010036705264973583 0.93341634891867409 0
		 -133.23299999999998 175.63200000000001 17.0825 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.3108872417680944e-030
		 100.31742641203928 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.3877787807814457e-017 0 0 0 -47.91299999999999
		 -23.498063693339503 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027617087187396448 0.027743699478868591 0.70817887176686101 0.70494699745266376 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.0445949118693637e-016 3.6423988825085006e-014
		 -1.3888846669973804e-014 0 0 51.53468263634592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0.14382960392058997 0.0018495116542577277 0.0081691875721446351 0.98956702083138259 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -2.5510938305405406e-017 -1.3434808932426797e-015
		 5.6635851091199151e-016 0 0 36.373477949309461 -7.1054273576010019e-015 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -3.0124423506563348e-006 0.0011931572613373051 0.003104006980709366 0.99999447073838299 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster20";
	setAttr -s 54 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.027973362593837859 -0.93305107409318055 0.35865468645865511 0
		 0.99960866892259093 -0.026110793979317693 0.010036705264973553 0 -1.5178830414797066e-015 0.35879509412940991 0.9334163489186742 0
		 -179.29024475867723 -125.8564199819468 30.076788441444911 1;
	setAttr ".gm" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 -1.2246467991473532e-016 0 1 0
		 0 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak20";
createNode objectSet -n "bouncy:skinCluster20Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster20GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster20GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster31";
	setAttr -s 182 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 19.623002520385928 0 0 0 0 19.623002520385928 0 0 0 0 19.623002520385928 0
		 0 150.09065736265325 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak31";
createNode objectSet -n "bouncy:skinCluster31Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster31GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster31GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet31";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster32";
	setAttr -s 96 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 19.623002520385928 0 0 0 0 19.623002520385928 0 0 0 0 19.623002520385928 0
		 0 150.09065736265325 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak32";
createNode objectSet -n "bouncy:skinCluster32Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster32GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster32GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet32";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId64";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster33";
	setAttr -s 21 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 0.28827319996510609 0 0 0 0 0.46002377485246515 -0.25613073212188869 0
		 0 0.14023289525747076 0.2518653864782322 0 -0.63433745267511643 195.09902575344921 -26.573505488412575 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak33";
createNode objectSet -n "bouncy:skinCluster33Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster33GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster33GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster34";
	setAttr -s 21 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 0.43414520726936501 0 0 0 0 0.50955655647603637 -0.60755634110031664 0
		 0 0.33264022649178937 0.27898483957815884 0 -0.63433745267511643 187.39671682738475 -39.725779413532223 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak34";
createNode objectSet -n "bouncy:skinCluster34Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster34GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster34GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster35";
	setAttr -s 21 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 0.35560569872370806 0 0 0 0 0.33626869673386361 -0.55567637196632813 0
		 0 0.30423567613870933 0.1841088437017597 0 -0.63433745267511643 175.96197679025425 -46.682855630486671 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak35";
createNode objectSet -n "bouncy:skinCluster35Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster35GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster35GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet35";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster36";
	setAttr -s 21 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 0.30096922575153695 0 0 0 0 0.14449214213624431 -0.53038047128521493 0
		 0 0.29038604020759501 0.079110192150143407 0 -0.63433745267511643 164.07366766526366 -51.293376703494644 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak36";
createNode objectSet -n "bouncy:skinCluster36Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster36GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster36GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet36";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster37";
	setAttr -s 21 ".wl";
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
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -99.771637281300201 0 1;
	setAttr ".gm" -type "matrix" 0.21635753621218784 0 0 0 0 0.0014227828075794174 -0.3951673026949159 0
		 0 0.21635613387315838 0.00077898091641133394 0 -0.63433745267511643 148.7291950782743 -52.27025088568962 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak37";
createNode objectSet -n "bouncy:skinCluster37Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster37GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster37GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet37";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode displayLayer -n "bouncy:Controls_LYR";
	setAttr ".c" 5;
	setAttr ".do" 5;
createNode character -n "bouncy:Bouncy";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -bt "ATAL" -dt "attributeAlias";
	setAttr -s 60 ".dnsm";
	setAttr -s 30 ".lv";
	setAttr -s 30 ".lv";
	setAttr -s 30 ".av";
	setAttr -s 30 ".av";
	setAttr ".am" -type "characterMapping" 60 "bouncy:L_Foot_CTRL.rotateZ" 2 
		1 "bouncy:L_Foot_CTRL.rotateY" 2 2 "bouncy:L_Foot_CTRL.rotateX" 2 
		3 "bouncy:L_Foot_CTRL.translateZ" 1 1 "bouncy:L_Foot_CTRL.translateY" 
		1 2 "bouncy:L_Foot_CTRL.translateX" 1 3 "bouncy:R_Foot_CTRL.rotateZ" 
		2 4 "bouncy:R_Foot_CTRL.rotateY" 2 5 "bouncy:R_Foot_CTRL.rotateX" 
		2 6 "bouncy:R_Foot_CTRL.translateZ" 1 4 "bouncy:R_Foot_CTRL.translateY" 
		1 5 "bouncy:R_Foot_CTRL.translateX" 1 6 "bouncy:R_hand_CTRL.rotateZ" 
		2 7 "bouncy:R_hand_CTRL.rotateY" 2 8 "bouncy:R_hand_CTRL.rotateX" 
		2 9 "bouncy:R_hand_CTRL.translateZ" 1 7 "bouncy:R_hand_CTRL.translateY" 
		1 8 "bouncy:R_hand_CTRL.translateX" 1 9 "bouncy:R_Elbow_CTRL.rotateZ" 
		2 10 "bouncy:R_Elbow_CTRL.rotateY" 2 11 "bouncy:R_Elbow_CTRL.rotateX" 
		2 12 "bouncy:R_Elbow_CTRL.translateZ" 1 10 "bouncy:R_Elbow_CTRL.translateY" 
		1 11 "bouncy:R_Elbow_CTRL.translateX" 1 12 "bouncy:R_Shoulder_CTRL.rotateZ" 
		2 13 "bouncy:R_Shoulder_CTRL.rotateY" 2 14 "bouncy:R_Shoulder_CTRL.rotateX" 
		2 15 "bouncy:R_Shoulder_CTRL.translateZ" 1 13 "bouncy:R_Shoulder_CTRL.translateY" 
		1 14 "bouncy:R_Shoulder_CTRL.translateX" 1 15 "bouncy:L_Hand_CTRL.rotateZ" 
		2 16 "bouncy:L_Hand_CTRL.rotateY" 2 17 "bouncy:L_Hand_CTRL.rotateX" 
		2 18 "bouncy:L_Hand_CTRL.translateZ" 1 16 "bouncy:L_Hand_CTRL.translateY" 
		1 17 "bouncy:L_Hand_CTRL.translateX" 1 18 "bouncy:L_Elbow_CTRL.rotateZ" 
		2 19 "bouncy:L_Elbow_CTRL.rotateY" 2 20 "bouncy:L_Elbow_CTRL.rotateX" 
		2 21 "bouncy:L_Elbow_CTRL.translateZ" 1 19 "bouncy:L_Elbow_CTRL.translateY" 
		1 20 "bouncy:L_Elbow_CTRL.translateX" 1 21 "bouncy:L_Shoulder_CTRL.rotateZ" 
		2 22 "bouncy:L_Shoulder_CTRL.rotateY" 2 23 "bouncy:L_Shoulder_CTRL.rotateX" 
		2 24 "bouncy:L_Shoulder_CTRL.translateZ" 1 22 "bouncy:L_Shoulder_CTRL.translateY" 
		1 23 "bouncy:L_Shoulder_CTRL.translateX" 1 24 "bouncy:head_CTRL.rotateZ" 
		2 25 "bouncy:head_CTRL.rotateY" 2 26 "bouncy:head_CTRL.rotateX" 
		2 27 "bouncy:head_CTRL.translateZ" 1 25 "bouncy:head_CTRL.translateY" 
		1 26 "bouncy:head_CTRL.translateX" 1 27 "bouncy:Root_CTRL.rotateZ" 
		2 28 "bouncy:Root_CTRL.rotateY" 2 29 "bouncy:Root_CTRL.rotateX" 
		2 30 "bouncy:Root_CTRL.translateZ" 1 28 "bouncy:Root_CTRL.translateY" 
		1 29 "bouncy:Root_CTRL.translateX" 1 30  ;
	setAttr ".rm" -type "characterMapping" 60 "bouncy:L_Foot_CTRL.rotateZ" 2 
		1 "bouncy:L_Foot_CTRL.rotateY" 2 2 "bouncy:L_Foot_CTRL.rotateX" 2 
		3 "bouncy:L_Foot_CTRL.translateZ" 1 1 "bouncy:L_Foot_CTRL.translateY" 
		1 2 "bouncy:L_Foot_CTRL.translateX" 1 3 "bouncy:R_Foot_CTRL.rotateZ" 
		2 4 "bouncy:R_Foot_CTRL.rotateY" 2 5 "bouncy:R_Foot_CTRL.rotateX" 
		2 6 "bouncy:R_Foot_CTRL.translateZ" 1 4 "bouncy:R_Foot_CTRL.translateY" 
		1 5 "bouncy:R_Foot_CTRL.translateX" 1 6 "bouncy:R_hand_CTRL.rotateZ" 
		2 7 "bouncy:R_hand_CTRL.rotateY" 2 8 "bouncy:R_hand_CTRL.rotateX" 
		2 9 "bouncy:R_hand_CTRL.translateZ" 1 7 "bouncy:R_hand_CTRL.translateY" 
		1 8 "bouncy:R_hand_CTRL.translateX" 1 9 "bouncy:R_Elbow_CTRL.rotateZ" 
		2 10 "bouncy:R_Elbow_CTRL.rotateY" 2 11 "bouncy:R_Elbow_CTRL.rotateX" 
		2 12 "bouncy:R_Elbow_CTRL.translateZ" 1 10 "bouncy:R_Elbow_CTRL.translateY" 
		1 11 "bouncy:R_Elbow_CTRL.translateX" 1 12 "bouncy:R_Shoulder_CTRL.rotateZ" 
		2 13 "bouncy:R_Shoulder_CTRL.rotateY" 2 14 "bouncy:R_Shoulder_CTRL.rotateX" 
		2 15 "bouncy:R_Shoulder_CTRL.translateZ" 1 13 "bouncy:R_Shoulder_CTRL.translateY" 
		1 14 "bouncy:R_Shoulder_CTRL.translateX" 1 15 "bouncy:L_Hand_CTRL.rotateZ" 
		2 16 "bouncy:L_Hand_CTRL.rotateY" 2 17 "bouncy:L_Hand_CTRL.rotateX" 
		2 18 "bouncy:L_Hand_CTRL.translateZ" 1 16 "bouncy:L_Hand_CTRL.translateY" 
		1 17 "bouncy:L_Hand_CTRL.translateX" 1 18 "bouncy:L_Elbow_CTRL.rotateZ" 
		2 19 "bouncy:L_Elbow_CTRL.rotateY" 2 20 "bouncy:L_Elbow_CTRL.rotateX" 
		2 21 "bouncy:L_Elbow_CTRL.translateZ" 1 19 "bouncy:L_Elbow_CTRL.translateY" 
		1 20 "bouncy:L_Elbow_CTRL.translateX" 1 21 "bouncy:L_Shoulder_CTRL.rotateZ" 
		2 22 "bouncy:L_Shoulder_CTRL.rotateY" 2 23 "bouncy:L_Shoulder_CTRL.rotateX" 
		2 24 "bouncy:L_Shoulder_CTRL.translateZ" 1 22 "bouncy:L_Shoulder_CTRL.translateY" 
		1 23 "bouncy:L_Shoulder_CTRL.translateX" 1 24 "bouncy:head_CTRL.rotateZ" 
		2 25 "bouncy:head_CTRL.rotateY" 2 26 "bouncy:head_CTRL.rotateX" 
		2 27 "bouncy:head_CTRL.translateZ" 1 25 "bouncy:head_CTRL.translateY" 
		1 26 "bouncy:head_CTRL.translateX" 1 27 "bouncy:Root_CTRL.rotateZ" 
		2 28 "bouncy:Root_CTRL.rotateY" 2 29 "bouncy:Root_CTRL.rotateX" 
		2 30 "bouncy:Root_CTRL.translateZ" 1 28 "bouncy:Root_CTRL.translateY" 
		1 29 "bouncy:Root_CTRL.translateX" 1 30  ;
	setAttr ".aal" -type "attributeAlias" {"bouncy:R_Elbow_CTRL_rotateZ","angularValues[10]"
		,"bouncy:R_Elbow_CTRL_rotateY","angularValues[11]","bouncy:R_Elbow_CTRL_rotateX","angularValues[12]"
		,"bouncy:R_Shoulder_CTRL_rotateZ","angularValues[13]","bouncy:R_Shoulder_CTRL_rotateY"
		,"angularValues[14]","bouncy:R_Shoulder_CTRL_rotateX","angularValues[15]","bouncy:L_Hand_CTRL_rotateZ"
		,"angularValues[16]","bouncy:L_Hand_CTRL_rotateY","angularValues[17]","bouncy:L_Hand_CTRL_rotateX"
		,"angularValues[18]","bouncy:L_Elbow_CTRL_rotateZ","angularValues[19]","bouncy:L_Foot_CTRL_rotateZ"
		,"angularValues[1]","bouncy:L_Elbow_CTRL_rotateY","angularValues[20]","bouncy:L_Elbow_CTRL_rotateX"
		,"angularValues[21]","bouncy:L_Shoulder_CTRL_rotateZ","angularValues[22]","bouncy:L_Shoulder_CTRL_rotateY"
		,"angularValues[23]","bouncy:L_Shoulder_CTRL_rotateX","angularValues[24]","bouncy:head_CTRL_rotateZ"
		,"angularValues[25]","bouncy:head_CTRL_rotateY","angularValues[26]","bouncy:head_CTRL_rotateX"
		,"angularValues[27]","bouncy:Root_CTRL_rotateZ","angularValues[28]","bouncy:Root_CTRL_rotateY"
		,"angularValues[29]","bouncy:L_Foot_CTRL_rotateY","angularValues[2]","bouncy:Root_CTRL_rotateX"
		,"angularValues[30]","bouncy:L_Foot_CTRL_rotateX","angularValues[3]","bouncy:R_Foot_CTRL_rotateZ"
		,"angularValues[4]","bouncy:R_Foot_CTRL_rotateY","angularValues[5]","bouncy:R_Foot_CTRL_rotateX"
		,"angularValues[6]","bouncy:R_hand_CTRL_rotateZ","angularValues[7]","bouncy:R_hand_CTRL_rotateY"
		,"angularValues[8]","bouncy:R_hand_CTRL_rotateX","angularValues[9]","bouncy:R_Elbow_CTRL_translateZ"
		,"linearValues[10]","bouncy:R_Elbow_CTRL_translateY","linearValues[11]","bouncy:R_Elbow_CTRL_translateX"
		,"linearValues[12]","bouncy:R_Shoulder_CTRL_translateZ","linearValues[13]","bouncy:R_Shoulder_CTRL_translateY"
		,"linearValues[14]","bouncy:R_Shoulder_CTRL_translateX","linearValues[15]","bouncy:L_Hand_CTRL_translateZ"
		,"linearValues[16]","bouncy:L_Hand_CTRL_translateY","linearValues[17]","bouncy:L_Hand_CTRL_translateX"
		,"linearValues[18]","bouncy:L_Elbow_CTRL_translateZ","linearValues[19]","bouncy:L_Foot_CTRL_translateZ"
		,"linearValues[1]","bouncy:L_Elbow_CTRL_translateY","linearValues[20]","bouncy:L_Elbow_CTRL_translateX"
		,"linearValues[21]","bouncy:L_Shoulder_CTRL_translateZ","linearValues[22]","bouncy:L_Shoulder_CTRL_translateY"
		,"linearValues[23]","bouncy:L_Shoulder_CTRL_translateX","linearValues[24]","bouncy:head_CTRL_translateZ"
		,"linearValues[25]","bouncy:head_CTRL_translateY","linearValues[26]","bouncy:head_CTRL_translateX"
		,"linearValues[27]","bouncy:Root_CTRL_translateZ","linearValues[28]","bouncy:Root_CTRL_translateY"
		,"linearValues[29]","bouncy:L_Foot_CTRL_translateY","linearValues[2]","bouncy:Root_CTRL_translateX"
		,"linearValues[30]","bouncy:L_Foot_CTRL_translateX","linearValues[3]","bouncy:R_Foot_CTRL_translateZ"
		,"linearValues[4]","bouncy:R_Foot_CTRL_translateY","linearValues[5]","bouncy:R_Foot_CTRL_translateX"
		,"linearValues[6]","bouncy:R_hand_CTRL_translateZ","linearValues[7]","bouncy:R_hand_CTRL_translateY"
		,"linearValues[8]","bouncy:R_hand_CTRL_translateX","linearValues[9]"} ;
createNode skinCluster -n "bouncy:skinCluster38";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2213702010684842e-016 -8.952437994081921e-018 0
		 1.2246467991473532e-016 -0.99732445462548847 -0.073102203837996038 0 1.5407439555097887e-033 -0.073102203837996038 0.99732445462548858 0
		 -20.266400000000004 56.433688742059857 4.090193415826648 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak38";
createNode objectSet -n "bouncy:skinCluster38Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster38GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster38GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose14";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4512664603419266e-030 103.61044163087992 -6.1675832383953049 1;
	setAttr ".wm[5]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2218199982314015e-016 -0.99769174188188825 0.067905730101986195 0 8.3160535013161454e-018 0.067905730101986195 0.99769174188188814 0
		 -20.266400000000001 98.644699999999986 -2.8167499999999968 1;
	setAttr ".wm[6]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2213702010684842e-016 -0.99732445462548858 -0.073102203837996038 0 -8.9524379940819179e-018 -0.073102203837996038 0.99732445462548847 0
		 -20.266399999999997 56.581700000000005 0.046177100000006632 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4512664603419266e-030
		 3.8388043495797177 -6.1675832383953049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.266400000000001 -4.9657416308799327
		 3.3508332383953081 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0802141396821503e-018 0.03397247502105058 0.99942276887258485 6.1196994744739796e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.0890989682635054e-014 8.3878885018436167e-031
		 7.1047280564463894e-030 0 -3.5527136788005009e-015 42.160316893732102 2.2204460492503131e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.07050420614039829 0 0 0.99751148209758078 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster39";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2213702010684842e-016 -8.952437994081921e-018 0
		 1.2246467991473532e-016 -0.99732445462548847 -0.073102203837996038 0 1.5407439555097887e-033 -0.073102203837996038 0.99732445462548858 0
		 -20.266400000000004 56.433688742059857 4.090193415826648 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak39";
createNode objectSet -n "bouncy:skinCluster39Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster39GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster39GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet39";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId78";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster40";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2218199982314015e-016 8.316053501316147e-018 0
		 1.224646799147353e-016 -0.99769174188188814 0.067905730101986195 0 1.5407439555097887e-033 0.067905730101986195 0.99769174188188825 0
		 -20.266400000000015 98.608276035681044 -3.8882921602455909 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak40";
createNode objectSet -n "bouncy:skinCluster40Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster40GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster40GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet40";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId80";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster41";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2218199982314015e-016 8.316053501316147e-018 0
		 1.224646799147353e-016 -0.99769174188188814 0.067905730101986195 0 1.5407439555097887e-033 0.067905730101986195 0.99769174188188825 0
		 -20.266400000000015 98.608276035681044 -3.8882921602455909 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak41";
createNode objectSet -n "bouncy:skinCluster41Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster41GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster41GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId82";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster42";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -4.4104754852790055e-017 1.1424696243661736e-016 0
		 1.2246467991473532e-016 -0.36014265405745965 0.93289724446395927 0 1.2325951644078304e-032 0.93289724446395939 0.36014265405745977 0
		 -20.266399999999994 8.0619840959837372 -12.450712787106001 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak42";
createNode objectSet -n "bouncy:skinCluster42Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster42GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster42GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId84";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose15";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4512664603419266e-030 103.61044163087992 -6.1675832383953049 1;
	setAttr ".wm[5]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2218199982314015e-016 -0.99769174188188825 0.067905730101986195 0 8.3160535013161454e-018 0.067905730101986195 0.99769174188188814 0
		 -20.266400000000001 98.644699999999986 -2.8167499999999968 1;
	setAttr ".wm[6]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2213702010684842e-016 -0.99732445462548858 -0.073102203837996038 0 -8.9524379940819179e-018 -0.073102203837996038 0.99732445462548847 0
		 -20.266399999999997 56.581700000000005 0.046177100000006632 1;
	setAttr ".wm[7]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -4.4104754852790073e-017 -0.36014265405745993 0.93289724446395972 0 1.1424696243661743e-016 0.93289724446395983 0.36014265405745982 0
		 -20.266399999999997 14.518699999999995 -3.0369699999999882 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4512664603419266e-030
		 3.8388043495797177 -6.1675832383953049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.266400000000001 -4.9657416308799327
		 3.3508332383953081 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0802141396821503e-018 0.03397247502105058 0.99942276887258485 6.1196994744739796e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.0890989682635054e-014 8.3878885018436167e-031
		 7.1047280564463894e-030 0 -3.5527136788005009e-015 42.160316893732102 2.2204460492503131e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.07050420614039829 0 0 0.99751148209758078 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -2.4058485380340941e-024 -3.5897929073769315e-009
		 -6.0146213046016507e-025 0 -7.1054273576010019e-015 42.175843382678657 -2.3980817331903381e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59540648656169215 0 0 0.80342461734767712 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster43";
	setAttr -s 34 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -4.4104754852790055e-017 1.1424696243661736e-016 0
		 1.2246467991473532e-016 -0.36014265405745965 0.93289724446395927 0 1.2325951644078304e-032 0.93289724446395939 0.36014265405745977 0
		 -20.266399999999994 8.0619840959837372 -12.450712787106001 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak43";
createNode objectSet -n "bouncy:skinCluster43Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster43GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster43GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId86";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster44";
	setAttr -s 26 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2077024309418238e-017 1.2186772874903467e-016 0
		 1.224646799147353e-016 -0.098616387335734121 0.99512552381538677 0 7.7037197775489407e-033 0.99512552381538688 0.098616387335734204 0
		 -20.266400000000015 -26.203016591501001 -5.6756225203604771 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak44";
createNode objectSet -n "bouncy:skinCluster44Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster44GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster44GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet44";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId88";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose16";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4512664603419266e-030 103.61044163087992 -6.1675832383953049 1;
	setAttr ".wm[5]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2218199982314015e-016 -0.99769174188188825 0.067905730101986195 0 8.3160535013161454e-018 0.067905730101986195 0.99769174188188814 0
		 -20.266400000000001 98.644699999999986 -2.8167499999999968 1;
	setAttr ".wm[6]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2213702010684842e-016 -0.99732445462548858 -0.073102203837996038 0 -8.9524379940819179e-018 -0.073102203837996038 0.99732445462548847 0
		 -20.266399999999997 56.581700000000005 0.046177100000006632 1;
	setAttr ".wm[7]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -4.4104754852790073e-017 -0.36014265405745993 0.93289724446395972 0 1.1424696243661743e-016 0.93289724446395983 0.36014265405745982 0
		 -20.266399999999997 14.518699999999995 -3.0369699999999882 1;
	setAttr ".wm[8]" -type "matrix" -1 1.2246467991473532e-016 7.7037197775489434e-034 0
		 -1.2077024309418243e-017 -0.098616387335734246 0.99512552381538721 0 1.2186772874903472e-016 0.99512552381538733 0.098616387335734162 0
		 -20.266400000000019 3.0639099999999981 26.634999999999998 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4512664603419266e-030
		 3.8388043495797177 -6.1675832383953049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.266400000000001 -4.9657416308799327
		 3.3508332383953081 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0802141396821503e-018 0.03397247502105058 0.99942276887258485 6.1196994744739796e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.0890989682635054e-014 8.3878885018436167e-031
		 7.1047280564463894e-030 0 -3.5527136788005009e-015 42.160316893732102 2.2204460492503131e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.07050420614039829 0 0 0.99751148209758078 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -2.4058485380340941e-024 -3.5897929073769315e-009
		 -6.0146213046016507e-025 0 -7.1054273576010019e-015 42.175843382678657 -2.3980817331903381e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59540648656169215 0 0 0.80342461734767712 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 8.7518405378567328e-034 -3.5897929073769319e-009
		 -4.8759584542450488e-025 0 1.7763568394002505e-014 31.806257523088114 7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.1344138636231792 0 0 0.99092528137387303 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster45";
	setAttr -s 16 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -1 -1.2077024309418238e-017 1.2186772874903467e-016 0
		 1.224646799147353e-016 -0.098616387335734121 0.99512552381538677 0 7.7037197775489407e-033 0.99512552381538688 0.098616387335734204 0
		 -20.266400000000015 -26.203016591501001 -5.6756225203604771 1;
	setAttr ".gm" -type "matrix" -1 0 0 0 0 1 0 0 0 0 1 0 8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak45";
createNode objectSet -n "bouncy:skinCluster45Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster45GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster45GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet45";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId90";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster46";
	setAttr -s 26 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 2.2756540508426741e-008 3.8298592911374695e-009 0
		 1.5670308114107826e-009 -0.098616046250303221 0.99512555761670496 0 2.3023300643862261e-008 0.99512555761670463 0.098616046250303208 0
		 20.266400116547683 -26.203013679621471 -5.675612116711954 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak46";
createNode objectSet -n "bouncy:skinCluster46Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster46GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster46GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet46";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId92";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bouncy:bindPose17";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.771637281300201 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4512664603419266e-030 103.61044163087992 -6.1675832383953049 1;
	setAttr ".wm[5]" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 1.2218199990309199e-016 -0.99769174252213921 0.067905720695224991 0 2.3076567294586505e-008 0.067905720695224964 0.99769174252213877 0
		 20.266400206276064 98.644651574172755 -2.8167470488171844 1;
	setAttr ".wm[6]" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 -3.2458947228328349e-009 -0.99732444644478779 -0.07310231544621433 0 2.2847146989282174e-008 -0.073102315446214414 0.99732444644478746 0
		 20.266400206276078 56.581688920453026 0.046177110860077253 1;
	setAttr ".wm[7]" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 2.091401092068602e-008 -0.36014343578158559 0.93289694268093448 0 9.753568849964891e-009 0.9328969426809347 0.36014343578158542 0
		 20.266400069377859 14.518726266733218 -3.0369719841769527 1;
	setAttr ".wm[8]" -type "matrix" -1 1.5670308114107824e-009 2.3023300643862271e-008 0
		 2.2756540508426748e-008 -0.098616046250303291 0.99512555761670485 0 3.8298592911374703e-009 0.99512555761670507 0.09861604625030318 0
		 20.266400734574422 3.0639090317741573 26.634994559572483 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 99.771637281300201
		 0 0 0 0 0 99.771637281300201 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 99.771637281300201 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4512664603419266e-030
		 3.8388043495797177 -6.1675832383953049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.0974529973482084e-017 -2.3076567302902555e-008
		 -1.3306992361685334e-008 0 20.266400206276064 -4.9657900567071636 3.3508361895781205 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.0802138511834629e-018 -0.033972470309509464 -0.99942276903273997 6.1196994754546471e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.8151668428890692e-014 2.8595488748230529e-030
		 1.2434358635624666e-029 0 -7.1054273576010019e-015 42.16027943399196 -3.3750779948604759e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.070504257252441679 0 0 0.99751147848497534 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -3.0018077439470024e-024 1.3437093215884488e-008
		 -7.5045195489404928e-025 0 -7.1054273576010019e-015 42.175806282161986 2.6645352591003757e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59540619490020297 0 0 0.80342483349375104 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.1031423990278438e-024 -2.0304007364302375e-009
		 -2.7578560080687711e-025 0 -7.1054273576010019e-015 31.806264107243106 -3.5527136788005009e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13441444862055515 0 0 0.99092520202184387 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "bouncy:skinCluster47";
	setAttr -s 16 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 2.2756540508426741e-008 3.8298592911374695e-009 0
		 1.5670308114107826e-009 -0.098616046250303221 0.99512555761670496 0 2.3023300643862261e-008 0.99512555761670463 0.098616046250303208 0
		 20.266400116547683 -26.203013679621471 -5.675612116711954 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak47";
createNode objectSet -n "bouncy:skinCluster47Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster47GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster47GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet47";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId94";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster48";
	setAttr -s 34 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 2.0914010920686013e-008 9.7535688499648877e-009 0
		 1.5670308114107822e-009 -0.36014343578158547 0.93289694268093448 0 2.3023300643862265e-008 0.93289694268093426 0.36014343578158536 0
		 20.266400116547675 8.0620054160682724 -12.450730018772621 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak48";
createNode objectSet -n "bouncy:skinCluster48Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster48GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster48GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId96";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster49";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 2.0914010920686013e-008 9.7535688499648877e-009 0
		 1.5670308114107822e-009 -0.36014343578158547 0.93289694268093448 0 2.3023300643862265e-008 0.93289694268093426 0.36014343578158536 0
		 20.266400116547675 8.0620054160682724 -12.450730018772621 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak49";
createNode objectSet -n "bouncy:skinCluster49Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster49GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster49GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet49";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId98";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster50";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999944 -3.2458947228328345e-009 2.2847146989282168e-008 0
		 1.5670308114107818e-009 -0.99732444644478757 -0.073102315446214372 0 2.3023300643862261e-008 -0.073102315446214344 0.99732444644478735 0
		 20.266400116547665 56.43367730100907 4.0901984473861592 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak50";
createNode objectSet -n "bouncy:skinCluster50Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster50GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster50GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId100";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts100";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster51";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999944 -3.2458947228328345e-009 2.2847146989282168e-008 0
		 1.5670308114107818e-009 -0.99732444644478757 -0.073102315446214372 0 2.3023300643862261e-008 -0.073102315446214344 0.99732444644478735 0
		 20.266400116547665 56.43367730100907 4.0901984473861592 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak51";
createNode objectSet -n "bouncy:skinCluster51Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster51GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster51GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId102";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts102";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster52";
	setAttr -s 10 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 1.221820000064895e-016 2.3076567294586501e-008 0
		 1.567030811410782e-009 -0.99769174252213888 0.067905720695224964 0 2.3023300643862265e-008 0.067905720695224978 0.99769174252213877 0
		 20.266400116547658 98.608227557891738 -3.8882913541739978 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak52";
createNode objectSet -n "bouncy:skinCluster52Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster52GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster52GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet52";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId104";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts104";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "bouncy:skinCluster53";
	setAttr -s 134 ".wl";
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
	setAttr ".pm[0]" -type "matrix" -0.99999999999999956 1.221820000064895e-016 2.3076567294586501e-008 0
		 1.567030811410782e-009 -0.99769174252213888 0.067905720695224964 0 2.3023300643862265e-008 0.067905720695224978 0.99769174252213877 0
		 20.266400116547658 98.608227557891738 -3.8882913541739978 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.5229712842024572 100.11531576566526 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "bouncy:tweak53";
createNode objectSet -n "bouncy:skinCluster53Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:skinCluster53GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:skinCluster53GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "bouncy:tweakSet53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bouncy:groupId106";
	setAttr ".ihi" 0;
createNode groupParts -n "bouncy:groupParts106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTU -n "bouncy:L_Shoulder_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:Root_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 25 1 50 1 100 1 110 1 112 1 120 1 124 
		1;
createNode animCurveTU -n "bouncy:Root_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 25 1 50 1 100 1 110 1 112 1 120 1 124 
		1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "bouncy:Root_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 25 -8.7937396273515841e-005 50 0 60 
		0 62 0 66 0 72 0 74 0 78 0 84 0 100 -0.024384982893948883 102 0.0083051042227136537 
		105 -0.002408355647875767 110 0.011657153198216313 112 0.011217007387383141 115 -0.0021043604235650381 
		120 -0.024384982893948883 140 0 145 0.0092099095245117731 149 0.0092099095245117731 
		163 0.0092099095245117731 169 -0.022420675521009993 174 0.030968089111227341 180 
		0;
createNode animCurveTL -n "bouncy:Root_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 -0.028699440444851457 50 0 60 -0.022893915868924922 
		62 -0.035279272753088148 66 -0.0058710886592376731 72 -0.022893915868924922 74 -0.047027619803784518 
		78 -0.0076154092122374083 84 -0.022893915868924922 100 -0.037449421292115009 105 
		-0.22676988235885889 110 -0.063950297101329281 115 -0.21564228012793507 120 -0.037449421292115009 
		140 0 145 -0.43459943506840876 149 -0.43459943506840876 156 0.14109330973691167 163 
		-0.43459943506840876 169 -0.066854741932398806 174 -0.020742416605124849 180 0;
	setAttr -s 23 ".kit[3:22]"  3 10 10 1 10 10 3 9 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 23 ".kot[3:22]"  3 10 10 1 10 10 3 9 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 23 ".kix[6:22]"  0.97669124603271484 0.15518037974834442 
		0.16351255774497986 1 0.041166592389345169 0.1492478996515274 0.33827501535415649 
		0.1492478996515274 0.046323314309120178 0.025171425193548203 1 1 1 0.024998452514410019 
		0.010631090961396694 0.065672188997268677 0.11493800580501556;
	setAttr -s 23 ".kiy[6:22]"  0.21464914083480835 0.98788613080978394 
		0.9865412712097168 0 -0.99915230274200439 -0.9887998104095459 0.94104725122451782 
		0.9887998104095459 0.99892646074295044 -0.99968314170837402 0 0 0 -0.99968749284744263 
		0.99994349479675293 0.9978412389755249 0.99337261915206909;
	setAttr -s 23 ".kox[6:22]"  0.97669124603271484 0.15518037974834442 
		0.16351255774497986 1 0.041166592389345169 0.1492478996515274 0.33827501535415649 
		0.1492478996515274 0.046323314309120178 0.025171425193548203 1 1 1 0.024998452514410019 
		0.010631090961396694 0.065672188997268677 0.11493801325559616;
	setAttr -s 23 ".koy[6:22]"  0.21464920043945313 0.98788613080978394 
		0.9865412712097168 0 -0.99915230274200439 -0.9887998104095459 0.94104725122451782 
		0.9887998104095459 0.99892646074295044 -0.99968314170837402 0 0 0 -0.99968749284744263 
		0.99994349479675293 0.9978412389755249 0.99337267875671387;
createNode animCurveTL -n "bouncy:Root_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 25 0.000259782581161353 50 0 60 0 62 
		0 66 0 72 0 74 0 78 0 84 0 100 -0.031280179478027345 102 0.030024195517497181 105 
		-0.084647464945630371 110 -0.034091658060003444 112 0.062447747679299309 115 -0.080872367789570673 
		120 -0.031280179478027345 140 0 145 -0.054337533275112884 149 -0.054337533275112884 
		156 -0.0040616774656964724 163 -0.054337533275112884 169 -0.0057251640120638972 174 
		0.0063616377447942582 180 0;
	setAttr -s 25 ".kit[11:24]"  9 9 9 9 9 9 10 10 
		10 10 10 10 10 10;
	setAttr -s 25 ".kot[11:24]"  9 9 9 9 9 9 10 10 
		10 10 10 10 10 10;
createNode animCurveTL -n "bouncy:head_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:head_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:head_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:head_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:head_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:head_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Shoulder_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 25 -5.2137074839941127 50 0 60 3.9891908433374356e-016 
		62 5.7681102319706453e-016 66 1.085074874179705e-015 72 1.7712306640256669e-015 74 
		1.5933385547538602e-015 78 1.0850753854058405e-015 84 3.9891908433374356e-016 100 
		3.9891908433374356e-016 105 5.3604553725073121 110 0 115 5.5597243397101099 120 3.9891908433374356e-016 
		140 0 149 6.7514443133603175 156 7.3416200080696221 163 9.7165705706745786 166 -18.171743747900194 
		174 0.87715931485244802 180 0;
createNode animCurveTA -n "bouncy:L_Shoulder_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 5.1202566305456765 50 0 60 -4.7145938408797363 
		62 -0.70362117865761542 66 12.486306110084364 72 26.124741580300576 74 23.944476252378688 
		78 13.126591286544507 84 -4.7145938408797363 100 -59.815524512246768 105 13.530452352840781 
		110 79.827935588781571 115 20.645663007127617 120 -59.815524512246768 140 0 145 -50.894831700049451 
		149 26.170275274569001 156 -174.72396554776995 163 -51.306174981973491 166 20.851581425016839 
		174 -11.647462982469891 180 0;
createNode animCurveTA -n "bouncy:L_Shoulder_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -85.605964931805346 25 -83.521838984501599 
		50 -85.605964931805346 60 -85.605964931805346 62 -85.60596493180536 66 -85.605964931805374 
		72 -85.605964931805389 74 -85.605964931805389 78 -85.605964931805374 84 -85.605964931805346 
		100 -85.605964931805346 105 -63.752498733773692 110 -85.605964931805346 115 -70.172376674553973 
		120 -85.605964931805346 140 -85.605964931805346 149 -73.92482646142183 156 -112.77476137878348 
		163 -84.525833072361294 166 -62.616236983171497 174 -83.811663913275623 180 -85.605964931805346;
createNode animCurveTA -n "bouncy:L_Elbow_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Elbow_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 25 0 50 0 60 -18.972865672150782 62 
		0 78 0 84 -18.972865672150782 100 -18.972865672150782 105 -18.972865672150782 110 
		-0.14378651674261919 115 -51.832170336554015 120 -18.972865672150782 140 0 149 0 
		163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Elbow_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 145 -56.53152363062528 149 -56.53152363062528 
		156 -25.161975382362709 163 -19.391776578669727 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Hand_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 49.617646679269711 169 0 
		180 0;
createNode animCurveTA -n "bouncy:L_Hand_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 -32.104422146780507 169 0 
		180 0;
createNode animCurveTA -n "bouncy:L_Hand_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 14.969955440562332 169 0 
		180 0;
createNode animCurveTA -n "bouncy:R_Shoulder_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 25 0 50 0 60 -3.492002841814219e-015 
		62 -2.9339250923247139e-015 66 -1.3394135708037887e-015 72 8.1317570020664055e-016 
		74 2.5509741611627108e-016 78 -1.3394119669990702e-015 84 -3.492002841814219e-015 
		100 -3.492002841814219e-015 105 -4.0009124769672644 110 0 115 -8.3700960729393845 
		120 -3.492002841814219e-015 140 0 149 -3.9293761633126829 156 -173.28693444818822 
		163 -9.065342972180563 167 3.9755170632662673 171 0 180 0;
createNode animCurveTU -n "bouncy:R_Foot_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
createNode animCurveTU -n "bouncy:R_Foot_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
createNode animCurveTU -n "bouncy:R_Foot_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
createNode animCurveTU -n "bouncy:L_Foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  169 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:L_Foot_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  169 1;
createNode animCurveTU -n "bouncy:L_Foot_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  169 1;
createNode animCurveTU -n "bouncy:L_Foot_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  169 1;
createNode animCurveTL -n "bouncy:L_Shoulder_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 174 0 180 0;
createNode animCurveTL -n "bouncy:L_Shoulder_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 174 0 180 0;
createNode animCurveTL -n "bouncy:L_Shoulder_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 174 0 180 0;
createNode animCurveTL -n "bouncy:L_Elbow_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Elbow_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Elbow_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Hand_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Hand_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Hand_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTU -n "bouncy:R_hand_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  62 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:R_hand_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  62 1;
createNode animCurveTU -n "bouncy:R_hand_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  62 1;
createNode animCurveTU -n "bouncy:R_hand_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  62 1;
createNode animCurveTU -n "bouncy:L_Elbow_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  60 1 84 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "bouncy:L_Elbow_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  60 1 84 1;
createNode animCurveTU -n "bouncy:L_Elbow_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  60 1 84 1;
createNode animCurveTU -n "bouncy:L_Elbow_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  60 1 84 1;
createNode animCurveTU -n "bouncy:R_Foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:L_Shoulder_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "bouncy:Root_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 -0.51833457111799719 50 0 60 0.52472673792697122 
		62 0.47739023396882774 66 0.34214276886414657 72 0.15955879980132195 74 0.20689534910464541 
		78 0.34214263282842672 84 0.52472673792697122 100 12.765531119347646 105 18.81693919555228 
		110 11.652712044660506 115 18.81693919555228 120 12.765531119347646 140 0 145 28.98799667356252 
		149 43.694094407027684 156 4.9910382730689067 163 50.191846523582825 169 6.5548829624097591 
		174 0.3285783737564425 180 0;
createNode animCurveTA -n "bouncy:Root_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 25 -0.23360654776583509 50 0 60 5.3068862015933718 
		62 4.0259565349214581 66 -1.0999854816654204 72 -6.6060344480723154 74 -5.7880263955827678 
		78 -1.6047867270773075 84 5.3068862015933718 100 -5.5616064925662938 105 5.3068862015933789 
		110 0.36720563520172295 115 5.3068862015933789 120 -5.5616064925662938 140 0 149 
		0 163 9.5172280752011247 169 -10.939469875369744 174 0.07491934194718862 180 0;
createNode animCurveTA -n "bouncy:Root_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 25 -0.17334842792588231 50 0 60 0.24030480236065291 
		62 0.029397548164079863 66 -0.5731959920664691 72 -1.3866967864935913 74 -1.1757893302620857 
		78 -0.57319659817206958 84 0.24030480236065291 100 12.294449158618603 105 0.24030480236065396 
		110 -10.843414602691011 115 0.24030480236065396 120 12.294449158618603 140 0 149 
		0 163 9.495878554770151 169 5.1547119155598029 174 -1.2574805668051119 180 0;
createNode animCurveTL -n "bouncy:R_Shoulder_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 171 0 180 0;
createNode animCurveTL -n "bouncy:R_Shoulder_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 171 0 180 0;
createNode animCurveTL -n "bouncy:R_Shoulder_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 110 0 120 0 140 0 149 0 163 0 171 0 180 0;
createNode animCurveTL -n "bouncy:R_Elbow_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_Elbow_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_Elbow_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_hand_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_hand_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_hand_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_Foot_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:R_Shoulder_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 -5.0338463928476953 50 0 60 -24.38232938143581 
		62 -21.087183883399195 66 -5.3217250276112136 72 12.090213963550102 74 9.6422959189335788 
		78 -3.1753626113951747 84 -24.38232938143581 100 -58.544153151613919 105 27.53360748804619 
		110 100.73905098342607 115 32.903213061906442 120 -58.544153151613919 140 0 145 72.695817278034554 
		149 -19.17256670962924 156 9.9173935833934781 163 65.744935143841957 167 -34.091697156368078 
		171 46.843616726775586 180 0;
createNode animCurveTA -n "bouncy:R_Shoulder_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 78.286534760298153 25 78.286534760298181 
		50 78.286534760298153 60 78.286534760298238 62 78.286534760298238 66 78.286534760298224 
		72 78.28653476029821 74 78.28653476029821 78 78.286534760298224 84 78.286534760298238 
		100 78.286534760298238 105 69.682750611459937 110 78.286534760298238 115 63.131347254146355 
		120 78.286534760298238 140 78.286534760298153 149 65.831112638553421 156 -78.707831721114346 
		163 56.262124555018595 167 68.53058446166618 171 78.286534760298153 180 78.286534760298153;
createNode animCurveTA -n "bouncy:R_Elbow_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 22.586702024448293 25 22.586702024448293 
		50 22.586702024448293 60 22.586702024448293 62 22.586702024448293 66 22.586702024448293 
		72 22.578448840955851 74 22.586702024448293 78 22.586702024448293 84 22.586702024448293 
		100 23.604671525960139 105 46.662351576532053 110 22.586702024448293 115 22.586702024448293 
		120 23.604671525960139 140 22.586702024448293 145 31.806320617730933 149 31.806320617730933 
		156 33.49626321658679 163 2.5064545502898055 169 22.586702024448293 180 22.586702024448293;
createNode animCurveTA -n "bouncy:R_Elbow_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -8.1878676580830998 25 -8.1878676580830998 
		50 -8.1878676580830998 60 -8.1878676580830998 62 -8.1878676580830998 66 -8.1878676580830998 
		72 8.048755192285352 74 -8.1878676580830998 78 -8.1878676580830998 84 -8.1878676580830998 
		100 -18.30302067783299 105 20.228112821018058 110 -8.1878676580830998 115 -8.1878676580830998 
		120 -18.30302067783299 140 -8.1878676580830998 145 -16.604256416064885 149 -16.604256416064885 
		156 12.422607116387546 163 3.5343268088174753 169 -8.1878676580830998 180 -8.1878676580830998;
createNode animCurveTA -n "bouncy:R_Elbow_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 7.2131305016155718 25 7.2131305016155718 
		50 7.2131305016155718 60 7.2131305016155718 62 7.2131305016155718 66 7.2131305016155718 
		72 13.935700839510227 74 7.2131305016155718 78 7.2131305016155718 84 7.2131305016155718 
		100 2.7896150894269849 105 21.111746325453147 110 7.2131305016155718 115 7.2131305016155718 
		120 2.7896150894269849 140 7.2131305016155718 145 43.770464655669528 149 43.770464655669528 
		156 1.0244922834004173 163 20.250066896103856 169 7.2131305016155718 180 7.2131305016155718;
createNode animCurveTA -n "bouncy:R_hand_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 13.791475410321429 169 0 
		180 0;
createNode animCurveTA -n "bouncy:R_hand_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 22.896419195769184 169 0 
		180 0;
createNode animCurveTU -n "bouncy:L_Shoulder_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:L_Shoulder_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:R_Elbow_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:R_Elbow_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "bouncy:R_hand_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 -38.016754731001846 169 0 
		180 0;
createNode animCurveTA -n "bouncy:R_Foot_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 0 50 0 60 -23.284731841711526 62 
		0 66 0 72 0 74 4.6368180732634761 78 14.558480828210659 84 -23.284731841711526 100 
		-52.483954702061638 102 0 105 0 110 0 115 46.596549850652877 120 -52.483954702061638 
		140 0 145 0 149 0 156 60.804643607839722 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:R_Foot_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:R_Foot_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Foot_CTRL_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 25 0 50 0 60 0 62 6.52057611997507 
		66 21.676222974274776 72 -24.322290453595002 74 0 78 0 84 0 100 0 105 40.691046078629547 
		110 -54.918341975598175 112 0 115 0 120 0 140 0 145 0 149 0 156 74.679999760829034 
		160 0 163 0 169 0 174 4.7813157418530494 180 0;
createNode animCurveTA -n "bouncy:L_Foot_CTRL_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTA -n "bouncy:L_Foot_CTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTU -n "bouncy:R_Elbow_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:R_Elbow_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:R_Shoulder_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:R_Shoulder_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:R_Shoulder_CTRL_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "bouncy:R_Shoulder_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "bouncy:Root_CTRL_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 25 1 50 1 100 1 110 1 112 1 120 1 124 
		1;
createNode animCurveTU -n "bouncy:Root_CTRL_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 25 1 50 1 100 1 110 1 112 1 120 1 124 
		1;
createNode animCurveTL -n "bouncy:R_Foot_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 0 50 0 60 0.0052838158147303924 
		62 0.004941347132818727 66 0.0026419079073651971 72 0 74 0.055199253811629899 78 
		0.16677196080707007 84 0.0052838158147303924 100 0.29812573966807315 102 0 105 0 
		110 0 115 0.39378284973403432 120 0.29812573966807315 140 0 145 0 149 0 156 0.38372290379830165 
		163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:R_Foot_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 25 0 50 0 60 0.31967912041465718 62 
		0.23548795650248167 66 -0.094422573893233525 72 -0.44750136058756718 74 -0.35398617060023896 
		78 -0.0032515915990700937 84 0.31967912041465718 100 0.75704555051857758 102 0 105 
		-0.37212059166190847 110 -0.8654349161087922 115 0.13524723556149076 120 0.75704555051857758 
		140 0 145 0 149 0 156 -0.21441467099391365 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Foot_CTRL_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  1 0 25 0 50 0 60 0 62 0 66 0 72 0 74 0 
		78 0 84 0 100 0 105 0 110 0 115 0 120 0 140 0 149 0 163 0 169 0 180 0;
createNode animCurveTL -n "bouncy:L_Foot_CTRL_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 25 0 50 0 60 0 62 0.049778264369445505 
		66 0.19200220383128574 72 0 74 0 78 0 84 0 100 0 105 0.34176352314442904 110 0.29141203536031618 
		112 0 115 0 120 0 140 0 145 0 149 0 156 0.33099280084339489 160 0 163 0 169 0 174 
		0.0234031240894205 180 0;
createNode animCurveTL -n "bouncy:L_Foot_CTRL_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 25 0 50 0 60 -0.35922237435382615 62 
		-0.2918891319623878 66 -0.0031480333240805438 72 0.31057515401141916 74 0.21385490438828761 
		78 -0.1237237838571526 84 -0.35922237435382615 100 -0.94096740769591602 105 0.036838185907335792 
		110 0.75776214355049731 112 0 115 -0.39220506469529748 120 -0.94096740769591602 140 
		0 145 0 149 0 156 -0.074086368882675557 160 0 163 -0.27894936333149511 169 -0.27894936333149511 
		174 -0.11610167266021978 180 0;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
	setAttr -s 2 ".ln";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 25;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 25;
select -ne :characterPartition;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "bouncy:Controls_LYR.di" "bouncy:Master_CTRL.do";
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.ctx" "bouncy:L_RFL_Heel_JNT.tx"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.cty" "bouncy:L_RFL_Heel_JNT.ty"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.ctz" "bouncy:L_RFL_Heel_JNT.tz"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.crx" "bouncy:L_RFL_Heel_JNT.rx"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.cry" "bouncy:L_RFL_Heel_JNT.ry"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.crz" "bouncy:L_RFL_Heel_JNT.rz"
		;
connectAttr "bouncy:L_RFL_Heel_JNT.s" "bouncy:L_RFL_Toe_JNT.is";
connectAttr "bouncy:L_RFL_Toe_JNT.s" "bouncy:L_RFL_Ball_JNT.is";
connectAttr "bouncy:L_RFL_Ball_JNT.s" "bouncy:L_RFL_Ankle_JNT.is";
connectAttr "bouncy:L_RFL_Heel_JNT.ro" "bouncy:L_RFL_Heel_JNT_parentConstraint1.cro"
		;
connectAttr "bouncy:L_RFL_Heel_JNT.pim" "bouncy:L_RFL_Heel_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:L_RFL_Heel_JNT.rp" "bouncy:L_RFL_Heel_JNT_parentConstraint1.crp"
		;
connectAttr "bouncy:L_RFL_Heel_JNT.rpt" "bouncy:L_RFL_Heel_JNT_parentConstraint1.crt"
		;
connectAttr "bouncy:L_RFL_Heel_JNT.jo" "bouncy:L_RFL_Heel_JNT_parentConstraint1.cjo"
		;
connectAttr "bouncy:L_Foot_CTRL.t" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_Foot_CTRL.rp" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_Foot_CTRL.rpt" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_Foot_CTRL.r" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_Foot_CTRL.ro" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_Foot_CTRL.s" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_Foot_CTRL.pm" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_RFL_Heel_JNT_parentConstraint1.w0" "bouncy:L_RFL_Heel_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.ctx" "bouncy:R_RFR_Heel_JNT.tx"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.cty" "bouncy:R_RFR_Heel_JNT.ty"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.ctz" "bouncy:R_RFR_Heel_JNT.tz"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.crx" "bouncy:R_RFR_Heel_JNT.rx"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.cry" "bouncy:R_RFR_Heel_JNT.ry"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.crz" "bouncy:R_RFR_Heel_JNT.rz"
		;
connectAttr "bouncy:R_RFR_Heel_JNT.s" "bouncy:R_RFR_Toe_JNT.is";
connectAttr "bouncy:R_RFR_Toe_JNT.s" "bouncy:R_RFR_Ball_JNT.is";
connectAttr "bouncy:R_RFR_Ball_JNT.s" "bouncy:R_RFR_Ankle_JNT.is";
connectAttr "bouncy:R_RFR_Heel_JNT.ro" "bouncy:R_RFR_Heel_JNT_parentConstraint1.cro"
		;
connectAttr "bouncy:R_RFR_Heel_JNT.pim" "bouncy:R_RFR_Heel_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:R_RFR_Heel_JNT.rp" "bouncy:R_RFR_Heel_JNT_parentConstraint1.crp"
		;
connectAttr "bouncy:R_RFR_Heel_JNT.rpt" "bouncy:R_RFR_Heel_JNT_parentConstraint1.crt"
		;
connectAttr "bouncy:R_RFR_Heel_JNT.jo" "bouncy:R_RFR_Heel_JNT_parentConstraint1.cjo"
		;
connectAttr "bouncy:R_Foot_CTRL.t" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_Foot_CTRL.rp" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_Foot_CTRL.rpt" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_Foot_CTRL.r" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_Foot_CTRL.ro" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_Foot_CTRL.s" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_Foot_CTRL.pm" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_RFR_Heel_JNT_parentConstraint1.w0" "bouncy:R_RFR_Heel_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:Bouncy.lv[30]" "bouncy:Root_CTRL.tx";
connectAttr "bouncy:Bouncy.lv[28]" "bouncy:Root_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[29]" "bouncy:Root_CTRL.ty";
connectAttr "bouncy:Bouncy.av[28]" "bouncy:Root_CTRL.rz";
connectAttr "bouncy:Bouncy.av[29]" "bouncy:Root_CTRL.ry";
connectAttr "bouncy:Bouncy.av[30]" "bouncy:Root_CTRL.rx";
connectAttr "bouncy:Root_CTRL_visibility.o" "bouncy:Root_CTRL.v";
connectAttr "bouncy:Root_CTRL_scaleX.o" "bouncy:Root_CTRL.sx";
connectAttr "bouncy:Root_CTRL_scaleY.o" "bouncy:Root_CTRL.sy";
connectAttr "bouncy:Root_CTRL_scaleZ.o" "bouncy:Root_CTRL.sz";
connectAttr "bouncy:root_JNT.s" "bouncy:head_JNT.is";
connectAttr "bouncy:head_JNT.s" "bouncy:L_Shoulder_JNT.is";
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.ctx" "bouncy:L_Shoulder_JNT.tx"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.cty" "bouncy:L_Shoulder_JNT.ty"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.ctz" "bouncy:L_Shoulder_JNT.tz"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.crx" "bouncy:L_Shoulder_JNT.rx"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.cry" "bouncy:L_Shoulder_JNT.ry"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.crz" "bouncy:L_Shoulder_JNT.rz"
		;
connectAttr "bouncy:L_Shoulder_JNT.s" "bouncy:L_Elbow_JNT.is";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.ctx" "bouncy:L_Elbow_JNT.tx";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.cty" "bouncy:L_Elbow_JNT.ty";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.ctz" "bouncy:L_Elbow_JNT.tz";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.crx" "bouncy:L_Elbow_JNT.rx";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.cry" "bouncy:L_Elbow_JNT.ry";
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.crz" "bouncy:L_Elbow_JNT.rz";
connectAttr "bouncy:L_Elbow_JNT.s" "bouncy:L_Wrist_JNT.is";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.ctx" "bouncy:L_Wrist_JNT.tx";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.cty" "bouncy:L_Wrist_JNT.ty";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.ctz" "bouncy:L_Wrist_JNT.tz";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.crx" "bouncy:L_Wrist_JNT.rx";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.cry" "bouncy:L_Wrist_JNT.ry";
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.crz" "bouncy:L_Wrist_JNT.rz";
connectAttr "bouncy:L_Wrist_JNT.s" "bouncy:L_Fingers_JNT.is";
connectAttr "bouncy:L_Wrist_JNT.ro" "bouncy:L_Wrist_JNT_parentConstraint1.cro";
connectAttr "bouncy:L_Wrist_JNT.pim" "bouncy:L_Wrist_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:L_Wrist_JNT.rp" "bouncy:L_Wrist_JNT_parentConstraint1.crp";
connectAttr "bouncy:L_Wrist_JNT.rpt" "bouncy:L_Wrist_JNT_parentConstraint1.crt";
connectAttr "bouncy:L_Wrist_JNT.jo" "bouncy:L_Wrist_JNT_parentConstraint1.cjo";
connectAttr "bouncy:L_Hand_CTRL.t" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_Hand_CTRL.rp" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_Hand_CTRL.rpt" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_Hand_CTRL.r" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_Hand_CTRL.ro" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_Hand_CTRL.s" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_Hand_CTRL.pm" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_Wrist_JNT_parentConstraint1.w0" "bouncy:L_Wrist_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Elbow_JNT.ro" "bouncy:L_Elbow_JNT_parentConstraint1.cro";
connectAttr "bouncy:L_Elbow_JNT.pim" "bouncy:L_Elbow_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:L_Elbow_JNT.rp" "bouncy:L_Elbow_JNT_parentConstraint1.crp";
connectAttr "bouncy:L_Elbow_JNT.rpt" "bouncy:L_Elbow_JNT_parentConstraint1.crt";
connectAttr "bouncy:L_Elbow_JNT.jo" "bouncy:L_Elbow_JNT_parentConstraint1.cjo";
connectAttr "bouncy:L_Elbow_CTRL.t" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_Elbow_CTRL.rp" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_Elbow_CTRL.rpt" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_Elbow_CTRL.r" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_Elbow_CTRL.ro" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_Elbow_CTRL.s" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_Elbow_CTRL.pm" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_Elbow_JNT_parentConstraint1.w0" "bouncy:L_Elbow_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Shoulder_JNT.ro" "bouncy:L_Shoulder_JNT_parentConstraint1.cro"
		;
connectAttr "bouncy:L_Shoulder_JNT.pim" "bouncy:L_Shoulder_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:L_Shoulder_JNT.rp" "bouncy:L_Shoulder_JNT_parentConstraint1.crp"
		;
connectAttr "bouncy:L_Shoulder_JNT.rpt" "bouncy:L_Shoulder_JNT_parentConstraint1.crt"
		;
connectAttr "bouncy:L_Shoulder_JNT.jo" "bouncy:L_Shoulder_JNT_parentConstraint1.cjo"
		;
connectAttr "bouncy:L_Shoulder_CTRL.t" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_Shoulder_CTRL.rp" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_Shoulder_CTRL.rpt" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_Shoulder_CTRL.r" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_Shoulder_CTRL.ro" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_Shoulder_CTRL.s" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_Shoulder_CTRL.pm" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_Shoulder_JNT_parentConstraint1.w0" "bouncy:L_Shoulder_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:head_JNT.s" "bouncy:R_Shoulder_JNT.is";
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.ctx" "bouncy:R_Shoulder_JNT.tx"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.cty" "bouncy:R_Shoulder_JNT.ty"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.ctz" "bouncy:R_Shoulder_JNT.tz"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.crx" "bouncy:R_Shoulder_JNT.rx"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.cry" "bouncy:R_Shoulder_JNT.ry"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.crz" "bouncy:R_Shoulder_JNT.rz"
		;
connectAttr "bouncy:R_Shoulder_JNT.s" "bouncy:R_Elbow_JNT.is";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.ctx" "bouncy:R_Elbow_JNT.tx";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.cty" "bouncy:R_Elbow_JNT.ty";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.ctz" "bouncy:R_Elbow_JNT.tz";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.crx" "bouncy:R_Elbow_JNT.rx";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.cry" "bouncy:R_Elbow_JNT.ry";
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.crz" "bouncy:R_Elbow_JNT.rz";
connectAttr "bouncy:R_Elbow_JNT.s" "bouncy:R_Wrist_JNT.is";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.ctx" "bouncy:R_Wrist_JNT.tx";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.cty" "bouncy:R_Wrist_JNT.ty";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.ctz" "bouncy:R_Wrist_JNT.tz";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.crx" "bouncy:R_Wrist_JNT.rx";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.cry" "bouncy:R_Wrist_JNT.ry";
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.crz" "bouncy:R_Wrist_JNT.rz";
connectAttr "bouncy:R_Wrist_JNT.s" "bouncy:R_Fingers_JNT.is";
connectAttr "bouncy:R_Wrist_JNT.ro" "bouncy:R_Wrist_JNT_parentConstraint1.cro";
connectAttr "bouncy:R_Wrist_JNT.pim" "bouncy:R_Wrist_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:R_Wrist_JNT.rp" "bouncy:R_Wrist_JNT_parentConstraint1.crp";
connectAttr "bouncy:R_Wrist_JNT.rpt" "bouncy:R_Wrist_JNT_parentConstraint1.crt";
connectAttr "bouncy:R_Wrist_JNT.jo" "bouncy:R_Wrist_JNT_parentConstraint1.cjo";
connectAttr "bouncy:R_hand_CTRL.t" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_hand_CTRL.rp" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_hand_CTRL.rpt" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_hand_CTRL.r" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_hand_CTRL.ro" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_hand_CTRL.s" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_hand_CTRL.pm" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_Wrist_JNT_parentConstraint1.w0" "bouncy:R_Wrist_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_Elbow_JNT.ro" "bouncy:R_Elbow_JNT_parentConstraint1.cro";
connectAttr "bouncy:R_Elbow_JNT.pim" "bouncy:R_Elbow_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:R_Elbow_JNT.rp" "bouncy:R_Elbow_JNT_parentConstraint1.crp";
connectAttr "bouncy:R_Elbow_JNT.rpt" "bouncy:R_Elbow_JNT_parentConstraint1.crt";
connectAttr "bouncy:R_Elbow_JNT.jo" "bouncy:R_Elbow_JNT_parentConstraint1.cjo";
connectAttr "bouncy:R_Elbow_CTRL.t" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_Elbow_CTRL.rp" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_Elbow_CTRL.rpt" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_Elbow_CTRL.r" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_Elbow_CTRL.ro" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_Elbow_CTRL.s" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_Elbow_CTRL.pm" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_Elbow_JNT_parentConstraint1.w0" "bouncy:R_Elbow_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_Shoulder_JNT.ro" "bouncy:R_Shoulder_JNT_parentConstraint1.cro"
		;
connectAttr "bouncy:R_Shoulder_JNT.pim" "bouncy:R_Shoulder_JNT_parentConstraint1.cpim"
		;
connectAttr "bouncy:R_Shoulder_JNT.rp" "bouncy:R_Shoulder_JNT_parentConstraint1.crp"
		;
connectAttr "bouncy:R_Shoulder_JNT.rpt" "bouncy:R_Shoulder_JNT_parentConstraint1.crt"
		;
connectAttr "bouncy:R_Shoulder_JNT.jo" "bouncy:R_Shoulder_JNT_parentConstraint1.cjo"
		;
connectAttr "bouncy:R_Shoulder_CTRL.t" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_Shoulder_CTRL.rp" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_Shoulder_CTRL.rpt" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_Shoulder_CTRL.r" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_Shoulder_CTRL.ro" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_Shoulder_CTRL.s" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_Shoulder_CTRL.pm" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_Shoulder_JNT_parentConstraint1.w0" "bouncy:R_Shoulder_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:root_JNT.s" "bouncy:hip_root_JNT.is";
connectAttr "bouncy:hip_root_JNT.s" "bouncy:L_Hip_JNT.is";
connectAttr "bouncy:L_Hip_JNT.s" "bouncy:L_Knee_JNT.is";
connectAttr "bouncy:L_Knee_JNT.s" "bouncy:L_Ankle_JNT.is";
connectAttr "bouncy:L_Ankle_JNT.s" "bouncy:L_Ball_JNT.is";
connectAttr "bouncy:L_Ball_JNT.s" "bouncy:L_Toe_JNT.is";
connectAttr "bouncy:L_Toe_JNT.tx" "bouncy:effector4.tx";
connectAttr "bouncy:L_Toe_JNT.ty" "bouncy:effector4.ty";
connectAttr "bouncy:L_Toe_JNT.tz" "bouncy:effector4.tz";
connectAttr "bouncy:L_Ball_JNT.tx" "bouncy:effector3.tx";
connectAttr "bouncy:L_Ball_JNT.ty" "bouncy:effector3.ty";
connectAttr "bouncy:L_Ball_JNT.tz" "bouncy:effector3.tz";
connectAttr "bouncy:L_Ankle_JNT.tx" "bouncy:effector1.tx";
connectAttr "bouncy:L_Ankle_JNT.ty" "bouncy:effector1.ty";
connectAttr "bouncy:L_Ankle_JNT.tz" "bouncy:effector1.tz";
connectAttr "bouncy:hip_root_JNT.s" "bouncy:R_Hip_JNT.is";
connectAttr "bouncy:R_Hip_JNT.s" "bouncy:R_Knee_JNT.is";
connectAttr "bouncy:R_Knee_JNT.s" "bouncy:R_Ankle_JNT.is";
connectAttr "bouncy:R_Ankle_JNT.s" "bouncy:R_Ball_JNT.is";
connectAttr "bouncy:R_Ball_JNT.s" "bouncy:R_Toe_JNT.is";
connectAttr "bouncy:R_Toe_JNT.tx" "bouncy:effector6.tx";
connectAttr "bouncy:R_Toe_JNT.ty" "bouncy:effector6.ty";
connectAttr "bouncy:R_Toe_JNT.tz" "bouncy:effector6.tz";
connectAttr "bouncy:R_Ball_JNT.tx" "bouncy:effector5.tx";
connectAttr "bouncy:R_Ball_JNT.ty" "bouncy:effector5.ty";
connectAttr "bouncy:R_Ball_JNT.tz" "bouncy:effector5.tz";
connectAttr "bouncy:R_Ankle_JNT.tx" "bouncy:effector2.tx";
connectAttr "bouncy:R_Ankle_JNT.ty" "bouncy:effector2.ty";
connectAttr "bouncy:R_Ankle_JNT.tz" "bouncy:effector2.tz";
connectAttr "bouncy:Bouncy.lv[25]" "bouncy:head_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[26]" "bouncy:head_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[27]" "bouncy:head_CTRL.tx";
connectAttr "bouncy:Bouncy.av[25]" "bouncy:head_CTRL.rz";
connectAttr "bouncy:Bouncy.av[26]" "bouncy:head_CTRL.ry";
connectAttr "bouncy:Bouncy.av[27]" "bouncy:head_CTRL.rx";
connectAttr "bouncy:Bouncy.lv[22]" "bouncy:L_Shoulder_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[23]" "bouncy:L_Shoulder_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[24]" "bouncy:L_Shoulder_CTRL.tx";
connectAttr "bouncy:Bouncy.av[22]" "bouncy:L_Shoulder_CTRL.rz";
connectAttr "bouncy:Bouncy.av[23]" "bouncy:L_Shoulder_CTRL.ry";
connectAttr "bouncy:Bouncy.av[24]" "bouncy:L_Shoulder_CTRL.rx";
connectAttr "bouncy:L_Shoulder_CTRL_scaleX.o" "bouncy:L_Shoulder_CTRL.sx";
connectAttr "bouncy:L_Shoulder_CTRL_scaleY.o" "bouncy:L_Shoulder_CTRL.sy";
connectAttr "bouncy:L_Shoulder_CTRL_scaleZ.o" "bouncy:L_Shoulder_CTRL.sz";
connectAttr "bouncy:L_Shoulder_CTRL_visibility.o" "bouncy:L_Shoulder_CTRL.v";
connectAttr "bouncy:transformGeometry1.og" "bouncy:L_Shoulder_CTRLShape.cr";
connectAttr "bouncy:Bouncy.lv[19]" "bouncy:L_Elbow_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[20]" "bouncy:L_Elbow_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[21]" "bouncy:L_Elbow_CTRL.tx";
connectAttr "bouncy:Bouncy.av[19]" "bouncy:L_Elbow_CTRL.rz";
connectAttr "bouncy:Bouncy.av[20]" "bouncy:L_Elbow_CTRL.ry";
connectAttr "bouncy:Bouncy.av[21]" "bouncy:L_Elbow_CTRL.rx";
connectAttr "bouncy:L_Elbow_CTRL_scaleX.o" "bouncy:L_Elbow_CTRL.sx";
connectAttr "bouncy:L_Elbow_CTRL_scaleY.o" "bouncy:L_Elbow_CTRL.sy";
connectAttr "bouncy:L_Elbow_CTRL_scaleZ.o" "bouncy:L_Elbow_CTRL.sz";
connectAttr "bouncy:L_Elbow_CTRL_visibility.o" "bouncy:L_Elbow_CTRL.v";
connectAttr "bouncy:Bouncy.lv[16]" "bouncy:L_Hand_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[17]" "bouncy:L_Hand_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[18]" "bouncy:L_Hand_CTRL.tx";
connectAttr "bouncy:Bouncy.av[16]" "bouncy:L_Hand_CTRL.rz";
connectAttr "bouncy:Bouncy.av[17]" "bouncy:L_Hand_CTRL.ry";
connectAttr "bouncy:Bouncy.av[18]" "bouncy:L_Hand_CTRL.rx";
connectAttr "bouncy:Bouncy.lv[13]" "bouncy:R_Shoulder_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[14]" "bouncy:R_Shoulder_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[15]" "bouncy:R_Shoulder_CTRL.tx";
connectAttr "bouncy:Bouncy.av[13]" "bouncy:R_Shoulder_CTRL.rz";
connectAttr "bouncy:Bouncy.av[14]" "bouncy:R_Shoulder_CTRL.ry";
connectAttr "bouncy:Bouncy.av[15]" "bouncy:R_Shoulder_CTRL.rx";
connectAttr "bouncy:R_Shoulder_CTRL_scaleX.o" "bouncy:R_Shoulder_CTRL.sx";
connectAttr "bouncy:R_Shoulder_CTRL_scaleY.o" "bouncy:R_Shoulder_CTRL.sy";
connectAttr "bouncy:R_Shoulder_CTRL_scaleZ.o" "bouncy:R_Shoulder_CTRL.sz";
connectAttr "bouncy:R_Shoulder_CTRL_visibility.o" "bouncy:R_Shoulder_CTRL.v";
connectAttr "bouncy:Bouncy.lv[10]" "bouncy:R_Elbow_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[11]" "bouncy:R_Elbow_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[12]" "bouncy:R_Elbow_CTRL.tx";
connectAttr "bouncy:Bouncy.av[10]" "bouncy:R_Elbow_CTRL.rz";
connectAttr "bouncy:Bouncy.av[11]" "bouncy:R_Elbow_CTRL.ry";
connectAttr "bouncy:Bouncy.av[12]" "bouncy:R_Elbow_CTRL.rx";
connectAttr "bouncy:R_Elbow_CTRL_scaleX.o" "bouncy:R_Elbow_CTRL.sx";
connectAttr "bouncy:R_Elbow_CTRL_scaleY.o" "bouncy:R_Elbow_CTRL.sy";
connectAttr "bouncy:R_Elbow_CTRL_scaleZ.o" "bouncy:R_Elbow_CTRL.sz";
connectAttr "bouncy:R_Elbow_CTRL_visibility.o" "bouncy:R_Elbow_CTRL.v";
connectAttr "bouncy:Bouncy.lv[7]" "bouncy:R_hand_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[8]" "bouncy:R_hand_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[9]" "bouncy:R_hand_CTRL.tx";
connectAttr "bouncy:Bouncy.av[7]" "bouncy:R_hand_CTRL.rz";
connectAttr "bouncy:Bouncy.av[8]" "bouncy:R_hand_CTRL.ry";
connectAttr "bouncy:Bouncy.av[9]" "bouncy:R_hand_CTRL.rx";
connectAttr "bouncy:R_hand_CTRL_scaleX.o" "bouncy:R_hand_CTRL.sx";
connectAttr "bouncy:R_hand_CTRL_scaleY.o" "bouncy:R_hand_CTRL.sy";
connectAttr "bouncy:R_hand_CTRL_scaleZ.o" "bouncy:R_hand_CTRL.sz";
connectAttr "bouncy:R_hand_CTRL_visibility.o" "bouncy:R_hand_CTRL.v";
connectAttr "bouncy:Bouncy.lv[4]" "bouncy:R_Foot_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[5]" "bouncy:R_Foot_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[6]" "bouncy:R_Foot_CTRL.tx";
connectAttr "bouncy:Bouncy.av[4]" "bouncy:R_Foot_CTRL.rz";
connectAttr "bouncy:Bouncy.av[5]" "bouncy:R_Foot_CTRL.ry";
connectAttr "bouncy:Bouncy.av[6]" "bouncy:R_Foot_CTRL.rx";
connectAttr "bouncy:R_Foot_CTRL_scaleX.o" "bouncy:R_Foot_CTRL.sx";
connectAttr "bouncy:R_Foot_CTRL_scaleY.o" "bouncy:R_Foot_CTRL.sy";
connectAttr "bouncy:R_Foot_CTRL_scaleZ.o" "bouncy:R_Foot_CTRL.sz";
connectAttr "bouncy:R_Foot_CTRL_visibility.o" "bouncy:R_Foot_CTRL.v";
connectAttr "bouncy:Bouncy.lv[1]" "bouncy:L_Foot_CTRL.tz";
connectAttr "bouncy:Bouncy.lv[2]" "bouncy:L_Foot_CTRL.ty";
connectAttr "bouncy:Bouncy.lv[3]" "bouncy:L_Foot_CTRL.tx";
connectAttr "bouncy:Bouncy.av[1]" "bouncy:L_Foot_CTRL.rz";
connectAttr "bouncy:Bouncy.av[2]" "bouncy:L_Foot_CTRL.ry";
connectAttr "bouncy:Bouncy.av[3]" "bouncy:L_Foot_CTRL.rx";
connectAttr "bouncy:L_Foot_CTRL_scaleX.o" "bouncy:L_Foot_CTRL.sx";
connectAttr "bouncy:L_Foot_CTRL_scaleY.o" "bouncy:L_Foot_CTRL.sy";
connectAttr "bouncy:L_Foot_CTRL_scaleZ.o" "bouncy:L_Foot_CTRL.sz";
connectAttr "bouncy:L_Foot_CTRL_visibility.o" "bouncy:L_Foot_CTRL.v";
connectAttr "bouncy:R_Ball_JNT.msg" "bouncy:R_Toe_IK.hsj";
connectAttr "bouncy:effector6.hp" "bouncy:R_Toe_IK.hee";
connectAttr "bouncy:ikSCsolver.msg" "bouncy:R_Toe_IK.hsv";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.ctx" "bouncy:R_Toe_IK.tx";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.cty" "bouncy:R_Toe_IK.ty";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.ctz" "bouncy:R_Toe_IK.tz";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.crx" "bouncy:R_Toe_IK.rx";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.cry" "bouncy:R_Toe_IK.ry";
connectAttr "bouncy:R_Toe_IK_parentConstraint1.crz" "bouncy:R_Toe_IK.rz";
connectAttr "bouncy:R_Toe_IK.ro" "bouncy:R_Toe_IK_parentConstraint1.cro";
connectAttr "bouncy:R_Toe_IK.pim" "bouncy:R_Toe_IK_parentConstraint1.cpim";
connectAttr "bouncy:R_Toe_IK.rp" "bouncy:R_Toe_IK_parentConstraint1.crp";
connectAttr "bouncy:R_Toe_IK.rpt" "bouncy:R_Toe_IK_parentConstraint1.crt";
connectAttr "bouncy:R_RFR_Toe_JNT.t" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.rp" "bouncy:R_Toe_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.rpt" "bouncy:R_Toe_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.r" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.ro" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.s" "bouncy:R_Toe_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.pm" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_RFR_Toe_JNT.jo" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:R_Toe_IK_parentConstraint1.w0" "bouncy:R_Toe_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_Ankle_JNT.msg" "bouncy:R_Ball_IK.hsj";
connectAttr "bouncy:effector5.hp" "bouncy:R_Ball_IK.hee";
connectAttr "bouncy:ikSCsolver.msg" "bouncy:R_Ball_IK.hsv";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.ctx" "bouncy:R_Ball_IK.tx";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.cty" "bouncy:R_Ball_IK.ty";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.ctz" "bouncy:R_Ball_IK.tz";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.crx" "bouncy:R_Ball_IK.rx";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.cry" "bouncy:R_Ball_IK.ry";
connectAttr "bouncy:R_Ball_IK_parentConstraint1.crz" "bouncy:R_Ball_IK.rz";
connectAttr "bouncy:R_Ball_IK.ro" "bouncy:R_Ball_IK_parentConstraint1.cro";
connectAttr "bouncy:R_Ball_IK.pim" "bouncy:R_Ball_IK_parentConstraint1.cpim";
connectAttr "bouncy:R_Ball_IK.rp" "bouncy:R_Ball_IK_parentConstraint1.crp";
connectAttr "bouncy:R_Ball_IK.rpt" "bouncy:R_Ball_IK_parentConstraint1.crt";
connectAttr "bouncy:R_RFR_Ball_JNT.t" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.rp" "bouncy:R_Ball_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.rpt" "bouncy:R_Ball_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.r" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.ro" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.s" "bouncy:R_Ball_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.pm" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_RFR_Ball_JNT.jo" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:R_Ball_IK_parentConstraint1.w0" "bouncy:R_Ball_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Ball_JNT.msg" "bouncy:L_Toe_IK.hsj";
connectAttr "bouncy:effector4.hp" "bouncy:L_Toe_IK.hee";
connectAttr "bouncy:ikSCsolver.msg" "bouncy:L_Toe_IK.hsv";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.ctx" "bouncy:L_Toe_IK.tx";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.cty" "bouncy:L_Toe_IK.ty";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.ctz" "bouncy:L_Toe_IK.tz";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.crx" "bouncy:L_Toe_IK.rx";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.cry" "bouncy:L_Toe_IK.ry";
connectAttr "bouncy:L_Toe_IK_parentConstraint1.crz" "bouncy:L_Toe_IK.rz";
connectAttr "bouncy:L_Toe_IK.ro" "bouncy:L_Toe_IK_parentConstraint1.cro";
connectAttr "bouncy:L_Toe_IK.pim" "bouncy:L_Toe_IK_parentConstraint1.cpim";
connectAttr "bouncy:L_Toe_IK.rp" "bouncy:L_Toe_IK_parentConstraint1.crp";
connectAttr "bouncy:L_Toe_IK.rpt" "bouncy:L_Toe_IK_parentConstraint1.crt";
connectAttr "bouncy:L_RFL_Toe_JNT.t" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.rp" "bouncy:L_Toe_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.rpt" "bouncy:L_Toe_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.r" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.ro" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.s" "bouncy:L_Toe_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.pm" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_RFL_Toe_JNT.jo" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:L_Toe_IK_parentConstraint1.w0" "bouncy:L_Toe_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Ankle_JNT.msg" "bouncy:L_Ball_IK.hsj";
connectAttr "bouncy:effector3.hp" "bouncy:L_Ball_IK.hee";
connectAttr "bouncy:ikSCsolver.msg" "bouncy:L_Ball_IK.hsv";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.ctx" "bouncy:L_Ball_IK.tx";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.cty" "bouncy:L_Ball_IK.ty";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.ctz" "bouncy:L_Ball_IK.tz";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.crx" "bouncy:L_Ball_IK.rx";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.cry" "bouncy:L_Ball_IK.ry";
connectAttr "bouncy:L_Ball_IK_parentConstraint1.crz" "bouncy:L_Ball_IK.rz";
connectAttr "bouncy:L_Ball_IK.ro" "bouncy:L_Ball_IK_parentConstraint1.cro";
connectAttr "bouncy:L_Ball_IK.pim" "bouncy:L_Ball_IK_parentConstraint1.cpim";
connectAttr "bouncy:L_Ball_IK.rp" "bouncy:L_Ball_IK_parentConstraint1.crp";
connectAttr "bouncy:L_Ball_IK.rpt" "bouncy:L_Ball_IK_parentConstraint1.crt";
connectAttr "bouncy:L_RFL_Ball_JNT.t" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.rp" "bouncy:L_Ball_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.rpt" "bouncy:L_Ball_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.r" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.ro" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.s" "bouncy:L_Ball_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.pm" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_RFL_Ball_JNT.jo" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:L_Ball_IK_parentConstraint1.w0" "bouncy:L_Ball_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_Hip_JNT.msg" "bouncy:R_Leg_IK.hsj";
connectAttr "bouncy:effector2.hp" "bouncy:R_Leg_IK.hee";
connectAttr "bouncy:ikRPsolver.msg" "bouncy:R_Leg_IK.hsv";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.ctx" "bouncy:R_Leg_IK.tx";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.cty" "bouncy:R_Leg_IK.ty";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.ctz" "bouncy:R_Leg_IK.tz";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.crx" "bouncy:R_Leg_IK.rx";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.cry" "bouncy:R_Leg_IK.ry";
connectAttr "bouncy:R_Leg_IK_parentConstraint1.crz" "bouncy:R_Leg_IK.rz";
connectAttr "bouncy:unitConversion4.o" "bouncy:R_Leg_IK.pvx";
connectAttr "bouncy:unitConversion5.o" "bouncy:R_Leg_IK.pvy";
connectAttr "bouncy:unitConversion6.o" "bouncy:R_Leg_IK.pvz";
connectAttr "bouncy:R_Leg_IK.ro" "bouncy:R_Leg_IK_parentConstraint1.cro";
connectAttr "bouncy:R_Leg_IK.pim" "bouncy:R_Leg_IK_parentConstraint1.cpim";
connectAttr "bouncy:R_Leg_IK.rp" "bouncy:R_Leg_IK_parentConstraint1.crp";
connectAttr "bouncy:R_Leg_IK.rpt" "bouncy:R_Leg_IK_parentConstraint1.crt";
connectAttr "bouncy:R_RFR_Ankle_JNT.t" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.rp" "bouncy:R_Leg_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.rpt" "bouncy:R_Leg_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.r" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.ro" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.s" "bouncy:R_Leg_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.pm" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_RFR_Ankle_JNT.jo" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:R_Leg_IK_parentConstraint1.w0" "bouncy:R_Leg_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:R_Leg_IK.pim" "bouncy:R_Leg_IK_poleVectorConstraint1.cpim";
connectAttr "bouncy:R_Hip_JNT.pm" "bouncy:R_Leg_IK_poleVectorConstraint1.ps";
connectAttr "bouncy:R_Hip_JNT.t" "bouncy:R_Leg_IK_poleVectorConstraint1.crp";
connectAttr "bouncy:R_Knee_CTRL.t" "bouncy:R_Leg_IK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "bouncy:R_Knee_CTRL.rp" "bouncy:R_Leg_IK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "bouncy:R_Knee_CTRL.rpt" "bouncy:R_Leg_IK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "bouncy:R_Knee_CTRL.pm" "bouncy:R_Leg_IK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:R_Leg_IK_poleVectorConstraint1.w0" "bouncy:R_Leg_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Hip_JNT.msg" "bouncy:L_Leg_IK.hsj";
connectAttr "bouncy:effector1.hp" "bouncy:L_Leg_IK.hee";
connectAttr "bouncy:ikRPsolver.msg" "bouncy:L_Leg_IK.hsv";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.ctx" "bouncy:L_Leg_IK.tx";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.cty" "bouncy:L_Leg_IK.ty";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.ctz" "bouncy:L_Leg_IK.tz";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.crx" "bouncy:L_Leg_IK.rx";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.cry" "bouncy:L_Leg_IK.ry";
connectAttr "bouncy:L_Leg_IK_parentConstraint1.crz" "bouncy:L_Leg_IK.rz";
connectAttr "bouncy:unitConversion1.o" "bouncy:L_Leg_IK.pvx";
connectAttr "bouncy:unitConversion2.o" "bouncy:L_Leg_IK.pvy";
connectAttr "bouncy:unitConversion3.o" "bouncy:L_Leg_IK.pvz";
connectAttr "bouncy:L_Leg_IK.ro" "bouncy:L_Leg_IK_parentConstraint1.cro";
connectAttr "bouncy:L_Leg_IK.pim" "bouncy:L_Leg_IK_parentConstraint1.cpim";
connectAttr "bouncy:L_Leg_IK.rp" "bouncy:L_Leg_IK_parentConstraint1.crp";
connectAttr "bouncy:L_Leg_IK.rpt" "bouncy:L_Leg_IK_parentConstraint1.crt";
connectAttr "bouncy:L_RFL_Ankle_JNT.t" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.rp" "bouncy:L_Leg_IK_parentConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.rpt" "bouncy:L_Leg_IK_parentConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.r" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tr"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.ro" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tro"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.s" "bouncy:L_Leg_IK_parentConstraint1.tg[0].ts"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.pm" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_RFL_Ankle_JNT.jo" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tjo"
		;
connectAttr "bouncy:L_Leg_IK_parentConstraint1.w0" "bouncy:L_Leg_IK_parentConstraint1.tg[0].tw"
		;
connectAttr "bouncy:L_Leg_IK.pim" "bouncy:L_Leg_IK_poleVectorConstraint1.cpim";
connectAttr "bouncy:L_Hip_JNT.pm" "bouncy:L_Leg_IK_poleVectorConstraint1.ps";
connectAttr "bouncy:L_Hip_JNT.t" "bouncy:L_Leg_IK_poleVectorConstraint1.crp";
connectAttr "bouncy:L_Knee_CTRL.t" "bouncy:L_Leg_IK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "bouncy:L_Knee_CTRL.rp" "bouncy:L_Leg_IK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "bouncy:L_Knee_CTRL.rpt" "bouncy:L_Leg_IK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "bouncy:L_Knee_CTRL.pm" "bouncy:L_Leg_IK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "bouncy:L_Leg_IK_poleVectorConstraint1.w0" "bouncy:L_Leg_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "bouncy:Arms_LYR.di" "bouncy:R_Arm_GRP.do";
connectAttr "bouncy:skinCluster15GroupId.id" "bouncy:R_shoulder_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster15Set.mwc" "bouncy:R_shoulder_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId30.id" "bouncy:R_shoulder_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet15.mwc" "bouncy:R_shoulder_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster15.og[0]" "bouncy:R_shoulder_GEOShape.i";
connectAttr "bouncy:tweak15.vl[0].vt[0]" "bouncy:R_shoulder_GEOShape.twl";
connectAttr "bouncy:skinCluster16GroupId.id" "bouncy:R_upperArm_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster16Set.mwc" "bouncy:R_upperArm_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId32.id" "bouncy:R_upperArm_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet16.mwc" "bouncy:R_upperArm_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster16.og[0]" "bouncy:R_upperArm_GEOShape.i";
connectAttr "bouncy:tweak16.vl[0].vt[0]" "bouncy:R_upperArm_GEOShape.twl";
connectAttr "bouncy:skinCluster17GroupId.id" "bouncy:R_elbow_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster17Set.mwc" "bouncy:R_elbow_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId34.id" "bouncy:R_elbow_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet17.mwc" "bouncy:R_elbow_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster17.og[0]" "bouncy:R_elbow_GEOShape.i";
connectAttr "bouncy:tweak17.vl[0].vt[0]" "bouncy:R_elbow_GEOShape.twl";
connectAttr "bouncy:skinCluster18GroupId.id" "bouncy:R_lowerARM_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster18Set.mwc" "bouncy:R_lowerARM_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId36.id" "bouncy:R_lowerARM_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet18.mwc" "bouncy:R_lowerARM_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster18.og[0]" "bouncy:R_lowerARM_GEOShape.i";
connectAttr "bouncy:tweak18.vl[0].vt[0]" "bouncy:R_lowerARM_GEOShape.twl";
connectAttr "bouncy:skinCluster19GroupId.id" "bouncy:R_wrist_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster19Set.mwc" "bouncy:R_wrist_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId38.id" "bouncy:R_wrist_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet19.mwc" "bouncy:R_wrist_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster19.og[0]" "bouncy:R_wrist_GEOShape.i";
connectAttr "bouncy:tweak19.vl[0].vt[0]" "bouncy:R_wrist_GEOShape.twl";
connectAttr "bouncy:skinCluster20GroupId.id" "bouncy:R_hand_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster20Set.mwc" "bouncy:R_hand_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId40.id" "bouncy:R_hand_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet20.mwc" "bouncy:R_hand_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster20.og[0]" "bouncy:R_hand_GEOShape.i";
connectAttr "bouncy:tweak20.vl[0].vt[0]" "bouncy:R_hand_GEOShape.twl";
connectAttr "bouncy:Arms_LYR.di" "bouncy:L_Arm_GRP.do";
connectAttr "bouncy:skinCluster9GroupId.id" "bouncy:L_shoulder_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster9Set.mwc" "bouncy:L_shoulder_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId18.id" "bouncy:L_shoulder_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet9.mwc" "bouncy:L_shoulder_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster9.og[0]" "bouncy:L_shoulder_GEOShape.i";
connectAttr "bouncy:tweak9.vl[0].vt[0]" "bouncy:L_shoulder_GEOShape.twl";
connectAttr "bouncy:skinCluster10GroupId.id" "bouncy:L_upperArm_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster10Set.mwc" "bouncy:L_upperArm_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId20.id" "bouncy:L_upperArm_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet10.mwc" "bouncy:L_upperArm_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster10.og[0]" "bouncy:L_upperArm_GEOShape.i";
connectAttr "bouncy:tweak10.vl[0].vt[0]" "bouncy:L_upperArm_GEOShape.twl";
connectAttr "bouncy:skinCluster11GroupId.id" "bouncy:L_elbow_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster11Set.mwc" "bouncy:L_elbow_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId22.id" "bouncy:L_elbow_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet11.mwc" "bouncy:L_elbow_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster11.og[0]" "bouncy:L_elbow_GEOShape.i";
connectAttr "bouncy:tweak11.vl[0].vt[0]" "bouncy:L_elbow_GEOShape.twl";
connectAttr "bouncy:skinCluster12GroupId.id" "bouncy:L_lowerARM_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster12Set.mwc" "bouncy:L_lowerARM_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId24.id" "bouncy:L_lowerARM_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet12.mwc" "bouncy:L_lowerARM_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster12.og[0]" "bouncy:L_lowerARM_GEOShape.i";
connectAttr "bouncy:tweak12.vl[0].vt[0]" "bouncy:L_lowerARM_GEOShape.twl";
connectAttr "bouncy:skinCluster13GroupId.id" "bouncy:L_wrist_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster13Set.mwc" "bouncy:L_wrist_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId26.id" "bouncy:L_wrist_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet13.mwc" "bouncy:L_wrist_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster13.og[0]" "bouncy:L_wrist_GEOShape.i";
connectAttr "bouncy:tweak13.vl[0].vt[0]" "bouncy:L_wrist_GEOShape.twl";
connectAttr "bouncy:skinCluster14GroupId.id" "bouncy:L_hand_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster14Set.mwc" "bouncy:L_hand_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId28.id" "bouncy:L_hand_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet14.mwc" "bouncy:L_hand_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster14.og[0]" "bouncy:L_hand_GEOShape.i";
connectAttr "bouncy:tweak14.vl[0].vt[0]" "bouncy:L_hand_GEOShape.twl";
connectAttr "bouncy:Body_LYR.di" "bouncy:Body_GRP.do";
connectAttr "bouncy:skinCluster31GroupId.id" "bouncy:body_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster31Set.mwc" "bouncy:body_GEOShape.iog.og[0].gco";
connectAttr "bouncy:groupId62.id" "bouncy:body_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet31.mwc" "bouncy:body_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster31.og[0]" "bouncy:body_GEOShape.i";
connectAttr "bouncy:tweak31.vl[0].vt[0]" "bouncy:body_GEOShape.twl";
connectAttr "bouncy:skinCluster32GroupId.id" "bouncy:belt_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster32Set.mwc" "bouncy:belt_GEOShape.iog.og[0].gco";
connectAttr "bouncy:groupId64.id" "bouncy:belt_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet32.mwc" "bouncy:belt_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster32.og[0]" "bouncy:belt_GEOShape.i";
connectAttr "bouncy:tweak32.vl[0].vt[0]" "bouncy:belt_GEOShape.twl";
connectAttr "bouncy:skinCluster33GroupId.id" "bouncy:spike_01_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster33Set.mwc" "bouncy:spike_01_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId66.id" "bouncy:spike_01_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet33.mwc" "bouncy:spike_01_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster33.og[0]" "bouncy:spike_01_GEOShape.i";
connectAttr "bouncy:tweak33.vl[0].vt[0]" "bouncy:spike_01_GEOShape.twl";
connectAttr "bouncy:skinCluster34GroupId.id" "bouncy:spike_02_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster34Set.mwc" "bouncy:spike_02_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId68.id" "bouncy:spike_02_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet34.mwc" "bouncy:spike_02_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster34.og[0]" "bouncy:spike_02_GEOShape.i";
connectAttr "bouncy:tweak34.vl[0].vt[0]" "bouncy:spike_02_GEOShape.twl";
connectAttr "bouncy:skinCluster35GroupId.id" "bouncy:spike_03_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster35Set.mwc" "bouncy:spike_03_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId70.id" "bouncy:spike_03_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet35.mwc" "bouncy:spike_03_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster35.og[0]" "bouncy:spike_03_GEOShape.i";
connectAttr "bouncy:tweak35.vl[0].vt[0]" "bouncy:spike_03_GEOShape.twl";
connectAttr "bouncy:skinCluster36GroupId.id" "bouncy:spike_04_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster36Set.mwc" "bouncy:spike_04_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId72.id" "bouncy:spike_04_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet36.mwc" "bouncy:spike_04_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster36.og[0]" "bouncy:spike_04_GEOShape.i";
connectAttr "bouncy:tweak36.vl[0].vt[0]" "bouncy:spike_04_GEOShape.twl";
connectAttr "bouncy:skinCluster37GroupId.id" "bouncy:spike_05_GEOShape.iog.og[0].gid"
		;
connectAttr "bouncy:skinCluster37Set.mwc" "bouncy:spike_05_GEOShape.iog.og[0].gco"
		;
connectAttr "bouncy:groupId74.id" "bouncy:spike_05_GEOShape.iog.og[1].gid";
connectAttr "bouncy:tweakSet37.mwc" "bouncy:spike_05_GEOShape.iog.og[1].gco";
connectAttr "bouncy:skinCluster37.og[0]" "bouncy:spike_05_GEOShape.i";
connectAttr "bouncy:tweak37.vl[0].vt[0]" "bouncy:spike_05_GEOShape.twl";
connectAttr "bouncy:Legs_LYR.di" "bouncy:L_Leg_GRP.do";
connectAttr "bouncy:skinCluster52GroupId.id" "bouncy:L_upperLeg_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster52Set.mwc" "bouncy:L_upperLeg_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId104.id" "bouncy:L_upperLeg_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet52.mwc" "bouncy:L_upperLeg_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster52.og[0]" "bouncy:L_upperLeg_GEOShape.i";
connectAttr "bouncy:tweak52.vl[0].vt[0]" "bouncy:L_upperLeg_GEOShape.twl";
connectAttr "bouncy:skinCluster50GroupId.id" "bouncy:L_lowerLeg_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster50Set.mwc" "bouncy:L_lowerLeg_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId100.id" "bouncy:L_lowerLeg_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet50.mwc" "bouncy:L_lowerLeg_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster50.og[0]" "bouncy:L_lowerLeg_GEOShape.i";
connectAttr "bouncy:tweak50.vl[0].vt[0]" "bouncy:L_lowerLeg_GEOShape.twl";
connectAttr "bouncy:skinCluster53GroupId.id" "bouncy:L_Hip_GEOShape.iog.og[4].gid"
		;
connectAttr "bouncy:skinCluster53Set.mwc" "bouncy:L_Hip_GEOShape.iog.og[4].gco";
connectAttr "bouncy:groupId106.id" "bouncy:L_Hip_GEOShape.iog.og[5].gid";
connectAttr "bouncy:tweakSet53.mwc" "bouncy:L_Hip_GEOShape.iog.og[5].gco";
connectAttr "bouncy:skinCluster53.og[0]" "bouncy:L_Hip_GEOShape.i";
connectAttr "bouncy:tweak53.vl[0].vt[0]" "bouncy:L_Hip_GEOShape.twl";
connectAttr "bouncy:skinCluster51GroupId.id" "bouncy:L_Knee_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster51Set.mwc" "bouncy:L_Knee_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId102.id" "bouncy:L_Knee_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet51.mwc" "bouncy:L_Knee_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster51.og[0]" "bouncy:L_Knee_GEOShape.i";
connectAttr "bouncy:tweak51.vl[0].vt[0]" "bouncy:L_Knee_GEOShape.twl";
connectAttr "bouncy:skinCluster49GroupId.id" "bouncy:L_Ankle_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster49Set.mwc" "bouncy:L_Ankle_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId98.id" "bouncy:L_Ankle_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet49.mwc" "bouncy:L_Ankle_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster49.og[0]" "bouncy:L_Ankle_GEOShape.i";
connectAttr "bouncy:tweak49.vl[0].vt[0]" "bouncy:L_Ankle_GEOShape.twl";
connectAttr "bouncy:skinCluster47GroupId.id" "bouncy:L_Ball_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster47Set.mwc" "bouncy:L_Ball_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId94.id" "bouncy:L_Ball_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet47.mwc" "bouncy:L_Ball_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster47.og[0]" "bouncy:L_Ball_GEOShape.i";
connectAttr "bouncy:tweak47.vl[0].vt[0]" "bouncy:L_Ball_GEOShape.twl";
connectAttr "bouncy:skinCluster48GroupId.id" "bouncy:L_Foot_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster48Set.mwc" "bouncy:L_Foot_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId96.id" "bouncy:L_Foot_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet48.mwc" "bouncy:L_Foot_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster48.og[0]" "bouncy:L_Foot_GEOShape.i";
connectAttr "bouncy:tweak48.vl[0].vt[0]" "bouncy:L_Foot_GEOShape.twl";
connectAttr "bouncy:skinCluster46GroupId.id" "bouncy:L_Toes_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster46Set.mwc" "bouncy:L_Toes_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId92.id" "bouncy:L_Toes_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet46.mwc" "bouncy:L_Toes_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster46.og[0]" "bouncy:L_Toes_GEOShape.i";
connectAttr "bouncy:tweak46.vl[0].vt[0]" "bouncy:L_Toes_GEOShape.twl";
connectAttr "bouncy:Legs_LYR.di" "bouncy:R_Leg_GRP.do";
connectAttr "bouncy:skinCluster40GroupId.id" "bouncy:R_upperLeg_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster40Set.mwc" "bouncy:R_upperLeg_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId80.id" "bouncy:R_upperLeg_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet40.mwc" "bouncy:R_upperLeg_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster40.og[0]" "bouncy:R_upperLeg_GEOShape.i";
connectAttr "bouncy:tweak40.vl[0].vt[0]" "bouncy:R_upperLeg_GEOShape.twl";
connectAttr "bouncy:skinCluster39GroupId.id" "bouncy:R_lowerLeg_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster39Set.mwc" "bouncy:R_lowerLeg_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId78.id" "bouncy:R_lowerLeg_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet39.mwc" "bouncy:R_lowerLeg_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster39.og[0]" "bouncy:R_lowerLeg_GEOShape.i";
connectAttr "bouncy:tweak39.vl[0].vt[0]" "bouncy:R_lowerLeg_GEOShape.twl";
connectAttr "bouncy:skinCluster41GroupId.id" "bouncy:R_Hip_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster41Set.mwc" "bouncy:R_Hip_GEOShape.iog.og[2].gco";
connectAttr "bouncy:groupId82.id" "bouncy:R_Hip_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet41.mwc" "bouncy:R_Hip_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster41.og[0]" "bouncy:R_Hip_GEOShape.i";
connectAttr "bouncy:tweak41.vl[0].vt[0]" "bouncy:R_Hip_GEOShape.twl";
connectAttr "bouncy:skinCluster38GroupId.id" "bouncy:R_Knee_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster38Set.mwc" "bouncy:R_Knee_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId76.id" "bouncy:R_Knee_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet38.mwc" "bouncy:R_Knee_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster38.og[0]" "bouncy:R_Knee_GEOShape.i";
connectAttr "bouncy:tweak38.vl[0].vt[0]" "bouncy:R_Knee_GEOShape.twl";
connectAttr "bouncy:skinCluster42GroupId.id" "bouncy:R_Ankle_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster42Set.mwc" "bouncy:R_Ankle_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId84.id" "bouncy:R_Ankle_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet42.mwc" "bouncy:R_Ankle_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster42.og[0]" "bouncy:R_Ankle_GEOShape.i";
connectAttr "bouncy:tweak42.vl[0].vt[0]" "bouncy:R_Ankle_GEOShape.twl";
connectAttr "bouncy:skinCluster45GroupId.id" "bouncy:R_Ball_GEOShape.iog.og[4].gid"
		;
connectAttr "bouncy:skinCluster45Set.mwc" "bouncy:R_Ball_GEOShape.iog.og[4].gco"
		;
connectAttr "bouncy:groupId90.id" "bouncy:R_Ball_GEOShape.iog.og[5].gid";
connectAttr "bouncy:tweakSet45.mwc" "bouncy:R_Ball_GEOShape.iog.og[5].gco";
connectAttr "bouncy:skinCluster45.og[0]" "bouncy:R_Ball_GEOShape.i";
connectAttr "bouncy:tweak45.vl[0].vt[0]" "bouncy:R_Ball_GEOShape.twl";
connectAttr "bouncy:skinCluster43GroupId.id" "bouncy:R_Foot_GEOShape.iog.og[2].gid"
		;
connectAttr "bouncy:skinCluster43Set.mwc" "bouncy:R_Foot_GEOShape.iog.og[2].gco"
		;
connectAttr "bouncy:groupId86.id" "bouncy:R_Foot_GEOShape.iog.og[3].gid";
connectAttr "bouncy:tweakSet43.mwc" "bouncy:R_Foot_GEOShape.iog.og[3].gco";
connectAttr "bouncy:skinCluster43.og[0]" "bouncy:R_Foot_GEOShape.i";
connectAttr "bouncy:tweak43.vl[0].vt[0]" "bouncy:R_Foot_GEOShape.twl";
connectAttr "bouncy:skinCluster44GroupId.id" "bouncy:R_Toes_GEOShape.iog.og[4].gid"
		;
connectAttr "bouncy:skinCluster44Set.mwc" "bouncy:R_Toes_GEOShape.iog.og[4].gco"
		;
connectAttr "bouncy:groupId88.id" "bouncy:R_Toes_GEOShape.iog.og[5].gid";
connectAttr "bouncy:tweakSet44.mwc" "bouncy:R_Toes_GEOShape.iog.og[5].gco";
connectAttr "bouncy:skinCluster44.og[0]" "bouncy:R_Toes_GEOShape.i";
connectAttr "bouncy:tweak44.vl[0].vt[0]" "bouncy:R_Toes_GEOShape.twl";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "bouncy_008_animation_readyRN.sr";
connectAttr "bouncy:layerManager.dli[0]" "bouncy:defaultLayer.id";
connectAttr "bouncy:renderLayerManager.rlmi[0]" "bouncy:defaultRenderLayer.rlid"
		;
connectAttr "bouncy:red.oc" "bouncy:lambert2SG.ss";
connectAttr "bouncy:R_upperArm_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_lowerARM_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_hand_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_upperArm_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_hand_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_lowerARM_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_upperLeg_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_lowerLeg_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_Toes_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:L_Foot_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_upperLeg_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_lowerLeg_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_Foot_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:R_Toes_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:body_GEOShape.iog" "bouncy:lambert2SG.dsm" -na;
connectAttr "bouncy:lambert2SG.msg" "bouncy:materialInfo1.sg" -rd "bouncy:lightLinker1.lnk[2].olnk"
		;
connectAttr "bouncy:red.msg" "bouncy:materialInfo1.m";
connectAttr "bouncy:green.oc" "bouncy:lambert3SG.ss";
connectAttr "bouncy:L_wrist_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_elbow_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_shoulder_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_wrist_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_elbow_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_shoulder_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_Ball_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_Ankle_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_Knee_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:L_Hip_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_Hip_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_Knee_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_Ankle_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:R_Ball_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:belt_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:spike_05_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:spike_04_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:spike_03_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:spike_02_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:spike_01_GEOShape.iog" "bouncy:lambert3SG.dsm" -na;
connectAttr "bouncy:lambert3SG.msg" "bouncy:materialInfo2.sg" -rd "bouncy:lightLinker1.lnk[3].olnk"
		;
connectAttr "bouncy:green.msg" "bouncy:materialInfo2.m";
connectAttr "bouncy:layerManager.dli[2]" "bouncy:Arms_LYR.id";
connectAttr "bouncy:layerManager.dli[3]" "bouncy:Body_LYR.id";
connectAttr "bouncy:layerManager.dli[6]" "bouncy:Legs_LYR.id";
connectAttr "bouncy:L_Leg_IK_poleVectorConstraint1.ctx" "bouncy:unitConversion1.i"
		;
connectAttr "bouncy:L_Leg_IK_poleVectorConstraint1.cty" "bouncy:unitConversion2.i"
		;
connectAttr "bouncy:L_Leg_IK_poleVectorConstraint1.ctz" "bouncy:unitConversion3.i"
		;
connectAttr "bouncy:R_Leg_IK_poleVectorConstraint1.ctx" "bouncy:unitConversion4.i"
		;
connectAttr "bouncy:R_Leg_IK_poleVectorConstraint1.cty" "bouncy:unitConversion5.i"
		;
connectAttr "bouncy:R_Leg_IK_poleVectorConstraint1.ctz" "bouncy:unitConversion6.i"
		;
connectAttr "bouncy:makeNurbCircle1.oc" "bouncy:transformGeometry1.ig";
connectAttr "bouncy:skinCluster9GroupParts.og" "bouncy:skinCluster9.ip[0].ig";
connectAttr "bouncy:skinCluster9GroupId.id" "bouncy:skinCluster9.ip[0].gi";
connectAttr "bouncy:bindPose5.msg" "bouncy:skinCluster9.bp";
connectAttr "bouncy:L_Shoulder_JNT.wm" "bouncy:skinCluster9.ma[0]";
connectAttr "bouncy:L_Shoulder_JNT.liw" "bouncy:skinCluster9.lw[0]";
connectAttr "bouncy:groupParts18.og" "bouncy:tweak9.ip[0].ig";
connectAttr "bouncy:groupId18.id" "bouncy:tweak9.ip[0].gi";
connectAttr "bouncy:skinCluster9GroupId.msg" "bouncy:skinCluster9Set.gn" -na;
connectAttr "bouncy:L_shoulder_GEOShape.iog.og[0]" "bouncy:skinCluster9Set.dsm" 
		-na;
connectAttr "bouncy:skinCluster9.msg" "bouncy:skinCluster9Set.ub[0]";
connectAttr "bouncy:tweak9.og[0]" "bouncy:skinCluster9GroupParts.ig";
connectAttr "bouncy:skinCluster9GroupId.id" "bouncy:skinCluster9GroupParts.gi";
connectAttr "bouncy:groupId18.msg" "bouncy:tweakSet9.gn" -na;
connectAttr "bouncy:L_shoulder_GEOShape.iog.og[1]" "bouncy:tweakSet9.dsm" -na;
connectAttr "bouncy:tweak9.msg" "bouncy:tweakSet9.ub[0]";
connectAttr "bouncy:L_shoulder_GEOShapeOrig.w" "bouncy:groupParts18.ig";
connectAttr "bouncy:groupId18.id" "bouncy:groupParts18.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose5.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose5.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose5.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose5.m[3]";
connectAttr "bouncy:L_Shoulder_JNT.msg" "bouncy:bindPose5.m[4]";
connectAttr "bouncy:bindPose5.w" "bouncy:bindPose5.p[0]";
connectAttr "bouncy:bindPose5.m[0]" "bouncy:bindPose5.p[1]";
connectAttr "bouncy:bindPose5.m[1]" "bouncy:bindPose5.p[2]";
connectAttr "bouncy:bindPose5.m[2]" "bouncy:bindPose5.p[3]";
connectAttr "bouncy:bindPose5.m[3]" "bouncy:bindPose5.p[4]";
connectAttr "bouncy:skinCluster10GroupParts.og" "bouncy:skinCluster10.ip[0].ig";
connectAttr "bouncy:skinCluster10GroupId.id" "bouncy:skinCluster10.ip[0].gi";
connectAttr "bouncy:L_Shoulder_JNT.wm" "bouncy:skinCluster10.ma[0]";
connectAttr "bouncy:L_Shoulder_JNT.liw" "bouncy:skinCluster10.lw[0]";
connectAttr "bouncy:bindPose5.msg" "bouncy:skinCluster10.bp";
connectAttr "bouncy:groupParts20.og" "bouncy:tweak10.ip[0].ig";
connectAttr "bouncy:groupId20.id" "bouncy:tweak10.ip[0].gi";
connectAttr "bouncy:skinCluster10GroupId.msg" "bouncy:skinCluster10Set.gn" -na;
connectAttr "bouncy:L_upperArm_GEOShape.iog.og[0]" "bouncy:skinCluster10Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster10.msg" "bouncy:skinCluster10Set.ub[0]";
connectAttr "bouncy:tweak10.og[0]" "bouncy:skinCluster10GroupParts.ig";
connectAttr "bouncy:skinCluster10GroupId.id" "bouncy:skinCluster10GroupParts.gi"
		;
connectAttr "bouncy:groupId20.msg" "bouncy:tweakSet10.gn" -na;
connectAttr "bouncy:L_upperArm_GEOShape.iog.og[1]" "bouncy:tweakSet10.dsm" -na;
connectAttr "bouncy:tweak10.msg" "bouncy:tweakSet10.ub[0]";
connectAttr "bouncy:L_upperArm_GEOShapeOrig.w" "bouncy:groupParts20.ig";
connectAttr "bouncy:groupId20.id" "bouncy:groupParts20.gi";
connectAttr "bouncy:skinCluster11GroupParts.og" "bouncy:skinCluster11.ip[0].ig";
connectAttr "bouncy:skinCluster11GroupId.id" "bouncy:skinCluster11.ip[0].gi";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster11.bp";
connectAttr "bouncy:L_Elbow_JNT.wm" "bouncy:skinCluster11.ma[0]";
connectAttr "bouncy:L_Elbow_JNT.liw" "bouncy:skinCluster11.lw[0]";
connectAttr "bouncy:groupParts22.og" "bouncy:tweak11.ip[0].ig";
connectAttr "bouncy:groupId22.id" "bouncy:tweak11.ip[0].gi";
connectAttr "bouncy:skinCluster11GroupId.msg" "bouncy:skinCluster11Set.gn" -na;
connectAttr "bouncy:L_elbow_GEOShape.iog.og[0]" "bouncy:skinCluster11Set.dsm" -na
		;
connectAttr "bouncy:skinCluster11.msg" "bouncy:skinCluster11Set.ub[0]";
connectAttr "bouncy:tweak11.og[0]" "bouncy:skinCluster11GroupParts.ig";
connectAttr "bouncy:skinCluster11GroupId.id" "bouncy:skinCluster11GroupParts.gi"
		;
connectAttr "bouncy:groupId22.msg" "bouncy:tweakSet11.gn" -na;
connectAttr "bouncy:L_elbow_GEOShape.iog.og[1]" "bouncy:tweakSet11.dsm" -na;
connectAttr "bouncy:tweak11.msg" "bouncy:tweakSet11.ub[0]";
connectAttr "bouncy:L_elbow_GEOShapeOrig.w" "bouncy:groupParts22.ig";
connectAttr "bouncy:groupId22.id" "bouncy:groupParts22.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose13.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose13.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose13.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose13.m[3]";
connectAttr "bouncy:L_Shoulder_JNT.msg" "bouncy:bindPose13.m[4]";
connectAttr "bouncy:L_Elbow_JNT.msg" "bouncy:bindPose13.m[5]";
connectAttr "bouncy:bindPose13.w" "bouncy:bindPose13.p[0]";
connectAttr "bouncy:bindPose13.m[0]" "bouncy:bindPose13.p[1]";
connectAttr "bouncy:bindPose13.m[1]" "bouncy:bindPose13.p[2]";
connectAttr "bouncy:bindPose13.m[2]" "bouncy:bindPose13.p[3]";
connectAttr "bouncy:bindPose13.m[3]" "bouncy:bindPose13.p[4]";
connectAttr "bouncy:bindPose13.m[4]" "bouncy:bindPose13.p[5]";
connectAttr "bouncy:skinCluster12GroupParts.og" "bouncy:skinCluster12.ip[0].ig";
connectAttr "bouncy:skinCluster12GroupId.id" "bouncy:skinCluster12.ip[0].gi";
connectAttr "bouncy:L_Elbow_JNT.wm" "bouncy:skinCluster12.ma[0]";
connectAttr "bouncy:L_Elbow_JNT.liw" "bouncy:skinCluster12.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster12.bp";
connectAttr "bouncy:groupParts24.og" "bouncy:tweak12.ip[0].ig";
connectAttr "bouncy:groupId24.id" "bouncy:tweak12.ip[0].gi";
connectAttr "bouncy:skinCluster12GroupId.msg" "bouncy:skinCluster12Set.gn" -na;
connectAttr "bouncy:L_lowerARM_GEOShape.iog.og[0]" "bouncy:skinCluster12Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster12.msg" "bouncy:skinCluster12Set.ub[0]";
connectAttr "bouncy:tweak12.og[0]" "bouncy:skinCluster12GroupParts.ig";
connectAttr "bouncy:skinCluster12GroupId.id" "bouncy:skinCluster12GroupParts.gi"
		;
connectAttr "bouncy:groupId24.msg" "bouncy:tweakSet12.gn" -na;
connectAttr "bouncy:L_lowerARM_GEOShape.iog.og[1]" "bouncy:tweakSet12.dsm" -na;
connectAttr "bouncy:tweak12.msg" "bouncy:tweakSet12.ub[0]";
connectAttr "bouncy:L_lowerARM_GEOShapeOrig.w" "bouncy:groupParts24.ig";
connectAttr "bouncy:groupId24.id" "bouncy:groupParts24.gi";
connectAttr "bouncy:skinCluster13GroupParts.og" "bouncy:skinCluster13.ip[0].ig";
connectAttr "bouncy:skinCluster13GroupId.id" "bouncy:skinCluster13.ip[0].gi";
connectAttr "bouncy:bindPose7.msg" "bouncy:skinCluster13.bp";
connectAttr "bouncy:L_Wrist_JNT.wm" "bouncy:skinCluster13.ma[0]";
connectAttr "bouncy:L_Wrist_JNT.liw" "bouncy:skinCluster13.lw[0]";
connectAttr "bouncy:groupParts26.og" "bouncy:tweak13.ip[0].ig";
connectAttr "bouncy:groupId26.id" "bouncy:tweak13.ip[0].gi";
connectAttr "bouncy:skinCluster13GroupId.msg" "bouncy:skinCluster13Set.gn" -na;
connectAttr "bouncy:L_wrist_GEOShape.iog.og[0]" "bouncy:skinCluster13Set.dsm" -na
		;
connectAttr "bouncy:skinCluster13.msg" "bouncy:skinCluster13Set.ub[0]";
connectAttr "bouncy:tweak13.og[0]" "bouncy:skinCluster13GroupParts.ig";
connectAttr "bouncy:skinCluster13GroupId.id" "bouncy:skinCluster13GroupParts.gi"
		;
connectAttr "bouncy:groupId26.msg" "bouncy:tweakSet13.gn" -na;
connectAttr "bouncy:L_wrist_GEOShape.iog.og[1]" "bouncy:tweakSet13.dsm" -na;
connectAttr "bouncy:tweak13.msg" "bouncy:tweakSet13.ub[0]";
connectAttr "bouncy:L_wrist_GEOShapeOrig.w" "bouncy:groupParts26.ig";
connectAttr "bouncy:groupId26.id" "bouncy:groupParts26.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose7.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose7.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose7.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose7.m[3]";
connectAttr "bouncy:L_Shoulder_JNT.msg" "bouncy:bindPose7.m[4]";
connectAttr "bouncy:L_Elbow_JNT.msg" "bouncy:bindPose7.m[5]";
connectAttr "bouncy:L_Wrist_JNT.msg" "bouncy:bindPose7.m[6]";
connectAttr "bouncy:bindPose7.w" "bouncy:bindPose7.p[0]";
connectAttr "bouncy:bindPose7.m[0]" "bouncy:bindPose7.p[1]";
connectAttr "bouncy:bindPose7.m[1]" "bouncy:bindPose7.p[2]";
connectAttr "bouncy:bindPose7.m[2]" "bouncy:bindPose7.p[3]";
connectAttr "bouncy:bindPose7.m[3]" "bouncy:bindPose7.p[4]";
connectAttr "bouncy:bindPose7.m[4]" "bouncy:bindPose7.p[5]";
connectAttr "bouncy:bindPose7.m[5]" "bouncy:bindPose7.p[6]";
connectAttr "bouncy:skinCluster14GroupParts.og" "bouncy:skinCluster14.ip[0].ig";
connectAttr "bouncy:skinCluster14GroupId.id" "bouncy:skinCluster14.ip[0].gi";
connectAttr "bouncy:L_Wrist_JNT.wm" "bouncy:skinCluster14.ma[0]";
connectAttr "bouncy:L_Wrist_JNT.liw" "bouncy:skinCluster14.lw[0]";
connectAttr "bouncy:bindPose7.msg" "bouncy:skinCluster14.bp";
connectAttr "bouncy:groupParts28.og" "bouncy:tweak14.ip[0].ig";
connectAttr "bouncy:groupId28.id" "bouncy:tweak14.ip[0].gi";
connectAttr "bouncy:skinCluster14GroupId.msg" "bouncy:skinCluster14Set.gn" -na;
connectAttr "bouncy:L_hand_GEOShape.iog.og[0]" "bouncy:skinCluster14Set.dsm" -na
		;
connectAttr "bouncy:skinCluster14.msg" "bouncy:skinCluster14Set.ub[0]";
connectAttr "bouncy:tweak14.og[0]" "bouncy:skinCluster14GroupParts.ig";
connectAttr "bouncy:skinCluster14GroupId.id" "bouncy:skinCluster14GroupParts.gi"
		;
connectAttr "bouncy:groupId28.msg" "bouncy:tweakSet14.gn" -na;
connectAttr "bouncy:L_hand_GEOShape.iog.og[1]" "bouncy:tweakSet14.dsm" -na;
connectAttr "bouncy:tweak14.msg" "bouncy:tweakSet14.ub[0]";
connectAttr "bouncy:L_hand_GEOShapeOrig.w" "bouncy:groupParts28.ig";
connectAttr "bouncy:groupId28.id" "bouncy:groupParts28.gi";
connectAttr "bouncy:skinCluster15GroupParts.og" "bouncy:skinCluster15.ip[0].ig";
connectAttr "bouncy:skinCluster15GroupId.id" "bouncy:skinCluster15.ip[0].gi";
connectAttr "bouncy:bindPose8.msg" "bouncy:skinCluster15.bp";
connectAttr "bouncy:R_Shoulder_JNT.wm" "bouncy:skinCluster15.ma[0]";
connectAttr "bouncy:R_Shoulder_JNT.liw" "bouncy:skinCluster15.lw[0]";
connectAttr "bouncy:groupParts30.og" "bouncy:tweak15.ip[0].ig";
connectAttr "bouncy:groupId30.id" "bouncy:tweak15.ip[0].gi";
connectAttr "bouncy:skinCluster15GroupId.msg" "bouncy:skinCluster15Set.gn" -na;
connectAttr "bouncy:R_shoulder_GEOShape.iog.og[0]" "bouncy:skinCluster15Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster15.msg" "bouncy:skinCluster15Set.ub[0]";
connectAttr "bouncy:tweak15.og[0]" "bouncy:skinCluster15GroupParts.ig";
connectAttr "bouncy:skinCluster15GroupId.id" "bouncy:skinCluster15GroupParts.gi"
		;
connectAttr "bouncy:groupId30.msg" "bouncy:tweakSet15.gn" -na;
connectAttr "bouncy:R_shoulder_GEOShape.iog.og[1]" "bouncy:tweakSet15.dsm" -na;
connectAttr "bouncy:tweak15.msg" "bouncy:tweakSet15.ub[0]";
connectAttr "bouncy:R_shoulder_GEOShapeOrig.w" "bouncy:groupParts30.ig";
connectAttr "bouncy:groupId30.id" "bouncy:groupParts30.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose8.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose8.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose8.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose8.m[3]";
connectAttr "bouncy:R_Shoulder_JNT.msg" "bouncy:bindPose8.m[4]";
connectAttr "bouncy:bindPose8.w" "bouncy:bindPose8.p[0]";
connectAttr "bouncy:bindPose8.m[0]" "bouncy:bindPose8.p[1]";
connectAttr "bouncy:bindPose8.m[1]" "bouncy:bindPose8.p[2]";
connectAttr "bouncy:bindPose8.m[2]" "bouncy:bindPose8.p[3]";
connectAttr "bouncy:bindPose8.m[3]" "bouncy:bindPose8.p[4]";
connectAttr "bouncy:skinCluster16GroupParts.og" "bouncy:skinCluster16.ip[0].ig";
connectAttr "bouncy:skinCluster16GroupId.id" "bouncy:skinCluster16.ip[0].gi";
connectAttr "bouncy:R_Shoulder_JNT.wm" "bouncy:skinCluster16.ma[0]";
connectAttr "bouncy:R_Shoulder_JNT.liw" "bouncy:skinCluster16.lw[0]";
connectAttr "bouncy:bindPose8.msg" "bouncy:skinCluster16.bp";
connectAttr "bouncy:groupParts32.og" "bouncy:tweak16.ip[0].ig";
connectAttr "bouncy:groupId32.id" "bouncy:tweak16.ip[0].gi";
connectAttr "bouncy:skinCluster16GroupId.msg" "bouncy:skinCluster16Set.gn" -na;
connectAttr "bouncy:R_upperArm_GEOShape.iog.og[2]" "bouncy:skinCluster16Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster16.msg" "bouncy:skinCluster16Set.ub[0]";
connectAttr "bouncy:tweak16.og[0]" "bouncy:skinCluster16GroupParts.ig";
connectAttr "bouncy:skinCluster16GroupId.id" "bouncy:skinCluster16GroupParts.gi"
		;
connectAttr "bouncy:groupId32.msg" "bouncy:tweakSet16.gn" -na;
connectAttr "bouncy:R_upperArm_GEOShape.iog.og[3]" "bouncy:tweakSet16.dsm" -na;
connectAttr "bouncy:tweak16.msg" "bouncy:tweakSet16.ub[0]";
connectAttr "bouncy:R_upperArm_GEOShapeOrig.w" "bouncy:groupParts32.ig";
connectAttr "bouncy:groupId32.id" "bouncy:groupParts32.gi";
connectAttr "bouncy:skinCluster17GroupParts.og" "bouncy:skinCluster17.ip[0].ig";
connectAttr "bouncy:skinCluster17GroupId.id" "bouncy:skinCluster17.ip[0].gi";
connectAttr "bouncy:bindPose9.msg" "bouncy:skinCluster17.bp";
connectAttr "bouncy:R_Elbow_JNT.wm" "bouncy:skinCluster17.ma[0]";
connectAttr "bouncy:R_Elbow_JNT.liw" "bouncy:skinCluster17.lw[0]";
connectAttr "bouncy:groupParts34.og" "bouncy:tweak17.ip[0].ig";
connectAttr "bouncy:groupId34.id" "bouncy:tweak17.ip[0].gi";
connectAttr "bouncy:skinCluster17GroupId.msg" "bouncy:skinCluster17Set.gn" -na;
connectAttr "bouncy:R_elbow_GEOShape.iog.og[2]" "bouncy:skinCluster17Set.dsm" -na
		;
connectAttr "bouncy:skinCluster17.msg" "bouncy:skinCluster17Set.ub[0]";
connectAttr "bouncy:tweak17.og[0]" "bouncy:skinCluster17GroupParts.ig";
connectAttr "bouncy:skinCluster17GroupId.id" "bouncy:skinCluster17GroupParts.gi"
		;
connectAttr "bouncy:groupId34.msg" "bouncy:tweakSet17.gn" -na;
connectAttr "bouncy:R_elbow_GEOShape.iog.og[3]" "bouncy:tweakSet17.dsm" -na;
connectAttr "bouncy:tweak17.msg" "bouncy:tweakSet17.ub[0]";
connectAttr "bouncy:R_elbow_GEOShapeOrig.w" "bouncy:groupParts34.ig";
connectAttr "bouncy:groupId34.id" "bouncy:groupParts34.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose9.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose9.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose9.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose9.m[3]";
connectAttr "bouncy:R_Shoulder_JNT.msg" "bouncy:bindPose9.m[4]";
connectAttr "bouncy:R_Elbow_JNT.msg" "bouncy:bindPose9.m[5]";
connectAttr "bouncy:bindPose9.w" "bouncy:bindPose9.p[0]";
connectAttr "bouncy:bindPose9.m[0]" "bouncy:bindPose9.p[1]";
connectAttr "bouncy:bindPose9.m[1]" "bouncy:bindPose9.p[2]";
connectAttr "bouncy:bindPose9.m[2]" "bouncy:bindPose9.p[3]";
connectAttr "bouncy:bindPose9.m[3]" "bouncy:bindPose9.p[4]";
connectAttr "bouncy:bindPose9.m[4]" "bouncy:bindPose9.p[5]";
connectAttr "bouncy:skinCluster18GroupParts.og" "bouncy:skinCluster18.ip[0].ig";
connectAttr "bouncy:skinCluster18GroupId.id" "bouncy:skinCluster18.ip[0].gi";
connectAttr "bouncy:R_Elbow_JNT.wm" "bouncy:skinCluster18.ma[0]";
connectAttr "bouncy:R_Elbow_JNT.liw" "bouncy:skinCluster18.lw[0]";
connectAttr "bouncy:bindPose9.msg" "bouncy:skinCluster18.bp";
connectAttr "bouncy:groupParts36.og" "bouncy:tweak18.ip[0].ig";
connectAttr "bouncy:groupId36.id" "bouncy:tweak18.ip[0].gi";
connectAttr "bouncy:skinCluster18GroupId.msg" "bouncy:skinCluster18Set.gn" -na;
connectAttr "bouncy:R_lowerARM_GEOShape.iog.og[2]" "bouncy:skinCluster18Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster18.msg" "bouncy:skinCluster18Set.ub[0]";
connectAttr "bouncy:tweak18.og[0]" "bouncy:skinCluster18GroupParts.ig";
connectAttr "bouncy:skinCluster18GroupId.id" "bouncy:skinCluster18GroupParts.gi"
		;
connectAttr "bouncy:groupId36.msg" "bouncy:tweakSet18.gn" -na;
connectAttr "bouncy:R_lowerARM_GEOShape.iog.og[3]" "bouncy:tweakSet18.dsm" -na;
connectAttr "bouncy:tweak18.msg" "bouncy:tweakSet18.ub[0]";
connectAttr "bouncy:R_lowerARM_GEOShapeOrig.w" "bouncy:groupParts36.ig";
connectAttr "bouncy:groupId36.id" "bouncy:groupParts36.gi";
connectAttr "bouncy:skinCluster19GroupParts.og" "bouncy:skinCluster19.ip[0].ig";
connectAttr "bouncy:skinCluster19GroupId.id" "bouncy:skinCluster19.ip[0].gi";
connectAttr "bouncy:bindPose10.msg" "bouncy:skinCluster19.bp";
connectAttr "bouncy:R_Wrist_JNT.wm" "bouncy:skinCluster19.ma[0]";
connectAttr "bouncy:R_Wrist_JNT.liw" "bouncy:skinCluster19.lw[0]";
connectAttr "bouncy:groupParts38.og" "bouncy:tweak19.ip[0].ig";
connectAttr "bouncy:groupId38.id" "bouncy:tweak19.ip[0].gi";
connectAttr "bouncy:skinCluster19GroupId.msg" "bouncy:skinCluster19Set.gn" -na;
connectAttr "bouncy:R_wrist_GEOShape.iog.og[2]" "bouncy:skinCluster19Set.dsm" -na
		;
connectAttr "bouncy:skinCluster19.msg" "bouncy:skinCluster19Set.ub[0]";
connectAttr "bouncy:tweak19.og[0]" "bouncy:skinCluster19GroupParts.ig";
connectAttr "bouncy:skinCluster19GroupId.id" "bouncy:skinCluster19GroupParts.gi"
		;
connectAttr "bouncy:groupId38.msg" "bouncy:tweakSet19.gn" -na;
connectAttr "bouncy:R_wrist_GEOShape.iog.og[3]" "bouncy:tweakSet19.dsm" -na;
connectAttr "bouncy:tweak19.msg" "bouncy:tweakSet19.ub[0]";
connectAttr "bouncy:R_wrist_GEOShapeOrig.w" "bouncy:groupParts38.ig";
connectAttr "bouncy:groupId38.id" "bouncy:groupParts38.gi";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose10.m[0]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose10.m[1]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose10.m[2]";
connectAttr "bouncy:head_JNT.msg" "bouncy:bindPose10.m[3]";
connectAttr "bouncy:R_Shoulder_JNT.msg" "bouncy:bindPose10.m[4]";
connectAttr "bouncy:R_Elbow_JNT.msg" "bouncy:bindPose10.m[5]";
connectAttr "bouncy:R_Wrist_JNT.msg" "bouncy:bindPose10.m[6]";
connectAttr "bouncy:bindPose10.w" "bouncy:bindPose10.p[0]";
connectAttr "bouncy:bindPose10.m[0]" "bouncy:bindPose10.p[1]";
connectAttr "bouncy:bindPose10.m[1]" "bouncy:bindPose10.p[2]";
connectAttr "bouncy:bindPose10.m[2]" "bouncy:bindPose10.p[3]";
connectAttr "bouncy:bindPose10.m[3]" "bouncy:bindPose10.p[4]";
connectAttr "bouncy:bindPose10.m[4]" "bouncy:bindPose10.p[5]";
connectAttr "bouncy:bindPose10.m[5]" "bouncy:bindPose10.p[6]";
connectAttr "bouncy:skinCluster20GroupParts.og" "bouncy:skinCluster20.ip[0].ig";
connectAttr "bouncy:skinCluster20GroupId.id" "bouncy:skinCluster20.ip[0].gi";
connectAttr "bouncy:R_Wrist_JNT.wm" "bouncy:skinCluster20.ma[0]";
connectAttr "bouncy:R_Wrist_JNT.liw" "bouncy:skinCluster20.lw[0]";
connectAttr "bouncy:bindPose10.msg" "bouncy:skinCluster20.bp";
connectAttr "bouncy:groupParts40.og" "bouncy:tweak20.ip[0].ig";
connectAttr "bouncy:groupId40.id" "bouncy:tweak20.ip[0].gi";
connectAttr "bouncy:skinCluster20GroupId.msg" "bouncy:skinCluster20Set.gn" -na;
connectAttr "bouncy:R_hand_GEOShape.iog.og[2]" "bouncy:skinCluster20Set.dsm" -na
		;
connectAttr "bouncy:skinCluster20.msg" "bouncy:skinCluster20Set.ub[0]";
connectAttr "bouncy:tweak20.og[0]" "bouncy:skinCluster20GroupParts.ig";
connectAttr "bouncy:skinCluster20GroupId.id" "bouncy:skinCluster20GroupParts.gi"
		;
connectAttr "bouncy:groupId40.msg" "bouncy:tweakSet20.gn" -na;
connectAttr "bouncy:R_hand_GEOShape.iog.og[3]" "bouncy:tweakSet20.dsm" -na;
connectAttr "bouncy:tweak20.msg" "bouncy:tweakSet20.ub[0]";
connectAttr "bouncy:R_hand_GEOShapeOrig.w" "bouncy:groupParts40.ig";
connectAttr "bouncy:groupId40.id" "bouncy:groupParts40.gi";
connectAttr "bouncy:skinCluster31GroupParts.og" "bouncy:skinCluster31.ip[0].ig";
connectAttr "bouncy:skinCluster31GroupId.id" "bouncy:skinCluster31.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster31.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster31.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster31.bp";
connectAttr "bouncy:groupParts62.og" "bouncy:tweak31.ip[0].ig";
connectAttr "bouncy:groupId62.id" "bouncy:tweak31.ip[0].gi";
connectAttr "bouncy:skinCluster31GroupId.msg" "bouncy:skinCluster31Set.gn" -na;
connectAttr "bouncy:body_GEOShape.iog.og[0]" "bouncy:skinCluster31Set.dsm" -na;
connectAttr "bouncy:skinCluster31.msg" "bouncy:skinCluster31Set.ub[0]";
connectAttr "bouncy:tweak31.og[0]" "bouncy:skinCluster31GroupParts.ig";
connectAttr "bouncy:skinCluster31GroupId.id" "bouncy:skinCluster31GroupParts.gi"
		;
connectAttr "bouncy:groupId62.msg" "bouncy:tweakSet31.gn" -na;
connectAttr "bouncy:body_GEOShape.iog.og[1]" "bouncy:tweakSet31.dsm" -na;
connectAttr "bouncy:tweak31.msg" "bouncy:tweakSet31.ub[0]";
connectAttr "bouncy:body_GEOShapeOrig.w" "bouncy:groupParts62.ig";
connectAttr "bouncy:groupId62.id" "bouncy:groupParts62.gi";
connectAttr "bouncy:skinCluster32GroupParts.og" "bouncy:skinCluster32.ip[0].ig";
connectAttr "bouncy:skinCluster32GroupId.id" "bouncy:skinCluster32.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster32.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster32.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster32.bp";
connectAttr "bouncy:groupParts64.og" "bouncy:tweak32.ip[0].ig";
connectAttr "bouncy:groupId64.id" "bouncy:tweak32.ip[0].gi";
connectAttr "bouncy:skinCluster32GroupId.msg" "bouncy:skinCluster32Set.gn" -na;
connectAttr "bouncy:belt_GEOShape.iog.og[0]" "bouncy:skinCluster32Set.dsm" -na;
connectAttr "bouncy:skinCluster32.msg" "bouncy:skinCluster32Set.ub[0]";
connectAttr "bouncy:tweak32.og[0]" "bouncy:skinCluster32GroupParts.ig";
connectAttr "bouncy:skinCluster32GroupId.id" "bouncy:skinCluster32GroupParts.gi"
		;
connectAttr "bouncy:groupId64.msg" "bouncy:tweakSet32.gn" -na;
connectAttr "bouncy:belt_GEOShape.iog.og[1]" "bouncy:tweakSet32.dsm" -na;
connectAttr "bouncy:tweak32.msg" "bouncy:tweakSet32.ub[0]";
connectAttr "bouncy:belt_GEOShapeOrig.w" "bouncy:groupParts64.ig";
connectAttr "bouncy:groupId64.id" "bouncy:groupParts64.gi";
connectAttr "bouncy:skinCluster33GroupParts.og" "bouncy:skinCluster33.ip[0].ig";
connectAttr "bouncy:skinCluster33GroupId.id" "bouncy:skinCluster33.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster33.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster33.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster33.bp";
connectAttr "bouncy:groupParts66.og" "bouncy:tweak33.ip[0].ig";
connectAttr "bouncy:groupId66.id" "bouncy:tweak33.ip[0].gi";
connectAttr "bouncy:skinCluster33GroupId.msg" "bouncy:skinCluster33Set.gn" -na;
connectAttr "bouncy:spike_01_GEOShape.iog.og[0]" "bouncy:skinCluster33Set.dsm" -na
		;
connectAttr "bouncy:skinCluster33.msg" "bouncy:skinCluster33Set.ub[0]";
connectAttr "bouncy:tweak33.og[0]" "bouncy:skinCluster33GroupParts.ig";
connectAttr "bouncy:skinCluster33GroupId.id" "bouncy:skinCluster33GroupParts.gi"
		;
connectAttr "bouncy:groupId66.msg" "bouncy:tweakSet33.gn" -na;
connectAttr "bouncy:spike_01_GEOShape.iog.og[1]" "bouncy:tweakSet33.dsm" -na;
connectAttr "bouncy:tweak33.msg" "bouncy:tweakSet33.ub[0]";
connectAttr "bouncy:spike_01_GEOShapeOrig.w" "bouncy:groupParts66.ig";
connectAttr "bouncy:groupId66.id" "bouncy:groupParts66.gi";
connectAttr "bouncy:skinCluster34GroupParts.og" "bouncy:skinCluster34.ip[0].ig";
connectAttr "bouncy:skinCluster34GroupId.id" "bouncy:skinCluster34.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster34.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster34.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster34.bp";
connectAttr "bouncy:groupParts68.og" "bouncy:tweak34.ip[0].ig";
connectAttr "bouncy:groupId68.id" "bouncy:tweak34.ip[0].gi";
connectAttr "bouncy:skinCluster34GroupId.msg" "bouncy:skinCluster34Set.gn" -na;
connectAttr "bouncy:spike_02_GEOShape.iog.og[0]" "bouncy:skinCluster34Set.dsm" -na
		;
connectAttr "bouncy:skinCluster34.msg" "bouncy:skinCluster34Set.ub[0]";
connectAttr "bouncy:tweak34.og[0]" "bouncy:skinCluster34GroupParts.ig";
connectAttr "bouncy:skinCluster34GroupId.id" "bouncy:skinCluster34GroupParts.gi"
		;
connectAttr "bouncy:groupId68.msg" "bouncy:tweakSet34.gn" -na;
connectAttr "bouncy:spike_02_GEOShape.iog.og[1]" "bouncy:tweakSet34.dsm" -na;
connectAttr "bouncy:tweak34.msg" "bouncy:tweakSet34.ub[0]";
connectAttr "bouncy:spike_02_GEOShapeOrig.w" "bouncy:groupParts68.ig";
connectAttr "bouncy:groupId68.id" "bouncy:groupParts68.gi";
connectAttr "bouncy:skinCluster35GroupParts.og" "bouncy:skinCluster35.ip[0].ig";
connectAttr "bouncy:skinCluster35GroupId.id" "bouncy:skinCluster35.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster35.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster35.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster35.bp";
connectAttr "bouncy:groupParts70.og" "bouncy:tweak35.ip[0].ig";
connectAttr "bouncy:groupId70.id" "bouncy:tweak35.ip[0].gi";
connectAttr "bouncy:skinCluster35GroupId.msg" "bouncy:skinCluster35Set.gn" -na;
connectAttr "bouncy:spike_03_GEOShape.iog.og[0]" "bouncy:skinCluster35Set.dsm" -na
		;
connectAttr "bouncy:skinCluster35.msg" "bouncy:skinCluster35Set.ub[0]";
connectAttr "bouncy:tweak35.og[0]" "bouncy:skinCluster35GroupParts.ig";
connectAttr "bouncy:skinCluster35GroupId.id" "bouncy:skinCluster35GroupParts.gi"
		;
connectAttr "bouncy:groupId70.msg" "bouncy:tweakSet35.gn" -na;
connectAttr "bouncy:spike_03_GEOShape.iog.og[1]" "bouncy:tweakSet35.dsm" -na;
connectAttr "bouncy:tweak35.msg" "bouncy:tweakSet35.ub[0]";
connectAttr "bouncy:spike_03_GEOShapeOrig.w" "bouncy:groupParts70.ig";
connectAttr "bouncy:groupId70.id" "bouncy:groupParts70.gi";
connectAttr "bouncy:skinCluster36GroupParts.og" "bouncy:skinCluster36.ip[0].ig";
connectAttr "bouncy:skinCluster36GroupId.id" "bouncy:skinCluster36.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster36.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster36.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster36.bp";
connectAttr "bouncy:groupParts72.og" "bouncy:tweak36.ip[0].ig";
connectAttr "bouncy:groupId72.id" "bouncy:tweak36.ip[0].gi";
connectAttr "bouncy:skinCluster36GroupId.msg" "bouncy:skinCluster36Set.gn" -na;
connectAttr "bouncy:spike_04_GEOShape.iog.og[0]" "bouncy:skinCluster36Set.dsm" -na
		;
connectAttr "bouncy:skinCluster36.msg" "bouncy:skinCluster36Set.ub[0]";
connectAttr "bouncy:tweak36.og[0]" "bouncy:skinCluster36GroupParts.ig";
connectAttr "bouncy:skinCluster36GroupId.id" "bouncy:skinCluster36GroupParts.gi"
		;
connectAttr "bouncy:groupId72.msg" "bouncy:tweakSet36.gn" -na;
connectAttr "bouncy:spike_04_GEOShape.iog.og[1]" "bouncy:tweakSet36.dsm" -na;
connectAttr "bouncy:tweak36.msg" "bouncy:tweakSet36.ub[0]";
connectAttr "bouncy:spike_04_GEOShapeOrig.w" "bouncy:groupParts72.ig";
connectAttr "bouncy:groupId72.id" "bouncy:groupParts72.gi";
connectAttr "bouncy:skinCluster37GroupParts.og" "bouncy:skinCluster37.ip[0].ig";
connectAttr "bouncy:skinCluster37GroupId.id" "bouncy:skinCluster37.ip[0].gi";
connectAttr "bouncy:root_JNT.wm" "bouncy:skinCluster37.ma[0]";
connectAttr "bouncy:root_JNT.liw" "bouncy:skinCluster37.lw[0]";
connectAttr "bouncy:bindPose13.msg" "bouncy:skinCluster37.bp";
connectAttr "bouncy:groupParts74.og" "bouncy:tweak37.ip[0].ig";
connectAttr "bouncy:groupId74.id" "bouncy:tweak37.ip[0].gi";
connectAttr "bouncy:skinCluster37GroupId.msg" "bouncy:skinCluster37Set.gn" -na;
connectAttr "bouncy:spike_05_GEOShape.iog.og[0]" "bouncy:skinCluster37Set.dsm" -na
		;
connectAttr "bouncy:skinCluster37.msg" "bouncy:skinCluster37Set.ub[0]";
connectAttr "bouncy:tweak37.og[0]" "bouncy:skinCluster37GroupParts.ig";
connectAttr "bouncy:skinCluster37GroupId.id" "bouncy:skinCluster37GroupParts.gi"
		;
connectAttr "bouncy:groupId74.msg" "bouncy:tweakSet37.gn" -na;
connectAttr "bouncy:spike_05_GEOShape.iog.og[1]" "bouncy:tweakSet37.dsm" -na;
connectAttr "bouncy:tweak37.msg" "bouncy:tweakSet37.ub[0]";
connectAttr "bouncy:spike_05_GEOShapeOrig.w" "bouncy:groupParts74.ig";
connectAttr "bouncy:groupId74.id" "bouncy:groupParts74.gi";
connectAttr "bouncy:layerManager.dli[7]" "bouncy:Controls_LYR.id";
connectAttr "bouncy:L_Foot_CTRL_translateZ.o" "bouncy:Bouncy.lv[1]";
connectAttr "bouncy:L_Foot_CTRL_translateY.o" "bouncy:Bouncy.lv[2]";
connectAttr "bouncy:L_Foot_CTRL_translateX.o" "bouncy:Bouncy.lv[3]";
connectAttr "bouncy:R_Foot_CTRL_translateZ.o" "bouncy:Bouncy.lv[4]";
connectAttr "bouncy:R_Foot_CTRL_translateY.o" "bouncy:Bouncy.lv[5]";
connectAttr "bouncy:R_Foot_CTRL_translateX.o" "bouncy:Bouncy.lv[6]";
connectAttr "bouncy:R_hand_CTRL_translateZ.o" "bouncy:Bouncy.lv[7]";
connectAttr "bouncy:R_hand_CTRL_translateY.o" "bouncy:Bouncy.lv[8]";
connectAttr "bouncy:R_hand_CTRL_translateX.o" "bouncy:Bouncy.lv[9]";
connectAttr "bouncy:R_Elbow_CTRL_translateZ.o" "bouncy:Bouncy.lv[10]";
connectAttr "bouncy:R_Elbow_CTRL_translateY.o" "bouncy:Bouncy.lv[11]";
connectAttr "bouncy:R_Elbow_CTRL_translateX.o" "bouncy:Bouncy.lv[12]";
connectAttr "bouncy:R_Shoulder_CTRL_translateZ.o" "bouncy:Bouncy.lv[13]";
connectAttr "bouncy:R_Shoulder_CTRL_translateY.o" "bouncy:Bouncy.lv[14]";
connectAttr "bouncy:R_Shoulder_CTRL_translateX.o" "bouncy:Bouncy.lv[15]";
connectAttr "bouncy:L_Hand_CTRL_translateZ.o" "bouncy:Bouncy.lv[16]";
connectAttr "bouncy:L_Hand_CTRL_translateY.o" "bouncy:Bouncy.lv[17]";
connectAttr "bouncy:L_Hand_CTRL_translateX.o" "bouncy:Bouncy.lv[18]";
connectAttr "bouncy:L_Elbow_CTRL_translateZ.o" "bouncy:Bouncy.lv[19]";
connectAttr "bouncy:L_Elbow_CTRL_translateY.o" "bouncy:Bouncy.lv[20]";
connectAttr "bouncy:L_Elbow_CTRL_translateX.o" "bouncy:Bouncy.lv[21]";
connectAttr "bouncy:L_Shoulder_CTRL_translateZ.o" "bouncy:Bouncy.lv[22]";
connectAttr "bouncy:L_Shoulder_CTRL_translateY.o" "bouncy:Bouncy.lv[23]";
connectAttr "bouncy:L_Shoulder_CTRL_translateX.o" "bouncy:Bouncy.lv[24]";
connectAttr "bouncy:head_CTRL_translateZ.o" "bouncy:Bouncy.lv[25]";
connectAttr "bouncy:head_CTRL_translateY.o" "bouncy:Bouncy.lv[26]";
connectAttr "bouncy:head_CTRL_translateX.o" "bouncy:Bouncy.lv[27]";
connectAttr "bouncy:Root_CTRL_translateZ.o" "bouncy:Bouncy.lv[28]";
connectAttr "bouncy:Root_CTRL_translateY.o" "bouncy:Bouncy.lv[29]";
connectAttr "bouncy:Root_CTRL_translateX.o" "bouncy:Bouncy.lv[30]";
connectAttr "bouncy:L_Foot_CTRL_rotateZ.o" "bouncy:Bouncy.av[1]";
connectAttr "bouncy:L_Foot_CTRL_rotateY.o" "bouncy:Bouncy.av[2]";
connectAttr "bouncy:L_Foot_CTRL_rotateX.o" "bouncy:Bouncy.av[3]";
connectAttr "bouncy:R_Foot_CTRL_rotateZ.o" "bouncy:Bouncy.av[4]";
connectAttr "bouncy:R_Foot_CTRL_rotateY.o" "bouncy:Bouncy.av[5]";
connectAttr "bouncy:R_Foot_CTRL_rotateX.o" "bouncy:Bouncy.av[6]";
connectAttr "bouncy:R_hand_CTRL_rotateZ.o" "bouncy:Bouncy.av[7]";
connectAttr "bouncy:R_hand_CTRL_rotateY.o" "bouncy:Bouncy.av[8]";
connectAttr "bouncy:R_hand_CTRL_rotateX.o" "bouncy:Bouncy.av[9]";
connectAttr "bouncy:R_Elbow_CTRL_rotateZ.o" "bouncy:Bouncy.av[10]";
connectAttr "bouncy:R_Elbow_CTRL_rotateY.o" "bouncy:Bouncy.av[11]";
connectAttr "bouncy:R_Elbow_CTRL_rotateX.o" "bouncy:Bouncy.av[12]";
connectAttr "bouncy:R_Shoulder_CTRL_rotateZ.o" "bouncy:Bouncy.av[13]";
connectAttr "bouncy:R_Shoulder_CTRL_rotateY.o" "bouncy:Bouncy.av[14]";
connectAttr "bouncy:R_Shoulder_CTRL_rotateX.o" "bouncy:Bouncy.av[15]";
connectAttr "bouncy:L_Hand_CTRL_rotateZ.o" "bouncy:Bouncy.av[16]";
connectAttr "bouncy:L_Hand_CTRL_rotateY.o" "bouncy:Bouncy.av[17]";
connectAttr "bouncy:L_Hand_CTRL_rotateX.o" "bouncy:Bouncy.av[18]";
connectAttr "bouncy:L_Elbow_CTRL_rotateZ.o" "bouncy:Bouncy.av[19]";
connectAttr "bouncy:L_Elbow_CTRL_rotateY.o" "bouncy:Bouncy.av[20]";
connectAttr "bouncy:L_Elbow_CTRL_rotateX.o" "bouncy:Bouncy.av[21]";
connectAttr "bouncy:L_Shoulder_CTRL_rotateZ.o" "bouncy:Bouncy.av[22]";
connectAttr "bouncy:L_Shoulder_CTRL_rotateY.o" "bouncy:Bouncy.av[23]";
connectAttr "bouncy:L_Shoulder_CTRL_rotateX.o" "bouncy:Bouncy.av[24]";
connectAttr "bouncy:head_CTRL_rotateZ.o" "bouncy:Bouncy.av[25]";
connectAttr "bouncy:head_CTRL_rotateY.o" "bouncy:Bouncy.av[26]";
connectAttr "bouncy:head_CTRL_rotateX.o" "bouncy:Bouncy.av[27]";
connectAttr "bouncy:Root_CTRL_rotateZ.o" "bouncy:Bouncy.av[28]";
connectAttr "bouncy:Root_CTRL_rotateY.o" "bouncy:Bouncy.av[29]";
connectAttr "bouncy:Root_CTRL_rotateX.o" "bouncy:Bouncy.av[30]";
connectAttr "bouncy:L_Foot_CTRL.rz" "bouncy:Bouncy.dnsm[0]";
connectAttr "bouncy:L_Foot_CTRL.ry" "bouncy:Bouncy.dnsm[1]";
connectAttr "bouncy:L_Foot_CTRL.rx" "bouncy:Bouncy.dnsm[2]";
connectAttr "bouncy:L_Foot_CTRL.tz" "bouncy:Bouncy.dnsm[3]";
connectAttr "bouncy:L_Foot_CTRL.ty" "bouncy:Bouncy.dnsm[4]";
connectAttr "bouncy:L_Foot_CTRL.tx" "bouncy:Bouncy.dnsm[5]";
connectAttr "bouncy:R_Foot_CTRL.rz" "bouncy:Bouncy.dnsm[6]";
connectAttr "bouncy:R_Foot_CTRL.ry" "bouncy:Bouncy.dnsm[7]";
connectAttr "bouncy:R_Foot_CTRL.rx" "bouncy:Bouncy.dnsm[8]";
connectAttr "bouncy:R_Foot_CTRL.tz" "bouncy:Bouncy.dnsm[9]";
connectAttr "bouncy:R_Foot_CTRL.ty" "bouncy:Bouncy.dnsm[10]";
connectAttr "bouncy:R_Foot_CTRL.tx" "bouncy:Bouncy.dnsm[11]";
connectAttr "bouncy:R_hand_CTRL.rz" "bouncy:Bouncy.dnsm[12]";
connectAttr "bouncy:R_hand_CTRL.ry" "bouncy:Bouncy.dnsm[13]";
connectAttr "bouncy:R_hand_CTRL.rx" "bouncy:Bouncy.dnsm[14]";
connectAttr "bouncy:R_hand_CTRL.tz" "bouncy:Bouncy.dnsm[15]";
connectAttr "bouncy:R_hand_CTRL.ty" "bouncy:Bouncy.dnsm[16]";
connectAttr "bouncy:R_hand_CTRL.tx" "bouncy:Bouncy.dnsm[17]";
connectAttr "bouncy:R_Elbow_CTRL.rz" "bouncy:Bouncy.dnsm[18]";
connectAttr "bouncy:R_Elbow_CTRL.ry" "bouncy:Bouncy.dnsm[19]";
connectAttr "bouncy:R_Elbow_CTRL.rx" "bouncy:Bouncy.dnsm[20]";
connectAttr "bouncy:R_Elbow_CTRL.tz" "bouncy:Bouncy.dnsm[21]";
connectAttr "bouncy:R_Elbow_CTRL.ty" "bouncy:Bouncy.dnsm[22]";
connectAttr "bouncy:R_Elbow_CTRL.tx" "bouncy:Bouncy.dnsm[23]";
connectAttr "bouncy:R_Shoulder_CTRL.rz" "bouncy:Bouncy.dnsm[24]";
connectAttr "bouncy:R_Shoulder_CTRL.ry" "bouncy:Bouncy.dnsm[25]";
connectAttr "bouncy:R_Shoulder_CTRL.rx" "bouncy:Bouncy.dnsm[26]";
connectAttr "bouncy:R_Shoulder_CTRL.tz" "bouncy:Bouncy.dnsm[27]";
connectAttr "bouncy:R_Shoulder_CTRL.ty" "bouncy:Bouncy.dnsm[28]";
connectAttr "bouncy:R_Shoulder_CTRL.tx" "bouncy:Bouncy.dnsm[29]";
connectAttr "bouncy:L_Hand_CTRL.rz" "bouncy:Bouncy.dnsm[30]";
connectAttr "bouncy:L_Hand_CTRL.ry" "bouncy:Bouncy.dnsm[31]";
connectAttr "bouncy:L_Hand_CTRL.rx" "bouncy:Bouncy.dnsm[32]";
connectAttr "bouncy:L_Hand_CTRL.tz" "bouncy:Bouncy.dnsm[33]";
connectAttr "bouncy:L_Hand_CTRL.ty" "bouncy:Bouncy.dnsm[34]";
connectAttr "bouncy:L_Hand_CTRL.tx" "bouncy:Bouncy.dnsm[35]";
connectAttr "bouncy:L_Elbow_CTRL.rz" "bouncy:Bouncy.dnsm[36]";
connectAttr "bouncy:L_Elbow_CTRL.ry" "bouncy:Bouncy.dnsm[37]";
connectAttr "bouncy:L_Elbow_CTRL.rx" "bouncy:Bouncy.dnsm[38]";
connectAttr "bouncy:L_Elbow_CTRL.tz" "bouncy:Bouncy.dnsm[39]";
connectAttr "bouncy:L_Elbow_CTRL.ty" "bouncy:Bouncy.dnsm[40]";
connectAttr "bouncy:L_Elbow_CTRL.tx" "bouncy:Bouncy.dnsm[41]";
connectAttr "bouncy:L_Shoulder_CTRL.rz" "bouncy:Bouncy.dnsm[42]";
connectAttr "bouncy:L_Shoulder_CTRL.ry" "bouncy:Bouncy.dnsm[43]";
connectAttr "bouncy:L_Shoulder_CTRL.rx" "bouncy:Bouncy.dnsm[44]";
connectAttr "bouncy:L_Shoulder_CTRL.tz" "bouncy:Bouncy.dnsm[45]";
connectAttr "bouncy:L_Shoulder_CTRL.ty" "bouncy:Bouncy.dnsm[46]";
connectAttr "bouncy:L_Shoulder_CTRL.tx" "bouncy:Bouncy.dnsm[47]";
connectAttr "bouncy:head_CTRL.rz" "bouncy:Bouncy.dnsm[48]";
connectAttr "bouncy:head_CTRL.ry" "bouncy:Bouncy.dnsm[49]";
connectAttr "bouncy:head_CTRL.rx" "bouncy:Bouncy.dnsm[50]";
connectAttr "bouncy:head_CTRL.tz" "bouncy:Bouncy.dnsm[51]";
connectAttr "bouncy:head_CTRL.ty" "bouncy:Bouncy.dnsm[52]";
connectAttr "bouncy:head_CTRL.tx" "bouncy:Bouncy.dnsm[53]";
connectAttr "bouncy:Root_CTRL.rz" "bouncy:Bouncy.dnsm[54]";
connectAttr "bouncy:Root_CTRL.ry" "bouncy:Bouncy.dnsm[55]";
connectAttr "bouncy:Root_CTRL.rx" "bouncy:Bouncy.dnsm[56]";
connectAttr "bouncy:Root_CTRL.tz" "bouncy:Bouncy.dnsm[57]";
connectAttr "bouncy:Root_CTRL.ty" "bouncy:Bouncy.dnsm[58]";
connectAttr "bouncy:Root_CTRL.tx" "bouncy:Bouncy.dnsm[59]";
connectAttr "bouncy:skinCluster38GroupParts.og" "bouncy:skinCluster38.ip[0].ig";
connectAttr "bouncy:skinCluster38GroupId.id" "bouncy:skinCluster38.ip[0].gi";
connectAttr "bouncy:bindPose14.msg" "bouncy:skinCluster38.bp";
connectAttr "bouncy:R_Knee_JNT.wm" "bouncy:skinCluster38.ma[0]";
connectAttr "bouncy:R_Knee_JNT.liw" "bouncy:skinCluster38.lw[0]";
connectAttr "bouncy:groupParts76.og" "bouncy:tweak38.ip[0].ig";
connectAttr "bouncy:groupId76.id" "bouncy:tweak38.ip[0].gi";
connectAttr "bouncy:skinCluster38GroupId.msg" "bouncy:skinCluster38Set.gn" -na;
connectAttr "bouncy:R_Knee_GEOShape.iog.og[2]" "bouncy:skinCluster38Set.dsm" -na
		;
connectAttr "bouncy:skinCluster38.msg" "bouncy:skinCluster38Set.ub[0]";
connectAttr "bouncy:tweak38.og[0]" "bouncy:skinCluster38GroupParts.ig";
connectAttr "bouncy:skinCluster38GroupId.id" "bouncy:skinCluster38GroupParts.gi"
		;
connectAttr "bouncy:groupId76.msg" "bouncy:tweakSet38.gn" -na;
connectAttr "bouncy:R_Knee_GEOShape.iog.og[3]" "bouncy:tweakSet38.dsm" -na;
connectAttr "bouncy:tweak38.msg" "bouncy:tweakSet38.ub[0]";
connectAttr "bouncy:R_Knee_GEOShapeOrig.w" "bouncy:groupParts76.ig";
connectAttr "bouncy:groupId76.id" "bouncy:groupParts76.gi";
connectAttr "bouncy:Bouncy_GRP.msg" "bouncy:bindPose14.m[0]";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose14.m[1]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose14.m[2]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose14.m[3]";
connectAttr "bouncy:hip_root_JNT.msg" "bouncy:bindPose14.m[4]";
connectAttr "bouncy:R_Hip_JNT.msg" "bouncy:bindPose14.m[5]";
connectAttr "bouncy:R_Knee_JNT.msg" "bouncy:bindPose14.m[6]";
connectAttr "bouncy:bindPose14.w" "bouncy:bindPose14.p[0]";
connectAttr "bouncy:bindPose14.m[0]" "bouncy:bindPose14.p[1]";
connectAttr "bouncy:bindPose14.m[1]" "bouncy:bindPose14.p[2]";
connectAttr "bouncy:bindPose14.m[2]" "bouncy:bindPose14.p[3]";
connectAttr "bouncy:bindPose14.m[3]" "bouncy:bindPose14.p[4]";
connectAttr "bouncy:bindPose14.m[4]" "bouncy:bindPose14.p[5]";
connectAttr "bouncy:bindPose14.m[5]" "bouncy:bindPose14.p[6]";
connectAttr "bouncy:skinCluster39GroupParts.og" "bouncy:skinCluster39.ip[0].ig";
connectAttr "bouncy:skinCluster39GroupId.id" "bouncy:skinCluster39.ip[0].gi";
connectAttr "bouncy:R_Knee_JNT.wm" "bouncy:skinCluster39.ma[0]";
connectAttr "bouncy:R_Knee_JNT.liw" "bouncy:skinCluster39.lw[0]";
connectAttr "bouncy:bindPose14.msg" "bouncy:skinCluster39.bp";
connectAttr "bouncy:groupParts78.og" "bouncy:tweak39.ip[0].ig";
connectAttr "bouncy:groupId78.id" "bouncy:tweak39.ip[0].gi";
connectAttr "bouncy:skinCluster39GroupId.msg" "bouncy:skinCluster39Set.gn" -na;
connectAttr "bouncy:R_lowerLeg_GEOShape.iog.og[2]" "bouncy:skinCluster39Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster39.msg" "bouncy:skinCluster39Set.ub[0]";
connectAttr "bouncy:tweak39.og[0]" "bouncy:skinCluster39GroupParts.ig";
connectAttr "bouncy:skinCluster39GroupId.id" "bouncy:skinCluster39GroupParts.gi"
		;
connectAttr "bouncy:groupId78.msg" "bouncy:tweakSet39.gn" -na;
connectAttr "bouncy:R_lowerLeg_GEOShape.iog.og[3]" "bouncy:tweakSet39.dsm" -na;
connectAttr "bouncy:tweak39.msg" "bouncy:tweakSet39.ub[0]";
connectAttr "bouncy:R_lowerLeg_GEOShapeOrig1.w" "bouncy:groupParts78.ig";
connectAttr "bouncy:groupId78.id" "bouncy:groupParts78.gi";
connectAttr "bouncy:skinCluster40GroupParts.og" "bouncy:skinCluster40.ip[0].ig";
connectAttr "bouncy:skinCluster40GroupId.id" "bouncy:skinCluster40.ip[0].gi";
connectAttr "bouncy:R_Hip_JNT.wm" "bouncy:skinCluster40.ma[0]";
connectAttr "bouncy:R_Hip_JNT.liw" "bouncy:skinCluster40.lw[0]";
connectAttr "bouncy:bindPose14.msg" "bouncy:skinCluster40.bp";
connectAttr "bouncy:groupParts80.og" "bouncy:tweak40.ip[0].ig";
connectAttr "bouncy:groupId80.id" "bouncy:tweak40.ip[0].gi";
connectAttr "bouncy:skinCluster40GroupId.msg" "bouncy:skinCluster40Set.gn" -na;
connectAttr "bouncy:R_upperLeg_GEOShape.iog.og[2]" "bouncy:skinCluster40Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster40.msg" "bouncy:skinCluster40Set.ub[0]";
connectAttr "bouncy:tweak40.og[0]" "bouncy:skinCluster40GroupParts.ig";
connectAttr "bouncy:skinCluster40GroupId.id" "bouncy:skinCluster40GroupParts.gi"
		;
connectAttr "bouncy:groupId80.msg" "bouncy:tweakSet40.gn" -na;
connectAttr "bouncy:R_upperLeg_GEOShape.iog.og[3]" "bouncy:tweakSet40.dsm" -na;
connectAttr "bouncy:tweak40.msg" "bouncy:tweakSet40.ub[0]";
connectAttr "bouncy:R_upperLeg_GEOShapeOrig1.w" "bouncy:groupParts80.ig";
connectAttr "bouncy:groupId80.id" "bouncy:groupParts80.gi";
connectAttr "bouncy:skinCluster41GroupParts.og" "bouncy:skinCluster41.ip[0].ig";
connectAttr "bouncy:skinCluster41GroupId.id" "bouncy:skinCluster41.ip[0].gi";
connectAttr "bouncy:R_Hip_JNT.wm" "bouncy:skinCluster41.ma[0]";
connectAttr "bouncy:R_Hip_JNT.liw" "bouncy:skinCluster41.lw[0]";
connectAttr "bouncy:bindPose14.msg" "bouncy:skinCluster41.bp";
connectAttr "bouncy:groupParts82.og" "bouncy:tweak41.ip[0].ig";
connectAttr "bouncy:groupId82.id" "bouncy:tweak41.ip[0].gi";
connectAttr "bouncy:skinCluster41GroupId.msg" "bouncy:skinCluster41Set.gn" -na;
connectAttr "bouncy:R_Hip_GEOShape.iog.og[2]" "bouncy:skinCluster41Set.dsm" -na;
connectAttr "bouncy:skinCluster41.msg" "bouncy:skinCluster41Set.ub[0]";
connectAttr "bouncy:tweak41.og[0]" "bouncy:skinCluster41GroupParts.ig";
connectAttr "bouncy:skinCluster41GroupId.id" "bouncy:skinCluster41GroupParts.gi"
		;
connectAttr "bouncy:groupId82.msg" "bouncy:tweakSet41.gn" -na;
connectAttr "bouncy:R_Hip_GEOShape.iog.og[3]" "bouncy:tweakSet41.dsm" -na;
connectAttr "bouncy:tweak41.msg" "bouncy:tweakSet41.ub[0]";
connectAttr "bouncy:R_Hip_GEOShapeOrig.w" "bouncy:groupParts82.ig";
connectAttr "bouncy:groupId82.id" "bouncy:groupParts82.gi";
connectAttr "bouncy:skinCluster42GroupParts.og" "bouncy:skinCluster42.ip[0].ig";
connectAttr "bouncy:skinCluster42GroupId.id" "bouncy:skinCluster42.ip[0].gi";
connectAttr "bouncy:bindPose15.msg" "bouncy:skinCluster42.bp";
connectAttr "bouncy:R_Ankle_JNT.wm" "bouncy:skinCluster42.ma[0]";
connectAttr "bouncy:R_Ankle_JNT.liw" "bouncy:skinCluster42.lw[0]";
connectAttr "bouncy:groupParts84.og" "bouncy:tweak42.ip[0].ig";
connectAttr "bouncy:groupId84.id" "bouncy:tweak42.ip[0].gi";
connectAttr "bouncy:skinCluster42GroupId.msg" "bouncy:skinCluster42Set.gn" -na;
connectAttr "bouncy:R_Ankle_GEOShape.iog.og[2]" "bouncy:skinCluster42Set.dsm" -na
		;
connectAttr "bouncy:skinCluster42.msg" "bouncy:skinCluster42Set.ub[0]";
connectAttr "bouncy:tweak42.og[0]" "bouncy:skinCluster42GroupParts.ig";
connectAttr "bouncy:skinCluster42GroupId.id" "bouncy:skinCluster42GroupParts.gi"
		;
connectAttr "bouncy:groupId84.msg" "bouncy:tweakSet42.gn" -na;
connectAttr "bouncy:R_Ankle_GEOShape.iog.og[3]" "bouncy:tweakSet42.dsm" -na;
connectAttr "bouncy:tweak42.msg" "bouncy:tweakSet42.ub[0]";
connectAttr "bouncy:R_Ankle_GEOShapeOrig.w" "bouncy:groupParts84.ig";
connectAttr "bouncy:groupId84.id" "bouncy:groupParts84.gi";
connectAttr "bouncy:Bouncy_GRP.msg" "bouncy:bindPose15.m[0]";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose15.m[1]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose15.m[2]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose15.m[3]";
connectAttr "bouncy:hip_root_JNT.msg" "bouncy:bindPose15.m[4]";
connectAttr "bouncy:R_Hip_JNT.msg" "bouncy:bindPose15.m[5]";
connectAttr "bouncy:R_Knee_JNT.msg" "bouncy:bindPose15.m[6]";
connectAttr "bouncy:R_Ankle_JNT.msg" "bouncy:bindPose15.m[7]";
connectAttr "bouncy:bindPose15.w" "bouncy:bindPose15.p[0]";
connectAttr "bouncy:bindPose15.m[0]" "bouncy:bindPose15.p[1]";
connectAttr "bouncy:bindPose15.m[1]" "bouncy:bindPose15.p[2]";
connectAttr "bouncy:bindPose15.m[2]" "bouncy:bindPose15.p[3]";
connectAttr "bouncy:bindPose15.m[3]" "bouncy:bindPose15.p[4]";
connectAttr "bouncy:bindPose15.m[4]" "bouncy:bindPose15.p[5]";
connectAttr "bouncy:bindPose15.m[5]" "bouncy:bindPose15.p[6]";
connectAttr "bouncy:bindPose15.m[6]" "bouncy:bindPose15.p[7]";
connectAttr "bouncy:skinCluster43GroupParts.og" "bouncy:skinCluster43.ip[0].ig";
connectAttr "bouncy:skinCluster43GroupId.id" "bouncy:skinCluster43.ip[0].gi";
connectAttr "bouncy:R_Ankle_JNT.wm" "bouncy:skinCluster43.ma[0]";
connectAttr "bouncy:R_Ankle_JNT.liw" "bouncy:skinCluster43.lw[0]";
connectAttr "bouncy:bindPose15.msg" "bouncy:skinCluster43.bp";
connectAttr "bouncy:groupParts86.og" "bouncy:tweak43.ip[0].ig";
connectAttr "bouncy:groupId86.id" "bouncy:tweak43.ip[0].gi";
connectAttr "bouncy:skinCluster43GroupId.msg" "bouncy:skinCluster43Set.gn" -na;
connectAttr "bouncy:R_Foot_GEOShape.iog.og[2]" "bouncy:skinCluster43Set.dsm" -na
		;
connectAttr "bouncy:skinCluster43.msg" "bouncy:skinCluster43Set.ub[0]";
connectAttr "bouncy:tweak43.og[0]" "bouncy:skinCluster43GroupParts.ig";
connectAttr "bouncy:skinCluster43GroupId.id" "bouncy:skinCluster43GroupParts.gi"
		;
connectAttr "bouncy:groupId86.msg" "bouncy:tweakSet43.gn" -na;
connectAttr "bouncy:R_Foot_GEOShape.iog.og[3]" "bouncy:tweakSet43.dsm" -na;
connectAttr "bouncy:tweak43.msg" "bouncy:tweakSet43.ub[0]";
connectAttr "bouncy:R_Foot_GEOShapeOrig.w" "bouncy:groupParts86.ig";
connectAttr "bouncy:groupId86.id" "bouncy:groupParts86.gi";
connectAttr "bouncy:skinCluster44GroupParts.og" "bouncy:skinCluster44.ip[0].ig";
connectAttr "bouncy:skinCluster44GroupId.id" "bouncy:skinCluster44.ip[0].gi";
connectAttr "bouncy:bindPose16.msg" "bouncy:skinCluster44.bp";
connectAttr "bouncy:R_Ball_JNT.wm" "bouncy:skinCluster44.ma[0]";
connectAttr "bouncy:R_Ball_JNT.liw" "bouncy:skinCluster44.lw[0]";
connectAttr "bouncy:groupParts88.og" "bouncy:tweak44.ip[0].ig";
connectAttr "bouncy:groupId88.id" "bouncy:tweak44.ip[0].gi";
connectAttr "bouncy:skinCluster44GroupId.msg" "bouncy:skinCluster44Set.gn" -na;
connectAttr "bouncy:R_Toes_GEOShape.iog.og[4]" "bouncy:skinCluster44Set.dsm" -na
		;
connectAttr "bouncy:skinCluster44.msg" "bouncy:skinCluster44Set.ub[0]";
connectAttr "bouncy:tweak44.og[0]" "bouncy:skinCluster44GroupParts.ig";
connectAttr "bouncy:skinCluster44GroupId.id" "bouncy:skinCluster44GroupParts.gi"
		;
connectAttr "bouncy:groupId88.msg" "bouncy:tweakSet44.gn" -na;
connectAttr "bouncy:R_Toes_GEOShape.iog.og[5]" "bouncy:tweakSet44.dsm" -na;
connectAttr "bouncy:tweak44.msg" "bouncy:tweakSet44.ub[0]";
connectAttr "bouncy:R_Toes_GEOShapeOrig.w" "bouncy:groupParts88.ig";
connectAttr "bouncy:groupId88.id" "bouncy:groupParts88.gi";
connectAttr "bouncy:Bouncy_GRP.msg" "bouncy:bindPose16.m[0]";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose16.m[1]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose16.m[2]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose16.m[3]";
connectAttr "bouncy:hip_root_JNT.msg" "bouncy:bindPose16.m[4]";
connectAttr "bouncy:R_Hip_JNT.msg" "bouncy:bindPose16.m[5]";
connectAttr "bouncy:R_Knee_JNT.msg" "bouncy:bindPose16.m[6]";
connectAttr "bouncy:R_Ankle_JNT.msg" "bouncy:bindPose16.m[7]";
connectAttr "bouncy:R_Ball_JNT.msg" "bouncy:bindPose16.m[8]";
connectAttr "bouncy:bindPose16.w" "bouncy:bindPose16.p[0]";
connectAttr "bouncy:bindPose16.m[0]" "bouncy:bindPose16.p[1]";
connectAttr "bouncy:bindPose16.m[1]" "bouncy:bindPose16.p[2]";
connectAttr "bouncy:bindPose16.m[2]" "bouncy:bindPose16.p[3]";
connectAttr "bouncy:bindPose16.m[3]" "bouncy:bindPose16.p[4]";
connectAttr "bouncy:bindPose16.m[4]" "bouncy:bindPose16.p[5]";
connectAttr "bouncy:bindPose16.m[5]" "bouncy:bindPose16.p[6]";
connectAttr "bouncy:bindPose16.m[6]" "bouncy:bindPose16.p[7]";
connectAttr "bouncy:bindPose16.m[7]" "bouncy:bindPose16.p[8]";
connectAttr "bouncy:skinCluster45GroupParts.og" "bouncy:skinCluster45.ip[0].ig";
connectAttr "bouncy:skinCluster45GroupId.id" "bouncy:skinCluster45.ip[0].gi";
connectAttr "bouncy:R_Ball_JNT.wm" "bouncy:skinCluster45.ma[0]";
connectAttr "bouncy:R_Ball_JNT.liw" "bouncy:skinCluster45.lw[0]";
connectAttr "bouncy:bindPose16.msg" "bouncy:skinCluster45.bp";
connectAttr "bouncy:groupParts90.og" "bouncy:tweak45.ip[0].ig";
connectAttr "bouncy:groupId90.id" "bouncy:tweak45.ip[0].gi";
connectAttr "bouncy:skinCluster45GroupId.msg" "bouncy:skinCluster45Set.gn" -na;
connectAttr "bouncy:R_Ball_GEOShape.iog.og[4]" "bouncy:skinCluster45Set.dsm" -na
		;
connectAttr "bouncy:skinCluster45.msg" "bouncy:skinCluster45Set.ub[0]";
connectAttr "bouncy:tweak45.og[0]" "bouncy:skinCluster45GroupParts.ig";
connectAttr "bouncy:skinCluster45GroupId.id" "bouncy:skinCluster45GroupParts.gi"
		;
connectAttr "bouncy:groupId90.msg" "bouncy:tweakSet45.gn" -na;
connectAttr "bouncy:R_Ball_GEOShape.iog.og[5]" "bouncy:tweakSet45.dsm" -na;
connectAttr "bouncy:tweak45.msg" "bouncy:tweakSet45.ub[0]";
connectAttr "bouncy:R_Ball_GEOShapeOrig.w" "bouncy:groupParts90.ig";
connectAttr "bouncy:groupId90.id" "bouncy:groupParts90.gi";
connectAttr "bouncy:skinCluster46GroupParts.og" "bouncy:skinCluster46.ip[0].ig";
connectAttr "bouncy:skinCluster46GroupId.id" "bouncy:skinCluster46.ip[0].gi";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster46.bp";
connectAttr "bouncy:L_Ball_JNT.wm" "bouncy:skinCluster46.ma[0]";
connectAttr "bouncy:L_Ball_JNT.liw" "bouncy:skinCluster46.lw[0]";
connectAttr "bouncy:groupParts92.og" "bouncy:tweak46.ip[0].ig";
connectAttr "bouncy:groupId92.id" "bouncy:tweak46.ip[0].gi";
connectAttr "bouncy:skinCluster46GroupId.msg" "bouncy:skinCluster46Set.gn" -na;
connectAttr "bouncy:L_Toes_GEOShape.iog.og[2]" "bouncy:skinCluster46Set.dsm" -na
		;
connectAttr "bouncy:skinCluster46.msg" "bouncy:skinCluster46Set.ub[0]";
connectAttr "bouncy:tweak46.og[0]" "bouncy:skinCluster46GroupParts.ig";
connectAttr "bouncy:skinCluster46GroupId.id" "bouncy:skinCluster46GroupParts.gi"
		;
connectAttr "bouncy:groupId92.msg" "bouncy:tweakSet46.gn" -na;
connectAttr "bouncy:L_Toes_GEOShape.iog.og[3]" "bouncy:tweakSet46.dsm" -na;
connectAttr "bouncy:tweak46.msg" "bouncy:tweakSet46.ub[0]";
connectAttr "bouncy:L_Toes_GEOShapeOrig.w" "bouncy:groupParts92.ig";
connectAttr "bouncy:groupId92.id" "bouncy:groupParts92.gi";
connectAttr "bouncy:Bouncy_GRP.msg" "bouncy:bindPose17.m[0]";
connectAttr "bouncy:Master_CTRL.msg" "bouncy:bindPose17.m[1]";
connectAttr "bouncy:Root_CTRL.msg" "bouncy:bindPose17.m[2]";
connectAttr "bouncy:root_JNT.msg" "bouncy:bindPose17.m[3]";
connectAttr "bouncy:hip_root_JNT.msg" "bouncy:bindPose17.m[4]";
connectAttr "bouncy:L_Hip_JNT.msg" "bouncy:bindPose17.m[5]";
connectAttr "bouncy:L_Knee_JNT.msg" "bouncy:bindPose17.m[6]";
connectAttr "bouncy:L_Ankle_JNT.msg" "bouncy:bindPose17.m[7]";
connectAttr "bouncy:L_Ball_JNT.msg" "bouncy:bindPose17.m[8]";
connectAttr "bouncy:bindPose17.w" "bouncy:bindPose17.p[0]";
connectAttr "bouncy:bindPose17.m[0]" "bouncy:bindPose17.p[1]";
connectAttr "bouncy:bindPose17.m[1]" "bouncy:bindPose17.p[2]";
connectAttr "bouncy:bindPose17.m[2]" "bouncy:bindPose17.p[3]";
connectAttr "bouncy:bindPose17.m[3]" "bouncy:bindPose17.p[4]";
connectAttr "bouncy:bindPose17.m[4]" "bouncy:bindPose17.p[5]";
connectAttr "bouncy:bindPose17.m[5]" "bouncy:bindPose17.p[6]";
connectAttr "bouncy:bindPose17.m[6]" "bouncy:bindPose17.p[7]";
connectAttr "bouncy:bindPose17.m[7]" "bouncy:bindPose17.p[8]";
connectAttr "bouncy:skinCluster47GroupParts.og" "bouncy:skinCluster47.ip[0].ig";
connectAttr "bouncy:skinCluster47GroupId.id" "bouncy:skinCluster47.ip[0].gi";
connectAttr "bouncy:L_Ball_JNT.wm" "bouncy:skinCluster47.ma[0]";
connectAttr "bouncy:L_Ball_JNT.liw" "bouncy:skinCluster47.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster47.bp";
connectAttr "bouncy:groupParts94.og" "bouncy:tweak47.ip[0].ig";
connectAttr "bouncy:groupId94.id" "bouncy:tweak47.ip[0].gi";
connectAttr "bouncy:skinCluster47GroupId.msg" "bouncy:skinCluster47Set.gn" -na;
connectAttr "bouncy:L_Ball_GEOShape.iog.og[2]" "bouncy:skinCluster47Set.dsm" -na
		;
connectAttr "bouncy:skinCluster47.msg" "bouncy:skinCluster47Set.ub[0]";
connectAttr "bouncy:tweak47.og[0]" "bouncy:skinCluster47GroupParts.ig";
connectAttr "bouncy:skinCluster47GroupId.id" "bouncy:skinCluster47GroupParts.gi"
		;
connectAttr "bouncy:groupId94.msg" "bouncy:tweakSet47.gn" -na;
connectAttr "bouncy:L_Ball_GEOShape.iog.og[3]" "bouncy:tweakSet47.dsm" -na;
connectAttr "bouncy:tweak47.msg" "bouncy:tweakSet47.ub[0]";
connectAttr "bouncy:L_Ball_GEOShapeOrig.w" "bouncy:groupParts94.ig";
connectAttr "bouncy:groupId94.id" "bouncy:groupParts94.gi";
connectAttr "bouncy:skinCluster48GroupParts.og" "bouncy:skinCluster48.ip[0].ig";
connectAttr "bouncy:skinCluster48GroupId.id" "bouncy:skinCluster48.ip[0].gi";
connectAttr "bouncy:L_Ankle_JNT.wm" "bouncy:skinCluster48.ma[0]";
connectAttr "bouncy:L_Ankle_JNT.liw" "bouncy:skinCluster48.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster48.bp";
connectAttr "bouncy:groupParts96.og" "bouncy:tweak48.ip[0].ig";
connectAttr "bouncy:groupId96.id" "bouncy:tweak48.ip[0].gi";
connectAttr "bouncy:skinCluster48GroupId.msg" "bouncy:skinCluster48Set.gn" -na;
connectAttr "bouncy:L_Foot_GEOShape.iog.og[2]" "bouncy:skinCluster48Set.dsm" -na
		;
connectAttr "bouncy:skinCluster48.msg" "bouncy:skinCluster48Set.ub[0]";
connectAttr "bouncy:tweak48.og[0]" "bouncy:skinCluster48GroupParts.ig";
connectAttr "bouncy:skinCluster48GroupId.id" "bouncy:skinCluster48GroupParts.gi"
		;
connectAttr "bouncy:groupId96.msg" "bouncy:tweakSet48.gn" -na;
connectAttr "bouncy:L_Foot_GEOShape.iog.og[3]" "bouncy:tweakSet48.dsm" -na;
connectAttr "bouncy:tweak48.msg" "bouncy:tweakSet48.ub[0]";
connectAttr "bouncy:L_Foot_GEOShapeOrig.w" "bouncy:groupParts96.ig";
connectAttr "bouncy:groupId96.id" "bouncy:groupParts96.gi";
connectAttr "bouncy:skinCluster49GroupParts.og" "bouncy:skinCluster49.ip[0].ig";
connectAttr "bouncy:skinCluster49GroupId.id" "bouncy:skinCluster49.ip[0].gi";
connectAttr "bouncy:L_Ankle_JNT.wm" "bouncy:skinCluster49.ma[0]";
connectAttr "bouncy:L_Ankle_JNT.liw" "bouncy:skinCluster49.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster49.bp";
connectAttr "bouncy:groupParts98.og" "bouncy:tweak49.ip[0].ig";
connectAttr "bouncy:groupId98.id" "bouncy:tweak49.ip[0].gi";
connectAttr "bouncy:skinCluster49GroupId.msg" "bouncy:skinCluster49Set.gn" -na;
connectAttr "bouncy:L_Ankle_GEOShape.iog.og[2]" "bouncy:skinCluster49Set.dsm" -na
		;
connectAttr "bouncy:skinCluster49.msg" "bouncy:skinCluster49Set.ub[0]";
connectAttr "bouncy:tweak49.og[0]" "bouncy:skinCluster49GroupParts.ig";
connectAttr "bouncy:skinCluster49GroupId.id" "bouncy:skinCluster49GroupParts.gi"
		;
connectAttr "bouncy:groupId98.msg" "bouncy:tweakSet49.gn" -na;
connectAttr "bouncy:L_Ankle_GEOShape.iog.og[3]" "bouncy:tweakSet49.dsm" -na;
connectAttr "bouncy:tweak49.msg" "bouncy:tweakSet49.ub[0]";
connectAttr "bouncy:L_Ankle_GEOShapeOrig.w" "bouncy:groupParts98.ig";
connectAttr "bouncy:groupId98.id" "bouncy:groupParts98.gi";
connectAttr "bouncy:skinCluster50GroupParts.og" "bouncy:skinCluster50.ip[0].ig";
connectAttr "bouncy:skinCluster50GroupId.id" "bouncy:skinCluster50.ip[0].gi";
connectAttr "bouncy:L_Knee_JNT.wm" "bouncy:skinCluster50.ma[0]";
connectAttr "bouncy:L_Knee_JNT.liw" "bouncy:skinCluster50.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster50.bp";
connectAttr "bouncy:groupParts100.og" "bouncy:tweak50.ip[0].ig";
connectAttr "bouncy:groupId100.id" "bouncy:tweak50.ip[0].gi";
connectAttr "bouncy:skinCluster50GroupId.msg" "bouncy:skinCluster50Set.gn" -na;
connectAttr "bouncy:L_lowerLeg_GEOShape.iog.og[2]" "bouncy:skinCluster50Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster50.msg" "bouncy:skinCluster50Set.ub[0]";
connectAttr "bouncy:tweak50.og[0]" "bouncy:skinCluster50GroupParts.ig";
connectAttr "bouncy:skinCluster50GroupId.id" "bouncy:skinCluster50GroupParts.gi"
		;
connectAttr "bouncy:groupId100.msg" "bouncy:tweakSet50.gn" -na;
connectAttr "bouncy:L_lowerLeg_GEOShape.iog.og[3]" "bouncy:tweakSet50.dsm" -na;
connectAttr "bouncy:tweak50.msg" "bouncy:tweakSet50.ub[0]";
connectAttr "bouncy:L_lowerLeg_GEOShapeOrig1.w" "bouncy:groupParts100.ig";
connectAttr "bouncy:groupId100.id" "bouncy:groupParts100.gi";
connectAttr "bouncy:skinCluster51GroupParts.og" "bouncy:skinCluster51.ip[0].ig";
connectAttr "bouncy:skinCluster51GroupId.id" "bouncy:skinCluster51.ip[0].gi";
connectAttr "bouncy:L_Knee_JNT.wm" "bouncy:skinCluster51.ma[0]";
connectAttr "bouncy:L_Knee_JNT.liw" "bouncy:skinCluster51.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster51.bp";
connectAttr "bouncy:groupParts102.og" "bouncy:tweak51.ip[0].ig";
connectAttr "bouncy:groupId102.id" "bouncy:tweak51.ip[0].gi";
connectAttr "bouncy:skinCluster51GroupId.msg" "bouncy:skinCluster51Set.gn" -na;
connectAttr "bouncy:L_Knee_GEOShape.iog.og[2]" "bouncy:skinCluster51Set.dsm" -na
		;
connectAttr "bouncy:skinCluster51.msg" "bouncy:skinCluster51Set.ub[0]";
connectAttr "bouncy:tweak51.og[0]" "bouncy:skinCluster51GroupParts.ig";
connectAttr "bouncy:skinCluster51GroupId.id" "bouncy:skinCluster51GroupParts.gi"
		;
connectAttr "bouncy:groupId102.msg" "bouncy:tweakSet51.gn" -na;
connectAttr "bouncy:L_Knee_GEOShape.iog.og[3]" "bouncy:tweakSet51.dsm" -na;
connectAttr "bouncy:tweak51.msg" "bouncy:tweakSet51.ub[0]";
connectAttr "bouncy:L_Knee_GEOShapeOrig.w" "bouncy:groupParts102.ig";
connectAttr "bouncy:groupId102.id" "bouncy:groupParts102.gi";
connectAttr "bouncy:skinCluster52GroupParts.og" "bouncy:skinCluster52.ip[0].ig";
connectAttr "bouncy:skinCluster52GroupId.id" "bouncy:skinCluster52.ip[0].gi";
connectAttr "bouncy:L_Hip_JNT.wm" "bouncy:skinCluster52.ma[0]";
connectAttr "bouncy:L_Hip_JNT.liw" "bouncy:skinCluster52.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster52.bp";
connectAttr "bouncy:groupParts104.og" "bouncy:tweak52.ip[0].ig";
connectAttr "bouncy:groupId104.id" "bouncy:tweak52.ip[0].gi";
connectAttr "bouncy:skinCluster52GroupId.msg" "bouncy:skinCluster52Set.gn" -na;
connectAttr "bouncy:L_upperLeg_GEOShape.iog.og[2]" "bouncy:skinCluster52Set.dsm"
		 -na;
connectAttr "bouncy:skinCluster52.msg" "bouncy:skinCluster52Set.ub[0]";
connectAttr "bouncy:tweak52.og[0]" "bouncy:skinCluster52GroupParts.ig";
connectAttr "bouncy:skinCluster52GroupId.id" "bouncy:skinCluster52GroupParts.gi"
		;
connectAttr "bouncy:groupId104.msg" "bouncy:tweakSet52.gn" -na;
connectAttr "bouncy:L_upperLeg_GEOShape.iog.og[3]" "bouncy:tweakSet52.dsm" -na;
connectAttr "bouncy:tweak52.msg" "bouncy:tweakSet52.ub[0]";
connectAttr "bouncy:L_upperLeg_GEOShapeOrig1.w" "bouncy:groupParts104.ig";
connectAttr "bouncy:groupId104.id" "bouncy:groupParts104.gi";
connectAttr "bouncy:skinCluster53GroupParts.og" "bouncy:skinCluster53.ip[0].ig";
connectAttr "bouncy:skinCluster53GroupId.id" "bouncy:skinCluster53.ip[0].gi";
connectAttr "bouncy:L_Hip_JNT.wm" "bouncy:skinCluster53.ma[0]";
connectAttr "bouncy:L_Hip_JNT.liw" "bouncy:skinCluster53.lw[0]";
connectAttr "bouncy:bindPose17.msg" "bouncy:skinCluster53.bp";
connectAttr "bouncy:groupParts106.og" "bouncy:tweak53.ip[0].ig";
connectAttr "bouncy:groupId106.id" "bouncy:tweak53.ip[0].gi";
connectAttr "bouncy:skinCluster53GroupId.msg" "bouncy:skinCluster53Set.gn" -na;
connectAttr "bouncy:L_Hip_GEOShape.iog.og[4]" "bouncy:skinCluster53Set.dsm" -na;
connectAttr "bouncy:skinCluster53.msg" "bouncy:skinCluster53Set.ub[0]";
connectAttr "bouncy:tweak53.og[0]" "bouncy:skinCluster53GroupParts.ig";
connectAttr "bouncy:skinCluster53GroupId.id" "bouncy:skinCluster53GroupParts.gi"
		;
connectAttr "bouncy:groupId106.msg" "bouncy:tweakSet53.gn" -na;
connectAttr "bouncy:L_Hip_GEOShape.iog.og[5]" "bouncy:tweakSet53.dsm" -na;
connectAttr "bouncy:tweak53.msg" "bouncy:tweakSet53.ub[0]";
connectAttr "bouncy:L_Hip_GEOShapeOrig.w" "bouncy:groupParts106.ig";
connectAttr "bouncy:groupId106.id" "bouncy:groupParts106.gi";
connectAttr "bouncy:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "bouncy:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "bouncy:red.msg" ":defaultShaderList1.s" -na;
connectAttr "bouncy:green.msg" ":defaultShaderList1.s" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "bouncy:lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "bouncy:Bouncy.pa" ":characterPartition.st" -na;
connectAttr "bouncy:ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "bouncy:ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Bouncy.ma
