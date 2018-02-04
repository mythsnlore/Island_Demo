//Maya ASCII 2016 scene
//Name: KnightAnimations03.ma
//Last modified: Tue, Jan 30, 2018 11:34:43 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "BC4388D2-4800-299D-C273-418BDB76218E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.374778779515097 90.733936564804324 406.4286377450702 ;
	setAttr ".r" -type "double3" 720.86164726566392 1090.1999999999623 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C8C354A7-49EA-AAEB-2A18-0C8D191093DA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 393.38816129639679;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.70393179648898752 75.864064209041473 -4.5514131170701297 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9971D524-498A-CB8D-6F6F-839AE8AC72BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F352224E-4206-9D87-79D7-3C9B3D4ADAA6";
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
	rename -uid "51394880-45C6-F4E0-1944-0FB1FE71EE6B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D9626BA6-4185-0DA9-9E6E-C6B0CEA97B35";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0DDBBAAE-44EF-C11F-69EA-3B9817B9E427";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "913273D4-4C65-610A-1E17-EC96FAEDF427";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Armature_Knight";
	rename -uid "C104D1C8-4CBD-F786-69DB-BCAE4BBCCC2F";
	setAttr -l on -k off -cb on ".v";
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode locator -n "Armature_KnightShape" -p "Armature_Knight";
	rename -uid "1AF8B4CC-47B0-21F6-8D15-DE8F0B12EA6B";
	setAttr -k off ".v";
createNode joint -n "Spine" -p "Armature_Knight";
	rename -uid "A0C95EE7-439C-C567-91DD-F5B2E3EE4C1A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" -177.28070284815399 8.641671084335023e-006 179.99999626904903 ;
	setAttr ".bps" -type "matrix" -99.99999999999865 6.5117378594703761e-006 -1.5082561341255089e-005 0
		 7.2199653779145029e-006 99.887395291073688 -4.7442872978707644 0 1.4756642114820644e-005 -4.7442872978717894 -99.887395291072821 0
		 1.0943288835561051 65.311926064555024 3.550490919775485 1;
	setAttr ".fbxID" 5;
createNode joint -n "Chest" -p "Spine";
	rename -uid "E7F4436E-4E96-F57E-DF8F-4C9FDD55CDC0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.0535787305841631e-014 0.19099625366696826 -5.1575498732914227e-009 ;
	setAttr ".jo" -type "double3" 4.5704173446096146 4.0878345161883515e-005 2.5761708602925929e-006 ;
	setAttr ".bps" -type "matrix" -99.999999999983302 1.4387808557814792e-005 5.5969955313932756e-005 0
		 7.1696810127957149e-006 99.19172367253671 -12.688654572927351 0 -5.7343182743153647e-005 -12.688654572921219 -99.191723672521178 0
		 1.0943302625434215 84.390044378170558 2.644350334736608 1;
	setAttr ".fbxID" 5;
createNode joint -n "Neck" -p "Chest";
	rename -uid "5BC0F9F8-4E15-7A87-285A-E28301657947";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4295802273053598e-015 0.21082751329768368 -6.9682992293040869e-009 ;
	setAttr ".jo" -type "double3" -15.823994927030967 -1.2251702270892007e-006 -8.8157699596317912e-006 ;
	setAttr ".bps" -type "matrix" -99.999999999984425 -1.1455725596862392e-006 5.5801243292082928e-005 0
		 7.1480790317592186e-006 98.892725103384265 14.840111914214859 0 -5.5353374383026191e-005 14.840111914216541 -98.892725103368775 0
		 1.0943317741099832 105.3023889081808 -0.030766464769336643 1;
	setAttr ".fbxID" 5;
createNode joint -n "Head" -p "Neck";
	rename -uid "5CAA404A-4925-6BF7-5268-808686545860";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 8.2984001211901995e-015 0.10394200446039226 -8.2567865045124478e-009 ;
	setAttr ".jo" -type "double3" 9.1574991895401485 -4.0870860230920385e-005 -1.3768629546248365e-006 ;
	setAttr ".bps" -type "matrix" -99.999999999998622 7.0638699763691969e-006 -1.5098630679589184e-005 0
		 7.2276799821283016e-006 99.994084363335844 -1.0877004817612139 0 1.5020903751692957e-005 -1.0877004817622868 -99.994084363334963 0
		 1.0943325170952729 115.58149685944548 1.5117453305468225 1;
	setAttr ".fbxID" 5;
createNode joint -n "Head_end" -p "Head";
	rename -uid "19F40228-4655-7938-F56E-1D87E07B0234";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -5.0075718243239871e-015 0.36522041819915407 -7.2021914040293344e-010 ;
	setAttr ".bps" -type "matrix" -99.999999999998622 7.0638699763691969e-006 -1.5098630679589184e-005 0
		 7.2276799821283016e-006 99.994084363335844 -1.0877004817612139 0 1.5020903751692957e-005 -1.0877004817622868 -99.994084363334963 0
		 1.0943351567920685 152.10137816884787 1.114494977740224 1;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Head_orientConstraint1" -p "Head";
	rename -uid "CC31B806-4C93-0428-1916-7DAAB73AB2A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0.62314352246040228 179.99031621417816 -0.89107743908870785 ;
	setAttr ".o" -type "double3" -179.37678124103977 8.6508781329163883e-006 179.99999595270066 ;
	setAttr ".rsrr" -type "double3" -180 -180 180 ;
	setAttr -k on ".w0";
createNode joint -n "ShoulderFBXASC046l" -p "Chest";
	rename -uid "272520A4-4819-C312-7F86-D3AE25352E18";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4295802273053598e-015 0.21082751329768368 -6.9682992293040869e-009 ;
	setAttr ".jo" -type "double3" -0.2109150582934872 7.2900639394524864 88.223816839430498 ;
	setAttr ".bps" -type "matrix" -3.0744583886058567 99.952727132763101 0.0066588388760013828 0
		 99.952724121668865 3.0744599767487912 -0.025229128472583628 0 -0.025421925276333277 0.0058800317947369507 -99.999996595754652 0
		 1.0943317741099832 105.3023889081808 -0.030766464769336643 1;
	setAttr ".fbxID" 5;
createNode joint -n "UpperarmFBXASC046l" -p "ShoulderFBXASC046l";
	rename -uid "5274BF01-400D-C2A1-8ED5-F0A052B71952";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.4575391055492446e-008 0.24854376989019231 5.9837558484543418e-009 ;
	setAttr ".r" -type "double3" 17.37607942502671 34.378755692414344 51.117039351166866 ;
	setAttr ".jo" -type "double3" -9.5192070473591883 2.2645781247991978 38.071585409194093 ;
	setAttr ".bps" -type "matrix" 59.16982009638722 80.51956368374691 3.9410980627484369 0
		 79.09036449065826 -58.927244570312688 16.501336069705886 0 15.609184299507556 -6.6467820431832152 -98.550361003775251 0
		 25.936958713507817 106.06652432483629 -0.037037606010164613 1;
	setAttr ".fbxID" 5;
createNode joint -n "LowerarmFBXASC046l" -p "UpperarmFBXASC046l";
	rename -uid "7B55A497-4855-AF4C-6052-3CB349B6941A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 5.2918263993007031e-008 0.19660182968139711 1.0334420662977406e-008 ;
	setAttr ".r" -type "double3" 5.0581105493663738 -0.12684074867520098 4.9390227076423274 ;
	setAttr ".jo" -type "double3" -20.932330299040519 -5.1932240141567849 -19.674155629505552 ;
	setAttr ".bps" -type "matrix" 30.381695339184283 94.663803081403969 -10.757182460205943 0
		 83.551208648308915 -21.047462133495372 50.75627913023002 0 45.783710222345825 -24.408374052858417 -85.487327448996865 0
		 41.486272375015872 94.48132441649453 3.2071544475768272 1;
	setAttr ".fbxID" 5;
createNode joint -n "HandFBXASC046l" -p "LowerarmFBXASC046l";
	rename -uid "2A129993-4895-F40D-8242-8BBA25CAF838";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.8606689985226694e-008 0.18685943072716188 -6.2697109837195342e-008 ;
	setAttr ".jo" -type "double3" -0.32751368005936005 -8.1136313004118765 -7.9155314298519217 ;
	setAttr ".bps" -type "matrix" 24.861852092066091 92.247893551589016 -29.533276923615048 0
		 86.693589380562386 -7.5942501343182265 49.260013451194304 0 43.198493849515934 -37.850409511551007 -81.861081283728609 0
		 57.09860348112035 90.548417542158845 12.691448278330565 1;
	setAttr ".fbxID" 5;
createNode joint -n "FingersFBXASC046l" -p "HandFBXASC046l";
	rename -uid "AD77378A-4390-4E01-620F-FBB1840224DA";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 5.6689063998582867e-008 0.13291435488550707 7.3170499520491816e-008 ;
	setAttr ".jo" -type "double3" 20.546767590033571 -15.989787145307316 38.048195817578375 ;
	setAttr ".bps" -type "matrix" 82.084897969685343 54.908039937437415 -15.721853438291646 0
		 57.095609423469369 -78.17911062472794 25.062283345481148 0 1.4700033567909045 -29.548837746268944 -95.52332321467722 0
		 68.621430556597346 89.539035144630134 19.238803523817424 1;
	setAttr ".fbxID" 5;
createNode joint -n "FingersFBXASC046l_end" -p "FingersFBXASC046l";
	rename -uid "7C9FE2BE-4421-4555-02DD-1689C852AEB9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 3.2025009311098529e-009 0.069050941455579273 -2.3501900425770827e-009 ;
	setAttr ".bps" -type "matrix" 82.084897969685343 54.908039937437415 -15.721853438291646 0
		 57.095609423469369 -78.17911062472794 25.062283345481148 0 1.4700033567909045 -29.548837746268944 -95.52332321467722 0
		 72.563936399690121 84.140694199121228 20.969377957998095 1;
	setAttr ".fbxID" 5;
createNode joint -n "ThumbFBXASC046l" -p "HandFBXASC046l";
	rename -uid "C6A68841-4416-1AD3-0968-97965A04333E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.046002308169313499 0.045804219399777413 -0.077852323986677879 ;
	setAttr ".jo" -type "double3" -5.063167817815323 -29.193549254287305 56.782128126178911 ;
	setAttr ".bps" -type "matrix" 96.275094440734733 20.108188789309555 -18.076695882851197 0
		 26.969622548190529 -76.198886864162489 58.875878764318216 0 -1.9353681912583909 -61.558024531949144 -78.783652909015416 0
		 56.562729949153699 88.903695160021215 22.67943907037548 1;
	setAttr ".fbxID" 5;
createNode joint -n "ThumbFBXASC046l_end" -p "ThumbFBXASC046l";
	rename -uid "24E9923C-4D56-BBA9-CAF6-11A77F37BA3E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.0043090803435462e-009 0.060988991291654193 -2.3434609808248297e-009 ;
	setAttr ".bps" -type "matrix" 96.275094440734733 20.108188789309555 -18.076695882851197 0
		 26.969622548190529 -76.198886864162489 58.875878764318216 0 -1.9353681912583909 -61.558024531949144 -78.783652909015416 0
		 58.207580125109899 84.256402077082726 26.270219694092798 1;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "HandFBXASC046l_orientConstraint1" -p "HandFBXASC046l";
	rename -uid "5CBF7477-4E39-BEC4-8C50-1F8837D17B1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -10.830823404258027 -152.88227333721409 -86.943056223805868 ;
	setAttr ".o" -type "double3" 148.96251881164375 17.177492738673159 74.916524618295497 ;
	setAttr ".rsrr" -type "double3" 3.5383670831281628e-014 1.5107634736951716e-014 
		-3.1805546814635168e-014 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "LowerarmFBXASC046l";
	rename -uid "3F8E1C36-42C3-C3CB-7EAD-7C829DC2D6EA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "ShoulderFBXASC046l_orientConstraint1" -p "ShoulderFBXASC046l";
	rename -uid "292E00EE-4E1B-5D02-21DC-638E861C7DD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Shoulder_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0.2603173972002541 176.40362543481291 -87.510440031512644 ;
	setAttr ".o" -type "double3" -179.98554477399188 -0.0038152336433093714 91.761812530677403 ;
	setAttr ".rsrr" -type "double3" -180 180 179.99999999999997 ;
	setAttr -k on ".w0";
createNode joint -n "ShoulderFBXASC046r" -p "Chest";
	rename -uid "7690843C-4339-3CF0-7F2D-C0B13709C2BB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -6.250295152165225e-009 0.21082751329768368 -6.9683027820177657e-009 ;
	setAttr ".jo" -type "double3" -0.21084988654139036 -7.2900673848363189 -88.223824550800288 ;
	setAttr ".bps" -type "matrix" -3.0744737907546917 -99.952726658837449 -0.0066613580998460264 0
		 -99.952723647852423 3.0744753795465476 -0.025229280702424417 0 0.02542215579320848 0.0058825412299405855 -99.999996595548467 0
		 1.0943323991393554 105.30238890818075 -0.030766464769333979 1;
	setAttr ".fbxID" 5;
createNode joint -n "UpperarmFBXASC046r" -p "ShoulderFBXASC046r";
	rename -uid "86285ADD-4DF2-6287-0151-1984D47968DE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.7532402802066258e-008 0.24854378895405593 3.2161168311839461e-009 ;
	setAttr ".r" -type "double3" 28.63287439792057 -49.097960185860906 -56.952698944469795 ;
	setAttr ".jo" -type "double3" -9.5192076018990637 -2.2645792384139027 -38.071581570230187 ;
	setAttr ".bps" -type "matrix" 59.16980225779816 -80.51957660489424 -3.9411018943479701 0
		 -79.090377215854176 -58.927227693168724 16.501335347520932 0 -15.609187442879815 -6.6467751403233022 -98.550360971469928 0
		 -23.748296337141444 106.06652791613939 -0.03703736758277535 1;
	setAttr ".fbxID" 5;
createNode joint -n "LowerarmFBXASC046r" -p "UpperarmFBXASC046r";
	rename -uid "3870CA31-4AA5-A09B-84D8-F6AC5F11D3AA";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -8.8998391989392189e-008 0.19660176708096805 1.5579593582240592e-008 ;
	setAttr ".r" -type "double3" -10.928502710745084 3.671739180641972e-006 10.04242802766122 ;
	setAttr ".jo" -type "double3" -20.932328077624625 5.1932254173575325 19.674160195932391 ;
	setAttr ".bps" -type "matrix" 30.381667452809186 -94.663812042705899 10.757182360179954 0
		 -83.551216393273876 -21.047438397872259 50.756276223656272 0 -45.783714593632922 -24.408359765273545 -85.487329187299679 0
		 -39.297609766080761 94.481337885038656 3.2071531363126393 1;
	setAttr ".fbxID" 5;
createNode joint -n "HandFBXASC046r" -p "LowerarmFBXASC046r";
	rename -uid "D2E77088-4726-D559-2612-E2BB6FC051E4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.9008196368922654e-009 0.18685945344066898 -5.8633882513148272e-008 ;
	setAttr ".jo" -type "double3" -0.32750994177372827 8.113632472827339 7.9155341857159831 ;
	setAttr ".bps" -type "matrix" 24.861821042888316 -92.247900717480974 29.533280678738876 0
		 -86.69359687546779 -7.5942232767781022 49.26000440130229 0 -43.198496677839088 -37.850397435696991 -81.861085374764656 0
		 -54.909941440732297 90.548425638257484 12.69144827835043 1;
	setAttr ".fbxID" 5;
createNode joint -n "FingersFBXASC046r" -p "HandFBXASC046r";
	rename -uid "355872B0-4A38-1788-2AED-B885151DE000";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -2.2192639059781527e-008 0.13291437367673031 3.5629902583877993e-008 ;
	setAttr ".jo" -type "double3" 20.546760276865786 15.989779331412642 -38.048193644757781 ;
	setAttr ".bps" -type "matrix" 82.084874833516096 -54.908074407404996 15.721853848604262 0
		 -57.095642268903504 -78.179084444435375 25.062290185281203 0 -1.4700195466029342 -29.548842960439604 -95.523321352598941 0
		 -66.432768662125696 89.539044906481664 19.238807338538567 1;
	setAttr ".fbxID" 5;
createNode joint -n "FingersFBXASC046r_end" -p "FingersFBXASC046r";
	rename -uid "6A089817-48A7-9B65-A9F1-7E99B792D981";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.3302395003053107e-009 0.069050947020832421 1.386955050808325e-009 ;
	setAttr ".bps" -type "matrix" 82.084874833516096 -54.908074407404996 15.721853848604262 0
		 -57.095642268903504 -78.179084444435375 25.062290185281203 0 -1.4700195466029342 -29.548842960439604 -95.523321352598941 0
		 -70.375277189042166 84.14070528515397 20.969382009777203 1;
	setAttr ".fbxID" 5;
createNode joint -n "ThumbFBXASC046r" -p "HandFBXASC046r";
	rename -uid "4D4AC64A-4F8D-D939-670F-EAB3B0BA274F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.046002400905726382 0.045804147313727395 -0.07785233297027519 ;
	setAttr ".jo" -type "double3" -5.0631778629301367 29.193543202967032 -56.782143858419488 ;
	setAttr ".bps" -type "matrix" 96.275093298603792 -20.108203991136961 18.07668505550614 0
		 -26.969628027535684 -76.198880414710899 58.875884601430407 0 1.9353486511470166 -61.558027549584565 -78.783651031182174 0
		 -54.374060517133294 88.903695549258529 22.679439070371529 1;
	setAttr ".fbxID" 5;
createNode joint -n "ThumbFBXASC046r_end" -p "ThumbFBXASC046r";
	rename -uid "9CDCCC9D-43B8-6F83-F67B-3A8184BF0D6E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -5.6551618943245785e-010 0.060988990171889357 -3.5739599058004501e-009 ;
	setAttr ".bps" -type "matrix" 96.275093298603792 -20.108203991136961 18.07668505550614 0
		 -26.969628027535684 -76.198880414710899 58.875884601430407 0 1.9353486511470166 -61.558027549584565 -78.783651031182174 0
		 -56.01891095720616 84.256403011914188 26.270220089036414 1;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "HandFBXASC046r_orientConstraint1" -p "HandFBXASC046r";
	rename -uid "F5653F26-4EEC-CA2E-B274-9BBD876D9CA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -18.5345429920655 136.56923873187742 61.695089653275041 ;
	setAttr ".o" -type "double3" 148.96252472689679 -17.177494990651311 -74.91654371552923 ;
	setAttr ".rsrr" -type "double3" -5.9635400277440928e-015 -7.1562480332929135e-015 
		3.7242334389798198e-031 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "LowerarmFBXASC046r";
	rename -uid "745A2859-4AB2-E523-28EB-C59F05865A71";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "ShoulderFBXASC046r_orientConstraint1" -p "ShoulderFBXASC046r";
	rename -uid "0E6A819E-4728-122D-29F3-ECABE06D9E75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Shoulder_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -3.165935588437311 -184.89177740212577 81.262012208246432 ;
	setAttr ".o" -type "double3" 0.014455313229403162 179.99618332294773 88.238178640364652 ;
	setAttr ".rsrr" -type "double3" -1.4180490623263373e-014 -1.8337109082705304e-014 
		4.4527765540489241e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Chest_orientConstraint1" -p "Chest";
	rename -uid "6839DE71-4B09-3A39-6D66-AEB37B68B0B4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 11.192870328749782 -182.14380724986876 2.9412320246459975 ;
	setAttr ".o" -type "double3" -172.71028550354438 -3.2068422191865065e-005 179.99999175639294 ;
	setAttr ".rsrr" -type "double3" -180 180 180 ;
	setAttr -k on ".w0";
createNode joint -n "Hips" -p "Spine";
	rename -uid "17E17D2B-4ABF-D67C-EF0A-718B8DD4D96A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.6198501000558822e-009 -0.18621997114547484 0.030595897606921739 ;
	setAttr ".jo" -type "double3" -9.3303220242688507 4.4147691038985518e-005 -5.832028657630901e-006 ;
	setAttr ".bps" -type "matrix" -99.99999999998056 -3.0113976792750649e-011 6.2365842767936387e-005 0
		 7.1800431351189321e-006 99.335063096676635 11.512829347263821 0 -6.1951152731274476e-005 11.512829347266059 -99.335063096657336 0
		 1.0943275285620619 46.565742467271164 1.3778274449429708 1;
	setAttr ".fbxID" 5;
createNode joint -n "UpperlegFBXASC046l" -p "Hips";
	rename -uid "4B1726F3-4A0A-3B0F-3695-8F958D30FD85";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.11334451731346502 0.066024251909100218 -0.0040868108940925879 ;
	setAttr ".r" -type "double3" -32.431130956306603 -4.6810051687745737 13.806119270715211 ;
	setAttr ".jo" -type "double3" -10.628760429484524 -1.5004957445604561 169.53982995168334 ;
	setAttr ".bps" -type "matrix" 81.288963267270844 15.989776420745727 -56.003852554506089 0
		 36.997797934463343 -88.440364590973346 28.451095919425207 0 -44.980744757428319 -43.847793114708466 -77.808120656116685 0
		 12.428779987145983 53.077214940177683 2.5439099391556477 1;
	setAttr ".fbxID" 5;
createNode joint -n "LowerlegFBXASC046l" -p "UpperlegFBXASC046l";
	rename -uid "19BD27AA-4CDA-7374-54B0-DD86DD0EE628";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.77898414333022e-007 0.25690188449852125 4.8866211840858931e-009 ;
	setAttr ".r" -type "double3" 37.074454060330943 4.7185603542211423e-005 -4.2259105236296657 ;
	setAttr ".jo" -type "double3" 15.3005460335908 1.7065202999877382 -1.7293054442062989 ;
	setAttr ".bps" -type "matrix" 79.53184593411099 26.141197844725859 -54.692990936277546 0
		 -0.74447727243228456 -89.79588457444909 -44.001646186058196 0 -60.614612395887427 35.402498340302472 -71.221709298227438 0
		 21.933569317823583 30.356715552196917 9.8530596796819268 1;
	setAttr ".fbxID" 5;
createNode joint -n "FootFBXASC046l" -p "LowerlegFBXASC046l";
	rename -uid "FCAB0874-406C-F4C5-BDCC-BC9D896AC658";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -4.2131493585562119e-007 0.31954935276994823 -1.2823086510682646e-007 ;
	setAttr ".jo" -type "double3" 151.8191236015337 73.016301307284607 -13.584014251818349 ;
	setAttr ".bps" -type "matrix" 1.6653785060422273 99.825811508925455 5.659847260845762 0
		 -28.178656523515073 5.8997759774834506 -95.766152475419403 0 -95.933257168519916 -2.4868995751603507e-014 28.227826147945319 0
		 21.695646351975526 1.6624832016566522 -4.2076057040898647 1;
	setAttr ".fbxID" 5;
createNode joint -n "ToesFBXASC046l" -p "FootFBXASC046l";
	rename -uid "96BEC0C3-44BA-2A21-4480-DFAFA3BE5DAB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 4.4681198750747843e-007 -0.12649617906008223 -3.2403113048315251e-017 ;
	setAttr ".jo" -type "double3" -178.03343065349998 -0.037217289812704168 3.7077477365561635 ;
	setAttr ".bps" -type "matrix" -0.22265830872971479 99.998365579868036 -0.52659722048540647 0
		 31.502822381836584 0.5699280580740691 94.906519080551504 0 94.907969134609644 0.045424263221776826 -31.503576485540499 0
		 25.260139477357725 0.91622868656377876 7.9064491962235284 1;
	setAttr ".fbxID" 5;
createNode joint -n "ToesFBXASC046l_end" -p "ToesFBXASC046l";
	rename -uid "BCDD165B-4627-C694-BBDF-6984B783212E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -1.4445850361408108e-008 0.053668441087212193 1.1007844080701545e-009 ;
	setAttr ".bps" -type "matrix" -0.22265830872971479 99.998365579868036 -0.52659722048540647 0
		 31.502822381836584 0.5699280580740691 94.906519080551504 0 94.907969134609644 0.045424263221776826 -31.503576485540499 0
		 26.950846952127932 0.94681439246105292 12.999934097218986 1;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "FootFBXASC046l_orientConstraint1" -p "FootFBXASC046l";
	rename -uid "FC887DBD-40F7-1397-6290-D78B5555317D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_CTRL1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 16.6984885484936 70.457807426227831 25.578773796888171 ;
	setAttr ".o" -type "double3" -84.549336960204243 -3.3670285021946329 89.678906241752273 ;
	setAttr ".rsrr" -type "double3" 1.6586326813442367e-014 -7.0280700292481042e-015 
		89.999797618858466 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "LowerlegFBXASC046l";
	rename -uid "1DAF052A-4EAF-9F84-36DB-6AB9D430A90A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "UpperlegFBXASC046r" -p "Hips";
	rename -uid "9D91BC91-472D-296C-0A8C-8C801FF8457F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.11334451619474882 0.06602425187479255 -0.0040866682751922873 ;
	setAttr ".r" -type "double3" -20.287252027801202 25.982100722476758 -7.332385060624337 ;
	setAttr ".jo" -type "double3" -10.628746270433091 1.5005649260477654 -169.53983212597782 ;
	setAttr ".bps" -type "matrix" 88.203962782307116 -21.484043580804865 41.934434787122811 0
		 -35.172460844444757 -89.242869811181123 28.259656509069117 0 31.352176122932494 -39.675509565507141 -86.272214490379085 0
		 -10.24012336367983 53.077216578709965 2.5439099093558299 1;
	setAttr ".fbxID" 5;
createNode joint -n "LowerlegFBXASC046r" -p "UpperlegFBXASC046r";
	rename -uid "7882E60F-417E-1A09-E822-45A1E42FDCEF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.5850133144867939e-007 0.25690184677595068 1.414078278083597e-009 ;
	setAttr ".r" -type "double3" 41.137688597349836 -5.3300490917996793e-005 4.6890394311372292 ;
	setAttr ".jo" -type "double3" 15.300543853840663 -1.706515161125927 1.7293047617453228 ;
	setAttr ".bps" -type "matrix" 86.184604420668947 -30.814869678183268 40.282226447521367 0
		 -11.381197399906615 -89.150698974012386 -43.847704822366502 0 49.423499538146494 33.205371239629329 -80.341278395611994 0
		 -19.275979485492527 30.150555051278008 9.8038743804577848 1;
	setAttr ".fbxID" 5;
createNode joint -n "FootFBXASC046r" -p "LowerlegFBXASC046r";
	rename -uid "9D6881DE-409E-4379-7300-3FB75884080C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.3112547951085212e-007 0.31954941777914053 -1.5000191250225114e-007 ;
	setAttr ".jo" -type "double3" 28.180968464017834 73.016253580158448 -166.41589528700686 ;
	setAttr ".bps" -type "matrix" 1.6654010411979741 -99.825807479767207 -5.6599116940487804 0
		 -28.178711071862075 -5.8998441515393516 95.766132224895017 0 -95.933240754706603 1.0480505352461478e-013 -28.227881930805658 0
		 -22.912804745502701 1.6624828335842707 -4.2076047484414385 1;
	setAttr ".fbxID" 5;
createNode joint -n "ToesFBXASC046r" -p "FootFBXASC046r";
	rename -uid "CDF3ADDE-40B3-9FA9-BFFD-58B0A5ABC1AD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -6.411230518603992e-007 0.1264961295953855 -1.1915583045940667e-017 ;
	setAttr ".jo" -type "double3" 1.9665302645095324 -0.03722039557053889 3.7077908095178307 ;
	setAttr ".bps" -type "matrix" -0.22266575808499442 -99.998365537246173 0.52660216432534845 0
		 -31.50281281857087 0.56993509241536255 94.906522212693744 0 -94.907972291469108 0.045429833031034754 -31.503566967123049 0
		 -26.477303700806885 0.91623938382491754 7.9064439530275639 1;
	setAttr ".fbxID" 5;
createNode joint -n "ToesFBXASC046r_end" -p "ToesFBXASC046r";
	rename -uid "38F8DB7B-479C-5BAC-5D72-8D97D745D463";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.1938463828631285e-008 0.05366845276059648 4.2869383320986998e-009 ;
	setAttr ".bps" -type "matrix" -0.22266575808499442 -99.998365537246173 0.52660216432534845 0
		 -31.50281281857087 0.56993509241536255 94.906522212693744 0 -94.907972291469108 0.045429833031034754 -31.503566967123049 0
		 -28.168011331909181 0.94682572477670257 12.999930028304991 1;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "FootFBXASC046r_orientConstraint1" -p "FootFBXASC046r";
	rename -uid "6DF468E0-44F7-1F89-7C34-679DE46AA478";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -1.6069919796510816 113.8993650033305 23.211080190939871 ;
	setAttr ".o" -type "double3" 275.45115526334774 -183.36706470159245 -269.67887362180403 ;
	setAttr ".rsrr" -type "double3" 180 -180 -270.00029039343053 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "LowerlegFBXASC046r";
	rename -uid "BD1E6539-4077-A615-78FC-95BD44F96F30";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Spine_pointConstraint1" -p "Spine";
	rename -uid "BCE40929-4C0B-426B-5A0B-828ED083ADE9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Waist_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -3.1251500000000001e-009 0.696709 0.011452100000000002 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Spine_orientConstraint1" -p "Spine";
	rename -uid "0494518C-4399-EE3E-7F6F-089D756F7ACC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Waist_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 2.7169930623228691 179.88803975388726 -2.35808929210337 ;
	setAttr ".o" -type "double3" -177.28070284815399 8.6416710828512009e-006 179.99999626904901 ;
	setAttr ".rsrr" -type "double3" -180 -180 180 ;
	setAttr -k on ".w0";
createNode transform -n "R_Foot_CTRL" -p "Armature_Knight";
	rename -uid "BE824CE6-4543-F9EB-3E32-F9824B5F72BC";
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.2291280475092175 0.016624828115985108 -0.042076047513284483 ;
	setAttr ".rpt" -type "double3" 0.012170828137281296 0 -0.042774532285111397 ;
	setAttr ".sp" -type "double3" -22.912804750921751 1.6624828115985331 -4.2076047513284482 ;
	setAttr ".spt" -type "double3" 22.683676703412534 -1.645857983482548 4.1655287038151636 ;
createNode nurbsCurve -n "R_Foot_CTRLShape" -p "R_Foot_CTRL";
	rename -uid "242FB193-4590-2940-3B0A-439F7EF4A921";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-12.303727419224535 0 -17.073027215315648
		-22.912804750921751 1.9984014443252818e-015 -25.444156697746848
		-33.521882082618959 0 -17.073027215315662
		-37.916305797672905 2.2204460492503131e-016 3.136667113550959
		-33.521882082618959 -8.8817841970012523e-016 23.346361442417617
		-22.912804750921755 -1.5543122344752192e-015 31.717490924848818
		-12.303727419224549 -8.8817841970012523e-016 23.346361442417624
		-7.9093037041705969 2.2204460492503131e-016 3.1366671135509874
		-12.303727419224535 0 -17.073027215315648
		-22.912804750921751 1.9984014443252818e-015 -25.444156697746848
		-33.521882082618959 0 -17.073027215315662
		;
createNode transform -n "L_Foot_CTRL" -p "Armature_Knight";
	rename -uid "52BABAAC-4A5A-07E1-5406-BDA1E6FAB61F";
	setAttr ".s" -type "double3" 0.010000000000000002 0.01 0.010000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.2291279682682833 0.016624828115985108 -0.04207604751328449 ;
	setAttr ".rpt" -type "double3" -0.012171504736109725 0 -0.042776250915834389 ;
	setAttr ".sp" -type "double3" 22.912796826828682 1.6624828115985331 -4.2076047513284482 ;
	setAttr ".spt" -type "double3" -22.683668858560399 -1.645857983482548 4.1655287038151636 ;
createNode nurbsCurve -n "L_Foot_CTRLShape" -p "L_Foot_CTRL";
	rename -uid "E187BF5B-477B-4028-29F0-84B5B93DB3E7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		33.521874158525897 0 -17.073027215315648
		22.912796826828682 1.9984014443252818e-015 -25.444156697746848
		12.303719495131475 0 -17.073027215315662
		7.9092957800775281 2.2204460492503131e-016 3.136667113550959
		12.303719495131475 -8.8817841970012523e-016 23.346361442417617
		22.912796826828679 -1.5543122344752192e-015 31.717490924848818
		33.521874158525883 -8.8817841970012523e-016 23.346361442417624
		37.916297873579836 2.2204460492503131e-016 3.1366671135509874
		33.521874158525897 0 -17.073027215315648
		22.912796826828682 1.9984014443252818e-015 -25.444156697746848
		12.303719495131475 0 -17.073027215315662
		;
createNode transform -n "Waist_CTRL" -p "Armature_Knight";
	rename -uid "51E0FFB2-466A-E13B-DFC0-B8A2D02F5C94";
	setAttr ".s" -type "double3" 0.01 0.01 0.01 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.010943288835561052 0.65311926064555026 0.035504909197754848 ;
	setAttr ".sp" -type "double3" 1.0943288835561051 65.311926064556289 3.5504909197754926 ;
	setAttr ".spt" -type "double3" -1.0833855947205442 -64.658806803910736 -3.5149860105777377 ;
createNode nurbsCurve -n "Waist_CTRLShape" -p "Waist_CTRL";
	rename -uid "D5FB03DF-4A47-879B-252C-C48D13DEF245";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		33.407614715714843 65.311926064556289 -28.762794912383193
		1.0943288835561 65.311926064556289 -42.147396148901734
		-31.2189569486026 65.311926064556289 -28.762794912383214
		-44.603558185121116 65.311926064556289 3.5504909197754793
		-31.218956948602607 65.311926064556289 35.863776751934189
		1.0943288835560914 65.311926064556289 49.248377988452731
		33.407614715714793 65.311926064556289 35.863776751934196
		46.792215952233335 65.311926064556289 3.550490919775517
		33.407614715714843 65.311926064556289 -28.762794912383193
		1.0943288835561 65.311926064556289 -42.147396148901734
		-31.2189569486026 65.311926064556289 -28.762794912383214
		;
createNode transform -n "Spine_CTRL" -p "Waist_CTRL";
	rename -uid "9CC320BA-4C1F-F7CB-DA19-99B35EAFAE6F";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.0943302625434281 84.390044378170501 2.644350334736604 ;
	setAttr ".sp" -type "double3" 1.0943302625434237 84.390044378170558 2.6443503347366022 ;
createNode nurbsCurve -n "Spine_CTRLShape" -p "Spine_CTRL";
	rename -uid "411C060F-4F11-9B4E-0B8F-29A38B4E976A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.648407938896746 84.390044378170558 -29.338849202315494
		1.0943302625434208 84.390044378170558 -36.609986250811772
		-16.459747413809882 84.390044378170558 -29.338849202315494
		0.39053594022261606 84.390044378169762 -30.437966331229227
		0.59667252466978127 84.390044378169762 -18.566255986392967
		1.0943302625434161 84.390044378170558 -11.295118937896618
		1.5919880004170572 84.390044378169762 -18.56625598639296
		1.7981245848642118 84.390044378169762 -30.437966331229205
		18.648407938896746 84.390044378170558 -29.338849202315494
		1.0943302625434208 84.390044378170558 -36.609986250811772
		-16.459747413809882 84.390044378170558 -29.338849202315494
		;
createNode pointConstraint -n "Spine_CTRL_pointConstraint1" -p "Spine_CTRL";
	rename -uid "AFEAE77A-44D8-A129-547F-2982312257B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ChestW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.2551405187698492e-017 1.4210854715202004e-014 2.4286128663675299e-017 ;
	setAttr -k on ".w0";
createNode transform -n "L_Shoulder_CTRL" -p "Spine_CTRL";
	rename -uid "CC1BA0B8-4A97-7B08-6EC7-73B519FFCDBC";
	setAttr ".t" -type "double3" 2.886579864025407e-014 -7.0166095156309893e-014 4.5241588253475129e-015 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.0943317741100005 105.30238890818021 -0.030766464769336602 ;
	setAttr ".sp" -type "double3" 1.0943317741099903 105.3023889081808 -0.030766464769336643 ;
createNode nurbsCurve -n "L_Shoulder_CTRLShape" -p "L_Shoulder_CTRL";
	rename -uid "66BB7534-4EAD-1BB6-C5AA-77B4E77A52BE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		23.005426225680427 105.30238890818079 -28.042098101733217
		15.79727196953562 105.30238890818079 -31.613354977447965
		8.5891177133908361 105.30238890818079 -28.042098101733224
		5.6034024608183106 105.30238890818079 -19.420321317664563
		8.5891177133908361 105.30238890818079 -19.439064507757301
		15.797271969535615 105.30238890818079 -23.674534131831429
		23.005426225680406 105.30238890818079 -19.439064507757301
		25.991141478252906 105.30238890818079 -19.420321317664552
		23.005426225680427 105.30238890818079 -28.042098101733217
		15.79727196953562 105.30238890818079 -31.613354977447965
		8.5891177133908361 105.30238890818079 -28.042098101733224
		;
createNode transform -n "R_Shoulder_CTRL" -p "Spine_CTRL";
	rename -uid "23E8BE2C-45CC-7755-684F-0193318FE140";
	setAttr ".t" -type "double3" 2.886579864025407e-014 -7.0166095156309893e-014 4.5241588253475129e-015 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.0943317741100005 105.30238890818021 -0.030766464769336602 ;
	setAttr ".sp" -type "double3" 1.0943317741099903 105.3023889081808 -0.030766464769336643 ;
createNode nurbsCurve -n "R_Shoulder_CTRLShape" -p "R_Shoulder_CTRL";
	rename -uid "5B495038-42F2-3A21-5655-969287EB30E5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-20.817249408238862 105.30238890818079 -28.042098101733217
		-13.608935030903403 105.30238890818079 -31.613354977447965
		-6.4006206535679695 105.30238890818079 -28.042098101733224
		-3.4148390766266536 105.30238890818079 -19.420321317664563
		-6.4006206535679695 105.30238890818079 -19.439064507757301
		-13.608935030903398 105.30238890818079 -23.674534131831429
		-20.817249408238844 105.30238890818079 -19.439064507757301
		-23.803030985180133 105.30238890818079 -19.420321317664552
		-20.817249408238862 105.30238890818079 -28.042098101733217
		-13.608935030903403 105.30238890818079 -31.613354977447965
		-6.4006206535679695 105.30238890818079 -28.042098101733224
		;
createNode transform -n "Head_CTRL" -p "Spine_CTRL";
	rename -uid "FBD4144A-4C6E-B083-A05E-30AAA29A5E63";
	setAttr ".t" -type "double3" 6.6613381477509392e-015 -7.0166095156309893e-014 4.5241588253475129e-015 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.0943325170952893 115.58149685944539 1.51174533054682 ;
	setAttr ".sp" -type "double3" 1.0943325170952825 115.58149685944548 1.511745330546826 ;
createNode nurbsCurve -n "Head_CTRLShape" -p "Head_CTRL";
	rename -uid "A76EF932-435F-5BC4-75F7-A382F592BC20";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.648410193448605 151.58449698497651 -16.042332345806471
		1.0943325170952796 151.58449698497651 -23.31346939430281
		-16.459745159258024 151.58449698497651 -16.042332345806479
		-23.730882207754355 151.58449698497651 1.5117453305468189
		-16.459745159258031 151.58449698497651 19.065823006900128
		1.0943325170952749 151.58449698497651 26.336960055396467
		18.64841019344858 151.58449698497651 19.065823006900136
		25.919547241944919 151.58449698497651 1.5117453305468393
		18.648410193448605 151.58449698497651 -16.042332345806471
		1.0943325170952796 151.58449698497651 -23.31346939430281
		-16.459745159258024 151.58449698497651 -16.042332345806479
		;
createNode transform -n "knight";
	rename -uid "B4D8DCE1-4637-BC32-AF48-A1ACCACDFCB5";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0 6.0770168304443359 ;
	setAttr ".sp" -type "double3" 0 0 6.0770168304443359 ;
createNode mesh -n "knightShape" -p "knight";
	rename -uid "EA31D8CD-4F32-D6E8-0BFA-3181D8A454AA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49377511441707611 0.85564425587654114 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "knightShapeOrig" -p "knight";
	rename -uid "9BF06660-45B5-1D1C-23D6-EF98BD3C71AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 1306 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.8470757 0.58653629 0.1909216
		 0.88240021 0.17530853 0.54032248 0.95342833 0.40028027 0.74907398 0.58015418 0.67182869
		 0.18632248 0.73900759 0.54235584 0.24745819 0.53684646 0.14212209 0.3466019 0.56606817
		 0.91270304 0.15632556 0.96610296 0.37922928 0.20659025 0.7866441 0.74431783 0.23150779
		 0.077445239 0.070441462 0.85662836 0.068473436 0.84534603 0.68652374 0.55828291 0.56236237
		 0.18827164 0.070377946 0.4490903 0.93545759 0.96436399 0.68422771 0.44748566 0.70170856
		 0.29915211 0.13483897 0.72637099 0.19092157 0.92522293 0.43841046 0.46755114 0.19534075
		 0.32565126 0.8226974 0.25259468 0.41843978 0.78761977 0.40808791 0.78634059 0.54118067
		 0.14214972 0.96702462 0.3560572 0.52765661 0.55998242 0.48464179 0.78611577 0.61987811
		 0.34811062 0.59021419 0.34843656 0.61242062 0.37096015 0.85580832 0.96559554 0.61981428
		 0.27990943 0.3373374 0.77459037 0.90017837 0.81852257 0.68471688 0.471587 0.9067632
		 0.25259468 0.77330005 0.77699727 0.62191468 0.032359235 0.32026902 0.049537323 0.089063816
		 0.22742793 0.10963743 0.37185761 0.41032773 0.98391926 0.41672522 0.24607702 0.62542284
		 0.76251733 0.80152315 0.48653179 0.75989687 0.39456999 0.25510353 0.49546409 0.92491299
		 0.7313863 0.70925921 0.57631493 0.068123229 0.87091708 0.58601302 0.59029621 0.88952982
		 0.65509069 0.90341294 0.87073416 0.37154311 0.82839489 0.36395755 0.38283548 0.49276316
		 0.4792847 0.75881886 0.8544181 0.58033288 0.57321924 0.3630603 0.77106798 0.67309415
		 0.73087662 0.63652563 0.73449236 0.66488326 0.34723514 0.56445676 0.87727261 0.52719271
		 0.44598886 0.94913161 0.38780868 0.57045656 0.65302289 0.096972995 0.54010576 0.4143509
		 0.8897872 0.26994824 0.88263363 0.44259489 0.18632248 0.79522157 0.43122059 0.23661987
		 0.61412919 0.4065021 0.12872685 0.13088416 0.84646505 0.90753001 0.036784425 0.4627105
		 0.78536981 0.080440022 0.70984161 0.91580677 0.33688477 0.5876748 0.31749663 0.14196035
		 0.41317171 0.97923702 0.34237841 0.46933815 0.20039436 0.59178925 0.28237516 0.33361742
		 0.94018739 0.21449783 0.41880572 0.47507235 0.97639292 0.5906074 0.33718875 0.35067132
		 0.56762207 0.26618084 0.83641988 0.46370605 0.79441106 0.49277601 0.75868326 0.093116611
		 0.26120549 0.46652129 0.55195272 0.7787866 0.88244307 0.86575311 0.12139862 0.45808002
		 0.3146047 0.94342345 0.70336145 0.61555248 0.93347549 0.62749887 0.82118773 0.71258283
		 0.58898425 0.51897299 0.79966897 0.20269234 0.56834751 0.24988481 0.20048349 0.030210018
		 0.099530295 0.59208792 0.37015456 0.8183803 0.036784425 0.62282974 0.29605874 0.81730622
		 0.90011173 0.46138689 0.76505065 0.45311162 0.76183915 0.45463464 0.75417542 0.19887486
		 0.73794645 0.32904461 0.2231012 0.3250626 0.27257669 0.26114422 0.31487754 0.56163955
		 0.48682687 0.50577164 0.88630635 0.61855465 0.58976758 0.30871812 0.90831375 0.052542005
		 0.30123752 0.94775879 0.13415673 0.90860164 0.093373694 0.44781634 0.085438401 0.36148715
		 0.56619608 0.62535876 0.7690863 0.64664477 0.96889251 0.57010114 0.70074344 0.88862509
		 0.96842688 0.81164193 0.91314137 0.87471718 0.96829957 0.59463906 0.44090092 0.65549082
		 0.57232779 0.66930896 0.28889948 0.67769378 0.1488992 0.95313263 0.068026632 0.29873997
		 0.062052399 0.6921581 0.96150047 0.64474982 0.91349483 0.76264131 0.22591536 0.65123463
		 0.085138604 0.4370116 0.14712135 0.9624058 0.12343185 0.2666792 0.54032254 0.6082778
		 0.52115989 0.40889117 0.30235121 0.24262996 0.079647563 0.41819948 0.77931517 0.27450019
		 0.50506979 0.47238171 0.78317291 0.01401246 0.78131169 0.96932799 0.041426886 0.41099399
		 0.77306032 0.46782294 0.46075755 0.18297586 0.59840465 0.5275718 0.40305135 0.07036835
		 0.46980205 0.82887352 0.39653704 0.42116246 0.49293804 0.40889117 0.31143177 0.70928901
		 0.53368992 0.26029548 0.97292066 0.96184671 0.34414932 0.069229066 0.86332029 0.22465783
		 0.53050774 0.12006157 0.25844797 0.41087151 0.27316415 0.27066851 0.59462154 0.86219829
		 0.33688477 0.052660372 0.22488579 0.3537527 0.05007441 0.80912852 0.054273646 0.95607209
		 0.056387257 0.061653566 0.15829755 0.17396717 0.059531596 0.023484822 0.71553564
		 0.30885634 0.053565335 0.036381748 0.76440817 0.041166659 0.79329628 0.30225512 0.14784299
		 0.18688829 0.3678447 0.41637293 0.22064774 0.90295088 0.17742063 0.07221894 0.10150227
		 0.22722115 0.97805697 0.89245152 0.12887873 0.79445708 0.3406468 0.27248618 0.20731698
		 0.41236365 0.87717193 0.08229173 0.83541572 0.58789355 0.46169645 0.66840249 0.31466347
		 0.038304389 0.78617287 0.24819072 0.01401246 0.53278059 0.14319259 0.5182007 0.12996286
		 0.3225269 0.34237936 0.070961237 0.41317171 0.60993296 0.39861298 0.35476458 0.014593899
		 0.92583364 0.52295291 0.46577343 0.48585382 0.93117809 0.20346278 0.53315532 0.9641071
		 0.6062144 0.92118603 0.46613848 0.2567001 0.53643185 0.57071739 0.72000396 0.54442644
		 0.10040717 0.032287981 0.78122383 0.25116503 0.81466907 0.76713359 0.93143785 0.85673767
		 0.051072329 0.83279341 0.26067334 0.38691562 0.13088416 0.64975792 0.38514015 0.97496909
		 0.035551593 0.77995408 0.65573764 0.52096641 0.20449089 0.044012368 0.11830859 0.11530595
		 0.84555167 0.809627 0.50352085 0.79057175 0.96921408 0.80962676 0.78517312 0.27149674
		 0.26085868 0.72148836 0.097377151 0.41317171 0.4741284 0.31143177 0.53275096 0.18632248
		 0.71078682 0.28538746 0.85862833 0.2966308 0.081189387 0.67958945 0.34109151 0.079032026
		 0.71681881 0.24476564 0.088323139 0.03497332 0.32904461 0.20788851 0.48967427 0.96581101
		 0.16875826 0.61412907 0.52078807 0.48372549 0.45005095 0.9641071 0.43021247 0.016169928
		 0.5015915 0.74288619 0.62768382 0.62140876 0.5905109 0.023026293 0.65795302 0.0055575105
		 0.56769091 0.90750998;
	setAttr ".uvst[0].uvsp[250:499]" 0.9695223 0.7313863 0.97640592 0.036784425
		 0.47376695 0.79597855 0.3025251 0.83063608 0.68057007 0.629013 0.75469172 0.57917237
		 0.25737566 0.09114787 0.7269004 0.54451054 0.38226929 0.3935326 0.85049218 0.86751741
		 0.72813815 0.57185882 0.96529019 0.76902515 0.88963664 0.47267759 0.69158816 0.57596451
		 0.64127266 0.52096641 0.81874126 0.28601533 0.78587008 0.077747345 0.32551533 0.97317141
		 0.55903536 0.46563023 0.89783406 0.89875913 0.52351254 0.78128582 0.65032303 0.39403045
		 0.079799682 0.30018011 0.3025251 0.97957247 0.81321609 0.95087796 0.94268024 0.47267759
		 0.35390681 0.94048375 0.20810938 0.053388279 0.97236454 0.33688477 0.051667571 0.84513885
		 0.15750553 0.062183507 0.80681145 0.95051098 0.21854199 0.36178622 0.05340682 0.77651167
		 0.3025251 0.98598766 0.96626443 0.1385517 0.3025251 0.53910375 0.94129455 0.94989234
		 0.79047835 0.66566336 0.52719265 0.45533365 0.078005232 0.78092265 0.19680642 0.02703052
		 0.18178149 0.014012478 0.49245799 0.77323151 0.96745861 0.85420156 0.70565921 0.56361109
		 0.96238554 0.046371985 0.7111885 0.52862936 0.71179676 0.52096635 0.6202715 0.33688477
		 0.73077601 0.47158685 0.35783175 0.63694698 0.76876813 0.33688477 0.64577448 0.19544642
		 0.037392944 0.75566876 0.41895479 0.86621946 0.15623188 0.68754047 0.062937766 0.83345801
		 0.80852807 0.89064658 0.25823453 0.064815305 0.087182723 0.86705095 0.85021698 0.088901572
		 0.8724308 0.75752389 0.68740702 0.97061527 0.81874126 0.18632248 0.023925625 0.90258193
		 0.57202739 0.10350998 0.072115205 0.6554423 0.12326948 0.04632996 0.10390774 0.053310141
		 0.36997908 0.12467583 0.014012478 0.53333306 0.8084352 0.075469546 0.36616078 0.077081136
		 0.04575216 0.60996199 0.37026778 0.13089399 0.064564183 0.78595626 0.17299508 0.48898223
		 0.67295927 0.67271847 0.84700793 0.12501724 0.53252119 0.19755661 0.56445676 0.71510905
		 0.87149858 0.24035174 0.6062144 0.96774596 0.089736111 0.84478688 0.31059271 0.6928193
		 0.47377241 0.75661272 0.65887189 0.80597502 0.59920853 0.72914004 0.80681145 0.90498132
		 0.45005095 0.92029208 0.55614555 0.97692341 0.6194784 0.97513795 0.85071611 0.94989234
		 0.22178416 0.21438925 0.76987779 0.78160185 0.50984836 0.76407105 0.22415733 0.88263363
		 0.3025251 0.65215832 0.30811644 0.5747782 0.36899638 0.97317141 0.89741254 0.58100379
		 0.63505793 0.35382479 0.80681145 0.94116628 0.18020032 0.87884086 0.80294997 0.12632279
		 0.15201221 0.42323595 0.75814533 0.53991854 0.89867312 0.038925216 0.24034169 0.97322935
		 0.73648626 0.9620856 0.81466901 0.70074344 0.9602468 0.53007835 0.51769924 0.97551841
		 0.32248682 0.53073531 0.66995579 0.57232779 0.53270483 0.13283062 0.68518394 0.38791451
		 0.85654718 0.28061959 0.76198739 0.2047182 0.64829642 0.4420087 0.23115268 0.44957829
		 0.20251778 0.6421541 0.37412453 0.49294141 0.26660043 0.33109662 0.92440778 0.92186737
		 0.40889117 0.3146047 0.51769924 0.96910328 0.31672686 0.10067892 0.75150698 0.10723989
		 0.1279337 0.077570058 0.75172395 0.9677763 0.97697252 0.39649141 0.07893648 0.82889456
		 0.026761204 0.97009838 0.40900302 0.97466874 0.76272905 0.56258404 0.56445676 0.79242337
		 0.33228755 0.12542398 0.19460474 0.4524121 0.17339614 0.10112761 0.73143584 0.93406063
		 0.19128954 0.23215695 0.21095505 0.49754038 0.35806698 0.1711098 0.97597754 0.049374219
		 0.84640527 0.13790233 0.75966835 0.54758221 0.52078807 0.44635573 0.50259542 0.15816754
		 0.41306925 0.69730663 0.73406625 0.81690776 0.068196356 0.36266237 0.13467839 0.33848909
		 0.85808474 0.95712763 0.64645815 0.92838156 0.25002551 0.928038 0.22415733 0.85460865
		 0.89128458 0.52235675 0.44014594 0.27535757 0.8164686 0.81558418 0.043655481 0.86928827
		 0.40978026 0.30599323 0.69609785 0.84570867 0.84563416 0.89875913 0.37013724 0.26445907
		 0.058509935 0.54128152 0.30959517 0.77106798 0.49757317 0.015344776 0.65926862 0.76712257
		 0.43106529 0.064336278 0.3025251 0.30120021 0.43777257 0.30486289 0.51938325 0.52096635
		 0.40929091 0.29685503 0.17392501 0.033833958 0.98190641 0.043261655 0.040109135 0.95652896
		 0.81659561 0.88592738 0.75606334 0.56494153 0.45005095 0.58655471 0.90877855 0.28743455
		 0.3025251 0.47928467 0.47507241 0.9699778 0.48656568 0.064688206 0.46721813 0.41481674
		 0.44113588 0.3107017 0.37489584 0.27665871 0.55333567 0.29101595 0.91229302 0.16972581
		 0.38014045 0.56807166 0.27450019 0.22947103 0.95438361 0.96247149 0.27450019 0.37420705
		 0.52496451 0.60366106 0.095254324 0.90258193 0.0904577 0.96291721 0.27450019 0.61250931
		 0.57118821 0.01401246 0.46502703 0.01401246 0.44742316 0.01401246 0.71874869 0.01401246
		 0.57528114 0.051415149 0.31457454 0.01401246 0.025352705 0.80086958 0.055153031 0.74885505
		 0.50349098 0.74794674 0.053320844 0.96649963 0.72384298 0.2448063 0.9226833 0.21065386
		 0.67182869 0.19391485 0.56213117 0.19952764 0.61981428 0.2448063 0.89988601 0.12171127
		 0.13088419 0.78986567 0.70136315 0.9178676 0.9602468 0.52096635 0.034894347 0.96556246
		 0.89364505 0.91338563 0.42186934 0.58051705 0.52757841 0.63284612 0.59874928 0.71481234
		 0.26291075 0.27060673 0.76986927 0.73092568 0.43694261 0.36974511 0.23279589 0.73629558
		 0.65183014 0.77377903 0.66929102 0.37136263 0.78117269 0.30625784 0.9393512 0.6214087
		 0.10857758 0.084275477 0.9699738 0.055534214 0.67466968 0.96150047 0.23682489 0.32997265
		 0.78980583 0.10068469 0.13088416 0.90291101 0.13088416 0.96974641 0.53797495 0.22023319
		 0.96732992 0.070447966 0.56920564 0.12199591 0.38313198 0.64841419 0.41304123 0.85970485
		 0.12986726 0.42675167 0.3353748 0.61648637 0.25495318 0.21780801 0.47420776 0.38770345
		 0.56366038 0.24782029 0.40739343 0.52096635 0.79071629 0.18632248 0.055718452 0.78865337;
	setAttr ".uvst[0].uvsp[500:749]" 0.69384152 0.87025714 0.91978157 0.43122056
		 0.16527855 0.18632248 0.48717487 0.25938672 0.76652181 0.97481591 0.97322619 0.4002803
		 0.88289958 0.1391426 0.96929216 0.96195716 0.3568767 0.46755514 0.16526152 0.75113261
		 0.24099746 0.67376852 0.51299256 0.14036979 0.95314884 0.29116082 0.16579247 0.73330456
		 0.89465028 0.13736716 0.69751459 0.93347549 0.45005095 0.56853616 0.7318719 0.3892948
		 0.03298378 0.12801528 0.63577271 0.71932673 0.86737734 0.9558925 0.84555167 0.91483432
		 0.17027444 0.95324785 0.082520276 0.14486089 0.37793016 0.47003484 0.6202715 0.43623894
		 0.88674343 0.6700176 0.72637725 0.5857231 0.13039261 0.11262061 0.45703503 0.76741618
		 0.56445676 0.63000911 0.1386525 0.9231118 0.30316186 0.018040469 0.6729638 0.52389288
		 0.44866917 0.064336278 0.01401246 0.25133544 0.01401246 0.7729848 0.01401246 0.95652896
		 0.052277509 0.85748363 0.72655636 0.55759656 0.80683815 0.1042901 0.35277823 0.74304301
		 0.33574107 0.3767522 0.45850053 0.88629001 0.52687883 0.30673882 0.48266074 0.79849529
		 0.14823154 0.30546314 0.47906795 0.60482115 0.64935744 0.20181808 0.60767972 0.96150047
		 0.48587951 0.75876743 0.60893649 0.6214087 0.57478517 0.9135949 0.097793624 0.44326827
		 0.37922928 0.22180294 0.60323668 0.07607986 0.18688829 0.41467425 0.19907157 0.75535357
		 0.51314211 0.094340071 0.69788283 0.19544642 0.13088416 0.61250967 0.13088416 0.74076217
		 0.25696719 0.23996206 0.33434179 0.13417308 0.78387988 0.20439638 0.89192057 0.62950116
		 0.93305141 0.13166256 0.13686499 0.23656069 0.40725422 0.26355776 0.85689837 0.38691828
		 0.52078807 0.45570055 0.9343394 0.91317546 0.92148268 0.53168768 0.91792321 0.52096635
		 0.73126554 0.44748551 0.39930671 0.58051705 0.19330356 0.254311 0.69679922 0.70074344
		 0.59157896 0.7671352 0.86754221 0.96747851 0.37212974 0.85970485 0.22415757 0.80405217
		 0.39632767 0.66479433 0.085275106 0.87455708 0.73143584 0.96709853 0.53444427 0.91762626
		 0.50019717 0.80324101 0.22520207 0.64492124 0.22415733 0.96416658 0.52414113 0.13202146
		 0.82333177 0.6214087 0.93662655 0.065999933 0.96921206 0.2937184 0.95385855 0.5215531
		 0.49194822 0.14562973 0.94223636 0.96347982 0.76418489 0.25473881 0.44386372 0.41571552
		 0.3075271 0.27045763 0.67844951 0.34816971 0.31824213 0.36128041 0.12453225 0.38850343
		 0.56163955 0.49294141 0.82216787 0.33688477 0.23680085 0.38654885 0.49885386 0.27535757
		 0.92096132 0.65541804 0.48640275 0.79998004 0.62683856 0.24476564 0.068014413 0.74356055
		 0.68926746 0.56702894 0.70154077 0.97283399 0.21737114 0.08272215 0.47262666 0.76901072
		 0.93207133 0.95056581 0.38198379 0.01598669 0.014054833 0.6149351 0.23262043 0.027121061
		 0.6557827 0.59338379 0.74994361 0.97758067 0.96328443 0.96810132 0.73901308 0.58172172
		 0.90295088 0.24901576 0.6739192 0.15577753 0.20281596 0.67748255 0.26555252 0.16416843
		 0.40015465 0.87275034 0.029407457 0.86755842 0.71970904 0.53566992 0.49289012 0.73687917
		 0.655222 0.66679537 0.27423018 0.050233144 0.82463884 0.6489833 0.75945896 0.80962676
		 0.086629987 0.50530815 0.80681145 0.8988533 0.46325374 0.75510991 0.84555167 0.95249647
		 0.55614555 0.97050834 0.70341086 0.71216595 0.67421949 0.2728312 0.51425922 0.8312881
		 0.30354089 0.86779732 0.31933624 0.66479445 0.45752615 0.78622019 0.62915504 0.65042287
		 0.30593169 0.89338678 0.74449545 0.106815 0.70844001 0.074890159 0.042127304 0.96945953
		 0.39956805 0.79010016 0.3025251 0.3812741 0.19330348 0.30091187 0.18953119 0.9090389
		 0.081239983 0.33602065 0.44620758 0.22290371 0.182299 0.67116821 0.24268328 0.58077753
		 0.41979143 0.096650556 0.40406823 0.13497548 0.5744155 0.79316264 0.093525395 0.36850095
		 0.9140625 0.5294764 0.74015331 0.55475384 0.30624154 0.4575465 0.26840678 0.73610193
		 0.45298186 0.91433126 0.40260625 0.38831601 0.30252513 0.20414424 0.23276415 0.75027925
		 0.32746452 0.46076038 0.27102682 0.93326914 0.5262562 0.77253968 0.45005095 0.83126599
		 0.79712057 0.3980833 0.55559677 0.43032497 0.6750865 0.96681237 0.97113621 0.30056927
		 0.94726717 0.12139862 0.24211305 0.96129411 0.01401246 0.1050433 0.77953196 0.036784437
		 0.54118067 0.016938772 0.63760173 0.043686505 0.64948839 0.040452268 0.3025251 0.73669308
		 0.048768949 0.752231 0.051095109 0.76436996 0.034809809 0.76852548 0.93662655 0.049551215
		 0.52348077 0.067057863 0.13471635 0.59462202 0.55832922 0.22044136 0.18893506 0.87448996
		 0.47980443 0.53635126 0.13685392 0.44694152 0.58625221 0.62417567 0.87571746 0.1398979
		 0.8831706 0.1275586 0.51247227 0.122365 0.487786 0.41571552 0.36953208 0.98226756
		 0.15368468 0.52220249 0.73143584 0.84383631 0.55559677 0.45200241 0.68045354 0.84812874
		 0.48904637 0.45754656 0.87119448 0.95439082 0.74758226 0.75211215 0.34097141 0.98458278
		 0.76803213 0.2767787 0.73315954 0.66605014 0.21665886 0.39820704 0.94719166 0.69973606
		 0.089944698 0.22723861 0.50098324 0.73522317 0.083503813 0.74471593 0.30252513 0.21935692
		 0.47364867 0.76904643 0.73735774 0.57090122 0.70859498 0.62927824 0.52119184 0.79022127
		 0.57500744 0.90529758 0.6499396 0.10723989 0.13088416 0.96040159 0.44002318 0.24440514
		 0.72375298 0.14889918 0.52428782 0.14391707 0.091695294 0.85288006 0.50321788 0.13340053
		 0.67629838 0.79316282 0.93143785 0.81237447 0.019042946 0.76212525 0.32967883 0.083060034
		 0.87936735 0.12602204 0.56445676 0.92133898 0.72324532 0.57318836 0.95656919 0.94989234
		 0.32951391 0.48585728 0.46252474 0.70132107 0.45826665 0.64115536 0.43063119 0.40348697
		 0.55333567 0.26933852 0.39714882 0.70226222 0.38462678 0.98391926 0.15454856 0.95731604
		 0.38028827 0.61648643 0.7671966 0.4420087 0.70737141 0.54165649 0.18060127 0.095457159;
	setAttr ".uvst[0].uvsp[750:999]" 0.90502644 0.12436258 0.35150155 0.93633866
		 0.014801824 0.68241858 0.027816826 0.43320736 0.73473012 0.028113475 0.79530686 0.6271162
		 0.04663869 0.53527975 0.1004815 0.90668058 0.051864788 0.9210372 0.53908259 0.24798477
		 0.4920311 0.30155429 0.44317728 0.30178162 0.44409269 0.29685506 0.32760292 0.39759275
		 0.3025251 0.42446914 0.22240283 0.59840429 0.039444849 0.33662644 0.22422454 0.23119716
		 0.64517939 0.97513795 0.18377043 0.6421541 0.97145724 0.12532707 0.7500695 0.57111293
		 0.69021016 0.97958839 0.52773994 0.91433126 0.14087677 0.43168908 0.48967427 0.9722262
		 0.3025251 0.93734044 0.49806714 0.93089557 0.90356177 0.95368248 0.62094384 0.96889251
		 0.33231926 0.42952156 0.70859498 0.65633494 0.16270149 0.58077776 0.68836802 0.79226166
		 0.46126616 0.67107093 0.59463906 0.41922349 0.69911021 0.10860314 0.92110664 0.38691828
		 0.81321609 0.94153315 0.4930709 0.74992681 0.94986618 0.30056927 0.2258684 0.49983898
		 0.93818778 0.1385517 0.4100132 0.3116073 0.76306599 0.9620856 0.63858074 0.62193209
		 0.083609462 0.64963263 0.90215105 0.80962676 0.73913133 0.55478954 0.044073168 0.83101428
		 0.01401246 0.86189991 0.76272905 0.55431044 0.3728838 0.30885983 0.64893252 0.35958627
		 0.40484026 0.52942353 0.44515598 0.49001989 0.47542229 0.7851581 0.87492591 0.18632248
		 0.16527855 0.25367817 0.13359126 0.27215517 0.45808831 0.79342932 0.40271941 0.80845016
		 0.2167673 0.1134734 0.92096132 0.76727939 0.11954203 0.30018008 0.092379414 0.67829412
		 0.48953465 0.78744519 0.94608408 0.28061959 0.39472556 0.051367737 0.064449362 0.071160302
		 0.090571664 0.21987118 0.56920564 0.033793457 0.033868559 0.37308976 0.050580271
		 0.49865976 0.60812706 0.041735776 0.10184232 0.42239228 0.78723663 0.053911187 0.3025251
		 0.85970485 0.19226082 0.35912156 0.22145547 0.67741936 0.091251209 0.71553564 0.4311181
		 0.15171181 0.15279044 0.53890532 0.047245279 0.97124273 0.2553589 0.97805691 0.17287356
		 0.64267731 0.41313809 0.65215832 0.81726408 0.8913269 0.20110644 0.081139281 0.6202715
		 0.45791638 0.8848505 0.94989234 0.66922635 0.71618962 0.71608418 0.40319562 0.71891057
		 0.36847252 0.76934451 0.70074344 0.61769015 0.57031858 0.32551533 0.97958648 0.33429843
		 0.83167994 0.82452226 0.30056721 0.74039829 0.56891602 0.081932478 0.95652896 0.80979234
		 0.88244307 0.030327134 0.82889456 0.87721175 0.57323545 0.95966369 0.13677305 0.50540853
		 0.75591332 0.093760416 0.58753717 0.69736528 0.052792773 0.19613241 0.78337854 0.0465932
		 0.96172339 0.45005095 0.66997588 0.098258823 0.46858677 0.74914461 0.43122065 0.41522223
		 0.73617613 0.29084244 0.020480156 0.32321757 0.74304301 0.48127431 0.090190023 0.52687883
		 0.28506139 0.69429988 0.20181808 0.50105816 0.35096332 0.36781421 0.74177408 0.90606457
		 0.30299255 0.65427345 0.31464705 0.40650007 0.73757809 0.85273802 0.48863974 0.26666829
		 0.78337854 0.57376987 0.82782865 0.45005095 0.77684093 0.48622358 0.77185345 0.71988982
		 0.52262241 0.8470757 0.52096635 0.57500744 0.92197645 0.60863805 0.65673709 0.81752682
		 0.8544181 0.059849635 0.23085773 0.11856635 0.33513242 0.72752756 0.15577747 0.13849463
		 0.69346344 0.75790143 0.88812023 0.40462184 0.94514644 0.54118067 0.13365211 0.40015465
		 0.89067864 0.75525391 0.57196325 0.7787866 0.93309003 0.50292516 0.36474836 0.3305853
		 0.94514638 0.36641771 0.53558046 0.23415187 0.28266957 0.35589623 0.35275209 0.31965223
		 0.30269399 0.57509482 0.072880983 0.56445676 0.52096635 0.35138941 0.53693783 0.19000429
		 0.38954395 0.052887466 0.86982834 0.70293164 0.54981422 0.60249102 0.48372549 0.37082267
		 0.88727945 0.69380701 0.58541214 0.65695113 0.10681497 0.31334791 0.15171178 0.09649355
		 0.086960815 0.40014389 0.087513819 0.33027104 0.69801873 0.84640527 0.036784496 0.72032201
		 0.55897462 0.13565406 0.30353674 0.94913161 0.35718077 0.46905965 0.33688477 0.35783157
		 0.60854197 0.61369473 0.46835604 0.46986195 0.64673483 0.34097144 0.97816765 0.78520221
		 0.22823504 0.17103365 0.96232814 0.081345767 0.96291721 0.41735715 0.47003201 0.53292942
		 0.31749663 0.60639131 0.12919423 0.16149211 0.25716552 0.40933427 0.77821964 0.96136028
		 0.39523458 0.73011929 0.58423847 0.24699748 0.65075487 0.5739122 0.92800575 0.87510067
		 0.52096635 0.75139308 0.55079377 0.1864733 0.83830601 0.01401246 0.90888643 0.048060719
		 0.92850411 0.01401246 0.64295995 0.048281882 0.5845874 0.01401246 0.58628464 0.01401246
		 0.41968545 0.01401246 0.38225219 0.72207409 0.047856737 0.96677834 0.060948569 0.05159593
		 0.43534809 0.61405635 0.11033906 0.63084698 0.87727261 0.89293641 0.6214087 0.50712079
		 0.77786797 0.12986724 0.44833347 0.75186795 0.18632248 0.49306303 0.74450052 0.21395291
		 0.52840525 0.75574493 0.5531593 0.58999854 0.65667385 0.56770122 0.93517107 0.19521862
		 0.52910554 0.52757841 0.67229724 0.091823712 0.055995479 0.70136321 0.80597502 0.58540195
		 0.39722502 0.73687702 0.6214087 0.73143584 0.70074344 0.53315532 0.97052222 0.90404642
		 0.96657258 0.22623855 0.25335121 0.51918924 0.70545846 0.32751784 0.5725162 0.7495262
		 0.54085302 0.14156464 0.01132712 0.45005095 0.97052222 0.015544425 0.83366179 0.66634905
		 0.43122056 0.49137747 0.30468738 0.1824116 0.88626099 0.091044411 0.95652896 0.78581887
		 0.12100904 0.49123803 0.56523919 0.16967122 0.48043704 0.19431855 0.21657088 0.8699823
		 0.70702672 0.59178925 0.30405259 0.36365503 0.71129531 0.78975475 0.15577751 0.14921069
		 0.64300007 0.94719166 0.6275934 0.95385855 0.53066504 0.79075402 0.59213597 0.091636688
		 0.77180076 0.49980542 0.93608218 0.33119738 0.33688477 0.33253154 0.64841408 0.42202601
		 0.56379098 0.86161172 0.43122056 0.35013106 0.49002409 0.45181003 0.70719826 0.32450882
		 0.19299027;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.79337329 0.53601235 0.41843978 0.77106798
		 0.065976858 0.8417142 0.14156464 0.10145112 0.23528722 0.12191626 0.6853857 0.027286721
		 0.020769613 0.75499761 0.021732526 0.79402304 0.71971697 0.53024369 0.45671672 0.77919841
		 0.8618089 0.1398979 0.66224355 0.62225503 0.92796159 0.66111976 0.69489682 0.076113977
		 0.093822129 0.61344367 0.219367 0.059488684 0.94913161 0.34295654 0.93680346 0.28999364
		 0.45005095 0.76856738 0.55903888 0.3121286 0.5988887 0.77378529 0.96361285 0.38520572
		 0.07036835 0.46980205 0.086629987 0.50530815 0.61987811 0.34811062 0.59021419 0.34843656
		 0.070961237 0.41317171 0.10184232 0.42239228 0.070961237 0.41317171 0.8848505 0.94989234
		 0.88862509 0.96842688 0.3025251 0.42446914 0.32760292 0.39759275 0.53908259 0.24798477
		 0.55333567 0.26933852 0.48656568 0.064688206 0.5905109 0.023026293 0.59463906 0.44090092
		 0.58789355 0.46169645 0.46126616 0.67107093 0.52757841 0.67229724 0.59920853 0.72914004
		 0.59874928 0.71481234 0.3250626 0.27257669 0.61769015 0.57031858 0.43063119 0.40348697
		 0.46721813 0.41481674 0.23415187 0.28266957 0.26291075 0.27060673 0.13471635 0.59462202
		 0.13471635 0.59462202 0.18297586 0.59840465 0.33429843 0.83167994 0.3373374 0.77459037
		 0.46721813 0.41481674 0.23276415 0.75027925 0.23279589 0.73629558 0.67421949 0.2728312
		 0.66930896 0.28889948 0.16579247 0.73330456 0.16526152 0.75113261 0.6082778 0.52115989
		 0.85654718 0.28061959 0.85862833 0.2966308 0.04663869 0.53527975 0.048281882 0.5845874
		 0.42202601 0.56379098 0.64893252 0.35958627 0.63505793 0.35382479 0.48656568 0.064688206
		 0.37489584 0.27665871 0.3250626 0.27257669 0.15454856 0.95731604 0.15632556 0.96610296
		 0.61769015 0.57031858 0.38028827 0.61648643 0.38313198 0.64841419 0.73126554 0.44748551
		 0.68422771 0.44748566 0.68471688 0.471587 0.21449783 0.41880572 0.19460474 0.4524121
		 0.21854199 0.36178622 0.80912852 0.054273646 0.78723663 0.053911187 0.070961237 0.41317171
		 0.68422771 0.44748566 0.78122383 0.25116503 0.76418489 0.25473881 0.50712079 0.77786797
		 0.50984836 0.76407105 0.3075271 0.27045763 0.61855465 0.58976758 0.18688829 0.3678447
		 0.78980583 0.10068469 0.80683815 0.1042901 0.53252119 0.19755661 0.56213117 0.19952764
		 0.56920564 0.033793457 0.5905109 0.023026293 0.03298378 0.12801528 0.030210018 0.099530295
		 0.064449362 0.071160302 0.46577343 0.48585382 0.44515598 0.49001989 0.43841046 0.46755114
		 0.46782294 0.46075755 0.41735715 0.47003201 0.42116246 0.49293804 0.32951391 0.48585728
		 0.32746452 0.46076038 0.47376695 0.79597855 0.47542229 0.7851581 0.19330348 0.30091187
		 0.23415187 0.28266957 0.03298378 0.12801528 0.44620758 0.22290371 0.44259489 0.18632248
		 0.13467839 0.33848909 0.3353748 0.61648637 0.33253154 0.64841408 0.22520207 0.64492124
		 0.22145547 0.67741936 0.59463906 0.41922349 0.60993296 0.39861298 0.42202601 0.56379098
		 0.39930671 0.58051705 0.40650007 0.73757809 0.39714882 0.70226222 0.26114422 0.31487754
		 0.23682489 0.32997265 0.089063816 0.22742793 0.3568767 0.46755514 0.37793016 0.47003484
		 0.37412453 0.49294141 0.35013106 0.49002409 0.78387988 0.20439638 0.76198739 0.2047182
		 0.15750553 0.062183507 0.17396717 0.059531596 0.49123803 0.56523919 0.081189387 0.67958945
		 0.092379414 0.67829412 0.79445708 0.3406468 0.79712057 0.3980833 0.081189387 0.67958945
		 0.014801824 0.68241858 0.48127431 0.090190023 0.48656568 0.064688206 0.048281882
		 0.5845874 0.89783406 0.89875913 0.89364505 0.91338563 0.51938325 0.52096635 0.46652129
		 0.55195272 0.45005095 0.58655471 0.74758226 0.75211215 0.27066851 0.59462154 0.27066851
		 0.59462154 0.22240283 0.59840429 0.26291075 0.27060673 0.25696719 0.23996206 0.46652129
		 0.55195272 0.56163955 0.49294141 0.56163955 0.48682687 0.052660372 0.22488579 0.059849635
		 0.23085773 0.74758226 0.75211215 0.77330005 0.77699727 0.25495318 0.21780801 0.24988481
		 0.20048349 0.82463884 0.6489833 0.88952982 0.65509069 0.60323668 0.07607986 0.57509482
		 0.072880983 0.33027104 0.69801873 0.32321757 0.74304301 0.04575216 0.60996199 0.048281882
		 0.5845874 0.43777257 0.30486289 0.44113588 0.3107017 0.49757317 0.015344776 0.10390774
		 0.053310141 0.12326948 0.04632996 0.64645815 0.92838156 0.64474982 0.91349483 0.13686499
		 0.23656069 0.16149211 0.25716552 0.46126616 0.67107093 0.45005095 0.66997588 0.64948839
		 0.040452268 0.63760173 0.043686505 0.40406823 0.13497548 0.4065021 0.12872685 0.87721175
		 0.57323545 0.89128458 0.52235675 0.18953119 0.9090389 0.1386525 0.9231118 0.44409269
		 0.29685506 0.44317728 0.30178162 0.38514015 0.97496909 0.38462678 0.98391926 0.37082267
		 0.88727945 0.30593169 0.89338678 0.30885634 0.053565335 0.29873997 0.062052399 0.089063816
		 0.22742793 0.13686499 0.23656069 0.73077601 0.47158685 0.73126554 0.44748551 0.070961237
		 0.41317171 0.55333567 0.29101595 0.55903888 0.3121286 0.55333567 0.26933852 0.56366038
		 0.24782029 0.59463906 0.41922349 0.58540195 0.39722502 0.3305853 0.94514638 0.33361742
		 0.94018739 0.35150155 0.93633866 0.35390681 0.94048375 0.091823712 0.055995479 0.064449362
		 0.071160302 0.089944698 0.22723861 0.089063816 0.22742793 0.090571664 0.21987118
		 0.4627105 0.78536981 0.46370605 0.79441106 0.037392944 0.75566876 0.036381748 0.76440817
		 0.041166659 0.79329628 0.038304389 0.78617287 0.035551593 0.77995408 0.034809809
		 0.76852548 0.50712079 0.77786797 0.47377241 0.75661272 0.47364867 0.76904643 0.46138689
		 0.76505065 0.46325374 0.75510991 0.47262666 0.76901072 0.47238171 0.78317291 0.45671672
		 0.77919841 0.45703503 0.76741618 0.50019717 0.80324101 0.50352085 0.79057175 0.50352085
		 0.79057175 0.95607209 0.056387257 0.93662655 0.065999933 0.96238554 0.046371985 0.95607209
		 0.056387257 0.50984836 0.76407105;
	setAttr ".uvst[0].uvsp[1250:1305]" 0.50540853 0.75591332 0.49277601 0.75868326
		 0.49306303 0.74450052 0.5015915 0.74288619 0.15368468 0.52220249 0.17392501 0.033833958
		 0.71971697 0.53024369 0.7111885 0.52862936 0.18060127 0.095457159 0.17396717 0.059531596
		 0.19680642 0.02703052 0.58625221 0.62417567 0.58999854 0.65667385 0.17530853 0.54032248
		 0.70737141 0.54165649 0.72000396 0.54442644 0.20110644 0.081139281 0.219367 0.059488684
		 0.52428782 0.14391707 0.23262043 0.027121061 0.25823453 0.064815305 0.51299256 0.14036979
		 0.70925921 0.57631493 0.70565921 0.56361109 0.71258283 0.58898425 0.70925921 0.57631493
		 0.74015331 0.55475384 0.74039829 0.56891602 0.73900759 0.54235584 0.73913133 0.55478954
		 0.51299256 0.14036979 0.068473436 0.84534603 0.070441462 0.85662836 0.72000396 0.54442644
		 0.069229066 0.86332029 0.068123229 0.87091708 0.75574493 0.5531593 0.75606334 0.56494153
		 0.065976858 0.8417142 0.062937766 0.83345801 0.70565921 0.56361109 0.72000396 0.54442644
		 0.51299256 0.14036979 0.49194822 0.14562973 0.51299256 0.14036979 0.73735774 0.57090122
		 0.7500695 0.57111293 0.74907398 0.58015418 0.73901308 0.58172172 0.70293164 0.54981422
		 0.86575311 0.12139862 0.8618089 0.1398979 0.7495262 0.54085302 0.75139308 0.55079377
		 0.14212209 0.3466019 0.25495318 0.21780801;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 1760 ".clst[0].clsp";
	setAttr ".clst[0].clsp[0:124]"  0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.37799999
		 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.44251201 0.50400001 0.49926952 1 0.37799999 0.28414071 0.17463601 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001
		 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993 1 0.44251201 0.50400001
		 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1
		 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.1806 0.055599999 0.053100001 1;
	setAttr ".clst[0].clsp[125:249]" 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.2841 0.17460001
		 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841 0.17460001 1 0.083999999 0.0403 0.0129
		 1 0.37799999 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.2841
		 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999
		 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999
		 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.37799999 0.28414071 0.17463601 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025 0.025 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1;
	setAttr ".clst[0].clsp[250:374]" 0.083999999 0.0403 0.0129 1 0.37799999 0.2841
		 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.44251201 0.50400001 0.49926952
		 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403
		 0.0129 1 0.37799999 0.2841 0.17460001 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841
		 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.37799999
		 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1
		 0.37799999 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1
		 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1;
	setAttr ".clst[0].clsp[375:499]" 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.025 0.025 0.025 1 0.025 0.025 0.025 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1;
	setAttr ".clst[0].clsp[500:624]" 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1;
	setAttr ".clst[0].clsp[625:749]" 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.37799999
		 0.2841 0.17460001 1 0.083999999 0.0403 0.0129 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1;
	setAttr ".clst[0].clsp[750:874]" 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.4425 0.50400001 0.4993 1 0.37799999
		 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952
		 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1
		 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1
		 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1;
	setAttr ".clst[0].clsp[875:999]" 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071 0.17463601 1
		 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1
		 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1
		 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1
		 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841 0.17460001 1 0.083999999 0.0403 0.0129
		 1 0.37799999 0.2841 0.17460001 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841 0.17460001
		 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841 0.17460001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.2841
		 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001
		 0.4993 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.44251201
		 0.50400001 0.49926952 1;
	setAttr ".clst[0].clsp[1000:1124]" 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37825298 0.28500289 0.17590907
		 1 0.37825298 0.28500289 0.17590907 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.1806
		 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1
		 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1;
	setAttr ".clst[0].clsp[1125:1249]" 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025
		 0.025 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025 0.025 1 0.025 0.025 0.025
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025
		 0.025 1 0.025 0.025 0.025 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.025 0.025 0.025 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025 0.025
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.37799999 0.2841 0.17460001 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.4425 0.50400001 0.4993
		 1 0.37799999 0.28414071 0.17463601 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999
		 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.37799999 0.28414071 0.17463601
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1;
	setAttr ".clst[0].clsp[1250:1374]" 0.37799999 0.28414071 0.17463601 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1
		 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.1806 0.055599999
		 0.053100001 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.083999999 0.0403
		 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403
		 0.0129 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1
		 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001
		 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1
		 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1
		 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.37799999 0.28414071 0.17463601 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.37799999 0.2841 0.17460001 1 0.083999999 0.0403 0.0129 1 0.37799999
		 0.2841 0.17460001 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.37799999 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999
		 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1 0.37799999 0.2841 0.17460001 1
		 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001
		 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806
		 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001
		 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1;
	setAttr ".clst[0].clsp[1375:1499]" 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999
		 0.0403 0.0129 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999 0.053100001 1
		 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999 0.053100001
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129
		 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025
		 0.025 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.025
		 0.025 0.025 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.025 0.025 0.025 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025 0.025 1 0.025
		 0.025 0.025 1 0.44251201 0.50400001 0.49926952 1 0.025 0.025 0.025 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.1806 0.055599999 0.053100001 1 0.1806 0.055599999
		 0.053100001 1 0.083999999 0.0403 0.0129 1 0.083999999 0.0403 0.0129 1 0.1806 0.055599999
		 0.053100001 1 0.1806 0.055599999 0.053100001 1 0.44251201 0.50400001 0.49926952 1
		 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201
		 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001
		 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952
		 1 0.44251201 0.50400001 0.49926952 1 0.44251201 0.50400001 0.49926952 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1;
	setAttr ".clst[0].clsp[1500:1624]" 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425
		 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1;
	setAttr ".clst[0].clsp[1625:1749]" 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999
		 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071
		 0.17463601 1 0.37799999 0.28414071 0.17463601 1 0.37799999 0.28414071 0.17463601
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993
		 1;
	setAttr ".clst[0].clsp[1750:1759]" 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001
		 0.4993 1 0.4425 0.50400001 0.4993 1 0.4425 0.50400001 0.4993 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 415 ".pt";
	setAttr ".pt[0:165]" -type "float3"  56.101192 96.587273 1.482007 49.469921 
		97.040749 16.331375 52.365765 81.877731 1.5314864 45.320087 82.254204 16.389017 57.348671 
		87.607597 6.8605433 43.650463 87.660667 -0.95697695 69.080635 82.68576 27.553797 
		74.457832 83.229561 12.979965 59.46487 90.21682 23.785776 63.562561 92.009773 6.7233038 
		63.858509 85.197853 6.8421583 57.457726 92.744766 19.246916 57.158596 83.315979 18.929871 
		67.704964 91.132805 9.4868612 61.840633 91.930191 21.958952 61.383167 86.83551 22.320341 
		68.380859 86.012268 9.3046474 76.16436 83.85891 14.013862 72.447754 86.221642 11.949079 
		71.581116 84.152878 28.669909 73.22728 89.040154 13.096947 47.891006 97.889397 -0.77686739 
		67.108421 85.536591 25.924866 69.34301 89.560181 26.154537 13.194605 3.7743053 -4.6602912 
		21.255894 4.2278385 -11.309863 14.530011 0.256915 -5.369453 22.765718 0.66211104 
		-10.309494 18.328569 25.708775 15.462014 28.788158 26.210464 12.125634 27.394602 
		30.182148 0.194345 15.251226 26.289999 -0.099820949 15.822609 9.8676882 -3.1417665 
		21.348013 9.5523977 2.6770353 29.989765 0.10184462 -2.7682061 14.745278 -0.033540282 
		2.7873702 28.487442 5.8342886 5.6859331 21.031443 5.8123055 9.8945704 42.216755 99.699265 
		8.2501583 37.963978 90.441231 9.3247309 26.526772 10.761977 -0.012441375 19.993511 
		11.053043 -7.0646214 23.795002 16.083939 7.3228593 14.777653 18.235268 1.8017106 
		27.757092 17.397953 2.3291721 20.340097 19.63047 -3.9397664 17.759285 30.010624 5.202251 
		10.525347 54.891525 -8.2170115 23.873917 56.841545 8.2026653 22.279581 55.909519 
		-2.7643285 28.614882 37.563122 0.13441008 29.01285 39.530376 11.283096 24.691088 
		109.50129 3.3742819 20.980066 92.931877 11.268248 24.934034 109.24997 -5.1848702 
		25.599154 89.243805 -6.7370496 8.4744415 111.11203 9.8547325 8.349328 115.75436 -6.9599071 
		23.885008 84.926109 13.83604 22.628368 80.482796 -0.10495351 10.018403 120.05764 
		9.8343458 9.735384 123.8214 -5.3608351 34.512489 -0.11922027 17.999043 21.212187 
		-0.1668295 22.759964 30.806124 4.2971802 14.075212 23.082544 4.6236019 17.106623 
		31.041294 108.40843 6.6549606 16.020622 92.381798 -12.010276 13.139405 103.40081 
		16.493505 15.122213 109.16937 -9.161664 16.23023 72.832993 17.57325 18.817366 75.46772 
		4.08462 10.787102 78.149742 -3.4640706 14.165273 37.626316 -4.6994228 38.340714 101.75671 
		-3.7693136 14.093066 88.853134 19.988373 35.499538 103.64297 8.4669895 33.051868 
		108.02695 -4.9516311 26.356342 95.33445 9.8011599 24.656883 92.310402 -2.8418629 
		12.276231 121.93141 2.7997959 55.419777 90.092651 22.245556 23.798477 104.2224 8.9944649 
		24.295294 104.78552 -9.0976524 11.599107 114.11283 -0.19461122 44.20903 98.775734 
		-1.9723526 38.419212 89.18045 -1.6551228 25.158728 40.969597 13.876714 14.332808 
		74.654198 20.75968 13.775803 45.671001 8.262001 14.437479 82.442299 -8.4724827 18.388235 
		31.670614 14.998206 27.513931 30.908039 12.87334 26.640821 32.082748 2.7486985 13.449571 
		36.972042 25.918369 6.7415013 49.876247 10.640934 18.66568 54.7827 10.933002 21.777363 
		51.990665 -0.11036826 8.8526497 47.778473 -0.38501742 8.7607298 53.371742 21.620419 
		3.6673253 52.873024 17.644035 25.013927 81.888512 7.041193 3.7985418 39.480045 -5.8208055 
		24.748056 111.11883 2.7383144 24.977047 110.82743 -3.8383918 12.481277 71.462952 
		-3.5266638 17.86508 67.451241 14.345515 20.296059 69.134819 2.8302455 13.476598 77.373573 
		-5.683073 19.395947 71.965858 17.471407 22.35586 74.642662 4.0609999 22.626892 93.558868 
		15.834663 54.943306 95.40773 20.023937 61.740227 95.088936 5.5304003 51.672657 82.144905 
		20.165709 58.944145 82.370361 5.7876043 21.315224 62.135933 8.9660912 22.792604 66.527275 
		-1.7654018 13.339964 63.816486 -5.1236868 20.775387 61.757751 -2.0539773 21.400917 
		65.557861 12.735463 14.597075 69.191841 -6.6075549 13.02999 69.053711 -3.9673724 
		18.154768 65.953583 13.477035 19.691456 67.315956 1.8585883 22.587042 89.927292 -2.2834866 
		12.860928 136.73544 -19.21627 10.931473 119.11266 -15.028925 24.103113 135.57397 
		1.9558525 19.397142 115.86461 2.3535814 10.542723 111.44621 19.981461 12.333004 134.24312 
		24.923071 9.7779236 155.86758 -14.373164 17.71023 155.70316 2.0705495 8.7671747 155.38913 
		18.696083 11.895982 137.42738 24.51947 3.734838 134.03476 28.574175 3.7737403 137.26973 
		27.571522 15.65427 134.51067 20.551195 15.285339 137.68423 19.724102 14.288231 134.13177 
		18.722202 10.966965 133.86421 23.09408 10.529956 137.04852 22.690479 13.91931 137.30533 
		17.895109 2.3688118 133.65587 26.745184 2.4076996 136.89084 25.742529 16.842375 115.86349 
		2.4652057 9.2227621 111.46909 17.693556 9.5573082 119.08787 -12.549648 -14.131166 
		3.4825947 -6.3852882 -22.929781 4.2490869 -12.029084 -15.622288 0.09876886 -6.5949745 
		-24.376667 0.70491636 -10.910518 -14.838076 25.172651 14.705951 -25.678423 26.21067 
		13.164793 -26.058628 30.433441 1.12993 -14.358756 25.986561 -1.2172087 -16.354427 
		9.6109295 -3.8435042 -21.222492 9.4902296 2.7500074 -31.251534 0.15815556 -3.1831782 
		-15.900195 -0.033011191 2.214134 -29.456211 5.8846011 5.8915415 -22.008247 5.8231893 
		9.9577312 -26.806334 10.894521 0.65405148 -21.089193 10.963379 -7.2681866 -22.121511 
		15.993227 7.589848;
	setAttr ".pt[166:331]" -14.074088 17.778172 0.63389295 -26.807121 17.559484 
		3.3374734 -20.454334 19.515991 -4.0958872 -15.678262 29.965851 4.5612011 1.1536553 
		42.255711 -4.3012547 3.1400669 39.251438 13.150508 -9.4676571 55.52644 -7.871007 
		-21.230816 57.312263 10.930761 -20.565683 55.969662 -1.0559436 -26.853346 37.995583 
		1.3595058 -25.688417 39.413937 12.894604 -22.348297 109.50129 3.3742893 -18.637272 
		92.931877 11.268253 -22.591242 109.24997 -5.1848626 -23.256367 89.243805 -6.7370415 
		1.5815237 58.905174 -8.1878624 1.1755508 89.247017 22.2931 1.1713961 98.443436 -15.068483 
		1.1725951 110.57335 12.567782 -6.0041556 115.75436 -6.9599061 -6.1292586 111.11203 
		9.8547707 -19.902496 84.926109 13.836047 -20.057644 80.18129 -0.10464127 1.1713972 
		100.83153 20.946213 -7.671917 120.05764 9.8343487 1.1732504 118.27499 14.383204 -7.3888865 
		123.8214 -5.3608336 -35.741798 -0.11364282 17.441303 -22.441492 -0.16125205 22.202225 
		-31.850397 4.3180385 14.158515 -24.179615 4.6236019 17.10663 -13.677834 92.381798 
		-12.01027 1.1713948 107.13419 -13.930534 -10.796605 103.40081 16.493546 -12.779425 
		109.16937 -9.1616602 -13.846791 73.541183 17.514708 1.1352829 71.084198 21.526983 
		-16.264076 76.293732 4.0163379 1.3813617 79.632423 -5.7247052 -8.0916147 78.594269 
		-3.5008159 -12.810976 37.922394 -5.2481928 -11.485136 89.132935 20.130434 -24.01355 
		95.33445 9.8011675 -22.314095 92.310402 -2.841856 -9.9299412 121.93141 2.7997997 
		-21.455685 104.2224 8.9944725 -21.952503 104.78552 -9.0976448 -9.253933 114.11283 
		-0.19460793 -21.6194 40.666077 14.980686 -11.846419 76.620537 20.690462 1.2545813 
		74.979668 23.647511 -10.77202 45.348412 8.0898657 1.4559593 82.530266 -10.535071 
		-10.056223 82.648117 -7.6657572 -14.740856 31.045792 14.447788 -24.090046 30.74152 
		13.754588 -24.761511 32.361382 3.5946789 -10.769187 37.731373 25.454912 -3.2789507 
		49.183788 9.544014 -16.174559 54.168953 13.910423 -19.82601 52.222626 1.5366963 -7.2566237 
		47.827847 -1.1022853 -3.3788023 52.692314 21.79825 1.2120897 41.123505 5.6883373 
		1.171394 108.93325 -15.239599 -21.585619 81.888512 7.0412002 -1.8673289 39.459457 
		-6.8213339 -22.405256 111.11883 2.7383573 -22.634254 110.82743 -3.8383842 -11.008657 
		73.091187 -4.2414269 0.69927853 72.384483 -6.3276882 -15.618381 68.193237 14.565534 
		-18.158413 70.120499 2.9585998 0.73542625 65.333237 20.150642 -10.856744 77.946533 
		-5.730433 1.3423203 78.869873 -7.9505315 -17.834562 72.842476 17.398943 -20.622412 
		75.65461 3.9773481 1.0868614 70.174973 23.195238 -20.284098 93.558868 15.834671 1.1713971 
		98.802528 20.586966 -16.044735 62.506062 13.353538 1.2937956 58.834957 19.432901 
		-20.494146 69.464676 1.7845029 -10.577297 66.695236 -4.4724841 0.17635407 65.734039 
		-5.5299115 -18.591583 65.284958 2.5896561 -17.305155 67.341408 15.157904 0.52747905 
		71.063492 -8.1164408 -12.004579 71.98159 -6.1266046 0.33950806 63.770584 22.315016 
		0.92193687 64.251175 20.060133 -20.373543 89.685555 -3.3738365 -10.514265 136.73544 
		-19.216269 -8.5848236 119.11266 -15.028923 -21.75646 135.57397 1.9558598 -17.050478 
		115.86461 2.3535883 -8.1960535 111.44621 19.981466 -13.307601 134.51067 20.551199 
		-9.9863338 134.24312 24.923075 1.1733353 133.96844 30.060534 1.1733347 109.95091 
		23.284794 -7.4312601 155.8676 -14.373171 -15.939508 155.70316 2.0705543 -6.420505 
		155.38913 18.696087 1.173334 155.51617 20.769794 1.1733323 157.70639 2.604933 -12.938684 
		137.68423 19.724108 -9.5493116 137.42738 24.519478 1.1733352 137.21756 28.648033 
		-1.3881814 134.03476 28.574175 -1.4270695 137.26973 27.571522 -11.941562 134.13177 
		18.722204 -8.6203089 133.86421 23.094084 -8.1832857 137.04852 22.690481 -11.572641 
		137.30533 17.895113 -0.022141488 133.65587 26.745184 -0.061043542 136.89084 25.742529 
		-7.2106433 119.08787 -12.549647 -14.495722 115.86349 2.46521 -6.8760934 111.46909 
		17.693558 1.1733345 109.97827 20.54814 57.947121 92.167824 6.0816422 53.21735 92.940399 
		15.085789 52.564476 87.246368 15.868063 -22.244352 111.08304 2.8579419 64.728027 
		91.195381 23.522116 69.618248 90.359787 11.111398 69.531708 86.305016 10.194201 63.602478 
		86.420715 23.363605 54.159203 87.366776 12.865552 55.753956 87.487198 9.8630457 61.4207 
		84.019936 11.046686 59.237976 85.464035 14.975557 66.067993 85.564819 13.399007 63.564274 
		85.697884 17.886978 76.317368 82.705215 23.288385 77.052109 82.783363 20.376381 75.061447 
		81.922066 18.996511 73.894051 81.810921 23.113253 72.277565 89.243973 21.829176 73.294594 
		89.036842 17.835899 69.883362 85.611435 21.582687 71.550171 86.109612 16.732809 67.988182 
		90.638321 15.248302 66.358086 90.916824 19.385214 67.606003 86.001938 14.356351 65.455849 
		85.882141 19.107004 71.108276 82.214035 24.596258 73.210724 83.691078 26.448702 73.776016 
		82.756943 16.210373 75.575531 83.378044 16.556213 73.034935 89.155464 16.257462 70.846367 
		89.344604 23.836491 69.098038 85.467018 21.945671 70.777565 86.290604 15.590485 59.364902 
		88.428329 25.113907 57.283356 84.543243 22.026709 55.639107 86.504539 24.750887 60.12711 
		85.955956 26.728958 58.268093 82.636429 24.110016 61.659134 84.451035 24.433395 56.859989 
		84.316063 26.442976 58.985928 81.715553 25.697657 61.792988 83.14875 25.919559 58.114765 
		82.284439 28.264854;
	setAttr ".pt[332:414]" 60.823227 83.578598 28.45698 -53.758392 96.587273 1.482025 
		-47.127121 97.040749 16.331388 -50.02298 81.877731 1.5315024 -42.977291 82.254204 
		16.389032 -58.480419 83.578598 28.456997 -41.307674 87.660667 -0.95696211 -55.771965 
		82.284439 28.26487 -59.450191 83.14875 25.919577 -56.643131 81.715553 25.697678 -54.517197 
		84.316063 26.442995 -59.31633 84.451035 24.433416 -55.925304 82.636429 24.110035 
		-57.784313 85.955956 26.728977 -53.296307 86.504539 24.750904 -54.940559 84.543243 
		22.026726 -57.022106 88.428329 25.113926 -68.434769 86.290604 15.590506 -66.755241 
		85.467018 21.945692 -68.503571 89.344604 23.836512 -70.692146 89.155464 16.257484 
		-73.232735 83.378044 16.556236 -45.548218 97.889397 -0.77685189 -71.433235 82.756943 
		16.210396 -70.867912 83.691078 26.448725 -39.873962 99.699265 8.2501717 -35.621181 
		90.441231 9.3247433 -28.698503 108.40843 6.6549702 -35.997921 101.75671 -3.7692995 
		-33.156746 103.64297 8.467001 -30.709078 108.02695 -4.951622 -68.765488 82.214035 
		24.596281 -41.866238 98.775734 -1.9723377 -36.076424 89.18045 -1.6551111 -52.60051 
		95.40773 20.023954 -59.397438 95.088936 5.5304193 -49.329865 82.144905 20.165724 
		-56.601353 82.370361 5.7876234 -63.113049 85.882141 19.107025 -65.263199 86.001938 
		14.356371 -64.015289 90.916824 19.385237 -65.645401 90.638321 15.248322 -69.207375 
		86.109612 16.732832 -67.540565 85.611427 21.58271 -70.951797 89.036842 17.83592 -69.934776 
		89.243973 21.829199 -71.551262 81.810921 23.113276 -72.718651 81.922066 18.996536 
		-74.70932 82.783363 20.376402 -73.974579 82.705215 23.288406 -61.221478 85.697884 
		17.886997 -63.725193 85.564819 13.399028 -56.895184 85.464035 14.975576 -59.0779 
		84.019936 11.046705 -53.41116 87.487198 9.8630629 -51.816406 87.366776 12.865568 
		-61.259682 86.420715 23.363626 -67.188927 86.305016 10.194223 -67.275452 90.359787 
		11.11142 -62.385227 91.195381 23.522135 -50.22168 87.246368 15.868078 -50.874557 
		92.940399 15.085804 -55.604332 92.167824 6.0816598 -53.076973 90.092651 22.245573 
		-67.000221 89.560181 26.15456 -64.765633 85.536591 25.924887 -70.884476 89.040154 
		13.09697 -69.238327 84.152878 28.66993 -70.104965 86.221642 11.949101 -73.821564 
		83.85891 14.013885 -66.038063 86.012268 9.3046684 -59.040375 86.835503 22.32036 -59.497833 
		91.930191 21.958969 -65.362167 91.132805 9.4868822 -54.815811 83.315979 18.929886 
		-55.114929 92.744766 19.246933 -61.515717 85.197853 6.8421774 -61.21978 92.009773 
		6.7233229 -57.122074 90.21682 23.785795 -72.115036 83.229561 12.979988 -66.737831 
		82.68576 27.55382 -55.005878 87.607597 6.8605609 0.7179777 65.35025 20.144918;
	setAttr -s 415 ".vt";
	setAttr ".vt[0:165]"  -0.55545735 -0.036294952 0.96550977 -0.4898012 0.11225892 0.97153008
		 -0.51847291 -0.037271213 0.81840461 -0.44871372 0.1113566 0.82365561 -0.56780863 0.016597735 0.87624198
		 -0.43218282 -0.061579991 0.87599087 -0.68396664 0.22305875 0.82908821 -0.73720622 0.077360243 0.83306921
		 -0.58876109 0.18612795 0.90402949 -0.6293323 0.015665468 0.92025441 -0.63226247 0.016172871 0.85214025
		 -0.56888837 0.14098762 0.92885751 -0.56592667 0.13687387 0.83452857 -0.67034614 0.043216106 0.91176021
		 -0.61228347 0.16802922 0.92098218 -0.60775411 0.17113397 0.8700664 -0.67703819 0.040881682 0.86053151
		 -0.75410259 0.087763183 0.83946675 -0.71730447 0.067349575 0.86288989 -0.7087239 0.2343677 0.84387243
		 -0.72502255 0.079111293 0.89119262 -0.47416839 -0.058755737 0.97830641 -0.6644398 0.20705292 0.85743642
		 -0.68656445 0.20975226 0.89769936 -0.13063966 -0.10700634 0.036672991 -0.2104544 -0.17346334 0.04054375
		 -0.1438615 -0.11445044 0.0014246458 -0.22540316 -0.16381526 0.0049829576 -0.18147098 0.09643051 0.25805205
		 -0.28503126 0.063113555 0.26273578 -0.27123368 -0.055814061 0.30126333 -0.15100224 -0.059145279 0.26230854
		 -0.1566595 -0.091210172 0.097764783 -0.21136646 -0.033047862 0.095193498 -0.29692838 -0.088450864 0.0001339375
		 -0.14599286 -0.032903098 -0.00066443381 -0.28205389 -0.0033277178 0.058309607 -0.2082321 0.038760658 0.058510661
		 -0.41798767 0.031704552 0.99730968 -0.37588096 0.041525453 0.90482759 -0.26264131 -0.059824344 0.10702153
		 -0.19795556 -0.1303241 0.1092272 -0.23559408 0.014068245 0.16098008 -0.1463134 -0.040933616 0.18194334
		 -0.27482268 -0.035742201 0.17362212 -0.20138711 -0.098214589 0.19532256 -0.17583451 -0.0057471571 0.30004877
		 -0.10421137 -0.13746487 0.54754061 -0.23637541 0.02694335 0.56868488 -0.22058992 -0.082830764 0.55826688
		 -0.28331566 -0.055675298 0.37507448 -0.28725594 0.056019463 0.39586395 -0.24446622 -0.016078807 1.09485209
		 -0.20772342 0.061211631 0.92993087 -0.24687164 -0.10170402 1.091482639 -0.25345698 -0.11922818 0.89124578
		 -0.083905354 0.048893254 1.11160922 -0.082666628 -0.11880568 1.15635562 -0.23648521 0.086091474 0.85012197
		 -0.22404325 -0.053776782 0.80429018 -0.099192105 0.049584016 1.20107222 -0.096389949 -0.10200657 1.23719394
		 -0.3417078 0.11922028 6.8900635e-011 -0.21002164 0.1668295 6.8900635e-011 -0.30501112 0.080419742 0.043775998
		 -0.22854003 0.11076953 0.047343712 -0.30733955 0.016621972 1.084250569 -0.15862004 -0.1716519 0.92210144
		 -0.13009311 0.11451642 1.03515327 -0.1497249 -0.14148401 1.090278864 -0.16069534 0.12225787 0.72955251
		 -0.18631056 -0.012378417 0.75455344 -0.10680299 -0.087604649 0.78062141 -0.14025024 -0.10401215 0.37522304
		 -0.37961105 -0.088296428 1.016684175 -0.13953529 0.14801368 0.89001149 -0.35148057 0.034267485 1.03677237
		 -0.32724625 -0.099493705 1.079274535 -0.26095387 0.046779573 0.9538123 -0.24412756 -0.079965733 0.92230439
		 -0.12154684 -0.020581115 1.21910834 -0.54871064 0.17071177 0.90263361 -0.23562849 0.039600704 1.042620063
		 -0.24054748 -0.14128225 1.046442389 -0.11484265 -0.051310118 1.14061522 -0.43771318 -0.070623145 0.98705113
		 -0.38038826 -0.068410158 0.89112043 -0.2490963 0.082102157 0.41051701 -0.14190897 0.15430748 0.74808502
		 -0.13639408 0.026419593 0.45697421 -0.14294535 -0.13726448 0.82305032 -0.18206173 0.092388213 0.31763002
		 -0.27241516 0.071061164 0.309791 -0.26377052 -0.030077893 0.32052669 -0.13316405 0.20213096 0.37174174
		 -0.066747531 0.05063187 0.4992688 -0.1848087 0.054043539 0.54836744 -0.21561746 -0.056680433 0.51933986
		 -0.087650001 -0.059848472 0.47718623 -0.086739883 0.16078727 0.53532529 -0.03631014 0.12096958 0.52993995
		 -0.24766265 0.017832417 0.81906343 -0.037609335 -0.11504172 0.39365005 -0.24503025 -0.022277348 1.11096549
		 -0.2472975 -0.088080131 1.1073935 -0.12357701 -0.088899389 0.71374053 -0.17688197 0.089439064 0.67540681
		 -0.20095108 -0.025556769 0.69109261 -0.13343167 -0.10987452 0.77263701 -0.19203906 0.12115262 0.72087014
		 -0.22134516 -0.012697153 0.74629962 -0.22402863 0.10694306 0.93665808 -0.54399312 0.14902493 0.95556754
		 -0.61128938 0.0040431842 0.95092982 -0.51161045 0.14911637 0.82294023 -0.58360541 0.0053434987 0.82375705
		 -0.21104182 0.03510787 0.62171042 -0.22566935 -0.071778618 0.66455495 -0.13207886 -0.10563594 0.6371085
		 -0.20569691 -0.075141661 0.61682612 -0.21189027 0.07314758 0.65631008 -0.1445255 -0.11993852 0.69071901
		 -0.12900981 -0.093547866 0.6896016 -0.17975017 0.080603614 0.66034186 -0.19496492 -0.035456218 0.67280501
		 -0.22363408 -0.074619748 0.89852673 -0.12733594 -0.23928325 1.36496162 -0.10823242 -0.19916806 1.18913496
		 -0.23864469 -0.027656991 1.35546315 -0.19205092 -0.025650442 1.15838957 -0.10438338 0.15020409 1.11596417
		 -0.12210894 0.20190506 1.34445024 -0.096811138 -0.18893394 1.55678654 -0.1753488 -0.024496794 1.55678654
		 -0.086803697 0.14174376 1.5553087 -0.11778198 0.1981871 1.37625575 -0.036978573 0.23839889 1.3427316
		 -0.037363745 0.22869489 1.37498426 -0.15499276 0.15820868 1.34668875 -0.15133998 0.15025431 1.37834489
		 -0.14146762 0.13987903 1.34271657 -0.10858379 0.18357542 1.34047782 -0.10425697 0.17985748 1.37228382
		 -0.13781494 0.13192466 1.37437248 -0.023453563 0.22006926 1.3387593 -0.023838593 0.21036524 1.37101209
		 -0.16675618 -0.024534201 1.15838957 -0.091314465 0.12732504 1.11596417 -0.094626829 -0.1743753 1.18913496
		 0.13991253 -0.12428723 0.033583075 0.22702752 -0.18065418 0.040684327 0.15467611 -0.12672272 -0.00027953865
		 0.24135312 -0.16982186 0.0053509451 0.14691165 0.088815473 0.25261468 0.25424182 0.073506162 0.26284176
		 0.25800622 -0.04643219 0.30387008 0.1421659 -0.070350647 0.2591621 0.16192502 -0.098253958 0.095126756
		 0.21012369 -0.032324322 0.094579056 0.30942112 -0.092595421 0.00065560144 0.15742767 -0.038636006 -0.00071647199
		 0.29164565 -0.0012664462 0.058833346 0.21790344 0.03939338 0.058625825 0.26540923 -0.053145539 0.10841375
		 0.20880389 -0.13236895 0.1083101 0.21902487 0.016729288 0.16009957;
	setAttr ".vt[166:331]" 0.1393474 -0.052658699 0.17725512 0.26541704 -0.025642073 0.17533842
		 0.20251815 -0.099787436 0.19416204 0.15523031 -0.0121628 0.29953688 -0.011422338 -0.0995671 0.42156145
		 -0.031089764 0.074667528 0.39326105 0.093739167 -0.13394099 0.55392498 0.21020611 0.054274078 0.57366538
		 0.20362061 -0.065739229 0.55903924 0.26587471 -0.043379914 0.37952203 0.25434077 0.072124451 0.3948606
		 0.22127026 -0.016078774 1.09485209 0.18452744 0.061211657 0.92993087 0.22367565 -0.10170399 1.091482639
		 0.23026104 -0.11922815 0.89124578 -0.015658662 -0.13677195 0.58768404 -0.011639102 0.17110264 0.89418119
		 -0.011597999 -0.20163082 0.98241806 -0.011609847 0.075972587 1.10649323 0.059447076 -0.11880568 1.15635562
		 0.060685731 0.048893623 1.11160922 0.19705443 0.086091504 0.85012197 0.19859053 -0.05380385 0.80127484
		 -0.011597978 0.15879099 1.0099031925 0.075959578 0.049584031 1.20107222 -0.011616332 0.094898865 1.18369889
		 0.073157281 -0.10200657 1.23719394 0.35387918 0.11364284 2.1985906e-010 0.222193 0.16125207 2.1985905e-010
		 0.31535047 0.081254885 0.043992933 0.23940215 0.11076955 0.047343712 0.13542408 -0.17165187 0.92210144
		 -0.011597984 -0.18938103 1.069448113 0.10689709 0.1145168 1.03515327 0.12652895 -0.14148399 1.090278864
		 0.13709696 0.12174319 0.73662925 -0.011240411 0.16162425 0.71245825 0.16103046 -0.012978729 0.76280755
		 -0.013676859 -0.11006498 0.79522359 0.08011499 -0.087927699 0.78506339 0.12684134 -0.10947081 0.37812921
		 0.11371423 0.1494624 0.89282399 0.23775792 0.04677961 0.9538123 0.22093162 -0.079965703 0.92230439
		 0.098316245 -0.020581096 1.21910834 0.21243253 0.039600737 1.042620063 0.21735151 -0.14128222 1.046442389
		 0.09162309 -0.051310103 1.14061522 0.21405347 0.093112595 0.40759188 0.11729129 0.15381187 0.76774347
		 -0.012421581 0.18322124 0.75162888 0.10665367 0.024665786 0.45373076 -0.014415452 -0.15788364 0.82372385
		 0.099566557 -0.12917586 0.82518941 0.14594908 0.08682096 0.31132612 0.23851532 0.079857826 0.30821377
		 0.24516347 -0.021589421 0.32339793 0.10662563 0.19757184 0.37928945 0.032464862 0.039592303 0.49223381
		 0.16014415 0.083759323 0.54252714 0.19629712 -0.040184978 0.52182442 0.071847752 -0.067016944 0.47760829
		 0.033453502 0.1624978 0.52854812 -0.012000888 0.00022557953 0.4112373 -0.011597978 -0.20229307 1.087309599
		 0.213719 0.017832451 0.81906343 0.018488394 -0.12505007 0.39334407 0.22183421 -0.02227696 1.11096549
		 0.22410153 -0.088080093 1.1073935 0.1089966 -0.095884919 0.72995299 -0.0069235601 -0.11682028 0.72267663
		 0.15463744 0.091713652 0.68284953 0.17978626 -0.024174552 0.70096326 -0.0072814352 0.1472843 0.65480518
		 0.1074925 -0.11029088 0.77836239 -0.013290311 -0.13240173 0.78737473 0.17657983 0.12051554 0.72962993
		 0.2041823 -0.013432588 0.75641179 -0.010760988 0.17821753 0.70353192 0.20083266 0.1069431 0.93665808
		 -0.011597977 0.15499525 0.98957527 0.15885878 0.079023704 0.62585086 -0.012809846 0.13945629 0.58974415
		 0.20291233 -0.035982288 0.69428694 0.1047257 -0.098835379 0.66596401 -0.0017460893 -0.10950683 0.65624535
		 0.18407507 -0.028347962 0.65256613 0.17133817 0.097552747 0.6743896 -0.0052225767 -0.13484171 0.70928651
		 0.1188572 -0.11484955 0.71866739 -0.0033614512 0.16877392 0.63939357 -0.0091280751 0.1462709 0.64397442
		 0.20171824 -0.08554855 0.89600003 0.10410161 -0.23928325 1.36496162 0.084998235 -0.19916806 1.18913496
		 0.2154105 -0.027656958 1.35546315 0.16881661 -0.025650404 1.15838957 0.081149057 0.15020412 1.11596417
		 0.13175844 0.1582087 1.34668875 0.098874614 0.20190507 1.34445024 -0.011617159 0.25325733 1.34221697
		 -0.011617159 0.18309116 1.10134006 0.073576815 -0.18893401 1.55678666 0.15781692 -0.024496775 1.55678654
		 0.063569367 0.14174378 1.5553087 -0.011617154 0.16249564 1.55678666 -0.011617154 -0.018952094 1.57687438
		 0.12810579 0.15025434 1.37834489 0.094547659 0.19818716 1.37625575 -0.011617159 0.23945586 1.37457013
		 0.013744392 0.23839889 1.3427316 0.014129421 0.22869489 1.37498426 0.11823329 0.13987903 1.34271657
		 0.085349604 0.18357544 1.34047782 0.081022643 0.17985748 1.37228382 0.11458062 0.13192467 1.37437248
		 0.0002192417 0.22006926 1.3387593 0.00060440972 0.21036524 1.37101209 0.071392491 -0.1743753 1.18913496
		 0.14352199 -0.024534186 1.15838957 0.068080142 0.12732504 1.11596417 -0.011617159 0.15572463 1.10133994
		 -0.57373387 0.0092640128 0.92177087 -0.52690446 0.099391744 0.93039793 -0.52044034 0.10664581 0.87353015
		 0.22024111 -0.021084573 1.11061954 -0.64087152 0.18358894 0.91378969 -0.68928957 0.059385784 0.90419173
		 -0.68843275 0.049807385 0.86354822 -0.62972748 0.18152617 0.86602241 -0.53622973 0.076629736 0.87443405
		 -0.55201936 0.046613719 0.87533814 -0.60812575 0.058104552 0.84078038 -0.58651459 0.097541615 0.85561574
		 -0.65413851 0.081784621 0.85646605 -0.62934923 0.12668212 0.85824567 -0.7556175 0.18040231 0.82885617
		 -0.76289219 0.15128717 0.82934654 -0.7431826 0.13740095 0.82059467 -0.73162425 0.17856137 0.81989479
		 -0.71561944 0.1664627 0.89410436 -0.72568905 0.12650523 0.89163351 -0.69191444 0.16363427 0.85775065
		 -0.70841753 0.11518046 0.86224794 -0.6731503 0.10078683 0.90739107 -0.65701073 0.14218794 0.91059011
		 -0.66936636 0.091402732 0.86093342 -0.64807773 0.13890204 0.86021042 -0.70404232 0.19343323 0.82407469
		 -0.72485864 0.21210723 0.83903188 -0.73045558 0.10962027 0.82866561 -0.7482726 0.11314114 0.83491182
		 -0.72311819 0.11073114 0.89266199 -0.70144916 0.18654791 0.89531153 -0.68413895 0.16725002 0.85634267
		 -0.70076799 0.10377418 0.86394382 -0.5877713 0.19923171 0.88627559 -0.56716192 0.16796808 0.84711212
		 -0.55088222 0.19540875 0.86699951 -0.5953179 0.21513657 0.86171091 -0.57691181 0.18861254 0.82825041
		 -0.61048645 0.19202815 0.84643066 -0.56297016 0.21211246 0.84528172 -0.58401906 0.20439845 0.8191995
		 -0.61181176 0.20676103 0.8335551 -0.57539368 0.23012988 0.82514566;
	setAttr ".vt[332:414]" -0.60221016 0.23218076 0.83810782 0.53226131 -0.036294866 0.96550977
		 0.46660516 0.11225899 0.97153008 0.49527702 -0.037271142 0.81840461 0.42551774 0.11135667 0.82365561
		 0.57901406 0.23218083 0.83810782 0.40898687 -0.061579917 0.87599087 0.55219769 0.23012994 0.82514566
		 0.58861578 0.20676111 0.8335551 0.56082308 0.20439856 0.8191995 0.53977424 0.21211256 0.84528172
		 0.58729041 0.19202825 0.84643066 0.55371588 0.18861264 0.82825041 0.57212192 0.21513666 0.86171091
		 0.52768624 0.19540882 0.86699951 0.54396594 0.16796815 0.84711212 0.56457531 0.1992318 0.88627559
		 0.67757201 0.10377426 0.86394382 0.66094303 0.16725013 0.85634267 0.67825317 0.18654799 0.89531153
		 0.69992226 0.11073124 0.89266199 0.72507662 0.11314125 0.83491182 0.45097244 -0.058755662 0.97830641
		 0.70725977 0.10962038 0.82866561 0.70166254 0.21210733 0.83903188 0.39479172 0.031704612 0.99730968
		 0.35268497 0.041525505 0.90482759 0.2841436 0.016622016 1.084250569 0.35641506 -0.088296354 1.016684175
		 0.32828462 0.034267537 1.03677237 0.30405027 -0.099493667 1.079274535 0.68084639 0.19343333 0.82407469
		 0.41451719 -0.07062307 0.98705113 0.35719231 -0.068410106 0.89112043 0.52079713 0.14902501 0.95556754
		 0.58809346 0.0040432718 0.95092982 0.4884145 0.14911643 0.82294023 0.56040943 0.0053435862 0.82375705
		 0.62488168 0.13890213 0.86021042 0.64617032 0.091402821 0.86093342 0.63381475 0.14218804 0.91059011
		 0.64995444 0.10078691 0.90739107 0.68522155 0.11518057 0.86224794 0.66871846 0.16363439 0.85775065
		 0.70249307 0.12650532 0.89163351 0.69242352 0.16646281 0.89410436 0.70842832 0.17856148 0.81989479
		 0.71998662 0.13740107 0.82059467 0.73969626 0.15128726 0.82934654 0.73242158 0.1804024 0.82885617
		 0.60615325 0.12668221 0.85824567 0.63094252 0.081784718 0.85646605 0.56331867 0.097541705 0.85561574
		 0.5849297 0.058104638 0.84078038 0.52882338 0.046613798 0.87533814 0.51303375 0.07662981 0.87443405
		 0.6065315 0.18152627 0.86602241 0.66523689 0.049807485 0.86354822 0.66609359 0.059385885 0.90419173
		 0.61767554 0.18358903 0.91378969 0.49724436 0.10664587 0.87353015 0.50370848 0.099391803 0.93039793
		 0.55053794 0.0092640901 0.92177087 0.5255146 0.17071186 0.90263361 0.66336858 0.20975237 0.89769936
		 0.64124388 0.20705301 0.85743642 0.70182651 0.07911139 0.89119262 0.68552804 0.23436779 0.84387243
		 0.69410861 0.067349687 0.86288989 0.73090661 0.087763295 0.83946675 0.65384221 0.040881775 0.86053151
		 0.58455819 0.17113404 0.8700664 0.58908749 0.16802929 0.92098218 0.64715016 0.043216202 0.91176021
		 0.54273081 0.13687393 0.83452857 0.54569238 0.14098769 0.92885751 0.60906649 0.016172957 0.85214025
		 0.60613644 0.015665554 0.92025441 0.56556511 0.18612804 0.90402949 0.71401024 0.077360347 0.83306921
		 0.66077065 0.22305885 0.82908821 0.54461265 0.016597813 0.87624198 -0.0071086772 0.14722876 0.65497482;
	setAttr -s 892 ".ed";
	setAttr ".ed[0:165]"  164 157 0 20 18 0 294 293 0 44 45 0 122 121 0 254 236 0
		 236 122 0 32 35 0 35 37 0 37 32 0 147 287 0 287 191 0 15 8 0 8 322 0 322 15 0 6 314 0
		 315 19 0 19 6 0 44 30 0 30 29 0 29 44 0 25 34 0 34 27 0 118 121 0 121 117 0 119 118 0
		 91 92 0 92 96 0 96 95 0 120 123 0 257 256 0 15 14 0 414 257 0 257 123 0 106 414 0
		 43 42 0 152 150 0 150 149 0 42 44 0 152 151 0 160 159 0 164 168 0 168 166 0 166 157 0
		 41 34 0 26 35 0 35 24 0 167 168 0 164 163 0 4 288 0 9 10 0 10 4 0 45 43 0 254 251 0
		 250 255 0 33 32 0 173 174 0 175 176 0 246 199 0 199 207 0 207 182 0 182 246 0 197 219 0
		 219 188 0 101 125 0 53 58 0 275 277 0 276 266 0 191 190 0 37 63 0 65 37 0 162 161 0
		 34 64 0 62 34 0 13 16 0 16 10 0 57 230 0 230 185 0 185 57 0 279 278 0 265 279 0 29 28 0
		 28 42 0 42 29 0 105 236 0 236 241 0 241 108 0 77 83 0 83 54 0 54 77 0 52 82 0 82 66 0
		 252 250 0 172 174 0 174 252 0 68 111 0 82 68 0 30 45 0 45 31 0 219 205 0 52 68 0
		 69 54 0 84 56 0 56 103 0 103 84 0 172 232 0 232 206 0 78 82 0 20 17 0 7 18 0 207 245 0
		 187 215 0 215 207 0 89 102 0 102 73 0 73 89 0 89 94 0 94 229 0 229 89 0 169 156 0
		 220 221 0 221 154 0 154 153 0 153 156 0 169 220 0 220 153 0 169 227 0 227 224 0 224 220 0
		 224 225 0 225 221 0 225 226 0 222 221 0 87 48 0 48 99 0 1 38 0 3 1 0 118 251 0 254 121 0
		 49 119 0 48 49 0 34 35 0 285 286 0 286 263 0 262 285 0 181 47 0 47 102 0 49 50 0
		 47 49 0 171 229 0 73 50 0 50 89 0 51 87 0 87 89 0 89 51 0 87 94 0 229 170 0 200 197 0
		 197 180 0 104 69 0 69 57 0 57 104 0 104 84 0 55 101 0 101 59 0 59 55 0;
	setAttr ".ed[166:331]" 51 48 0 222 226 0 226 227 0 169 222 0 229 102 0 234 179 0
		 71 59 0 59 70 0 88 101 0 101 58 0 218 219 0 183 218 0 244 242 0 237 239 0 239 244 0
		 72 108 0 241 204 0 203 205 0 205 240 0 240 243 0 243 203 0 201 242 0 244 202 0 240 235 0
		 242 243 0 243 238 0 238 237 0 237 242 0 111 58 0 53 111 0 82 111 0 53 82 0 237 253 0
		 253 256 0 257 237 0 86 85 0 85 21 0 21 5 0 246 68 0 68 189 0 131 141 0 141 144 0
		 105 108 0 107 105 0 145 142 0 142 135 0 269 273 0 273 270 0 100 228 0 171 100 0 47 73 0
		 244 414 0 109 244 0 39 86 0 86 5 0 5 39 0 170 232 0 107 110 0 110 109 0 109 106 0
		 106 107 0 56 60 0 60 191 0 191 184 0 61 192 0 284 148 0 281 280 0 280 274 0 100 99 0
		 248 100 0 173 247 0 120 117 0 117 124 0 176 214 0 214 173 0 173 176 0 247 248 0 296 299 0
		 290 296 0 119 117 0 116 119 0 125 55 0 83 79 0 125 83 0 126 259 0 259 268 0 268 132 0
		 267 136 0 136 266 0 79 86 0 139 134 0 172 181 0 181 232 0 275 137 0 137 271 0 271 275 0
		 134 133 0 133 272 0 272 134 0 133 132 0 132 272 0 51 50 0 271 134 0 46 91 0 91 95 0
		 95 98 0 98 46 0 36 37 0 273 261 0 216 88 0 88 75 0 75 182 0 182 216 0 270 274 0 274 277 0
		 277 271 0 271 270 0 129 146 0 146 148 0 148 127 0 283 280 0 280 279 0 279 282 0 265 276 0
		 278 281 0 281 273 0 273 264 0 264 278 0 29 92 0 185 213 0 213 210 0 210 192 0 287 267 0
		 231 187 0 187 178 0 287 286 0 190 286 0 285 192 0 210 285 0 146 61 0 61 148 0 159 161 0
		 161 163 0 164 159 0 32 41 0 41 25 0 7 316 0 81 11 0 160 157 0 157 162 0 162 160 0
		 265 263 0 263 267 0 267 276 0 81 8 0 8 14 0 14 11 0 154 155 0 155 167 0 43 32 0 152 159 0
		 33 37 0 196 195 0 193 194 0 30 31 0 31 46 0;
	setAttr ".ed[332:497]" 158 157 0 166 165 0 36 34 0 41 40 0 40 36 0 80 61 0
		 40 44 0 42 33 0 33 40 0 299 301 0 301 15 0 15 12 0 12 299 0 154 167 0 167 165 0 48 116 0
		 248 99 0 118 47 0 181 251 0 164 150 0 150 159 0 167 163 0 163 158 0 158 165 0 21 38 0
		 1 0 0 260 284 0 94 99 0 171 94 0 149 160 0 160 151 0 151 149 0 201 203 0 156 166 0
		 25 27 0 27 26 0 26 24 0 24 25 0 79 74 0 158 162 0 38 85 0 85 74 0 74 76 0 112 1 0
		 3 114 0 76 66 0 78 76 0 67 90 0 90 218 0 183 67 0 67 69 0 69 83 0 83 55 0 190 210 0
		 213 186 0 186 190 0 185 192 0 84 80 0 312 294 0 294 18 0 18 321 0 162 194 0 194 160 0
		 159 195 0 195 161 0 183 197 0 198 183 0 200 185 0 198 69 0 110 71 0 71 70 0 70 109 0
		 154 165 0 165 153 0 77 66 0 202 70 0 216 202 0 80 146 0 146 147 0 147 60 0 60 80 0
		 52 66 0 199 245 0 155 156 0 156 168 0 168 155 0 77 74 0 79 78 0 78 53 0 53 125 0
		 125 79 0 211 199 0 199 177 0 212 179 0 179 200 0 200 212 0 213 233 0 233 186 0 84 57 0
		 57 61 0 215 216 0 178 211 0 211 208 0 62 64 0 64 65 0 65 63 0 63 62 0 90 72 0 72 204 0
		 204 218 0 217 206 0 232 217 0 209 258 0 258 178 0 178 208 0 217 229 0 229 223 0 223 217 0
		 3 39 0 5 2 0 30 93 0 93 92 0 238 249 0 93 46 0 98 97 0 97 93 0 97 96 0 250 251 0
		 172 250 0 228 173 0 223 228 0 261 259 0 260 262 0 311 14 0 14 292 0 292 311 0 253 249 0
		 249 252 0 252 247 0 247 253 0 171 223 0 217 175 0 176 217 0 217 214 0 223 214 0 56 68 0
		 200 234 0 213 234 0 234 233 0 185 234 0 180 188 0 188 231 0 215 231 0 232 229 0 230 198 0
		 198 200 0 200 230 0 56 184 0 184 189 0 188 203 0 201 188 0 265 264 0 264 263 0 126 128 0
		 128 129 0 129 127 0;
	setAttr ".ed[498:663]" 39 38 0 38 76 0 78 39 0 241 240 0 75 68 0 41 45 0 245 178 0
		 187 245 0 245 211 0 23 22 0 147 130 0 246 189 0 0 113 0 115 2 0 2 0 0 3 2 0 257 239 0
		 228 248 0 122 105 0 124 122 0 172 206 0 206 175 0 175 174 0 90 59 0 256 248 0 248 116 0
		 116 120 0 120 256 0 184 186 0 186 199 0 199 189 0 235 236 0 254 255 0 126 132 0 222 155 0
		 212 180 0 258 212 0 209 212 0 258 180 0 180 231 0 231 258 0 238 235 0 235 255 0 255 249 0
		 260 259 0 126 127 0 127 260 0 267 266 0 138 131 0 130 138 0 273 274 0 137 135 0 135 134 0
		 270 272 0 272 269 0 269 270 0 271 272 0 268 269 0 272 268 0 124 107 0 106 123 0 123 124 0
		 275 266 0 137 136 0 136 144 0 144 145 0 145 137 0 140 143 0 142 141 0 277 283 0 283 282 0
		 282 276 0 276 277 0 267 130 0 130 131 0 131 136 0 139 135 0 142 143 0 143 139 0 264 261 0
		 261 262 0 262 263 0 138 140 0 140 141 0 129 130 0 215 201 0 201 202 0 21 0 0 285 284 0
		 284 192 0 318 317 0 32 24 0 305 304 0 303 302 0 35 63 0 36 64 0 69 230 0 75 111 0
		 113 112 0 112 114 0 114 115 0 115 113 0 204 205 0 149 157 0 162 196 0 196 194 0 159 193 0
		 193 195 0 295 292 0 72 71 0 110 108 0 88 58 0 102 170 0 170 181 0 181 102 0 31 28 0
		 28 91 0 31 43 0 43 28 0 153 166 0 52 54 0 54 104 0 104 103 0 103 68 0 52 103 0 67 55 0
		 199 291 0 291 233 0 233 177 0 319 311 0 292 23 0 23 319 0 300 16 0 312 300 0 7 17 0
		 17 317 0 301 313 0 313 295 0 295 15 0 301 300 0 312 313 0 20 293 0 293 310 0 318 20 0
		 307 310 0 310 311 0 306 307 0 322 81 0 324 322 0 289 11 0 11 9 0 9 288 0 288 289 0
		 23 19 0 14 13 0 13 9 0 13 310 0 313 320 0 320 22 0 22 295 0 312 309 0 309 308 0 300 298 0
		 6 22 0 10 298 0 298 297 0;
	setAttr ".ed[664:829]" 297 4 0 298 299 0 296 297 0 13 293 0 294 16 0 314 320 0
		 320 319 0 319 315 0 315 314 0 308 306 0 306 311 0 311 313 0 313 308 0 302 306 0 308 305 0
		 305 302 0 303 304 0 304 309 0 309 307 0 307 303 0 318 310 0 310 312 0 312 321 0 321 318 0
		 321 316 0 316 317 0 290 81 0 81 289 0 289 290 0 290 324 0 324 81 0 325 327 0 327 15 0
		 323 15 0 327 326 0 324 328 0 328 325 0 325 322 0 324 323 0 323 326 0 326 328 0 332 331 0
		 329 331 0 331 328 0 325 332 0 332 330 0 330 327 0 330 329 0 329 326 0 12 323 0 290 12 0
		 406 392 0 392 346 0 346 347 0 347 406 0 344 341 0 340 343 0 343 344 0 340 337 0 345 343 0
		 362 179 0 211 177 0 339 341 0 344 342 0 334 336 0 357 334 0 338 354 0 354 364 0 364 365 0
		 358 338 0 338 365 0 365 358 0 340 341 0 365 209 0 209 208 0 345 337 0 337 339 0 339 342 0
		 342 345 0 344 347 0 348 345 0 342 346 0 346 348 0 343 403 0 333 334 0 357 354 0 360 209 0
		 361 360 0 360 364 0 364 357 0 368 336 0 334 366 0 361 208 0 211 359 0 359 361 0 348 403 0
		 359 362 0 359 177 0 177 179 0 360 362 0 362 212 0 335 338 0 358 336 0 347 403 0 403 406 0
		 358 208 0 361 357 0 357 358 0 392 395 0 395 346 0 333 335 0 335 369 0 367 333 0 335 336 0
		 333 354 0 348 395 0 395 410 0 392 393 0 367 369 0 369 368 0 368 366 0 366 367 0 353 355 0
		 349 352 0 349 371 0 373 352 0 374 376 0 373 371 0 380 376 0 374 379 0 378 375 0 375 377 0
		 377 381 0 370 372 0 350 351 0 356 351 0 350 363 0 405 402 0 402 389 0 389 390 0 390 405 0
		 386 387 0 387 384 0 385 386 0 413 386 0 385 408 0 408 413 0 397 412 0 350 397 0 385 384 0
		 384 382 0 382 383 0 383 385 0 383 402 0 370 375 0 375 374 0 374 371 0 371 370 0 350 370 0
		 370 388 0 373 372 0 372 404 0 404 405 0 405 373 0 390 373 0 407 409 0;
	setAttr ".ed[830:891]" 409 405 0 399 396 0 393 394 0 376 377 0 377 372 0 373 376 0
		 398 352 0 382 370 0 371 383 0 382 403 0 411 355 0 371 389 0 351 396 0 391 372 0 372 351 0
		 397 388 0 388 391 0 391 396 0 396 397 0 388 403 0 404 391 0 378 381 0 381 380 0 380 379 0
		 379 378 0 401 353 0 353 352 0 349 400 0 384 406 0 395 407 0 407 404 0 393 407 0 395 393 0
		 349 355 0 387 392 0 398 400 0 400 411 0 411 401 0 401 398 0 408 402 0 408 409 0 409 394 0
		 394 413 0 410 404 0 404 403 0 403 410 0 412 399 0 399 356 0 356 363 0 363 412 0 348 410 0
		 389 400 0 398 390 0 128 138 0 133 139 0 139 128 0 128 133 0 269 261 0 88 70 0 70 101 0
		 201 231 0 139 138 0;
	setAttr -s 482 -ch 1760 ".fc[0:481]" -type "polyFaces" 
		f 4 0 -602 -38 -352
		mu 0 4 35 110 34 33
		mc 0 4 1221 1185 1195 1192
		f 4 -640 1 -392 2
		mu 0 4 579 36 404 520
		mc 0 4 426 812 911 428
		f 3 3 -98 -19
		mu 0 3 161 861 634
		mc 0 3 62 737 714
		f 4 4 -139 5 6
		mu 0 4 563 388 320 325
		mc 0 4 1007 1042 1067 352
		f 3 7 8 9
		mu 0 3 600 898 60
		mc 0 3 694 681 725
		f 4 -412 10 11 -229
		mu 0 4 994 493 919 301
		mc 0 4 826 1165 418 829
		f 3 12 13 14
		mu 0 3 113 339 635
		mc 0 3 646 776 474
		f 4 15 -673 16 17
		mu 0 4 636 114 115 116
		mc 0 4 617 654 1496 615
		f 3 18 19 20
		mu 0 3 1022 1023 823
		mc 0 3 678 711 674
		f 3 21 22 -367
		mu 0 3 825 202 230
		mc 0 3 702 687 692
		f 4 23 24 -246 25
		mu 0 4 471 338 331 132
		mc 0 4 1056 1041 1044 1059
		f 4 26 27 28 -271
		mu 0 4 317 235 752 940
		mc 0 4 934 148 153 941
		f 4 -526 29 -34 30
		mu 0 4 757 939 758 445
		mc 0 4 1061 1064 1012 992
		f 3 -13 31 -322
		mu 0 3 339 113 134
		mc 0 3 777 647 639
		f 4 32 33 -559 34
		mu 0 4 760 976 761 762
		mc 0 4 1019 994 1011 785
		f 3 35 -83 -617
		mu 0 3 651 763 764
		mc 0 3 698 715 721
		f 4 -40 36 37 -364
		mu 0 4 92 299 1024 1025
		mc 0 4 1176 1184 1191 1194
		f 3 38 -21 -84
		mu 0 3 710 228 478
		mc 0 3 717 679 40
		f 4 39 -363 40 -327
		mu 0 4 781 720 964 711
		mc 0 4 1183 1175 1173 1177
		f 4 -1 41 42 43
		mu 0 4 110 35 203 963
		mc 0 4 1186 1222 1223 1187
		f 3 44 -22 -312
		mu 0 3 553 1026 1027
		mc 0 3 734 688 703
		f 3 -369 45 46
		mu 0 3 201 993 898
		mc 0 3 705 685 682
		f 4 -354 47 -42 48
		mu 0 4 712 90 556 903
		mc 0 4 1217 1171 1225 243
		f 4 49 -650 50 51
		mu 0 4 778 967 133 840
		mc 0 4 6 664 632 622
		f 3 52 -616 -99
		mu 0 3 759 496 742
		mc 0 3 739 700 709
		f 4 -531 53 -460 54
		mu 0 4 65 66 519 841
		mc 0 4 1381 378 374 1408
		f 3 -328 55 -10
		mu 0 3 60 542 600
		mc 0 3 726 722 695
		f 4 -395 -330 -605 -41
		mu 0 4 964 755 288 711
		mc 0 4 1174 1280 1284 1178
		f 4 -242 56 -521 57
		mu 0 4 756 941 942 321
		mc 0 4 1304 1353 1355 1307
		f 4 58 59 60 61
		mu 0 4 615 818 175 204
		mc 0 4 366 1310 309 269
		f 4 62 63 -483 -159
		mu 0 4 897 968 562 472
		mc 0 4 1270 327 1272 1243
		f 4 64 -422 65 -176
		mu 0 4 842 367 843 517
		mc 0 4 973 761 773 923
		f 4 66 -571 67 -561
		mu 0 4 572 662 573 205
		mc 0 4 1119 1442 1423 1091
		f 4 68 -388 -527 -230
		mu 0 4 61 206 158 706
		mc 0 4 831 1274 1262 795
		f 3 69 -438 70
		mu 0 3 60 667 258
		mc 0 3 727 842 840
		f 4 -329 -603 71 -397
		mu 0 4 826 176 322 266
		mc 0 4 1282 1278 1214 1219
		f 3 72 -436 73
		mu 0 3 1028 753 943
		mc 0 3 689 845 848
		f 4 -51 -654 74 75
		mu 0 4 1029 1030 135 707
		mc 0 4 621 633 634 619
		f 3 76 77 78
		mu 0 3 159 107 765
		mc 0 3 801 988 796
		f 4 79 -294 -494 80
		mu 0 4 433 240 775 91
		mc 0 4 1448 1446 1435 1436
		f 3 81 82 83
		mu 0 3 780 1031 1032
		mc 0 3 676 719 60
		f 4 -209 84 85 86
		mu 0 4 509 513 117 557
		mc 0 4 1023 1009 1386 359
		f 3 87 88 89
		mu 0 3 575 995 469
		mc 0 3 854 916 753
		f 3 -414 90 91
		mu 0 3 821 448 247
		mc 0 3 851 759 780
		f 4 92 -461 93 94
		mu 0 4 558 866 434 690
		mc 0 4 1410 1407 1357 260
		f 3 95 -197 96
		mu 0 3 766 402 822
		mc 0 3 888 1032 781
		f 3 97 98 -331
		mu 0 3 867 1033 1034
		mc 0 3 713 64 708
		f 4 -492 -64 99 -184
		mu 0 4 108 494 767 344
		mc 0 4 1298 1273 328 306
		f 3 -91 100 -97
		mu 0 3 822 944 766
		mc 0 3 782 757 889
		f 3 -384 101 -89
		mu 0 3 109 518 680
		mc 0 3 917 99 754
		f 3 102 103 104
		mu 0 3 844 473 965
		mc 0 3 806 791 981
		f 3 105 106 -519
		mu 0 3 1035 449 418
		mc 0 3 254 346 1361
		f 3 107 -198 -421
		mu 0 3 824 1036 43
		mc 0 3 768 778 772
		f 4 108 -633 109 -2
		mu 0 4 36 637 343 404
		mc 0 4 813 653 656 912
		f 4 110 -506 111 112
		mu 0 4 175 323 236 44
		mc 0 4 310 1398 1331 1332
		f 3 113 114 115
		mu 0 3 495 741 474
		mc 0 3 135 975 949
		f 3 116 117 118
		mu 0 3 495 160 435
		mc 0 3 136 819 962
		f 4 -533 -170 119 -416
		mu 0 4 839 920 195 136
		mc 0 4 1202 1346 1227 1196
		f 4 -126 120 121 122
		mu 0 4 740 921 784 860
		mc 0 4 1208 1347 333 1168
		f 4 123 -120 124 125
		mu 0 4 704 1037 1038 268
		mc 0 4 221 1198 1228 331
		f 4 -542 -55 -93 -470
		mu 0 4 639 65 841 577
		mc 0 4 1403 1382 1409 1411
		f 3 -517 -7 -85
		mu 0 3 436 422 231
		mc 0 3 1010 1006 1387
		f 4 126 127 128 -125
		mu 0 4 38 847 253 417
		mc 0 4 1229 340 337 332
		f 4 -129 129 130 -121
		mu 0 4 921 470 960 784
		mc 0 4 1348 1351 338 334
		f 4 -131 131 -168 132
		mu 0 4 1039 1040 969 739
		mc 0 4 1342 1350 1349 1344
		f 4 -360 -156 133 134
		mu 0 4 118 554 415 119
		mc 0 4 960 818 822 69
		f 4 135 -499 -451 136
		mu 0 4 316 900 555 948
		mc 0 4 2 747 751 610
		f 4 -24 137 -54 138
		mu 0 4 1041 1042 519 66
		mc 0 4 185 1057 375 379
		f 4 139 -247 -348 140
		mu 0 4 899 421 598 1043
		mc 0 4 945 1058 1054 943
		f 4 -46 -368 -23 141
		mu 0 4 62 703 401 633
		mc 0 4 49 686 693 47
		f 4 142 143 -580 144
		mu 0 4 237 868 559 458
		mc 0 4 1490 1460 1481 1421
		f 3 -613 145 146
		mu 0 3 264 137 845
		mc 0 3 978 956 66
		f 4 147 -151 -217 148
		mu 0 4 63 901 149 1044
		mc 0 4 72 885 951 947
		f 3 -361 149 -118
		mu 0 3 160 700 435
		mc 0 3 820 937 963
		f 3 150 151 -116
		mu 0 3 474 918 495
		mc 0 3 950 883 137
		f 3 152 153 154
		mu 0 3 869 894 495
		mc 0 3 880 131 138
		f 3 -268 -155 -152
		mu 0 3 918 869 495
		mc 0 3 884 881 139
		f 3 155 -117 -154
		mu 0 3 894 160 495
		mc 0 3 132 821 140
		f 3 -611 -171 156
		mu 0 3 597 1045 1046
		mc 0 3 953 977 966
		f 4 -428 157 158 -534
		mu 0 4 120 483 1047 1048
		mc 0 4 1322 1288 294 1245
		f 3 159 160 161
		mu 0 3 691 782 159
		mc 0 3 984 100 802
		f 3 -621 162 -105
		mu 0 3 560 1049 241
		mc 0 3 982 986 807
		f 3 -162 -431 -163
		mu 0 3 1050 1051 241
		mc 0 3 987 804 808
		f 3 163 164 165
		mu 0 3 819 238 961
		mc 0 3 766 971 83
		f 3 -153 166 -134
		mu 0 3 415 437 119
		mc 0 3 823 882 70
		f 4 167 168 -127 169
		mu 0 4 64 59 1052 1053
		mc 0 4 335 339 1352 251
		f 3 170 -114 -119
		mu 0 3 1054 741 495
		mc 0 3 968 976 141
		f 3 -595 -401 -487
		mu 0 3 602 242 121
		mc 0 3 991 867 863
		f 4 -627 -481 171 -763
		mu 0 4 820 45 884 174
		mc 0 4 1234 1373 1377 1230
		f 3 -102 -160 -620
		mu 0 3 895 776 89
		mc 0 3 755 101 985
		f 3 172 173 -403
		mu 0 3 318 319 972
		mc 0 3 872 84 874
		f 3 -610 174 175
		mu 0 3 46 403 601
		mc 0 3 925 926 160
		f 4 176 -63 -398 177
		mu 0 4 576 968 897 652
		mc 0 4 325 329 1271 859
		f 4 178 -194 179 180
		mu 0 4 37 640 138 112
		mc 0 4 1029 1259 997 356
		f 4 -372 -355 -309 -72
		mu 0 4 322 540 484 266
		mc 0 4 1215 1213 1216 1220
		f 4 -502 -86 -530 -190
		mu 0 4 669 557 117 475
		mc 0 4 1394 360 1388 1385
		f 4 181 -87 182 -441
		mu 0 4 1020 578 49 130
		mc 0 4 868 1021 1030 870
		f 4 183 184 185 186
		mu 0 4 730 476 419 783
		mc 0 4 1296 1294 1392 1395
		f 4 187 -179 188 -585
		mu 0 4 459 207 41 622
		mc 0 4 1299 1260 1027 1473
		f 4 -186 189 -540 -192
		mu 0 4 665 1055 1056 229
		mc 0 4 1397 358 1384 1391
		f 4 190 191 192 193
		mu 0 4 1057 233 21 1058
		mc 0 4 361 362 355 354
		f 3 194 -66 195
		mu 0 3 599 477 67
		mc 0 3 174 924 774
		f 3 196 -196 197
		mu 0 3 196 599 67
		mc 0 3 124 175 775
		f 4 198 199 -31 200
		mu 0 4 777 992 340 666
		mc 0 4 995 1413 1062 993
		f 4 -221 201 202 203
		mu 0 4 902 896 129 93
		mc 0 4 1469 129 921 30
		f 3 204 205 -510
		mu 0 3 345 708 42
		mc 0 3 367 890 894
		f 4 -574 206 207 -563
		mu 0 4 768 342 779 131
		mc 0 4 1088 1102 207 1149
		f 4 208 -609 -224 209
		mu 0 4 1059 1060 561 22
		mc 0 4 165 171 1026 1017
		f 4 -565 210 211 -550
		mu 0 4 638 341 966 208
		mc 0 4 1139 1151 1144 1128
		f 3 -554 212 213
		mu 0 3 58 259 39
		mc 0 3 1488 395 1427
		f 4 214 -463 -473 215
		mu 0 4 413 705 337 962
		mc 0 4 158 1362 1267 939
		f 3 216 -115 -147
		mu 0 3 845 1061 264
		mc 0 3 67 109 979
		f 4 217 -35 -226 218
		mu 0 4 431 871 234 368
		mc 0 4 363 1020 786 787
		f 3 219 220 221
		mu 0 3 985 870 541
		mc 0 3 748 897 7
		f 3 -612 222 -259
		mu 0 3 420 244 450
		mc 0 3 955 952 1371
		f 4 223 224 225 226
		mu 0 4 848 265 1062 1063
		mc 0 4 169 173 172 167
		f 4 227 228 229 -490
		mu 0 4 670 738 432 664
		mc 0 4 790 827 286 794
		f 4 -307 230 -588 231
		mu 0 4 40 20 574 300
		mc 0 4 1155 836 832 1160
		f 4 -292 232 233 -549
		mu 0 4 922 709 846 267
		mc 0 4 1431 1454 1451 1439
		f 3 234 -349 235
		mu 0 3 999 239 668
		mc 0 3 969 156 1049
		f 4 -471 -95 -57 236
		mu 0 4 324 616 942 941
		mc 0 4 1405 1412 1356 1354
		f 4 237 238 -560 -30
		mu 0 4 939 938 315 758
		mc 0 4 1065 1045 1015 1013
		f 3 239 240 241
		mu 0 3 1064 416 1065
		mc 0 3 263 1268 257
		f 4 -200 -472 242 -523
		mu 0 4 414 269 468 521
		mc 0 4 1063 1415 1404 1048
		f 4 243 -345 -715 244
		mu 0 4 270 951 346 672
		mc 0 4 432 630 627 626
		f 4 245 -238 -525 246
		mu 0 4 103 209 143 405
		mc 0 4 183 181 1066 1053
		f 3 -250 247 -385
		mu 0 3 872 803 352
		mc 0 3 920 760 764
		f 3 248 -423 249
		mu 0 3 1066 804 497
		mc 0 3 918 900 763
		f 3 -65 -164 -248
		mu 0 3 1067 271 1068
		mc 0 3 762 974 767
		f 4 250 251 252 -532
		mu 0 4 673 641 122 543
		mc 0 4 1078 1072 1125 1106
		f 3 253 254 -546
		mu 0 3 580 642 827
		mc 0 3 1093 1086 1090
		f 4 -220 -501 -420 255
		mu 0 4 870 985 743 873
		mc 0 4 898 749 771 899
		f 4 -888 -556 -252 -464
		mu 0 4 996 874 50 76
		mc 0 4 1417 1485 1126 1073
		f 3 256 -551 -575
		mu 0 3 23 531 653
		mc 0 3 1131 1112 1130
		f 3 -106 257 258
		mu 0 3 449 1069 534
		mc 0 3 347 255 957
		f 3 259 260 261
		mu 0 3 354 977 485
		mc 0 3 404 1136 1115
		f 3 262 263 264
		mu 0 3 406 347 74
		mc 0 3 1110 1107 1121
		f 3 265 266 -264
		mu 0 3 407 581 94
		mc 0 3 1108 1104 1122
		f 3 -267 -253 -557
		mu 0 3 94 581 875
		mc 0 3 1123 1105 1127
		f 4 267 -148 -141 -167
		mu 0 4 1070 802 899 1071
		mc 0 4 75 74 946 944
		f 3 -555 268 -265
		mu 0 3 74 671 406
		mc 0 3 1124 1114 1111
		f 4 -564 -208 -567 -211
		mu 0 4 385 47 744 220
		mc 0 4 1152 1150 1143 1146
		f 4 269 270 271 272
		mu 0 4 191 603 162 674
		mc 0 4 742 146 152 155
		f 4 -71 -437 -594 273
		mu 0 4 144 369 564 923
		mc 0 4 53 841 847 732
		f 3 274 -578 -293
		mu 0 3 39 225 797
		mc 0 3 1428 1418 1434
		f 4 275 276 277 278
		mu 0 4 814 885 654 272
		mc 0 4 322 133 112 270
		f 4 279 280 281 282
		mu 0 4 853 408 662 351
		mc 0 4 397 1441 1443 1117
		f 4 -233 -291 -80 -288
		mu 0 4 745 522 924 10
		mc 0 4 1453 1455 1447 1450
		f 4 283 284 285 -498
		mu 0 4 723 909 139 623
		mc 0 4 999 1156 1153 1081
		f 4 286 287 288 -569
		mu 0 4 724 1072 1073 486
		mc 0 4 1458 410 409 1456
		f 4 -570 -289 -81 289
		mu 0 4 973 243 433 91
		mc 0 4 1424 1457 1449 1437
		f 4 -287 -568 -281 -234
		mu 0 4 846 284 273 267
		mc 0 4 1452 1459 1445 1440
		f 4 290 291 292 293
		mu 0 4 850 978 446 925
		mc 0 4 408 411 402 389
		f 4 -82 294 -27 -615
		mu 0 4 796 815 235 317
		mc 0 4 720 677 149 935
		f 4 -350 -26 -140 -149
		mu 0 4 1074 123 56 63
		mc 0 4 948 1055 1060 73
		f 4 -389 295 296 297
		mu 0 4 163 926 24 805
		mc 0 4 833 799 318 1286
		f 4 -144 -302 298 -319
		mu 0 4 559 868 460 5
		mc 0 4 1482 1461 1477 1095
		f 4 -446 -539 299 300
		mu 0 4 945 1005 451 754
		mc 0 4 1251 1239 1366 1329
		f 4 301 -303 -69 -12
		mu 0 4 919 746 490 301
		mc 0 4 419 1462 1276 830
		f 4 -143 -305 -386 302
		mu 0 4 1075 836 582 1076
		mc 0 4 417 1492 1285 1275
		f 3 303 -298 304
		mu 0 3 747 1077 862
		mc 0 3 415 834 1287
		f 3 305 306 -285
		mu 0 3 370 1078 1079
		mc 0 3 1158 838 215
		f 4 307 308 -49 309
		mu 0 4 282 604 712 903
		mc 0 4 1179 236 1218 244
		f 4 -590 310 311 -370
		mu 0 4 461 692 487 330
		mc 0 4 707 44 58 704
		f 4 -5 -518 -239 -25
		mu 0 4 388 563 910 184
		mc 0 4 1043 1008 1016 1046
		f 3 -325 -418 -48
		mu 0 3 90 389 556
		mc 0 3 1172 1203 1226
		f 4 -393 -110 312 -689
		mu 0 4 806 252 95 81
		mc 0 4 908 913 657 1502
		f 3 -692 313 -648
		mu 0 3 591 177 140
		mc 0 3 667 1463 636
		f 3 314 315 316
		mu 0 3 409 48 210
		mc 0 3 232 226 238
		f 4 -290 317 318 319
		mu 0 4 565 57 632 590
		mc 0 4 1425 1438 388 392
		f 4 320 321 322 -314
		mu 0 4 177 946 488 140
		mc 0 4 1464 11 638 637
		f 3 -346 323 324
		mu 0 3 1080 371 1081
		mc 0 3 1170 1166 1200
		f 4 -340 -36 325 -56
		mu 0 4 542 763 651 600
		mc 0 4 723 716 699 696
		f 3 -37 326 -353
		mu 0 3 185 828 1082
		mc 0 3 1193 220 231
		f 4 -274 -337 -341 327
		mu 0 4 144 923 214 596
		mc 0 4 54 733 729 724
		f 4 328 -606 329 -604
		mu 0 4 1083 1084 681 111
		mc 0 4 1277 1281 1283 1279
		f 4 -456 -453 330 331
		mu 0 4 1019 927 544 438
		mc 0 4 741 933 41 710
		f 4 332 -44 333 -356
		mu 0 4 725 48 186 655
		mc 0 4 1211 227 1189 1204
		f 4 334 -45 335 336
		mu 0 4 947 1085 553 18
		mc 0 4 51 690 735 730
		f 3 -306 -410 337
		mu 0 3 1086 370 975
		mc 0 3 839 1159 857
		f 4 338 -39 339 340
		mu 0 4 1087 228 710 1088
		mc 0 4 57 680 718 46
		f 3 -618 -406 -334
		mu 0 3 186 75 655
		mc 0 3 1190 1210 1205
		f 4 341 342 343 344
		mu 0 4 1089 293 96 1090
		mc 0 4 438 444 643 628
		f 3 -405 345 346
		mu 0 3 355 986 979
		mc 0 3 1206 223 248
		f 4 -135 347 -524 348
		mu 0 4 118 119 1091 717
		mc 0 4 961 71 1052 1047
		f 4 349 -146 350 -138
		mu 0 4 1092 845 137 618
		mc 0 4 182 68 958 1069
		f 3 -310 351 352
		mu 0 3 282 903 1093
		mc 0 3 1180 245 218
		f 4 -347 353 354 355
		mu 0 4 355 979 1094 1095
		mc 0 4 1207 249 242 230
		f 4 -586 356 -136 357
		mu 0 4 987 835 656 306
		mc 0 4 1037 1467 744 783
		f 4 -587 -145 -465 358
		mu 0 4 726 647 379 886
		mc 0 4 1161 1491 1422 1075
		f 4 359 -235 -216 360
		mu 0 4 11 239 999 394
		mc 0 4 151 157 970 253
		f 3 361 362 363
		mu 0 3 568 409 171
		mc 0 3 216 233 219
		f 4 -188 364 -187 -191
		mu 0 4 207 459 187 439
		mc 0 4 1261 1300 1297 1396
		f 3 -417 365 -43
		mu 0 3 203 785 963
		mc 0 3 1224 1197 1188
		f 4 366 367 368 369
		mu 0 4 1096 232 17 1097
		mc 0 4 35 37 36 34
		f 4 -256 370 -374 -202
		mu 0 4 896 804 440 129
		mc 0 4 130 901 110 922
		f 3 -316 -333 371
		mu 0 3 210 48 725
		mc 0 3 239 228 1212
		f 4 372 373 374 -500
		mu 0 4 656 769 372 624
		mc 0 4 745 127 878 886
		f 4 -598 375 -137 376
		mu 0 4 928 489 316 948
		mc 0 4 670 1035 3 611
		f 4 377 -92 -108 378
		mu 0 4 452 1098 1099 824
		mc 0 4 116 852 779 769
		f 4 379 380 -178 381
		mu 0 4 188 911 224 523
		mc 0 4 93 142 326 860
		f 4 382 383 384 -624
		mu 0 4 188 1100 1101 1102
		mc 0 4 94 865 125 765
		f 4 385 -297 386 387
		mu 0 4 1103 1104 1105 1106
		mc 0 4 285 315 1325 1263
		f 4 388 -231 -432 -79
		mu 0 4 1107 1108 373 524
		mc 0 4 800 287 837 805
		f 4 389 -413 -228 -103
		mu 0 4 508 997 1109 1110
		mc 0 4 809 856 828 80
		f 4 390 391 392 -687
		mu 0 4 32 545 1111 1112
		mc 0 4 1525 906 27 473
		f 4 -142 -74 -439 -593
		mu 0 4 62 633 410 883
		mc 0 4 50 48 849 844
		f 3 393 394 -317
		mu 0 3 210 605 409
		mc 0 3 240 289 234
		f 3 395 396 -308
		mu 0 3 282 218 604
		mc 0 3 1181 291 237
		f 4 397 -158 -488 398
		mu 0 4 1113 1114 483 25
		mc 0 4 273 295 1289 862
		f 3 -78 -489 399
		mu 0 3 765 107 657
		mc 0 3 797 989 1290
		f 4 -383 -382 -399 400
		mu 0 4 1115 188 523 178
		mc 0 4 866 95 861 864
		f 4 -225 401 402 403
		mu 0 4 606 479 988 1012
		mc 0 4 788 1024 105 103
		f 3 404 405 -123
		mu 0 3 87 1116 1117
		mc 0 3 1169 246 1209
		f 4 -375 -419 406 -378
		mu 0 4 624 372 587 829
		mc 0 4 887 879 853 850
		f 4 407 -889 -276 408
		mu 0 4 546 8 1118 916
		mc 0 4 301 876 928 1475
		f 4 409 410 411 412
		mu 0 4 643 348 1119 1120
		mc 0 4 121 213 214 86
		f 4 -90 -619 413 -407
		mu 0 4 1121 933 510 1122
		mc 0 4 855 752 756 92
		f 3 414 -111 -60
		mu 0 3 818 323 175
		mc 0 3 1311 1399 311
		f 3 415 416 417
		mu 0 3 525 1123 1124
		mc 0 3 224 225 250
		f 4 -88 418 -371 -249
		mu 0 4 1125 1126 440 804
		mc 0 4 919 118 111 902
		f 4 419 420 421 422
		mu 0 4 1127 1128 400 863
		mc 0 4 120 119 77 189
		f 3 423 424 -726
		mu 0 3 912 818 658
		mc 0 3 1256 1312 1235
		f 3 425 426 427
		mu 0 3 1129 374 1130
		mc 0 3 1320 1231 1291
		f 3 428 429 -387
		mu 0 3 97 1131 170
		mc 0 3 1326 1374 277
		f 4 430 431 -338 -390
		mu 0 4 1132 1133 1134 1135
		mc 0 4 126 81 87 858
		f 4 -113 432 -279 -61
		mu 0 4 175 44 453 204
		mc 0 4 312 1333 323 271
		f 3 -447 433 434
		mu 0 3 179 280 425
		mc 0 3 1246 1250 1254
		f 4 435 436 437 438
		mu 0 4 498 1136 1137 953
		mc 0 4 88 90 91 89
		f 4 -286 -232 -359 -545
		mu 0 4 623 139 726 886
		mc 0 4 1082 1154 1162 1076
		f 4 439 440 441 -381
		mu 0 4 480 380 1003 528
		mc 0 4 143 107 304 1471
		f 3 442 -107 443
		mu 0 3 980 547 430
		mc 0 3 1336 1359 1369
		f 4 444 445 446 -739
		mu 0 4 749 390 1138 1139
		mc 0 4 1316 1240 265 1249
		f 3 447 448 449
		mu 0 3 1140 98 423
		mc 0 3 324 964 1265
		f 4 -514 450 -222 451
		mu 0 4 865 913 985 541
		mc 0 4 614 609 750 8
		f 4 452 453 -295 -20
		mu 0 4 830 82 1141 1142
		mc 0 4 712 931 929 675
		f 4 -199 -193 454 -469
		mu 0 4 992 777 773 585
		mc 0 4 1414 996 1389 1401
		f 4 455 -273 456 457
		mu 0 4 302 1143 1144 51
		mc 0 4 150 65 942 154
		f 4 -454 -458 458 -28
		mu 0 4 1145 82 180 1146
		mc 0 4 930 932 936 940
		f 4 459 -351 -258 460
		mu 0 4 1147 128 534 1148
		mc 0 4 373 1070 959 256
		f 4 461 -241 -477 462
		mu 0 4 856 1149 416 72
		mc 0 4 341 258 1269 1264
		f 4 463 -543 464 -579
		mu 0 4 949 68 876 104
		mc 0 4 1416 1071 1074 1420
		f 3 465 466 467
		mu 0 3 283 326 499
		mc 0 3 1535 640 424
		f 4 468 469 470 471
		mu 0 4 1150 571 375 1151
		mc 0 4 377 372 376 370
		f 3 -449 -150 472
		mu 0 3 423 98 694
		mc 0 3 1266 965 938
		f 3 -443 473 -520
		mu 0 3 547 980 444
		mc 0 3 1360 1337 1308
		f 3 474 475 -240
		mu 0 3 211 980 31
		mc 0 3 1305 1338 319
		f 3 -474 -475 -58
		mu 0 3 444 980 211
		mc 0 3 1309 1339 1306
		f 3 -476 -450 476
		mu 0 3 31 980 1152
		mc 0 3 320 1340 336
		f 3 -157 -486 -223
		mu 0 3 516 1153 1154
		mc 0 3 252 967 1372
		f 3 -622 -104 477
		mu 0 3 1155 965 473
		mc 0 3 97 983 792
		f 3 -482 -400 478
		mu 0 3 172 765 657
		mc 0 3 1378 798 1292
		f 3 -429 479 480
		mu 0 3 447 77 1156
		mc 0 3 1375 1327 349
		f 3 -480 -296 481
		mu 0 3 1157 77 1158
		mc 0 3 350 1328 276
		f 3 482 483 -538
		mu 0 3 1159 1160 441
		mc 0 3 1244 281 1364
		f 3 -584 484 -891
		mu 0 3 141 181 378
		mc 0 3 1301 1334 1367
		f 3 -448 -444 485
		mu 0 3 1161 980 430
		mc 0 3 343 1341 1370
		f 3 486 487 488
		mu 0 3 1162 1163 906
		mc 0 3 344 296 299
		f 3 -172 -479 -427
		mu 0 3 1164 1165 535
		mc 0 3 1232 1379 1293
		f 4 -478 489 490 -206
		mu 0 4 1166 473 12 1167
		mc 0 4 98 793 274 895
		f 3 491 -365 492
		mu 0 3 1168 1169 625
		mc 0 3 282 303 1302
		f 3 -318 493 494
		mu 0 3 1170 1171 526
		mc 0 3 1479 390 1432
		f 4 -544 495 496 497
		mu 0 4 332 26 314 807
		mc 0 4 1080 1077 1083 1001
		f 4 498 499 -379 500
		mu 0 4 1172 1173 452 824
		mc 0 4 56 55 117 770
		f 4 -577 -566 -581 -892
		mu 0 4 362 989 593 466
		mc 0 4 1135 1148 1141 1099
		f 4 -601 -183 501 -185
		mu 0 4 476 130 49 419
		mc 0 4 1295 871 1031 1393
		f 4 502 -205 -62 -278
		mu 0 4 654 766 125 272
		mc 0 4 113 891 368 272
		f 4 -336 503 -4 -339
		mu 0 4 18 553 861 161
		mc 0 4 731 736 738 63
		f 3 504 -301 505
		mu 0 3 648 1013 857
		mc 0 3 364 1252 1330
		f 3 -434 -505 506
		mu 0 3 786 1013 648
		mc 0 3 1258 1253 365
		f 4 507 -662 -18 -652
		mu 0 4 678 126 792 566
		mc 0 4 661 903 618 616
		f 4 -572 -299 -11 508
		mu 0 4 303 5 460 548
		mc 0 4 1002 1096 1478 1163
		f 3 509 -529 -59
		mu 0 3 808 929 567
		mc 0 3 369 284 1313
		f 4 510 -600 511 512
		mu 0 4 970 349 286 364
		mc 0 4 0 1039 672 612
		f 4 513 -512 -599 -377
		mu 0 4 1174 1175 685 335
		mc 0 4 5 4 673 671
		f 4 -376 -597 -511 -358
		mu 0 4 306 887 219 987
		mc 0 4 784 1036 1040 1038
		f 3 -180 -201 514
		mu 0 3 793 101 376
		mc 0 3 357 998 382
		f 4 -237 -462 515 -243
		mu 0 4 1176 1177 856 1014
		mc 0 4 1406 259 342 1050
		f 4 516 -210 -558 517
		mu 0 4 1178 1179 164 412
		mc 0 4 186 166 1018 1014
		f 4 -94 518 519 520
		mu 0 4 690 434 1180 682
		mc 0 4 261 1358 308 262
		f 4 521 -173 -608 -440
		mu 0 4 480 1181 1182 380
		mc 0 4 144 824 873 108
		f 4 522 523 524 525
		mu 0 4 465 515 1183 1184
		mc 0 4 381 371 180 184
		f 4 -219 -404 -408 -189
		mu 0 4 102 606 1012 713
		mc 0 4 1028 789 104 1474
		f 4 526 527 528 -491
		mu 0 4 809 170 1185 1186
		mc 0 4 275 278 297 896
		f 4 529 -6 530 -541
		mu 0 4 659 325 320 78
		mc 0 4 1383 353 1068 1380
		f 3 -236 -516 -215
		mu 0 3 413 500 705
		mc 0 3 159 1051 1363
		f 4 531 -266 -887 -496
		mu 0 4 361 983 312 215
		mc 0 4 190 197 1109 1085
		f 4 -133 532 -324 -122
		mu 0 4 1187 739 998 1188
		mc 0 4 1343 1345 1201 1167
		f 3 533 -537 534
		mu 0 3 145 683 684
		mc 0 3 317 1242 1238
		f 3 -535 -445 535
		mu 0 3 702 981 327
		mc 0 3 1323 383 1317
		f 3 536 537 538
		mu 0 3 1189 1190 248
		mc 0 3 1241 267 345
		f 4 539 540 541 -455
		mu 0 4 831 1191 1192 146
		mc 0 4 1390 351 380 1402
		f 4 542 -251 543 544
		mu 0 4 83 787 569 173
		mc 0 4 385 384 1079 191
		f 3 545 -68 -320
		mu 0 3 590 950 565
		mc 0 3 393 391 1426
		f 3 546 -573 547
		mu 0 3 124 646 907
		mc 0 3 1097 1101 1004
		f 3 -214 548 -280
		mu 0 3 1193 935 1194
		mc 0 3 1489 1429 403
		f 4 549 550 -269 -261
		mu 0 4 977 1195 1196 485
		mc 0 4 1137 201 200 1116
		f 3 -262 -282 -67
		mu 0 3 572 351 662
		mc 0 3 1120 1118 1444
		f 3 551 552 553
		mu 0 3 888 893 391
		mc 0 3 1486 399 1483
		f 3 -552 -283 554
		mu 0 3 893 888 99
		mc 0 3 400 1487 398
		f 3 555 -553 556
		mu 0 3 262 501 275
		mc 0 3 394 1484 401
		f 4 557 -227 558 559
		mu 0 4 150 424 1197 1198
		mc 0 4 188 170 168 187
		f 4 -562 -260 560 -255
		mu 0 4 1 977 354 693
		mc 0 4 1089 1138 405 1092
		f 4 561 562 563 564
		mu 0 4 281 353 788 274
		mc 0 4 203 202 211 212
		f 4 565 -576 566 -582
		mu 0 4 701 350 1199 1200
		mc 0 4 1140 1147 209 1142
		f 4 567 568 569 570
		mu 0 4 289 570 398 69
		mc 0 4 407 413 412 406
		f 4 -254 571 572 573
		mu 0 4 642 580 1201 1202
		mc 0 4 1087 1094 195 196
		f 4 574 -212 575 576
		mu 0 4 377 208 966 363
		mc 0 4 205 1129 1145 210
		f 4 577 578 579 -495
		mu 0 4 0 990 1000 880
		mc 0 4 1433 386 387 1480
		f 4 580 581 -207 -547
		mu 0 4 333 549 779 342
		mc 0 4 204 206 208 1103
		f 4 -326 -53 -504 -311
		mu 0 4 692 496 759 487
		mc 0 4 45 701 740 59
		f 4 -509 -411 -284 582
		mu 0 4 303 548 608 462
		mc 0 4 1003 1164 1157 1000
		f 4 -433 583 584 -409
		mu 0 4 532 1203 1204 864
		mc 0 4 1476 321 300 302
		f 4 -626 -625 -528 -430
		mu 0 4 1205 714 1206 170
		mc 0 4 1376 1493 298 279
		f 4 -513 -452 -204 585
		mu 0 4 970 364 902 93
		mc 0 4 1 613 1470 31
		f 3 586 587 -304
		mu 0 3 747 1207 1208
		mc 0 3 416 414 835
		f 4 588 -634 -109 -642
		mu 0 4 182 732 1006 304
		mc 0 4 815 650 652 814
		f 3 589 -47 -8
		mu 0 3 600 201 898
		mc 0 3 697 706 683
		f 4 590 -681 591 -680
		mu 0 4 529 1009 877 1018
		mc 0 4 1506 1504 1500 1498
		f 3 -9 592 -70
		mu 0 3 60 898 667
		mc 0 3 728 684 843
		f 3 -335 593 -73
		mu 0 3 1209 947 753
		mc 0 3 691 52 846
		f 3 -161 594 -77
		mu 0 3 159 782 107
		mc 0 3 803 102 990
		f 3 -503 595 -96
		mu 0 3 766 654 402
		mc 0 3 892 114 1033
		f 4 596 597 598 599
		mu 0 4 216 731 227 294
		mc 0 4 177 176 178 179
		f 4 600 -100 -177 -442
		mu 0 4 982 344 767 392
		mc 0 4 305 307 330 1472
		f 3 -362 601 -315
		mu 0 3 409 568 48
		mc 0 3 235 217 229
		f 3 602 603 -394
		mu 0 3 210 503 605
		mc 0 3 241 293 290
		f 3 604 605 -396
		mu 0 3 282 443 218
		mc 0 3 1182 288 292
		f 3 -424 -507 -415
		mu 0 3 818 912 323
		mc 0 3 1314 1257 1400
		f 4 606 -467 -32 -637
		mu 0 4 854 147 770 285
		mc 0 4 914 668 22 649
		f 3 -373 -357 -203
		mu 0 3 769 656 835
		mc 0 3 128 746 1468
		f 4 -182 607 -402 608
		mu 0 4 578 1020 660 387
		mc 0 4 1022 869 106 1025
		f 4 609 -195 -596 -277
		mu 0 4 885 661 402 654
		mc 0 4 134 82 1034 115
		f 3 610 611 612
		mu 0 3 222 533 365
		mc 0 3 162 954 268
		f 4 613 614 -270 -332
		mu 0 4 1210 984 84 1211
		mc 0 4 42 38 147 743
		f 3 -614 615 616
		mu 0 3 88 1212 1213
		mc 0 3 39 43 61
		f 3 -124 617 -366
		mu 0 3 1214 675 1215
		mc 0 3 1199 222 247
		f 4 618 619 620 -623
		mu 0 4 276 1216 1217 751
		mc 0 4 76 78 164 980
		f 3 621 -101 622
		mu 0 3 1218 889 1219
		mc 0 3 163 893 758
		f 4 -522 -380 623 -166
		mu 0 4 1220 911 188 1221
		mc 0 4 825 145 96 79
		f 4 624 625 626 -425
		mu 0 4 502 1222 1223 1224
		mc 0 4 1315 423 348 1236
		f 4 -508 -629 -607 -658
		mu 0 4 126 678 147 854
		mc 0 4 904 662 669 915
		f 4 627 -468 628 629
		mu 0 4 197 283 499 183
		mc 0 4 1508 1536 425 663
		f 4 630 -669 -391 631
		mu 0 4 816 607 545 32
		mc 0 4 440 24 907 1526
		f 4 -313 632 633 -690
		mu 0 4 1225 1226 810 644
		mc 0 4 1503 10 26 651
		f 4 -343 634 635 636
		mu 0 4 96 293 878 550
		mc 0 4 644 445 1520 430
		f 4 637 -632 638 -635
		mu 0 4 293 816 32 878
		mc 0 4 446 441 1527 1521
		f 4 639 640 -685 641
		mu 0 4 1227 686 687 1228
		mc 0 4 29 810 1530 468
		f 4 642 643 -675 644
		mu 0 4 688 687 283 221
		mc 0 4 1512 1531 1537 1510
		f 3 645 -695 646
		mu 0 3 481 177 296
		mc 0 3 1540 1465 477
		f 4 647 648 649 650
		mu 0 4 991 290 609 716
		mc 0 4 421 16 13 420
		f 4 651 -17 -672 -630
		mu 0 4 1229 454 1007 1230
		mc 0 4 33 28 1497 1509
		f 4 -678 -592 -684 -645
		mu 0 4 1231 155 536 1232
		mc 0 4 1511 1499 1501 1513
		f 4 -323 652 653 -649
		mu 0 4 290 326 455 609
		mc 0 4 17 641 19 14
		f 3 -668 654 -641
		mu 0 3 686 455 687
		mc 0 3 811 20 1532
		f 4 -655 -653 -466 -644
		mu 0 4 687 455 326 283
		mc 0 4 1533 21 642 1538
		f 4 -636 655 656 657
		mu 0 4 550 878 718 336
		mc 0 4 431 1522 1514 905
		f 4 -639 658 659 -677
		mu 0 4 878 32 154 613
		mc 0 4 1523 1528 1518 1516
		f 4 -76 -631 660 -663
		mu 0 4 586 607 816 226
		mc 0 4 623 25 442 1494
		f 4 -661 -638 -342 -666
		mu 0 4 226 816 293 1233
		mc 0 4 1495 443 447 439
		f 4 -657 -670 -16 661
		mu 0 4 1234 1235 1236 1237
		mc 0 4 32 1515 655 9
		f 4 -660 -682 -591 -679
		mu 0 4 1238 1239 1240 1241
		mc 0 4 1517 1519 1505 1507
		f 4 -52 662 663 664
		mu 0 4 106 1242 1243 721
		mc 0 4 665 15 436 434
		f 4 -664 665 -244 666
		mu 0 4 721 1244 951 270
		mc 0 4 435 437 631 433
		f 4 667 -3 668 -75
		mu 0 4 135 579 520 707
		mc 0 4 635 427 429 620
		f 4 669 670 671 672
		mu 0 4 305 193 626 491
		mc 0 4 464 471 469 465
		f 4 -671 -656 -676 -628
		mu 0 4 626 193 73 891
		mc 0 4 470 472 1524 1539
		f 4 673 674 675 676
		mu 0 4 774 492 85 356
		mc 0 4 456 452 461 463
		f 4 677 -674 678 679
		mu 0 4 952 492 774 695
		mc 0 4 448 453 457 451
		f 4 680 681 682 683
		mu 0 4 584 360 381 619
		mc 0 4 449 450 458 454
		f 4 -659 -686 -643 -683
		mu 0 4 381 794 504 619
		mc 0 4 459 1529 1534 455
		f 4 684 685 686 687
		mu 0 4 142 611 772 313
		mc 0 4 816 460 462 909
		f 4 -589 -688 688 689
		mu 0 4 482 142 313 676
		mc 0 4 467 817 910 466
		f 3 690 691 692
		mu 0 3 689 1245 1246
		mc 0 3 624 122 666
		f 3 -321 -646 -14
		mu 0 3 946 177 481
		mc 0 3 12 1466 1541
		f 3 693 694 -691
		mu 0 3 689 1247 1248
		mc 0 3 625 658 123
		f 3 -344 -698 -714
		mu 0 3 1249 96 855
		mc 0 3 629 645 1545
		f 4 -15 -702 695 696
		mu 0 4 113 635 308 837
		mc 0 4 648 475 1546 483
		f 4 697 -697 698 -704
		mu 0 4 1250 1251 789 456
		mc 0 4 476 23 1560 1548
		f 4 -647 699 700 701
		mu 0 4 481 296 156 395
		mc 0 4 1542 478 485 479
		f 4 702 703 704 -700
		mu 0 4 27 28 930 152
		mc 0 4 659 1543 481 1550
		f 4 -701 -708 -706 -709
		mu 0 4 395 156 251 426
		mc 0 4 480 486 1557 1559
		f 4 -710 705 -707 -712
		mu 0 4 954 629 715 245
		mc 0 4 1554 1558 1556 1552
		f 4 -705 -713 706 707
		mu 0 4 152 930 157 1001
		mc 0 4 1551 482 1553 489
		f 4 -696 708 709 710
		mu 0 4 837 308 851 428
		mc 0 4 484 1547 490 1555
		f 4 -699 -711 711 712
		mu 0 4 456 789 1252 1253
		mc 0 4 1549 1561 488 487
		f 4 713 -703 -694 714
		mu 0 4 650 28 27 811
		mc 0 4 18 1544 660 422
		f 4 715 716 717 718
		mu 0 4 384 537 427 467
		mc 0 4 1613 579 1594 1578
		f 4 719 -737 720 721
		mu 0 4 165 297 1008 628
		mc 0 4 1582 1584 1580 1568
		f 4 -721 722 -740 723
		mu 0 4 9 249 722 552
		mc 0 4 505 1581 1586 1588
		f 3 724 -426 -765
		mu 0 3 2 832 1254
		mc 0 3 1626 1233 1321
		f 3 -758 725 -762
		mu 0 3 291 1255 292
		mc 0 3 1624 316 1237
		f 4 -742 726 -720 727
		mu 0 4 859 457 833 649
		mc 0 4 1590 1592 1585 507
		f 4 728 -767 -772 729
		mu 0 4 151 812 838 1015
		mc 0 4 493 1563 1610 1606
		f 4 730 731 732 -735
		mu 0 4 791 169 955 393
		mc 0 4 1674 522 1664 1676
		f 3 733 734 735
		mu 0 3 277 13 612
		mc 0 3 1607 498 537
		f 4 736 -727 -741 -723
		mu 0 4 1256 1257 298 879
		mc 0 4 501 502 1593 1587
		f 4 737 738 -770 -736
		mu 0 4 612 1258 1259 277
		mc 0 4 538 314 313 1608
		f 4 739 740 741 742
		mu 0 4 366 890 29 199
		mc 0 4 509 497 500 503
		f 4 -746 -728 743 -718
		mu 0 4 427 859 649 467
		mc 0 4 1595 1591 508 1579
		f 4 744 -743 745 746
		mu 0 4 589 366 199 727
		mc 0 4 514 510 504 511
		f 4 -744 -722 747 -768
		mu 0 4 748 165 628 212
		mc 0 4 1577 1583 1569 1570
		f 4 748 -730 749 -779
		mu 0 4 1011 630 645 795
		mc 0 4 1668 1611 1603 1672
		f 4 -733 -753 750 -738
		mu 0 4 393 955 959 327
		mc 0 4 1677 1665 529 1318
		f 4 -771 751 752 753
		mu 0 4 645 882 551 246
		mc 0 4 1604 1630 1628 535
		f 4 754 -729 755 -785
		mu 0 4 1004 812 151 256
		mc 0 4 1599 1564 494 1666
		f 4 756 -435 757 758
		mu 0 4 223 179 425 1260
		mc 0 4 531 1247 1255 1623
		f 4 -748 -724 -745 759
		mu 0 4 735 9 552 881
		mc 0 4 1571 506 1589 1597
		f 4 -759 760 -764 -752
		mu 0 4 882 957 696 551
		mc 0 4 1631 1622 1625 1629
		f 4 -761 761 762 -725
		mu 0 4 1261 1262 71 530
		mc 0 4 1627 528 264 266
		f 4 -536 -751 763 764
		mu 0 4 702 327 959 1263
		mc 0 4 1324 1319 530 533
		f 4 765 -734 766 -778
		mu 0 4 309 13 277 617
		mc 0 4 1567 499 1609 1562
		f 3 -719 767 768
		mu 0 3 905 1264 1265
		mc 0 3 1614 513 1574
		f 4 769 -757 770 771
		mu 0 4 1266 179 223 1267
		mc 0 4 527 1248 532 526
		f 3 772 773 -717
		mu 0 3 399 511 1268
		mc 0 3 1758 582 1596
		f 4 774 775 -783 776
		mu 0 4 7 52 153 148
		mc 0 4 491 1565 1601 1670
		f 4 -755 -784 -776 777
		mu 0 4 1269 198 631 1270
		mc 0 4 496 1600 1602 495
		f 4 -749 -777 -786 -756
		mu 0 4 630 1011 254 328
		mc 0 4 1612 1669 1671 1667
		f 4 778 -731 -766 -775
		mu 0 4 7 169 791 52
		mc 0 4 492 523 1675 1566
		f 3 -881 779 780
		mu 0 3 200 589 1271
		mc 0 3 1620 515 1616
		f 3 781 -863 -773
		mu 0 3 399 594 511
		mc 0 3 1759 1740 583
		f 4 782 783 784 785
		mu 0 4 813 53 250 261
		mc 0 4 540 542 541 539
		f 4 786 -864 787 -857
		mu 0 4 382 505 931 1021
		mc 0 4 1696 1694 1637 1661
		f 3 -732 -750 -754
		mu 0 3 246 795 645
		mc 0 3 536 1673 1605
		f 4 -788 788 -792 789
		mu 0 4 1021 931 3 70
		mc 0 4 1662 1638 1632 1660
		f 4 790 -836 791 -821
		mu 0 4 512 790 1017 817
		mc 0 4 1684 1681 546 544
		f 4 792 -791 793 -854
		mu 0 4 677 790 512 592
		mc 0 4 1690 1682 1685 1692
		f 4 -852 794 795 796
		mu 0 4 166 834 359 679
		mc 0 4 1698 1700 1687 1678
		f 4 -819 797 -835 -796
		mu 0 4 359 189 588 679
		mc 0 4 1688 543 545 1679
		f 4 -845 -798 -823 798
		mu 0 4 30 917 1016 167
		mc 0 4 1653 1652 1640 1645
		f 4 -879 799 -799 800
		mu 0 4 278 86 30 167
		mc 0 4 1702 1704 1654 1646
		f 4 801 802 803 804
		mu 0 4 697 734 698 506
		mc 0 4 597 593 573 575
		f 4 805 806 -814 807
		mu 0 4 263 610 295 54
		mc 0 4 567 569 1717 1715
		f 4 808 -808 809 810
		mu 0 4 908 263 54 105
		mc 0 4 608 568 1716 1719
		f 4 -795 -855 -794 -820
		mu 0 4 663 956 429 849
		mc 0 4 1689 1701 1693 1686
		f 4 811 -880 -801 812
		mu 0 4 6 971 936 798
		mc 0 4 1706 1743 1703 1647
		f 4 813 814 815 816
		mu 0 4 1272 1273 915 736
		mc 0 4 565 563 555 559
		f 4 -810 -817 817 -870
		mu 0 4 1274 1275 736 527
		mc 0 4 1721 566 560 1741
		f 4 818 819 820 821
		mu 0 4 539 1276 1277 260
		mc 0 4 1641 548 547 1633
		f 4 -846 -813 822 823
		mu 0 4 257 1278 1279 539
		mc 0 4 1722 1707 518 1642
		f 4 824 825 826 827
		mu 0 4 279 538 411 799
		mc 0 4 1656 1648 1732 1747
		f 3 828 -828 -805
		mu 0 3 217 279 799
		mc 0 3 1730 1657 1748
		f 4 829 830 -827 -861
		mu 0 4 627 852 799 411
		mc 0 4 1750 1754 1749 1733
		f 4 -834 -793 -853 -797
		mu 0 4 14 15 334 728
		mc 0 4 1680 1683 1691 1699
		f 4 -843 -800 -878 831
		mu 0 4 55 168 310 583
		mc 0 4 1708 1655 1705 1713
		f 4 832 -872 -830 -862
		mu 0 4 800 974 852 627
		mc 0 4 1739 1753 1755 1751
		f 3 -747 -774 -780
		mu 0 3 589 727 1280
		mc 0 3 516 512 1617
		f 4 833 834 -825 835
		mu 0 4 1281 1282 538 279
		mc 0 4 549 550 1649 1658
		f 4 836 -790 -829 -883
		mu 0 4 307 1002 279 217
		mc 0 4 1728 1663 1659 1731
		f 4 837 -822 838 -816
		mu 0 4 915 539 260 736
		mc 0 4 556 1643 1634 561
		f 4 -850 -824 -838 839
		mu 0 4 1283 257 539 915
		mc 0 4 1575 1723 1644 557
		f 4 -787 -856 -868 840
		mu 0 4 771 892 255 4
		mc 0 4 1695 1697 1746 1711
		f 4 -839 841 -803 -818
		mu 0 4 736 260 932 527
		mc 0 4 562 1635 1726 1742
		f 4 842 -848 843 844
		mu 0 4 1284 1285 904 538
		mc 0 4 519 584 1737 1650
		f 4 845 846 847 848
		mu 0 4 442 595 287 737
		mc 0 4 585 571 577 1709
		f 4 849 -875 850 -847
		mu 0 4 595 19 614 287
		mc 0 4 572 595 1735 578
		f 4 851 852 853 854
		mu 0 4 1286 801 386 1287
		mc 0 4 551 554 553 552
		f 4 -837 -869 855 856
		mu 0 4 1288 1289 383 194
		mc 0 4 520 1729 1745 521
		f 4 -832 -877 -812 -849
		mu 0 4 737 507 620 442
		mc 0 4 1710 1714 1744 586
		f 3 -844 -851 -826
		mu 0 3 538 904 411
		mc 0 3 1651 1738 1734
		f 4 -789 857 -882 -842
		mu 0 4 260 719 621 932
		mc 0 4 1636 1639 1724 1727
		f 4 858 -769 -840 -815
		mu 0 4 1290 905 1291 915
		mc 0 4 564 1615 1576 558
		f 4 859 860 -874 -781
		mu 0 4 1292 729 699 200
		mc 0 4 1618 600 1736 1621
		f 3 861 -860 862
		mu 0 3 1293 729 1294
		mc 0 3 580 601 1619
		f 4 863 -841 -867 -858
		mu 0 4 1295 1296 1297 1298
		mc 0 4 517 524 1712 1725
		f 4 864 -716 -859 -807
		mu 0 4 610 16 1299 295
		mc 0 4 570 1757 599 1718
		f 4 865 866 867 868
		mu 0 4 514 190 463 750
		mc 0 4 587 590 606 592
		f 4 869 -802 -831 -871
		mu 0 4 100 734 697 1010
		mc 0 4 1720 594 598 1756
		f 4 -811 870 871 872
		mu 0 4 329 1300 1301 396
		mc 0 4 1752 602 603 581
		f 3 873 874 875
		mu 0 3 934 958 735
		mc 0 3 604 596 1572
		f 4 876 877 878 879
		mu 0 4 1302 357 397 1303
		mc 0 4 607 589 525 534
		f 3 -760 880 -876
		mu 0 3 735 881 934
		mc 0 3 1573 1598 605
		f 4 -804 881 -866 882
		mu 0 4 506 698 190 514
		mc 0 4 576 574 591 588
		f 4 -497 883 -548 -583
		mu 0 4 937 79 464 858
		mc 0 4 194 1084 1098 1005
		f 3 884 885 886
		mu 0 3 311 358 127
		mc 0 3 198 1132 192
		f 3 -885 -263 -257
		mu 0 3 358 311 914
		mc 0 3 1133 199 1113
		f 3 -213 887 -275
		mu 0 3 39 259 225
		mc 0 3 1430 396 1419
		f 3 -485 -112 -300
		mu 0 3 378 181 733
		mc 0 3 1368 1335 280
		f 3 -175 888 889
		mu 0 3 601 403 1304
		mc 0 3 161 927 877
		f 3 -174 -165 -890
		mu 0 3 972 319 213
		mc 0 3 875 85 972
		f 3 890 -484 -493
		mu 0 3 625 192 1305
		mc 0 3 1303 1365 283
		f 3 -886 891 -884
		mu 0 3 127 358 80
		mc 0 3 193 1134 1100;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode ikHandle -n "R_LegIK";
	rename -uid "ABA1F8F6-47B5-6F7D-8F81-549D805412E7";
	setAttr ".v" no;
	setAttr ".pv" -type "double3" 0.023123446980709693 -0.020200797527660207 0.19762903121499328 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "R_LegIK";
	rename -uid "A3D92BF1-4A3B-23BE-6D1C-B0AFCFFF443F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -22.912804750921751 1.6624828115985331 -4.2076047513284482 ;
	setAttr -k on ".w0";
createNode ikHandle -n "L_LegIK";
	rename -uid "8DFCB1E7-4562-728A-2397-3786AD7277FD";
	setAttr ".v" no;
	setAttr ".pv" -type "double3" -0.023123537809305705 -0.020200817064529468 0.19762901859065901 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "L_LegIK";
	rename -uid "A51CDE06-4D48-9502-272E-9A9F5D73C1F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_CTRL1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 3.831681176791335e-007 -9.5366620733727814e-007 ;
	setAttr ".rst" -type "double3" 22.912796826828682 1.6624831947666507 -4.2076057049946556 ;
	setAttr -k on ".w0";
createNode transform -n "R_Hand_CTRL";
	rename -uid "8399833B-4BBF-00E4-C2CA-3CA8340EF318";
	addAttr -ci true -sn "Grab" -ln "Grab" -min -10 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -54.90994144073229 90.548425638257442 12.691448278350421 ;
	setAttr ".sp" -type "double3" -54.90994144073229 90.548425638257442 12.691448278350421 ;
	setAttr -k on ".Grab";
createNode nurbsCurve -n "R_Hand_CTRLShape" -p "R_Hand_CTRL";
	rename -uid "20D4B72C-48A6-2AAB-A99F-2E807EF171E4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-50.824091674856362 104.29334910301171 26.989224063637934
		-57.548680835650202 103.59491469874685 14.334729646520495
		-64.63011786264525 104.66081207791387 1.9024631049291862
		-61.375754911087903 90.720520564100909 0.9424978759611804
		-58.99579120660821 76.803502173503176 -1.606327506937081
		-52.271202045814 77.501936577768134 11.048166910180115
		-45.189765018819344 76.436039198601009 23.480433451771649
		-48.4441279703763 90.376330712414074 24.440398680739435
		-50.824091674856362 104.29334910301171 26.989224063637934
		-57.548680835650202 103.59491469874685 14.334729646520495
		-64.63011786264525 104.66081207791387 1.9024631049291862
		;
createNode transform -n "R_Elbow";
	rename -uid "20FE1ADB-4BDC-8526-6442-0BA46A0B136C";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -39.297609766080754 94.481337885038627 3.2071531363126313 ;
	setAttr ".sp" -type "double3" -39.297609766080754 94.481337885038627 3.2071531363126313 ;
createNode nurbsCurve -n "R_ElbowShape" -p "R_Elbow";
	rename -uid "F9D86C03-4B02-D844-7E1D-18A7906C38AD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-41.589029552357495 92.189918098761879 3.2071531363126482
		-39.297609766080754 111.64950305785067 3.2071531363126287
		-37.006189979803992 92.189918098761879 3.2071531363126482
		-56.4657749388928 94.481337885038627 3.2071531363126313
		-37.006189979803992 96.772757671315375 3.2071531363126473
		-39.297609766080761 77.313172712226574 3.207153136312634
		-41.589029552357488 96.772757671315375 3.2071531363126473
		-22.129444593268708 94.481337885038613 3.2071531363126313
		-41.589029552357495 92.189918098761879 3.2071531363126482
		-39.297609766080754 111.64950305785067 3.2071531363126287
		-37.006189979803992 92.189918098761879 3.2071531363126482
		;
createNode transform -n "L_Elbow";
	rename -uid "21172171-4DD3-B12E-6891-149F5143E94C";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 41.486272375015872 94.481324416494516 3.2071544475768015 ;
	setAttr ".sp" -type "double3" 41.486272375015872 94.481324416494516 3.2071544475768015 ;
createNode nurbsCurve -n "L_ElbowShape" -p "L_Elbow";
	rename -uid "C8380462-4C4F-0F4A-D1AB-2ABB652030DD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		39.194852588739131 92.189904630217768 3.2071544475768183
		41.486272375015872 111.64948958930657 3.2071544475767988
		43.777692161292634 92.189904630217768 3.2071544475768183
		24.318107202203826 94.481324416494516 3.2071544475768015
		43.777692161292634 96.772744202771264 3.2071544475768174
		41.486272375015865 77.313159243682463 3.2071544475768041
		39.194852588739138 96.772744202771264 3.2071544475768174
		58.654437547827918 94.481324416494502 3.2071544475768015
		39.194852588739131 92.189904630217768 3.2071544475768183
		41.486272375015872 111.64948958930657 3.2071544475767988
		43.777692161292634 92.189904630217768 3.2071544475768183
		;
createNode transform -n "L_Hand_CTRL";
	rename -uid "0B378957-46D0-2E68-6259-C794EDE88319";
	addAttr -ci true -sn "Grab" -ln "Grab" -min -10 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 57.098603481120364 90.54841754215883 12.691448278330531 ;
	setAttr ".sp" -type "double3" 57.098603481120364 90.54841754215883 12.691448278330531 ;
	setAttr -k on ".Grab";
createNode nurbsCurve -n "L_Hand_CTRLShape" -p "L_Hand_CTRL";
	rename -uid "64DA858C-4C26-4CB6-8C16-FF8D807F0452";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		61.040944567292698 76.823825797114836 -1.6660239908316914
		54.626064798644926 77.45682597082768 11.151650029256981
		47.876813187654292 76.319394958194806 23.761090632805715
		50.933410337036605 90.312176087247067 24.599797430327179
		53.15626239494803 104.27300928720283 27.048920547492749
		59.571142163596186 103.6400091134899 14.231246527404304
		66.320393774586435 104.77744012612285 1.621805923855355
		63.263796625204506 90.784658997070494 0.78309912633410228
		61.040944567292698 76.823825797114836 -1.6660239908316914
		54.626064798644926 77.45682597082768 11.151650029256981
		47.876813187654292 76.319394958194806 23.761090632805715
		;
createNode ikHandle -n "L_HandIK";
	rename -uid "295E4898-4324-BFF9-ED71-C7ABF344C938";
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle3_pointConstraint1" -p "L_HandIK";
	rename -uid "B82390FB-40B4-AEEA-B412-B3A72A5D7AD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 57.098603481120364 90.54841754215883 12.691448278330531 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "L_HandIK";
	rename -uid "A14F9E6C-482E-A5C7-50EB-55BE11838C5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_ElbowW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 15.549313661508055 -11.585199908341764 3.2441920535869855 ;
	setAttr -k on ".w0";
createNode ikHandle -n "R_HandIK";
	rename -uid "62C2599C-48D4-BD0B-F0A8-FAB23E813E1B";
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle4_pointConstraint1" -p "R_HandIK";
	rename -uid "DBFFB041-4607-7FD4-D6BC-F0B0C906A5F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -54.90994144073229 90.548425638257442 12.691448278350421 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle4_poleVectorConstraint1" -p "R_HandIK";
	rename -uid "7FC16BD7-4E95-081B-504A-808DF0C58F89";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_ElbowW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -15.54931342893931 -11.585190031100751 3.2441905038954149 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A3089AB2-4683-5AA6-E499-7D9BA64B9896";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "7BADA4E8-4C77-6107-F45D-42936C975EB1";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "BB057156-4D28-1FD5-B806-B5B7BB210D03";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "67DD8246-43E9-B396-B3B9-94A3BD2BC987";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "97E78E5B-46FF-E2B3-F0EC-2BAEB740AD0F";
	setAttr ".g" yes;
createNode phong -n "knight_mat";
	rename -uid "EE2C69AB-4EA0-1720-958F-119C5674922F";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0 0.0039455923 0.0031215902 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 1 1 1 ;
	setAttr ".cp" 9.6078433990478516;
createNode shadingEngine -n "knightSG";
	rename -uid "986A78B6-4E54-AA9A-233E-BDBCCFE623EC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C19E62B2-41B7-EE9C-1EBB-8ABC7CF82917";
createNode file -n "knigt_tex";
	rename -uid "88D5B6BA-457D-A2CE-C9DF-A1A2568989CE";
	setAttr ".ftn" -type "string" "C:\\Users\\Taber\\Desktop\\Island\\knight_albedo.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "E2812F3F-4523-E8A2-372D-B7A8D175F8E3";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "12C958B2-4D3A-BB17-BF3F-B4B7DFBCEBE0";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6D275753-4A60-E33C-DF40-60B8FAC042A5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 0\n"
		+ "                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1131\n                -height 889\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n"
		+ "            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1131\n            -height 889\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 14 100 -ps 2 86 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1131\\n    -height 889\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1131\\n    -height 889\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "815D1365-4EC8-5478-D89F-2093903A1E64";
	setAttr ".b" -type "string" "playbackOptions -min 128 -max 155 -ast 1 -aet 250 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	rename -uid "2ED7475A-4647-D086-9D7A-A1AAFFD798AA";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveUA -n "FingersFBXASC046l_rotateX";
	rename -uid "DCC666D8-47D6-151D-8775-89A141CE5B43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -24.339427673372484 0 0 10 26.442289997286629;
createNode animCurveUA -n "FingersFBXASC046l_rotateY";
	rename -uid "8204C3EC-4494-AB98-FE7F-90B72545AF9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 3.2188933350737909 0 0 10 -10.449189450463917;
createNode animCurveUA -n "FingersFBXASC046l_rotateZ";
	rename -uid "CE6C6577-4C12-8D2C-F397-C1AC6DC292A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -40.788413602718371 0 0 10 52.660671385070366;
createNode animCurveUA -n "ThumbFBXASC046l_rotateX";
	rename -uid "999948EA-4461-C849-0161-F0BD9232EF97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -51.870851371398686 0 0 10 49.474549739365038;
createNode animCurveUA -n "ThumbFBXASC046l_rotateY";
	rename -uid "D3DEAE97-49C0-ACE9-B567-9193006C7732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 5.7226470076906235 0 0 10 7.8122833954169835;
createNode animCurveUA -n "ThumbFBXASC046l_rotateZ";
	rename -uid "59C3EB50-4525-102A-EFB7-DA92FE82FC91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 4.2847251439426461 0 0 10 -9.1752580837873143;
createNode animCurveUA -n "FingersFBXASC046r_rotateX";
	rename -uid "1D5C2D56-4967-A973-C708-9FB9ED4BCEEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -21.068802731904483 0 0 10 32.060305324577143;
createNode animCurveUA -n "FingersFBXASC046r_rotateY";
	rename -uid "57EF9D0A-4543-F6F2-64E2-92BC7BA6CB31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 3.4564880453835558 0 0 10 21.333767178737759;
createNode animCurveUA -n "FingersFBXASC046r_rotateZ";
	rename -uid "690B8190-4D3A-9141-EB50-EAB7858B8BFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 37.036348212682924 0 0 10 -65.464052980706413;
createNode animCurveUA -n "ThumbFBXASC046r_rotateX";
	rename -uid "881E7A0F-4C38-999B-F435-93AD8B19EC0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -42.473675816927802 0 0 10 69.330885934975583;
createNode animCurveUA -n "ThumbFBXASC046r_rotateY";
	rename -uid "4809DF79-48C8-C158-11EE-9DB4080E6F04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -0.31868491300576851 0 0 10 -6.3691944071000535;
createNode animCurveUA -n "ThumbFBXASC046r_rotateZ";
	rename -uid "0B08B9A3-43CB-7802-AF81-E6977059A9D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -11.360315516195206 0 0 10 0.76094948946431695;
createNode animCurveTL -n "L_Foot_CTRL_translateX";
	rename -uid "ADF4C31D-422A-BE3B-1E89-FAA6C430AD73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 -0.07094967569067484 70 -0.07094967569067484
		 71 -0.1272665197053614 80 -0.13630162815346364 83 -0.13644504209284086 89 -0.17314848283311043
		 92 -0.16757591767853802 95 -0.1272665197053614 96 -0.1272665197053614 98 -0.13067410279082786
		 100 -0.13412510152145882 102 -0.13630162815346364 104 -0.13644504209284086 106 -0.15490435573127442
		 108 -0.17314848283311043 110 -0.16757591767853802 112 -0.1272665197053614 115 -0.07094967569067484
		 118 -0.12119836399645086 121 -0.10631001689360929 125 -0.11266836548046104 128 -0.07094967569067484
		 132 -0.07094967569067484 135 -0.07094967569067484 140 -0.07094967569067484 145 -0.07094967569067484
		 155 -0.07094967569067484;
	setAttr -s 29 ".kit[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 1 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 0.99594312906265259 0.99999076128005981 
		0.99999070167541504 1 0.98631209135055542 1 1 0.99867963790893555 0.99911051988601685 
		0.99997907876968384 0.99997907876968384 0.96413731575012207 1 0.96996766328811646 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 -0.089984491467475891 -0.0043023824691772461 
		-0.0043023820035159588 0 0.16488879919052124 0 0 -0.051371492445468903 -0.042168863117694855 
		-0.0064534982666373253 -0.0064534982666373253 -0.26540392637252808 0 0.24323371052742004 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 0.99594312906265259 0.99999070167541504 
		0.99999076128005981 1 0.9863121509552002 1 1 0.99867963790893555 0.99911051988601685 
		0.99999070167541504 0.99997907876968384 0.96413731575012207 1 0.96996772289276123 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 -0.089984491467475891 -0.0043023820035159588 
		-0.0043023824691772461 0 0.16488882899284363 0 0 -0.051371492445468903 -0.042168863117694855 
		-0.0043023820035159588 -0.0064534982666373253 -0.26540392637252808 0 0.24323374032974243 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_Foot_CTRL_translateY";
	rename -uid "DE4F043B-4B95-B81E-CD95-E7A2ED313CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0 9 0 10 0 70 0 71 0 80 0 83 0.065201030735782664
		 86 0.20432351691989925 89 0.20460313623003362 92 0.11601369309474492 95 0 96 0.26456703620824779
		 97 0.14110552760006748 98 0.039791158348307487 100 0 102 0.10040408322432498 104 0.3105280816731531
		 106 0.30990062574748706 108 0.16991638727368319 110 0.14200696987474462 112 0.26456703620824779
		 115 0 118 0.13643304949445778 121 0.27379979563646129 125 0.2139778475661343 128 0
		 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 31 ".kit[2:30]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 18 1 1 18 18 18 1 1 
		18 18 18 1;
	setAttr -s 31 ".kot[2:30]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 1 18 18 18 18 1 1 18 18 18 1 1 
		18 18 18 1;
	setAttr -s 31 ".kix[2:30]"  1 1 1 1 0.69950520992279053 0.99996477365493774 
		1 0.69901692867279053 1 1 0.28434845805168152 0.57821041345596313 1 0.39454412460327148 
		1 0.99960160255432129 0.62289446592330933 1 1 1 0.58985424041748047 1 0.64862227439880371 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[2:30]"  0 0 0 0 0.71462750434875488 0.0083882715553045273 
		0 -0.71510511636734009 0 0 -0.95872098207473755 -0.8158876895904541 0 0.9188770055770874 
		0 -0.028224295005202293 -0.78230589628219604 0 0 0 0.8075096607208252 0 -0.76111048460006714 
		0 0 0 0 0 0;
	setAttr -s 31 ".kox[2:30]"  1 1 1 1 0.69950520992279053 0.99996477365493774 
		1 0.69901692867279053 1 1 0.28434845805168152 0.57821041345596313 1 1 1 0.99960160255432129 
		0.62289446592330933 1 1 1 0.58985430002212524 1 0.64862227439880371 1 1 1 1 1 1;
	setAttr -s 31 ".koy[2:30]"  0 0 0 0 0.71462750434875488 0.0083882715553045273 
		0 -0.71510511636734009 0 0 -0.95872098207473755 -0.8158876895904541 0 0 0 -0.028224295005202293 
		-0.78230589628219604 0 0 0 0.80750972032546997 0 -0.76111054420471191 0 0 0 0 0 0;
createNode animCurveTL -n "L_Foot_CTRL_translateZ";
	rename -uid "A8A48496-4E09-C7BE-6B3E-7E807F86EEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0.042776250915835055 9 0.042776250915835055
		 10 0.17324928208721274 70 0.17324928208721274 71 0.35614848655608528 80 -0.091373462387382309
		 83 -0.17424768661654408 86 -0.12834978922096416 89 -0.020010280317262215 92 0.30734588435921889
		 95 0.35614848655608528 96 0.35614848655608528 97 0.41463331934163167 98 0.3264106851189626
		 100 0.10431012776804853 102 -0.26519577461188543 104 -0.38908925272296691 106 -0.31008676322659839
		 108 -0.034099283776314472 110 0.2434893949343791 112 0.35614848655608528 115 0.17324928208721274
		 118 0.12820647167127808 121 0.13524439569699845 125 0.15408652373428905 128 0.17324928208721274
		 132 0.17324928208721274 135 0.17324928208721274 140 0.17324928208721274 145 0.17324928208721274
		 155 0.17324928208721274;
	setAttr -s 31 ".kit[2:30]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 18 1 1 18 18 18 1 1 
		18 18 18 1;
	setAttr -s 31 ".kot[2:30]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 1 18 18 18 18 1 1 18 18 18 1 1 
		18 18 18 1;
	setAttr -s 31 ".kix[2:30]"  1 1 1 0.60212022066116333 1 0.79187482595443726 
		0.41718247532844543 0.56401675939559937 1 1 1 0.30671286582946777 0.21986058354377747 
		0.26087668538093567 1 0.35161343216896057 0.23416194319725037 0.32331344485282898 
		1 1 1 0.99390518665313721 0.98699355125427246 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[2:30]"  0 0 0 -0.79840546846389771 0 0.61068344116210938 
		0.90882271528244019 0.82576334476470947 0 0 0 -0.95180207490921021 -0.97553128004074097 
		-0.96537220478057861 0 0.93614524602890015 0.97219765186309814 0.94629192352294922 
		0 0 0 0.11023861169815063 0.16075944900512695 0 0 0 0 0 0;
	setAttr -s 31 ".kox[2:30]"  1 1 1 0.60212016105651855 1 0.79187482595443726 
		0.41718247532844543 0.56401669979095459 1 1 1 0.30671286582946777 0.21986061334609985 
		0.60212016105651855 1 0.35161343216896057 0.23416194319725037 0.32331347465515137 
		1 1 1 0.99390518665313721 0.98699367046356201 1 1 1 1 1 1;
	setAttr -s 31 ".koy[2:30]"  0 0 0 -0.79840546846389771 0 0.61068344116210938 
		0.90882277488708496 0.82576334476470947 0 0 0 -0.95180207490921021 -0.97553133964538574 
		-0.79840546846389771 0 0.93614524602890015 0.97219765186309814 0.94629192352294922 
		0 0 0 0.11023861169815063 0.16075946390628815 0 0 0 0 0 0;
createNode animCurveTL -n "R_Foot_CTRL_translateX";
	rename -uid "5F15BC3D-41AA-6220-3555-A8830FF76F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 -0.012170828137281254 9 -0.012170828137281254
		 10 0.11622326621737426 70 0.11622326621737426 71 0.11622326621737426 77 0.1490059549552559
		 83 0.11622326621737426 89 0.11622326621737426 92 0.11622326621737426 95 0.11622326621737426
		 96 0.11622326621737426 98 0.13261458127631431 100 0.1490059549552559 102 0.13261461058631507
		 104 0.11622326621737426 106 0.11622326621737426 108 0.11622326621737426 110 0.11622326621737426
		 112 0.11622326621737426 115 0.11622326621737426 118 0.13758739209726245 121 0.098347466177399048
		 125 0.10580182773296859 128 0.11622326621737426 132 0.11622326621737426 135 0.11622326621737426
		 140 0.11622326621737426 145 0.11622326621737426 155 0.11622326621737426;
	setAttr -s 29 ".kit[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 18 18 18 18 18 
		1 18 1 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 1 1 1 1 1 1 1 0.97107863426208496 1 
		0.97107887268066406 1 1 1 1 1 1 1 1 0.99707823991775513 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0 0 0 0 0 0 0 0.23875948786735535 0 
		-0.23875913023948669 0 0 0 0 0 0 0 0 0.076386652886867523 0 0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 1 1 1 1 1 1 1 0.97107863426208496 1 
		0.97107875347137451 1 1 1 1 1 1 1 1 0.99707823991775513 1 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 0 0 0 0 0 0 0 0.23875948786735535 0 
		-0.23875908553600311 0 0 0 0 0 0 0 0 0.076386652886867523 0 0 0 0 0 0;
createNode animCurveTL -n "R_Foot_CTRL_translateY";
	rename -uid "A8819D74-4AFA-419A-DF6D-D49F67BD3C7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 0 70 0 71 0.052893262617090916
		 74 0.22334090634101861 77 0.22547527185893915 80 0.13346727213926809 83 0.028275237390568475
		 84 0 89 0 92 0.026446584018294788 95 0.052893262617090916 96 0.35103047107608892
		 98 0.35891429369923744 100 0.22547527185893915 102 0.13346727213926809 104 0.23205003715534153
		 105 0.052973589845564432 106 0 108 0 110 0.12458793034457284 112 0.35103047107608892
		 115 0 118 0.061812835647025728 121 0.13342526621668185 125 -0.024910137643117027
		 128 0 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 33 ".kit[2:32]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kix[2:32]"  1 1 0.51259744167327881 0.99795633554458618 
		1 0.71207380294799805 0.70675140619277954 1 1 0.9667624831199646 0.78338485956192017 
		0.78338485956192017 1 0.50905400514602661 1 1 0.27612462639808655 1 1 0.35508248209953308 
		0.78338485956192017 1 0.83187377452850342 1 1 1 1 1 1 1 1;
	setAttr -s 33 ".kiy[2:32]"  0 0 0.85862910747528076 0.063900165259838104 
		0 -0.70210468769073486 -0.70746201276779175 0 0 0.25567606091499329 0.62153691053390503 
		0.62153691053390503 0 -0.86073458194732666 0 0 -0.96112185716629028 0 0 0.93483501672744751 
		0.62153691053390503 0 0.55496478080749512 0 0 0 0 0 0 0 0;
	setAttr -s 33 ".kox[2:32]"  1 1 0.51259738206863403 0.99795633554458618 
		1 0.71207374334335327 0.70675134658813477 1 1 0.9667624831199646 0.78338485956192017 
		0.78338485956192017 0.99795633554458618 0.50905400514602661 1 1 0.27612462639808655 
		1 1 0.35508248209953308 0.78338485956192017 1 0.83187383413314819 1 1 1 1 1 1 1 1;
	setAttr -s 33 ".koy[2:32]"  0 0 0.85862910747528076 0.063900165259838104 
		0 -0.70210468769073486 -0.70746195316314697 0 0 0.25567606091499329 0.6215369701385498 
		0.6215369701385498 0.063900165259838104 -0.86073458194732666 0 0 -0.96112185716629028 
		0 0 0.93483501672744751 0.6215369701385498 0 0.55496478080749512 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Foot_CTRL_translateZ";
	rename -uid "16686182-4334-089C-92D3-BC8E469F4068";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0.042774532285111404 9 0.042774532285111404
		 10 0.042774532285111404 70 0.042774532285111404 71 -0.1776376864637397 74 -0.049554299786065972
		 77 0.022478590457184654 80 0.28616485564404542 83 0.38502278574184989 89 -0.031762947964075805
		 92 -0.13986650676952567 95 -0.1776376864637397 96 -0.36574233182492483 98 -0.30437506557845567
		 100 -0.068727216686747625 102 0.28616485564404542 104 0.38502278574184989 105 0.37708491509326386
		 106 0.26465574641595557 108 0.086339149436604257 110 -0.28920025607487382 112 -0.36574233182492483
		 115 0.042774532285111404 118 0.042774532285111404 121 0.13601324618041047 125 0.097131904769252625
		 128 0.042774532285111404 132 0.042774532285111404 135 0.042774532285111404 140 0.042774532285111404
		 145 0.042774532285111404 155 0.042774532285111404;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 1 1 18 18 18 1 
		1 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 18 18 18 18 18 1 1 18 18 18 1 
		1 18 18 18 1;
	setAttr -s 32 ".kix[2:31]"  1 1 1 0.70690137147903442 0.51179981231689453 
		0.48303228616714478 1 0.49621778726577759 0.80792796611785889 0.66168713569641113 
		1 0.40953797101974487 0.22023843228816986 0.28192803263664246 1 0.81368595361709595 
		0.32524281740188599 0.23405009508132935 0.28288543224334717 1 1 1 1 0.92860656976699829 
		1 1 1 1 1 1;
	setAttr -s 32 ".kiy[2:31]"  0 0 0 0.70731216669082642 0.85910475254058838 
		0.87560254335403442 0 -0.86819809675216675 -0.58928126096725464 -0.74978005886077881 
		0 0.91229307651519775 0.97544610500335693 0.95943558216094971 0 -0.58130460977554321 
		-0.94563055038452148 -0.97222453355789185 -0.95915371179580688 0 0 0 0 -0.37106567621231079 
		0 0 0 0 0 0;
	setAttr -s 32 ".kox[2:31]"  1 1 1 0.70690131187438965 0.51179975271224976 
		0.48303231596946716 1 0.49621778726577759 0.80792796611785889 0.66168713569641113 
		1 0.70690131187438965 0.22023841738700867 0.28192803263664246 1 0.81368595361709595 
		0.32524281740188599 0.23405009508132935 0.28288543224334717 1 1 1 1 0.92860662937164307 
		1 1 1 1 1 1;
	setAttr -s 32 ".koy[2:31]"  0 0 0 0.70731210708618164 0.8591046929359436 
		0.8756026029586792 0 -0.86819809675216675 -0.58928126096725464 -0.74978005886077881 
		0 0.70731210708618164 0.97544604539871216 0.95943552255630493 0 -0.58130460977554321 
		-0.94563055038452148 -0.97222453355789185 -0.95915371179580688 0 0 0 0 -0.37106567621231079 
		0 0 0 0 0 0;
createNode animCurveTL -n "Waist_CTRL_translateX";
	rename -uid "42A19B93-45C8-8E02-4461-ECAF4E96F4E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -0.009270945870580638 22 -0.00046667122378171591
		 40 -0.010042650021435048 59 -0.020430526433144951 70 -0.009270945870580638 71 -0.009270945870580638
		 77 0.053216088346778753 80 0.041015433585703094 83 -0.014432892108987266 86 -0.075669498414387734
		 89 -0.092141423179828291 92 -0.070653045880712931 95 -0.009270945870580638 96 -0.009270945870580638
		 98 0.038184495541639808 100 0.053216088346778753 102 0.041015433585703094 104 -0.014432892108987266
		 106 -0.075669498414387734 108 -0.092141423179828291 110 -0.075445051755216444 112 -0.009270945870580638
		 115 -0.009270945870580638 118 -0.01015005740562001 121 -0.011042901341339475 125 -0.01211284603958894
		 128 -0.012339891069119138 132 -0.009270945870580638 135 -0.009270945870580638 140 -0.009270945870580638
		 145 -0.009270945870580638 155 -0.009270945870580638;
	setAttr -s 34 ".kit[2:33]"  1 18 1 18 1 18 18 1 
		1 18 18 1 1 1 18 18 1 1 18 18 1 1 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 1 18 18 1 18 1 
		1 18 18 1 18 1 18 1 1 1 18 18 1 1 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".ktl[2:33]" no yes yes yes yes no yes yes yes yes yes 
		yes no no yes yes yes yes yes yes yes no yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  0.99849396944046021 1 0.99946874380111694 
		1 0.99849396944046021 1 1 0.95697373151779175 0.76530838012695313 0.9321136474609375 
		1 0.88151627779006958 0.82401496171951294 0.82401496171951294 0.90549260377883911 
		1 0.92298120260238647 0.69108831882476807 0.86397391557693481 1 0.86234867572784424 
		0.67959684133529663 0.99849396944046021 0.99996072053909302 0.99996459484100342 0.99998456239700317 
		1 0.99849396944046021 1 1 1 0.99849396944046021;
	setAttr -s 34 ".kiy[2:33]"  0.054861605167388916 0 -0.032591167837381363 
		0 0.054861605167388916 0 0 -0.29017466306686401 -0.64366388320922852 -0.36216583847999573 
		0 0.47215366363525391 0.56656807661056519 0.56656807661056519 0.42436203360557556 
		0 -0.3848450779914856 -0.7227703332901001 -0.50353652238845825 0 0.50631493330001831 
		0.7335858941078186 0.054861605167388916 -0.0088594276458024979 -0.008411661721765995 
		-0.0055584353394806385 0 0.054861605167388916 0 0 0 0.054861605167388916;
	setAttr -s 34 ".kox[2:33]"  0.9990578293800354 1 0.99946880340576172 
		1 1 0.82156610488891602 1 0.95697373151779175 0.7653084397315979 0.93211370706558228 
		1 0.88151633739471436 1 0.81942456960678101 0.90549260377883911 1 0.92298120260238647 
		0.69108849763870239 0.86397391557693481 1 0.86234873533248901 0.93737059831619263 
		1 0.99996072053909302 0.99996459484100342 0.99998456239700317 1 1 1 1 1 1;
	setAttr -s 34 ".koy[2:33]"  0.043398469686508179 0 -0.032591171562671661 
		0 0 0.57011324167251587 0 -0.29017457365989685 -0.64366370439529419 -0.36216583847999573 
		0 0.47215354442596436 0 0.57318705320358276 0.42436203360557556 0 -0.38484504818916321 
		-0.72277015447616577 -0.50353652238845825 0 0.50631475448608398 0.3483336865901947 
		0 -0.0088594267144799232 -0.008411661721765995 -0.0055584353394806385 0 0 0 0 0 0;
createNode animCurveTL -n "Waist_CTRL_translateY";
	rename -uid "63EE75A8-4D86-6EC3-EB58-1584E61648C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -0.0061752249631115324 30 0.006427251131192406
		 50 -0.012457355536627118 70 -0.0061752249631115324 71 -0.024340487441627093 74 -0.074298007697010754
		 77 -0.024340487441627093 80 0.0041843637553566244 83 -0.024340487441627093 86 -0.072792041108501029
		 89 -0.024914418999183851 92 0.0066673833482275438 95 -0.024340487441627093 96 0.080256918645238776
		 98 0.027927281402856857 100 -0.11379713758252159 102 -0.016582396695583264 104 0.014276780071110549
		 106 -0.016313085889735665 108 -0.1142122117732582 110 0.030428698939665606 112 0.080256918645238776
		 115 -0.0061752249631115324 118 0.105557826357234 121 0.087667576010076936 125 0.03628062250952456
		 128 -0.11430196781811086 132 -0.0061752249631115324 135 -0.0061752249631115324 140 -0.0061752249631115324
		 145 -0.0061752249631115324 155 -0.0061752249631115324;
	setAttr -s 34 ".kit[2:33]"  1 18 18 1 18 18 1 18 
		1 18 1 18 1 3 1 3 1 3 1 3 18 1 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 18 18 1 18 1 18 
		1 18 1 18 18 3 1 3 1 3 1 3 18 1 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".ktl[2:33]" no yes yes yes no yes yes yes yes yes yes 
		yes no yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  0.99973469972610474 1 1 0.99973469972610474 
		0.89050346612930298 1 0.82431739568710327 1 0.81074726581573486 1 0.76356351375579834 
		1 0.83513116836547852 1 0.57012569904327393 1 0.70723897218704224 1 0.6775054931640625 
		1 0.5654798150062561 1 0.99973469972610474 1 0.95863962173461914 0.75609451532363892 
		1 0.99973469972610474 1 1 1 0.99973469972610474;
	setAttr -s 34 ".kiy[2:33]"  0.023033849895000458 0 0 0.023033849895000458 
		-0.4549764096736908 0 0.56612807512283325 0 -0.585396409034729 0 0.64573276042938232 
		0 -0.55005079507827759 0 -0.82155752182006836 0 0.70697462558746338 0 -0.73551774024963379 
		0 0.82476210594177246 0 0.023033849895000458 0 -0.28462257981300354 -0.65446239709854126 
		0 0.023033849895000458 0 0 0 0.023033849895000458;
	setAttr -s 34 ".kox[2:33]"  0.99974292516708374 1 1 1 0.73643684387207031 
		1 0.82431727647781372 1 0.81074702739715576 1 0.76356357336044312 1 1 1 0.57012581825256348 
		1 0.70723885297775269 1 0.67750555276870728 1 0.5654798150062561 1 1 1 0.95863968133926392 
		0.75609451532363892 1 1 1 1 1 1;
	setAttr -s 34 ".koy[2:33]"  0.022676780819892883 0 0 0 -0.6765064001083374 
		0 0.56612813472747803 0 -0.58539670705795288 0 0.64573270082473755 0 0 0 -0.82155746221542358 
		0 0.70697468519210815 0 -0.73551774024963379 0 0.82476210594177246 0 0 0 -0.28462257981300354 
		-0.65446239709854126 0 0 0 0 0 0;
createNode animCurveTL -n "Waist_CTRL_translateZ";
	rename -uid "320644A5-447E-084E-7251-DFBC642D3F4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 0 40 0.014288459487553634 70 0
		 71 -0.0005442413748721381 74 0.034662366204851726 77 0.039514849971666974 80 0.013307185902691535
		 83 -0.0005442413748721381 86 0.031805336487943481 89 0.039676044432449056 92 0.014156437372781609
		 95 -0.0005442413748721381 96 -0.0005442413748721381 98 0.032010479228544837 100 0.039514849971666974
		 102 0.010876289507743549 104 -0.0005442413748721381 106 0.031805336487943481 108 0.039676044432449056
		 110 0.010694251598158722 112 -0.0005442413748721381 115 0 118 0.028075541107684253
		 121 0.023957888553428109 125 0.011551376451190223 128 0.0089088499052329909 132 0
		 135 0 140 0 145 0 155 0;
	setAttr -s 33 ".kit[2:32]"  1 18 18 18 18 1 1 1 
		18 18 1 18 1 16 1 1 1 18 18 1 1 1 18 18 18 
		18 1 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 18 18 18 1 1 1 
		18 18 1 18 1 16 1 1 1 18 18 1 1 1 18 18 18 
		18 1 18 18 18 1;
	setAttr -s 33 ".kix[2:32]"  1 1 0.99989700317382813 1 0.98956948518753052 
		1 0.93391376733779907 1 0.98037248849868774 1 0.92052870988845825 1 1 0.95770937204360962 
		1 0.93391376733779907 1 0.9573897123336792 1 0.92052870988845825 1 0.99989700317382813 
		1 0.99750179052352905 0.99792659282684326 0.99877685308456421 0.99989700317382813 
		1 1 1 0.99989700317382813;
	setAttr -s 33 ".kiy[2:32]"  0 0 -0.014352750964462757 0 0.14405623078346252 
		0 -0.3574984073638916 0 0.19715426862239838 0 -0.39067497849464417 0 0 0.28773751854896545 
		0 -0.3574984073638916 0 0.28879895806312561 0 -0.39067497849464417 0 -0.014352750964462757 
		0 -0.070640996098518372 -0.064362086355686188 -0.049445293843746185 -0.014352750964462757 
		0 0 0 -0.014352750964462757;
	setAttr -s 33 ".kox[2:32]"  1 1 0.99989694356918335 1 0.98956942558288574 
		1 0.93391412496566772 1 0.98037254810333252 1 0.92052870988845825 1 1 0.95770937204360962 
		1 0.93391412496566772 1 0.9573897123336792 1 0.92052870988845825 1 0.99989694356918335 
		1 0.99750173091888428 0.99792665243148804 0.99877673387527466 0.99989694356918335 
		1 1 1 0.99989694356918335;
	setAttr -s 33 ".koy[2:32]"  0 0 -0.014352750033140182 0 0.14405623078346252 
		0 -0.35749754309654236 0 0.19715426862239838 0 -0.39067485928535461 0 0 0.28773751854896545 
		0 -0.35749754309654236 0 0.28879895806312561 0 -0.39067485928535461 0 -0.014352750033140182 
		0 -0.070640996098518372 -0.064362086355686188 -0.049445286393165588 -0.014352750033140182 
		0 0 0 -0.014352750033140182;
createNode animCurveTL -n "L_Elbow_translateX";
	rename -uid "7DD45055-4E81-C490-66A9-0A9657219CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0 9 0 10 -6.7106769435999851 70 -6.7106769435999851
		 71 -6.7106769435999851 77 9.4037949800179579 80 10.512018547014591 83 13.020860060164026
		 86 2.7666755352675567 89 -3.5954430394037384 92 -5.9428372541797598 95 -6.7106769435999851
		 96 -6.7106769435999851 98 0.51537694494297703 100 9.4037949800179579 102 10.512018547014591
		 104 4.8796917284445271 106 2.7666755352675567 108 -3.5954430394037384 110 -5.9428372541797598
		 112 -6.7106769435999851 115 -6.7106769435999851 118 -6.7106769435999851 121 14.793705478867757
		 125 14.716499096377349 128 6.2263025999329606 132 -6.7106769435999851 135 -6.7106769435999851
		 140 -6.7106769435999851 145 -6.7106769435999851 155 -6.7106769435999851;
	setAttr -s 31 ".kit[2:30]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 1;
	setAttr -s 31 ".kot[2:30]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 1;
	setAttr -s 31 ".kix[2:30]"  1 1 1 0.030064614489674568 0.055209126323461533 
		1 0.012035503052175045 0.022957349196076393 0.0640687495470047 1 1 0.0082738455384969711 
		0.020048134028911591 1 0.017212079837918282 0.01573033444583416 0.015307149849832058 
		0.042761314660310745 1 1 1 1 0.49889904260635376 0.010888963937759399 1 1 1 1 1;
	setAttr -s 31 ".kiy[2:30]"  0 0 0 0.99954801797866821 0.9984748363494873 
		0 -0.9999275803565979 -0.99973642826080322 -0.99794548749923706 0 0 0.99996578693389893 
		0.99979901313781738 0 -0.99985188245773315 -0.99987626075744629 -0.99988287687301636 
		-0.99908536672592163 0 0 0 0 -0.86666011810302734 -0.99994069337844849 0 0 0 0 0;
	setAttr -s 31 ".kox[2:30]"  1 1 1 0.03006461076438427 0.055209130048751831 
		1 0.01203550212085247 0.022957349196076393 0.0640687495470047 1 1 0.0082738455384969711 
		0.03006461076438427 1 0.017212079837918282 0.01573033444583416 0.015307151712477207 
		0.042761310935020447 1 1 1 1 0.49889904260635376 0.010888963937759399 1 1 1 1 1;
	setAttr -s 31 ".koy[2:30]"  0 0 0 0.99954789876937866 0.9984748363494873 
		0 -0.9999275803565979 -0.99973636865615845 -0.99794548749923706 0 0 0.99996578693389893 
		0.99954789876937866 0 -0.99985188245773315 -0.99987626075744629 -0.99988287687301636 
		-0.99908536672592163 0 0 0 0 -0.86666011810302734 -0.99994075298309326 0 0 0 0 0;
createNode animCurveTL -n "L_Elbow_translateY";
	rename -uid "2F9016FB-4047-C1D9-707F-3D958F1E355F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 -4.0658377727230004 70 -4.0658377727230004
		 71 -4.0658377727230004 74 -9.061589798261366 77 -4.0658377727230004 80 -1.2133526530246286
		 83 -4.0658377727230004 86 -8.9109931394103938 89 0.03629218594025474 92 -2.0147691258022618
		 95 -4.0658377727230004 96 13.16847845832767 98 -9.061589798261366 100 -4.0658377727230004
		 102 -1.2133526530246286 104 -33.045708149996841 106 -8.9109931394103938 108 0.03629218594025474
		 110 -2.0147691258022618 112 13.16847845832767 115 -4.0658377727230004 118 3.920725757400561
		 121 22.972061501703852 125 -6.8898866259709237 128 -5.7783756717712889 132 -4.0658377727230004
		 135 -4.0658377727230004 140 -4.0658377727230004 145 -4.0658377727230004 155 -4.0658377727230004;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kix[2:31]"  1 1 1 1 0.025475164875388145 1 0.02597319707274437 
		1 1 0.048697330057621002 1 0.033093724399805069 1 0.016986515372991562 1 1 0.0040303519926965237 
		1 1 0.033093724399805069 1 0.0073968237265944481 1 1 0.082343190908432007 1 1 1 1 
		1;
	setAttr -s 32 ".kiy[2:31]"  0 0 0 0 0.999675452709198 0 -0.99966263771057129 
		0 0 -0.99881362915039063 0 -0.99945229291915894 0 0.99985569715499878 0 0 0.99999183416366577 
		0 0 -0.99945229291915894 0 0.9999726414680481 0 0 0.99660402536392212 0 0 0 0 0;
	setAttr -s 32 ".kox[2:31]"  1 1 1 1 0.025475164875388145 1 0.02597319707274437 
		1 1 0.048697326332330704 1 0.033093724399805069 1 0.016986515372991562 1 1 0.0040303519926965237 
		1 1 0.033093724399805069 1 0.0073968241922557354 1 1 0.082343190908432007 1 1 1 1 
		1;
	setAttr -s 32 ".koy[2:31]"  0 0 0 0 0.99967539310455322 0 -0.99966263771057129 
		0 0 -0.99881356954574585 0 -0.99945229291915894 0 0.99985569715499878 0 0 0.99999183416366577 
		0 0 -0.99945229291915894 0 0.99997270107269287 0 0 0.99660402536392212 0 0 0 0 0;
createNode animCurveTL -n "L_Elbow_translateZ";
	rename -uid "12A0517C-49DE-B89A-EE2E-3C9F29A199FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0 9 0 10 -61.558358670169781 70 -61.558358670169781
		 71 -64.90993794128147 74 -60.289070696442714 77 -61.833298639520557 83 -64.90993794128147
		 86 -61.109825960605122 89 -61.878095198729085 92 -63.71069010207075 95 -64.90993794128147
		 96 -64.90993794128147 98 -60.289070696442714 100 -61.833298639520557 102 -63.756690281916917
		 104 37.381238628719153 106 -61.109825960605122 108 -61.878095198729085 110 -63.71069010207075
		 112 -64.90993794128147 115 -61.558358670169781 118 -61.558358670169781 121 -61.558358670169781
		 125 -14.544034448214493 128 -33.048295207335606 132 -61.558358670169781 135 -61.558358670169781
		 140 -61.558358670169781 145 -61.558358670169781 155 -61.558358670169781;
	setAttr -s 31 ".kit[2:30]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 1;
	setAttr -s 31 ".kot[2:30]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 1;
	setAttr -s 31 ".kix[2:30]"  1 1 1 1 0.064786471426486969 1 1 0.076671183109283447 
		0.06582343578338623 1 1 1 0.038422606885433197 1 1 0.028912926092743874 0.051197826862335205 
		0.043935224413871765 1 1 1 1 1 0.0049629705026745796 1 1 1 1 1;
	setAttr -s 31 ".kiy[2:30]"  0 0 0 0 -0.99789917469024658 0 0 -0.99705642461776733 
		-0.99783128499984741 0 0 0 -0.99926155805587769 0 0 -0.99958193302154541 -0.99868857860565186 
		-0.99903440475463867 0 0 0 0 0 -0.99998772144317627 0 0 0 0 0;
	setAttr -s 31 ".kox[2:30]"  1 1 1 1 0.064786478877067566 1 1 0.076671183109283447 
		0.06582343578338623 1 1 1 0.038422606885433197 1 1 0.028912926092743874 0.051197826862335205 
		0.043935228139162064 1 1 1 1 1 0.0049629709683358669 1 1 1 1 1;
	setAttr -s 31 ".koy[2:30]"  0 0 0 0 -0.99789917469024658 0 0 -0.99705642461776733 
		-0.99783128499984741 0 0 0 -0.99926155805587769 0 0 -0.99958193302154541 -0.99868857860565186 
		-0.99903440475463867 0 0 0 0 0 -0.99998772144317627 0 0 0 0 0;
createNode animCurveTL -n "L_Hand_CTRL_translateX";
	rename -uid "B8709014-41CA-F189-7C78-96B06B0255FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -24.523184018766631 24 -25.412684043971439
		 45 -22.529949614809361 58 -24.284945541467401 70 -24.522801626243115 71 -24.522801626243115
		 77 -14.331317603718325 80 -15.885328868109056 83 -24.522801626243115 86 -32.809849441113315
		 89 -32.471428582685796 92 -30.298146341697876 95 -24.522801626243115 96 -24.522801626243115
		 98 -22.053957078005077 100 -14.331317603718325 102 -24.006271724527025 104 -36.705706840307279
		 106 -32.809849441113315 108 -32.471428582685796 110 -30.298146341697876 112 -24.522801626243115
		 115 -24.522801626243115 118 -17.147849630181277 121 -17.862798357726756 125 -21.398817663410249
		 128 -8.8922062944031595 132 -24.522801626243115 135 -24.522801626243115 140 -24.522801626243115
		 145 -24.522801626243115 155 -24.522801626243115;
	setAttr -s 34 ".kit[2:33]"  1 3 18 1 18 18 18 18 
		1 18 1 18 1 16 16 16 1 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 3 18 1 18 1 18 18 
		1 18 1 18 18 16 16 16 1 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".ktl[7:33]" no yes yes yes yes yes yes no no yes yes 
		yes yes yes yes yes no yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  1 1 1 0.48677650094032288 1 1 1 0.021444965153932571 
		0.0080693522468209267 1 0.13242325186729431 0.025153623893857002 0.013318508863449097 
		1 0.013081686571240425 1 0.0033074610400944948 1 1 1 0.016772041097283363 1 1 1 0.0548069067299366 
		1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[2:33]"  0 0 0 -0.87352657318115234 0 0 0 -0.99977004528045654 
		-0.99996745586395264 0 0.99119329452514648 0.99968361854553223 0.99991130828857422 
		0 0.99991446733474731 0 -0.99999451637268066 0 0 0 0.99985939264297485 0 0 0 -0.99849694967269897 
		0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[2:33]"  1 1 1 0.48677650094032288 1 0.016678737476468086 
		1 0.021444963291287422 0.0080693522468209267 1 0.13242314755916595 0.025153622031211853 
		1 1 0.013081686571240425 1 0.0033074603416025639 1 1 1 0.016772041097283363 1 1 1 
		0.054806903004646301 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[2:33]"  0 0 0 -0.87352657318115234 0 0.99986094236373901 
		0 -0.99977004528045654 -0.99996745586395264 0 0.99119329452514648 0.99968361854553223 
		0 0 0.99991446733474731 0 -0.99999451637268066 0 0 0 0.99985939264297485 0 0 0 -0.99849694967269897 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "L_Hand_CTRL_translateY";
	rename -uid "9D16A547-4A9D-C66E-953F-44A4D07D9F5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 9 0 10 -22.195 24 -19.909496755302897
		 45 -23.535215431331284 58 -22.027516256128692 70 -22.194793079420279 71 -17.33626251708823
		 74 -23.610051498418734 77 -23.337421781295788 80 -20.576851053144114 83 -20.133052824380179
		 86 -25.718729222044242 89 -23.462011380340208 92 -16.400805974601479 95 -17.33626251708823
		 96 6.4393649882625681 98 -5.8560277816289315 100 -31.730462031841114 102 -26.529222337881652
		 104 -3.5912361067229526 106 -17.494693015080511 108 -36.567822729557825 110 -12.65567501954531
		 112 6.4393649882625681 115 -22.194793079420279 118 13.839727799344118 121 40.691731196901245
		 125 24.711814345286822 128 -14.448779288752846 132 -22.194793079420279 135 -22.194793079420279
		 140 -22.194793079420279 145 -22.194793079420279 155 -22.194793079420279;
	setAttr -s 35 ".kit[2:34]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18 1 16 1 16 16 16 1 16 1 16 1 18 
		18 18 18 1 18 18 18 1;
	setAttr -s 35 ".kot[2:34]"  1 18 18 18 18 1 18 18 
		18 18 18 1 18 18 16 1 16 16 16 1 16 1 16 1 18 
		18 18 18 1 18 18 18 1;
	setAttr -s 35 ".ktl[7:34]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 0.12136208266019821 0.074898168444633484 
		1 1 0.014906957745552063 1 0.047532245516777039 1 0.00284811039455235 1 0.0047382949851453304 
		1 0.0020569555927067995 1 0.0016875289147719741 1 1 0.0031803161837160587 1 0.0042315805330872536 
		0.0057376185432076454 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0.99260824918746948 0.99719119071960449 
		0 0 0.99988889694213867 0 -0.99886971712112427 0 -0.99999594688415527 0 0.99998879432678223 
		0 -0.99999791383743286 0 0.99999862909317017 0 0 0.99999493360519409 0 -0.99999105930328369 
		-0.99998360872268677 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 0.043472163379192352 1 0.12136208266019821 
		0.074898168444633484 1 1 0.014906956814229488 1 1 1 0.0028481099288910627 1 0.0047382949851453304 
		1 0.0020569555927067995 1 0.0016875292640179396 1 1 0.0031803164165467024 1 0.0042315800674259663 
		0.0057376185432076454 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 -0.9990546703338623 0 0.99260830879211426 
		0.99719119071960449 0 0 0.99988889694213867 0 0 0 -0.99999594688415527 0 0.99998879432678223 
		0 -0.99999797344207764 0 0.99999862909317017 0 0 0.99999499320983887 0 -0.99999105930328369 
		-0.99998360872268677 0 0 0 0 0;
createNode animCurveTL -n "L_Hand_CTRL_translateZ";
	rename -uid "38250C75-499B-7869-CCCF-119CE180E2E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -8.6931759491615743 24 -13.706933433065322
		 45 -9.1297493673876584 58 -3.552763448706731 70 -8.6931759491615743 71 -25.658155929693432
		 74 -19.718578006728372 77 -3.3436130569209972 83 15.932601406116635 86 14.086014680747127
		 89 1.0462559480524227 92 -16.935977685775203 95 -25.658155929693432 96 -25.658155929693432
		 98 -23.566749599158506 100 0.70463671599437561 102 31.333419559558934 104 39.217509423478667
		 106 32.571812885990298 108 16.335245395869851 110 -10.704261644046863 112 -25.658155929693432
		 115 -8.6931759491615743 118 20.488876415645041 121 16.421795470924351 125 18.387095050339326
		 128 24.170437923134273 132 -8.6931759491615743 135 -8.6931759491615743 140 -8.6931759491615743
		 145 -8.6931759491615743 155 -8.6931759491615743;
	setAttr -s 34 ".kit[2:33]"  1 18 1 18 1 18 18 1 
		18 18 1 1 18 16 1 16 16 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 1 18 1 18 18 1 
		18 18 1 1 18 16 1 16 16 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".ktl[2:33]" no yes yes yes no yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes no yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  1 1 0.049594007432460785 1 0.038035348057746887 
		1 0.0089624067768454552 0.0055508916266262531 1 0.018048364669084549 0.0044200276024639606 
		0.0061924643814563751 1 1 0.015257538296282291 0.0024286455009132624 0.0034620277583599091 
		1 0.0058268248103559017 0.0030809822492301464 0.0031750886701047421 1 0.038035348057746887 
		1 1 0.030099190771579742 1 0.038035348057746887 1 1 1 0.038035348057746887;
	setAttr -s 34 ".kiy[2:33]"  0 0 0.99876946210861206 0 -0.99927645921707153 
		0 0.99995982646942139 0.99998462200164795 0 -0.99983710050582886 -0.99999022483825684 
		-0.9999808669090271 0 0 0.99988359212875366 0.99999701976776123 0.99999397993087769 
		0 -0.99998301267623901 -0.99999529123306274 -0.99999493360519409 0 -0.99927645921707153 
		0 0 0.99954694509506226 0 -0.99927645921707153 0 0 0 -0.99927645921707153;
	setAttr -s 34 ".kox[2:33]"  0.052934650331735611 1 0.049594048410654068 
		1 0.60558730363845825 1 0.0089624067768454552 0.0055508906953036785 1 0.018048364669084549 
		0.004420028068125248 0.0061924639157950878 1 1 0.015257538296282291 0.0024286455009132624 
		0.0034620277583599091 1 0.0058268248103559017 0.0030809822492301464 0.0031750886701047421 
		1 0.60558730363845825 1 1 0.030099190771579742 1 0.60558730363845825 1 1 1 0.60558730363845825;
	setAttr -s 34 ".koy[2:33]"  -0.99859797954559326 0 0.99876946210861206 
		0 0.79577893018722534 0 0.99995982646942139 0.99998462200164795 0 -0.99983710050582886 
		-0.99999022483825684 -0.9999808669090271 0 0 0.99988365173339844 0.99999701976776123 
		0.99999397993087769 0 -0.99998301267623901 -0.99999529123306274 -0.99999493360519409 
		0 0.79577893018722534 0 0 0.99954688549041748 0 0.79577893018722534 0 0 0 0.79577893018722534;
createNode animCurveTL -n "R_Elbow_translateX";
	rename -uid "CC1C7DFB-4326-C836-E83D-1A9AB5502207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 4.7913712890292857 36 -2.5442553390819853
		 50 0.76457541388354944 70 4.7913712890292857 71 4.7913712890292857 77 3.6881777908051578
		 80 -0.96946874047128162 83 -11.112526343566882 86 -14.480883711257341 89 -11.03027437084633
		 92 -0.13685355658773624 95 4.7913712890292857 96 -24.579138198756979 98 4.6534726028291269
		 100 3.6881777908051578 102 -0.96946874047128162 104 -3.5075969322517135 106 -14.480883711257341
		 108 -11.03027437084633 110 -28.352227149383609 112 -24.579138198756979 115 4.7913712890292857
		 118 4.7913712890292857 121 -7.0756016082235647 125 -2.1269723805277492 128 1.6528012067577089
		 132 4.7913712890292857 135 4.7913712890292857 140 4.7913712890292857 142 -9.4956394165545674
		 145 4.7913712890292857 155 4.7913712890292857;
	setAttr -s 34 ".kit[2:33]"  1 18 1 18 18 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 1 18 18 18 18 18 
		18 18 18 18 1 18 1 18 18 18 18 18 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 34 ".kix[2:33]"  1 1 0.13540053367614746 1 1 0.060320593416690826 
		0.013511640951037407 0.014800664037466049 1 0.013941731303930283 0.012639903463423252 
		1 1 1 0.023705737665295601 0.0185262281447649 0.0098677091300487518 1 1 1 1 1 1 1 
		0.026723131537437439 0.0337076336145401 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[2:33]"  0 0 0.99079102277755737 0 0 -0.99817907810211182 
		-0.99990874528884888 -0.99989044666290283 0 0.99990284442901611 0.99992012977600098 
		0 0 0 -0.99971896409988403 -0.99982839822769165 -0.99995130300521851 0 0 0 0 0 0 
		0 0.99964284896850586 0.99943172931671143 0 0 0 0 0 0;
	setAttr -s 34 ".kox[2:33]"  1 1 0.13540051877498627 1 1 0.060320593416690826 
		0.013511640019714832 0.014800664037466049 1 0.013941730372607708 0.012639903463423252 
		1 1 1 0.060320593416690826 0.0185262281447649 0.0098677091300487518 1 1 1 1 1 1 1 
		0.026723131537437439 0.0337076336145401 1 1 1 1 1 1;
	setAttr -s 34 ".koy[2:33]"  0 0 0.99079102277755737 0 0 -0.99817901849746704 
		-0.9999086856842041 -0.99989044666290283 0 0.99990278482437134 0.99992012977600098 
		0 0 0 -0.99817901849746704 -0.99982839822769165 -0.99995130300521851 0 0 0 0 0 0 
		0 0.99964290857315063 0.99943172931671143 0 0 0 0 0 0;
createNode animCurveTL -n "R_Elbow_translateY";
	rename -uid "30F68F96-45DE-B0A9-3B0D-EC847A8556DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 -14.246810653088204 70 -14.246810653088204
		 71 -14.246810653088204 74 -19.24256267862657 77 -13.163729464492775 80 -11.394325533389832
		 83 -13.163729464492775 86 -19.091966019775597 89 -10.144680694424949 92 -11.279288692740563
		 95 -14.246810653088204 96 -29.551407984871972 98 -19.24256267862657 100 -13.163729464492775
		 102 -11.394325533389832 104 -0.86552937779383399 106 -19.091966019775597 108 -10.144680694424949
		 110 -11.279288692740563 112 -29.551407984871972 115 -14.246810653088204 118 -6.2602471229646426
		 121 12.791088621338648 125 -18.234516078062903 128 -16.66500418492301 132 -14.246810653088204
		 135 -14.246810653088204 140 -14.246810653088204 145 -14.246810653088204 155 -14.246810653088204;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 18 18 18 18 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 1 18 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".ktl[4:31]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 32 ".kix[2:31]"  1 1 1 1 0.025475164875388145 1 0.02597319707274437 
		1 1 0.048697330057621002 0.032174922525882721 0.032174922525882721 0.0081359166651964188 
		0.016986515372991562 0.012558199465274811 1 1 1 0.019582109525799751 0.032174922525882721 
		1 0.0073968237265944481 1 1 0.058413337916135788 1 1 1 1 1;
	setAttr -s 32 ".kiy[2:31]"  0 0 0 0 0.999675452709198 0 -0.99966263771057129 
		0 0 -0.99881362915039063 -0.99948227405548096 -0.99948227405548096 0.99996685981750488 
		0.99985569715499878 0.99992114305496216 0 0 0 -0.99980825185775757 -0.99948227405548096 
		0 0.9999726414680481 0 0 0.99829250574111938 0 0 0 0 0;
	setAttr -s 32 ".kox[2:31]"  1 1 0.016528060659766197 1 0.025475164875388145 
		1 0.02597319707274437 1 1 0.048697326332330704 0.011232024058699608 0.029288612306118011 
		1 0.016986515372991562 0.012558199465274811 1 1 1 0.019582109525799751 0.029288612306118011 
		1 0.0073968241922557354 1 1 0.058413330465555191 1 1 1 1 1;
	setAttr -s 32 ".koy[2:31]"  0 0 -0.99986344575881958 0 0.99967539310455322 
		0 -0.99966263771057129 0 0 -0.99881356954574585 -0.99993693828582764 -0.99957096576690674 
		0 0.99985569715499878 0.99992114305496216 0 0 0 -0.99980825185775757 -0.99957096576690674 
		0 0.99997270107269287 0 0 0.99829244613647461 0 0 0 0 0;
createNode animCurveTL -n "R_Elbow_translateZ";
	rename -uid "DA9EB03D-4A0D-29FD-45EE-42B81BE01565";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 -40.837449995875573 70 -40.837449995875573
		 71 -44.189029266987262 74 -39.568162022148506 77 -40.562286721793164 83 -44.189029266987262
		 86 -40.388917286310914 89 -41.072555256214386 92 -43.260601486082109 95 -44.189029266987262
		 96 4.8884473539804922 98 -39.568162022148506 100 -40.562286721793164 102 -42.760729985906117
		 104 -44.189029266987262 106 -40.388917286310914 108 -41.072555256214386 110 -7.9140218777026163
		 112 4.8884473539804922 115 -40.837449995875573 118 -40.837449995875573 121 -40.837449995875573
		 125 -20.952933593581733 128 -28.779235102032157 132 -40.837449995875573 135 0.79234004622012222
		 140 0.79234004622012222 142 -9.2476164321497656 145 20.741237895294002 155 -40.837449995875573;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 18 18 18 18 1 1 18 18 18 18 1 
		18 18 18 18 1;
	setAttr -s 32 ".kix[2:31]"  1 1 1 1 0.064786471426486969 1 1 0.069477260112762451 
		0.06404336541891098 1 1 0.022347951307892799 0.041727323085069656 0.036739148199558258 
		1 1 1 0.0029010002035647631 1 1 1 1 1 0.011733628809452057 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[2:31]"  0 0 0 0 -0.99789917469024658 0 0 -0.99758356809616089 
		-0.99794715642929077 0 0 -0.99975025653839111 -0.99912899732589722 -0.99932491779327393 
		0 0 0 0.99999576807022095 0 0 0 0 0 -0.99993115663528442 0 0 0 0 0 0;
	setAttr -s 32 ".kox[2:31]"  1 1 1 1 0.064786478877067566 1 1 0.069477260112762451 
		0.064043357968330383 1 1 1 0.041727323085069656 0.036739148199558258 1 1 1 0.0029010002035647631 
		1 1 1 1 1 0.011733628809452057 1 1 1 1 1 1;
	setAttr -s 32 ".koy[2:31]"  0 0 0 0 -0.99789917469024658 0 0 -0.99758356809616089 
		-0.997947096824646 0 0 0 -0.99912905693054199 -0.99932491779327393 0 0 0 0.99999576807022095 
		0 0 0 0 0 -0.99993115663528442 0 0 0 0 0 0;
createNode animCurveTL -n "R_Hand_CTRL_translateX";
	rename -uid "E560B946-4A1E-5C7C-7BEA-27B8F5690FA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 9 0 10 24.071951979749247 24 22.863142354374229
		 33 20.069000910738971 45 22.092729353864829 57 24.84014373072489 70 24.071951979749247
		 71 24.071951979749247 77 23.429999771083157 80 20.726454885035043 83 19.578291985563823
		 86 14.385038126612304 89 12.245066968881325 92 17.13160695255306 95 24.071951979749247
		 96 28.769255005825979 98 33.565826221791383 100 30.124513888315352 102 20.726454885035043
		 104 20.702961612623604 106 14.385038126612304 108 9.7557044278753295 110 17.13160695255306
		 112 28.769255005825979 115 24.071951979749247 118 14.607053809275421 121 10.75255734304012
		 125 6.7051857692986871 128 4.4027192352314799 132 24.071951979749247 135 4.4048157278735189
		 140 4.4048157278735189 145 23.836363153245212 149 32.743754454778589 152 18.773495554799631
		 155 24.071951979749247;
	setAttr -s 37 ".kit[2:36]"  1 18 18 1 18 1 18 18 
		1 1 18 18 1 18 16 16 1 16 16 16 16 16 1 1 18 
		18 18 18 1 18 18 18 18 18 1;
	setAttr -s 37 ".kot[2:36]"  1 18 18 1 18 1 18 18 
		1 1 18 18 1 18 16 16 1 16 16 16 16 16 16 1 18 
		18 18 18 1 18 18 18 18 18 1;
	setAttr -s 37 ".ktl[2:36]" no yes yes yes yes no yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes no no yes yes yes yes yes yes yes yes 
		yes yes yes;
	setAttr -s 37 ".kix[2:36]"  0.37879529595375061 0.18810637295246124 
		1 0.080161109566688538 1 0.37879529595375061 1 0.10329440981149673 0.067666001617908478 
		0.062768347561359406 0.02726300060749054 1 0.010207610204815865 0.011456326581537724 
		0.010532512329518795 1 0.0086069181561470032 1 1 0.012178695760667324 1 0.0070123756304383278 
		0.0073469667695462704 0.37879529595375061 0.015014009550213814 0.029515989124774933 
		0.036721598356962204 1 0.37879529595375061 1 1 0.010585554875433445 1 1 0.37879529595375061;
	setAttr -s 37 ".kiy[2:36]"  -0.92548048496246338 -0.98214870691299438 
		0 0.99678194522857666 0 -0.92548048496246338 0 -0.99465084075927734 -0.9977080225944519 
		-0.99802815914154053 -0.99962830543518066 0 0.99994796514511108 0.99993431568145752 
		0.99994444847106934 0 -0.99996304512023926 0 0 -0.99992585182189941 0 0.99997538328170776 
		0.99997299909591675 -0.92548048496246338 -0.99988728761672974 -0.99956434965133667 
		-0.99932557344436646 0 -0.92548048496246338 0 0 0.99994397163391113 0 0 -0.92548048496246338;
	setAttr -s 37 ".kox[2:36]"  0.77563029527664185 0.18810637295246124 
		1 0.080161049962043762 1 0.77563029527664185 1 0.10329440236091614 0.067666009068489075 
		0.062768362462520599 0.02726299874484539 1 0.01020760927349329 0.011456325650215149 
		0.010532512329518795 1 0.0086069153621792793 1 1 0.012178695760667324 1 0.0070123756304383278 
		1 0.77563029527664185 0.015014008618891239 0.029515987262129784 0.036721598356962204 
		1 0.77563029527664185 1 1 0.01058555394411087 1 1 0.77563029527664185;
	setAttr -s 37 ".koy[2:36]"  -0.63118749856948853 -0.98214870691299438 
		0 0.99678194522857666 0 -0.63118749856948853 0 -0.99465084075927734 -0.9977080225944519 
		-0.99802815914154053 -0.99962824583053589 0 0.99994790554046631 0.99993437528610229 
		0.99994444847106934 0 -0.99996298551559448 0 0 -0.99992585182189941 0 0.99997538328170776 
		0 -0.63118749856948853 -0.99988728761672974 -0.99956423044204712 -0.99932551383972168 
		0 -0.63118749856948853 0 0 0.99994397163391113 0 0 -0.63118749856948853;
createNode animCurveTL -n "R_Hand_CTRL_translateY";
	rename -uid "21DE817B-4A6D-E37D-C385-0ABE3DEFBFB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 9 0 10 -22.483804398640363 24 -21.806365757499869
		 33 -21.557399832989631 45 -21.453103800818411 61 -22.675589745229189 70 -22.483804398640363
		 71 -18.714243301042391 74 -25.754512276327667 77 -24.587279771635774 80 -17.307340687581377
		 83 -20.47546616748286 86 -27.820448016950952 89 -23.516761355274582 92 -17.369809617647661
		 95 -18.714243301042391 96 5.6540276155400413 98 -2.5817790995240628 100 -27.475932437787943
		 102 -13.490980371543603 104 -1.5761105008712057 106 -11.336770876658438 108 -34.319763037185993
		 110 -17.369809617647661 112 5.6540276155400413 115 -22.483804398640363 118 23.214479863723476
		 121 42.60832694531392 125 25.842619017848172 128 -18.105033299214252 132 -22.483804398640363
		 135 25.828404109137917 140 25.828404109137917 142 33.954654564740352 144 30.725757644148331
		 145 23.135932087386802 149 -11.392333691170851 152 -23.536515461713595 155 -22.483804398640363;
	setAttr -s 40 ".kit[2:39]"  1 1 18 18 3 1 18 18 
		18 18 18 18 1 18 1 16 16 16 1 16 1 16 1 16 1 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 40 ".kot[2:39]"  1 1 18 18 3 1 1 18 
		18 18 18 18 1 18 18 16 16 16 1 16 1 16 1 16 1 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 40 ".ktl[2:39]" no yes yes yes yes no no yes yes yes yes 
		yes yes yes no yes yes yes yes yes yes yes yes yes no yes yes yes yes yes yes yes 
		yes yes yes yes yes yes;
	setAttr -s 40 ".kix[2:39]"  0.92210149765014648 0.66915833950042725 
		0.89275693893432617 1 1 0.62978720664978027 1 1 0.028545912355184555 1 0.019020410254597664 
		1 0.0086515843868255615 1 0.046173762530088425 1 0.0040245181880891323 1 0.0035158118698745966 
		1 0.0028663857374340296 1 0.0016766363987699151 1 0.62978720664978027 0.0030725542455911636 
		1 0.0038431715220212936 0.010149449110031128 0.62978720664978027 1 1 1 0.0092428764328360558 
		0.0039570932276546955 0.0049993135035037994 1 0.62978720664978027;
	setAttr -s 40 ".kiy[2:39]"  0.38694819808006287 0.74311983585357666 
		0.45053866505622864 0 0 0.7767677903175354 0 0 0.99959248304367065 0 -0.99981904029846191 
		0 0.99996256828308105 0 -0.99893343448638916 0 -0.99999189376831055 0 0.99999386072158813 
		0 -0.9999958872795105 0 0.99999862909317017 0 0.7767677903175354 0.99999529123306274 
		0 -0.99999260902404785 -0.99994850158691406 0.7767677903175354 0 0 0 -0.99995726346969604 
		-0.99999219179153442 -0.99998748302459717 0 0.7767677903175354;
	setAttr -s 40 ".kox[2:39]"  0.58143848180770874 0.66915798187255859 
		0.89275693893432617 1 1 0.95813655853271484 0.040776222944259644 1 0.028545912355184555 
		1 0.019020410254597664 1 0.0086515853181481361 1 1 1 0.0040245181880891323 1 0.0035158100072294474 
		1 0.0028663859702646732 1 0.0016766360495239496 1 0.95813655853271484 0.0030725542455911636 
		1 0.0038431715220212936 0.010149449110031128 0.95813655853271484 1 1 1 0.0092428764328360558 
		0.0039570932276546955 0.0049993135035037994 1 0.95813655853271484;
	setAttr -s 40 ".koy[2:39]"  0.813590407371521 0.74312019348144531 0.45053863525390625 
		0 0 0.28631177544593811 -0.99916833639144897 0 0.99959248304367065 0 -0.99981904029846191 
		0 0.99996256828308105 0 0 0 -0.99999189376831055 0 0.99999386072158813 0 -0.9999958872795105 
		0 0.99999862909317017 0 0.28631177544593811 0.99999529123306274 0 -0.99999260902404785 
		-0.99994850158691406 0.28631177544593811 0 0 0 -0.99995726346969604 -0.99999219179153442 
		-0.99998748302459717 0 0.28631177544593811;
createNode animCurveTL -n "R_Hand_CTRL_translateZ";
	rename -uid "DB393352-4F12-CF0B-130D-CA871C2C0098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 9 0 10 -10.547024173729131 24 -9.0762189527075137
		 33 -6.16114143727604 45 -5.3582923046563398 65 -9.934185055363665 70 -10.547024173729131
		 71 18.05733384477417 74 15.720021423059851 77 -0.14304598791163414 80 -18.467809018372463
		 83 -22.230527813569182 86 -9.0341926371359023 89 9.0147192485607199 92 16.863967142326239
		 95 18.05733384477417 96 37.010909251108984 98 33.211754189827573 100 16.509200714024743
		 102 -18.467809018372463 104 -25.343084192568266 106 -18.191938653875042 108 4.0493907239772362
		 110 27.862571398905665 112 37.010909251108984 115 -10.547024173729131 118 14.048244837980828
		 121 10.205242301102437 125 4.6008702573146678 128 34.199413820258599 132 -10.547024173729131
		 135 -3.4028434062181674 140 -3.4028434062181674 142 0.39310456120399984 145 38.529645296281473
		 149 17.351093009569581 152 -11.661922798122148 155 -10.547024173729131;
	setAttr -s 39 ".kit[2:38]"  1 1 18 18 18 1 18 18 
		18 18 18 1 18 18 18 16 16 16 1 16 16 16 16 16 1 
		18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 39 ".kot[2:38]"  1 1 18 18 18 1 18 18 
		18 18 18 1 18 18 18 16 16 16 1 16 16 16 16 16 1 
		18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 39 ".ktl[2:38]" no yes yes yes yes no yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes no yes yes yes yes yes yes yes 
		yes yes yes yes yes;
	setAttr -s 39 ".kix[2:38]"  1 0.12942054867744446 0.18502610921859741 
		1 0.15857234597206116 1 1 0.014259965158998966 0.0058499365113675594 0.0090545341372489929 
		1 0.0038768532685935497 0.0077223274856805801 0.027921330183744431 0.027921330183744431 
		1 0.006503379438072443 0.0025799947325140238 0.0041082687675952911 1 0.004536257591098547 
		0.0028951100539416075 0.0040450915694236755 1 1 1 0.024690667167305946 1 1 1 1 1 
		0.0058540892787277699 1 0.0046488004736602306 1 1;
	setAttr -s 39 ".kiy[2:38]"  0 0.99158978462219238 0.98273360729217529 
		0 -0.98734736442565918 0 0 -0.99989837408065796 -0.99998295307159424 -0.99995899200439453 
		0 0.9999924898147583 0.9999701976776123 0.99961012601852417 0.99961012601852417 0 
		-0.99997884035110474 -0.99999672174453735 -0.99999159574508667 0 0.99998968839645386 
		0.99999576807022095 0.99999183416366577 0 0 0 -0.99969518184661865 0 0 0 0 0 0.99998283386230469 
		0 -0.99998921155929565 0 0;
	setAttr -s 39 ".kox[2:38]"  1 0.12942054867744446 0.18502610921859741 
		1 0.15857236087322235 1 1 0.014259965158998966 0.0058499365113675594 0.0090545332059264183 
		1 0.0038768530357629061 0.0077223279513418674 0.027921330183744431 0.027921326458454132 
		1 0.006503379438072443 0.0025799947325140238 0.0041082669049501419 1 0.004536257591098547 
		0.0028951100539416075 0.0040450915694236755 1 1 1 0.024690665304660797 1 1 1 1 1 
		0.0058540892787277699 1 0.0046488004736602306 1 1;
	setAttr -s 39 ".koy[2:38]"  0 0.99158978462219238 0.98273360729217529 
		0 -0.98734742403030396 0 0 -0.99989837408065796 -0.99998295307159424 -0.99995899200439453 
		0 0.9999924898147583 0.9999701976776123 0.99961012601852417 0.99961006641387939 0 
		-0.99997884035110474 -0.99999672174453735 -0.99999159574508667 0 0.99998968839645386 
		0.99999576807022095 0.99999183416366577 0 0 0 -0.99969512224197388 0 0 0 0 0 0.99998283386230469 
		0 -0.99998921155929565 0 0;
createNode animCurveTU -n "R_Foot_CTRL_visibility";
	rename -uid "7E163E15-4E0E-5A46-0B52-9BB4D8187B37";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 1 9 1 10 1 70 1 71 1 83 1 89 1 92 1 95 1
		 96 1 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1
		 132 1 135 1 140 1 145 1 155 1;
	setAttr -s 28 ".kit[0:27]"  9 9 1 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 1 1 9 9 9 1 1 9 
		9 9 1;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "R_Foot_CTRL_rotateX";
	rename -uid "B30E1CEE-4A3D-B0F2-301B-0D8FEA801FE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 0 70 0 71 12.801272339192991
		 74 64.523390292744963 77 80.459091487701656 80 25.478584835501973 83 -25.945639381401193
		 84 0 89 0 92 6.4006247243698686 95 12.801272339192991 96 118.41320835981317 98 119.83181895219445
		 100 80.459091487701656 102 25.478584835501973 104 -25.945639381401193 105 -39.009718749631617
		 106 0 108 0 110 40.326747916889992 112 118.41320835981317 115 0 118 44.614885860791581
		 121 48.239758785571674 125 -11.14060714536679 128 0 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 33 ".kit[2:32]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kix[2:32]"  1 1 0.11757681518793106 0.16699109971523285 
		1 0.10707493126392365 1 1 1 0.66696906089782715 0.28592842817306519 0.28592842817306519 
		1 0.080702334642410278 0.071611754596233368 0.088498085737228394 1 1 1 0.06438128650188446 
		0.28592842817306519 1 0.46613430976867676 1 1 1 1 1 1 1 1;
	setAttr -s 33 ".kiy[2:32]"  0 0 0.99306374788284302 0.98595839738845825 
		0 -0.99425095319747925 0 0 0 0.74508547782897949 0.95825099945068359 0.95825099945068359 
		0 -0.99673831462860107 -0.99743258953094482 -0.99607634544372559 0 0 0 0.99792540073394775 
		0.95825099945068359 0 0.88471400737762451 0 0 0 0 0 0 0 0;
	setAttr -s 33 ".kox[2:32]"  1 1 0.11757682263851166 0.16699109971523285 
		1 0.10707493126392365 1 1 1 0.66696906089782715 0.28592842817306519 0.28592842817306519 
		0.16699109971523285 0.080702327191829681 0.071611762046813965 0.088498085737228394 
		1 1 1 0.06438128650188446 0.28592842817306519 1 0.46613430976867676 1 1 1 1 1 1 1 
		1;
	setAttr -s 33 ".koy[2:32]"  0 0 0.99306380748748779 0.98595833778381348 
		0 -0.99425095319747925 0 0 0 0.74508547782897949 0.95825093984603882 0.95825093984603882 
		0.98595833778381348 -0.9967382550239563 -0.99743252992630005 -0.99607634544372559 
		0 0 0 0.99792540073394775 0.95825093984603882 0 0.88471400737762451 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "R_Foot_CTRL_rotateY";
	rename -uid "2FAFAA85-4C80-E73C-1CF9-848EAF5D92D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 -10.954542152838398 9 -10.954542152838398
		 10 -22.589154638636003 70 -22.589154638636003 71 -22.589154638636003 83 -7.3496044121725337
		 89 -7.872 92 -15.426462737934333 95 -22.589154638636003 96 -22.589154638636003 98 -20.207977470480181
		 100 -15.181032360333443 102 -10.193788167972951 104 -7.3496044121725337 106 -7.4149040963693968
		 108 -7.872 110 -15.426462737934333 112 -22.589154638636003 115 -22.589154638636003
		 118 -22.589154638636003 121 -16.176115917662528 125 -18.850407931955491 128 -22.589154638636003
		 132 -22.589154638636003 135 -22.589154638636003 140 -22.589154638636003 145 -22.589154638636003
		 155 -22.589154638636003;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 18 18 18 1 
		18 18 18 1 18 18 18 1 1 18 18 18 1 1 18 18 18 
		1;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 0.99077719449996948 0.61435747146606445 
		1 1 0.71789145469665527 0.60652458667755127 0.69827824831008911 1 0.99868744611740112 
		0.94118618965148926 0.46071285009384155 1 1 1 1 0.90163081884384155 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 -0.13550147414207458 -0.78902775049209595 
		0 0 0.69615501165390015 0.79506468772888184 0.71582645177841187 0 -0.051218986511230469 
		-0.33788830041885376 -0.88754922151565552 0 0 0 0 -0.43250656127929688 0 0 0 0 0 
		0;
	setAttr -s 28 ".kox[2:27]"  1 1 1 1 0.99077713489532471 0.61435747146606445 
		1 1 0.71789145469665527 0.60652458667755127 0.69827824831008911 1 0.99868744611740112 
		0.94118618965148926 0.46071287989616394 1 1 1 1 0.90163075923919678 1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0 0 -0.13550147414207458 -0.78902775049209595 
		0 0 0.69615501165390015 0.79506468772888184 0.71582645177841187 0 -0.051218986511230469 
		-0.33788830041885376 -0.88754922151565552 0 0 0 0 -0.43250656127929688 0 0 0 0 0 
		0;
createNode animCurveTA -n "R_Foot_CTRL_rotateZ";
	rename -uid "1933CB8E-4723-7F76-8DF3-ACB8EE1DD258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 0 70 0 71 0 83 2.3803193107647291
		 84 0 89 0 92 0 95 0 96 0 98 0.37192449327480592 100 1.157100847309243 102 1.936076179186194
		 104 2.3803193107647291 106 0 108 0 110 0 112 0 115 0 118 0 121 9.7034022490358947
		 125 5.6570004923769215 128 0 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 29 ".kit[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 1 1 1 1 1 1 1 0.98872298002243042 0.97967618703842163 
		0.98742234706878662 1 1 1 1 1 1 1 1 0.80929803848266602 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0 0 0 0 0 0 0 0.14975622296333313 0.20058555901050568 
		0.15810486674308777 0 0 0 0 0 0 0 0 -0.58739817142486572 0 0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 1 1 1 1 1 1 1 0.98872298002243042 0.97967612743377686 
		0.98742228746414185 1 1 1 1 1 1 1 1 0.80929803848266602 1 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 0 0 0 0 0 0 0 0.14975622296333313 0.20058555901050568 
		0.15810485184192657 0 0 0 0 0 0 0 0 -0.5873982310295105 0 0 0 0 0 0;
createNode animCurveTU -n "L_Foot_CTRL_visibility";
	rename -uid "910AE8A0-41B5-A4B2-6992-909929FE1435";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 1 9 1 10 1 70 1 71 1 80 1 83 1 92 1 95 1
		 96 1 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1
		 132 1 135 1 140 1 145 1 155 1;
	setAttr -s 28 ".kit[0:27]"  9 9 1 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 1 1 9 9 9 1 1 9 
		9 9 1;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "L_Foot_CTRL_rotateX";
	rename -uid "D6338C5D-4854-7718-E79C-F0A0D7A8493D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 0 70 0 71 -32.930263575841444
		 72 0 80 0 83 17.271895773494521 86 61.55924014192415 89 91.02248855432795 92 14.040140327211411
		 95 -32.930263575841444 96 -32.930263575841444 97 -40.713890872630081 98 -44.388470988623666
		 99 0 100 0 102 25.031158496647503 104 126.49437875742061 106 101.84741329475753 108 48.404208966271703
		 110 14.040140327211411 112 -32.930263575841444 115 0 118 47.056824002871636 121 24.050721604261316
		 125 38.486696576356358 128 0 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 33 ".kit[2:32]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		1 1 18 18 18 1;
	setAttr -s 33 ".kix[2:32]"  1 1 1 1 1 0.18300458788871765 0.1535349041223526 
		1 0.092055246233940125 1 1 0.31625106930732727 1 1 1 0.060283701866865158 1 0.097363531589508057 
		0.086674980819225311 0.093514680862426758 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 33 ".kiy[2:32]"  0 0 0 0 0 0.98311203718185425 0.98814326524734497 
		0 -0.99575388431549072 0 0 -0.94867557287216187 0 0 0 0.99818128347396851 0 -0.99524891376495361 
		-0.99623668193817139 -0.99561792612075806 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 33 ".kox[2:32]"  1 1 1 1 1 0.18300458788871765 0.15353488922119141 
		1 0.092055253684520721 1 1 0.31625106930732727 1 1 1 0.060283705592155457 1 0.097363531589508057 
		0.086674980819225311 0.093514673411846161 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 33 ".koy[2:32]"  0 0 0 0 0 0.98311203718185425 0.9881432056427002 
		0 -0.99575388431549072 0 0 -0.94867557287216187 0 0 0 0.99818128347396851 0 -0.99524891376495361 
		-0.99623662233352661 -0.99561792612075806 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Foot_CTRL_rotateY";
	rename -uid "A322BD31-4808-446A-D2A0-FA82D8A70613";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 10.955 9 10.955 10 5.0707148893033436
		 70 5.0707148893033436 71 5.0707148893033436 80 5.221 83 12.310824721391462 92 6.2019844780034816
		 95 5.0707148893033436 96 5.0707148893033436 98 5.0802526377923725 100 5.1067207212711834
		 102 5.221 104 12.310824721391462 106 11.129278141129481 108 8.6614452195108278 110 6.2019844780034816
		 112 5.0707148893033436 115 5.0707148893033436 118 -2.308602438051873 121 1.4568736035592182
		 125 3.72306641320723 128 5.0707148893033436 132 5.0707148893033436 135 5.0707148893033436
		 140 5.0707148893033436 145 5.0707148893033436 155 5.0707148893033436;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 18 18 18 1 
		18 18 1 18 18 18 18 1 1 18 18 18 1 1 18 18 18 
		1;
	setAttr -s 28 ".kix[2:27]"  1 1 1 0.99965620040893555 1 0.95354980230331421 
		1 1 0.999988853931427 0.99983024597167969 0.99599623680114746 1 0.90232998132705688 
		0.84036576747894287 0.90501493215560913 1 1 1 0.91152256727218628 0.96535265445709229 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0.026220666244626045 0 -0.30123525857925415 
		0 0 0.0047131041064858437 0.018420644104480743 0.089395143091678619 0 -0.43104586005210876 
		-0.54201972484588623 -0.42537975311279297 0 0 0 0.41125002503395081 0.26094871759414673 
		0 0 0 0 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 1 0.99965620040893555 1 0.95354986190795898 
		1 1 0.999988853931427 0.99983024597167969 0.99965620040893555 1 0.90232998132705688 
		0.84036576747894287 0.90501493215560913 1 1 1 0.91152256727218628 0.96535265445709229 
		1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0 0.026220664381980896 0 -0.30123525857925415 
		0 0 0.0047131041064858437 0.018420644104480743 0.026220664381980896 0 -0.43104586005210876 
		-0.54201966524124146 -0.42537975311279297 0 0 0 0.41124999523162842 0.26094871759414673 
		0 0 0 0 0 0;
createNode animCurveTA -n "L_Foot_CTRL_rotateZ";
	rename -uid "7081BB6D-49EB-F357-6446-EFA0058FBFF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 0 70 0 71 0 72 0 80 0 83 1.5633796297256068
		 92 0.2442785913085764 95 0 96 0 98 0 100 0 102 0 104 1.5633796297256068 106 1.3082445631477504
		 108 0.77535764665657936 110 0.2442785913085764 112 0 115 0 118 -7.2007790594331791
		 121 -9.0008714748347511 125 -5.2474310616176574 128 0 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 29 ".kit[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 1 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 1 1 1 1 0.9976813793182373 1 1 1 1 
		1 1 0.99472194910049438 0.99044030904769897 0.99488896131515503 1 1 0.78641009330749512 
		1 0.82951623201370239 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0 0 0 0 -0.068057127296924591 0 0 0 
		0 0 0 -0.10260748863220215 -0.13794130086898804 -0.10097525268793106 0 0 -0.61770474910736084 
		0 0.55848246812820435 0 0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 1 1 1 1 0.9976813793182373 1 1 1 1 
		1 1 0.99472194910049438 0.99044036865234375 0.99488890171051025 1 1 0.78641009330749512 
		1 0.82951629161834717 1 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 0 0 0 0 -0.068057127296924591 0 0 0 
		0 0 0 -0.10260748863220215 -0.13794131577014923 -0.10097524523735046 0 0 -0.61770468950271606 
		0 0.55848252773284912 0 0 0 0 0 0;
createNode animCurveTU -n "Waist_CTRL_visibility";
	rename -uid "C5741F07-4451-08CF-2EB9-22B841723374";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 1 9 1 10 1 70 1 71 1 77 1 83 1 89 1 92 1
		 95 1 96 1 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1
		 128 1 132 1 135 1 140 1 145 1 155 1;
	setAttr -s 29 ".kit[0:28]"  9 9 1 9 9 9 9 9 
		9 9 1 9 9 9 9 9 9 9 1 1 9 9 9 9 1 
		9 9 9 1;
	setAttr -s 29 ".kix[2:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "Waist_CTRL_rotateX";
	rename -uid "1D59D84F-43FC-6435-458E-629C014FE0FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 9 0 10 0 30 -1.0444037378943252 50 -1.3654113370982555
		 70 0 71 24.405638499476456 77 24.301171409302555 83 24.370913392396744 89 24.301171409302555
		 92 24.350874368851237 95 24.400577506151819 96 24.400577506151819 102 26.566415329143272
		 104 24.370913392396744 108 26.317763434290761 112 24.400577506151819 115 0 118 5.9200424083363448
		 121 4.879831378650997 125 -12.772406950292153 128 10.844929376793763 132 0 135 0
		 140 0 145 0 155 0;
	setAttr -s 27 ".kit[2:26]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".kot[2:26]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".kix[2:26]"  1 0.99984031915664673 1 0.99429899454116821 
		1 1 1 1 0.99996238946914673 1 1 0.99982184171676636 1 1 1 0.99429899454116821 1 0.87819105386734009 
		1 1 0.99429899454116821 1 1 1 0.99429899454116821;
	setAttr -s 27 ".kiy[2:26]"  0 -0.017870340496301651 0 0.10662779211997986 
		0 0 0 0 0.0086744902655482292 0 0 0.01887747086584568 0 0 0 0.10662779211997986 0 
		-0.47831004858016968 0 0 0.10662779211997986 0 0 0 0.10662779211997986;
	setAttr -s 27 ".kox[2:26]"  1 0.99984031915664673 1 0.99429899454116821 
		1 1 1 1 0.99996238946914673 1 1 0.99982184171676636 1 1 1 0.99429899454116821 1 0.87819099426269531 
		1 1 0.99429899454116821 1 1 1 0.99429899454116821;
	setAttr -s 27 ".koy[2:26]"  0 -0.017870340496301651 0 0.10662779211997986 
		0 0 0 0 0.0086744893342256546 0 0 0.018877472728490829 0 0 0 0.10662779211997986 
		0 -0.47831001877784729 0 0 0.10662779211997986 0 0 0 0.10662779211997986;
createNode animCurveTA -n "Waist_CTRL_rotateY";
	rename -uid "AE2E02CB-4EFD-43FB-0D01-A3BA69724845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 0 70 0 71 -6.8896260625362151
		 77 0 83 5.6351403562899867 89 0 92 -5.6464283910030897 95 -7.14753540166799 96 -7.14753540166799
		 98 -5.0077101568801607 100 0 102 4.2515057603128934 104 5.6351403562899867 106 4.89023126826413
		 108 0 110 -5.6464283910030897 112 -7.14753540166799 115 0 118 0 121 0 125 0 128 0
		 132 0 135 0 140 0 145 0 155 0;
	setAttr -s 29 ".kit[2:28]"  1 18 18 1 18 1 18 18 
		1 18 1 18 18 18 1 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 1 18 1 18 18 
		1 18 1 18 18 18 1 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 1 0.70672607421875 1 0.56853199005126953 
		0.84847837686538696 1 1 0.7302250862121582 0.70672607421875 0.80475008487701416 1 
		0.8631330132484436 0.56853199005126953 0.73022568225860596 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0 0.70748734474182129 0 -0.82266116142272949 
		-0.52922993898391724 0 0 0.68320667743682861 0.70748734474182129 0.59361386299133301 
		0 -0.50497663021087646 -0.82266116142272949 -0.68320602178573608 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 1 0.70672619342803955 1 0.56853181123733521 
		0.84847843647003174 1 1 0.7302250862121582 0.70672619342803955 0.80475002527236938 
		1 0.8631330132484436 0.56853181123733521 0.73022568225860596 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 29 ".koy[2:28]"  0 0 0 0.70748722553253174 0 -0.82266128063201904 
		-0.52922993898391724 0 0 0.68320667743682861 0.70748722553253174 0.59361380338668823 
		0 -0.50497663021087646 -0.82266128063201904 -0.68320602178573608 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "Waist_CTRL_rotateZ";
	rename -uid "A3CAEBA8-48B1-E3CA-69CD-CEA5EFD07DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 2.3607404584599139 22 2.0994011793214002
		 40 0.69419117946970177 59 1.3339749674826262 70 2.3607404584599139 71 0.62542012601521513
		 77 2.3607404584599139 83 3.777740366194549 89 2.3607404584599139 92 0.9925663489636376
		 95 0.55977156302566744 96 0.55977156302566744 98 1.1151966503906738 100 2.3607404584599139
		 102 3.4142981177792393 104 3.777740366194549 106 3.5369302826814675 108 2.3607404584599139
		 110 0.9925663489636376 112 0.55977156302566744 115 2.3607404584599139 118 2.35619556795388
		 121 2.3515796827503719 125 2.3460482099994908 128 2.344874417189335 132 2.3607404584599139
		 135 2.3607404584599139 140 2.3607404584599139 145 2.3607404584599139 155 2.3607404584599139;
	setAttr -s 32 ".kit[2:31]"  1 18 18 1 1 18 1 18 
		1 18 18 1 18 1 18 18 18 1 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 18 1 3 18 1 18 
		1 18 18 1 18 1 18 18 18 1 18 1 1 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kix[2:31]"  0.99998772144317627 0.99957722425460815 
		1 0.99886226654052734 0.99998772144317627 1 0.97218936681747437 1 0.95061135292053223 
		0.98787385225296021 1 1 0.97331887483596802 0.91168981790542603 0.98322927951812744 
		1 0.98322910070419312 0.95061135292053223 0.97331893444061279 1 0.99998772144317627 
		0.99999970197677612 0.99999970197677612 0.99999988079071045 1 0.99998772144317627 
		1 1 1 0.99998772144317627;
	setAttr -s 32 ".kiy[2:31]"  0.0049576349556446075 -0.029074475169181824 
		0 0.047688659280538559 0.0049576349556446075 0 0.23419651389122009 0 -0.31038367748260498 
		-0.15525835752487183 0 0 0.22945651412010193 0.41087916493415833 0.18237398564815521 
		0 -0.18237428367137909 -0.31038367748260498 -0.22945612668991089 0 0.0049576349556446075 
		-0.00079942808952182531 -0.00075902114622294903 -0.00050155207281932235 0 0.0049576349556446075 
		0 0 0 0.0049576349556446075;
	setAttr -s 32 ".kox[2:31]"  1 0.99957728385925293 1 0.99886226654052734 
		1 1 0.97218930721282959 1 0.95061135292053223 0.98787391185760498 1 1 0.97331887483596802 
		0.9116898775100708 0.98322921991348267 1 0.98322910070419312 0.95061135292053223 
		0.97331899404525757 1 1 0.99999964237213135 0.99999964237213135 0.99999988079071045 
		1 1 1 1 1 1;
	setAttr -s 32 ".koy[2:31]"  0 -0.029074475169181824 0 0.047688636928796768 
		0 0 0.23419646918773651 0 -0.31038376688957214 -0.15525835752487183 0 0 0.22945651412010193 
		0.41087910532951355 0.18237397074699402 0 -0.18237428367137909 -0.31038376688957214 
		-0.22945614159107208 0 0 -0.00079942797310650349 -0.00075902108801528811 -0.00050155207281932235 
		0 0 0 0 0 0;
createNode animCurveTU -n "Spine_CTRL_visibility";
	rename -uid "9899FE82-4DC6-3112-6C74-8C995C9491F2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 9 1 10 1 70 1 71 1 83 1 92 1 95 1 96 1
		 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1 132 1
		 135 1 140 1 145 1 155 1;
	setAttr -s 27 ".kit[0:26]"  9 9 1 1 9 9 9 1 
		1 9 9 9 9 9 9 9 1 1 9 9 9 9 1 9 9 
		9 1;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "Spine_CTRL_rotateX";
	rename -uid "7CC6F7CE-4EF5-00C5-D7BD-34A02AAE48A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 9 0 10 3.9058384771620656 25 7.3084025104083592
		 30 7.5941684628044559 45 0.79301420918240262 50 -0.53785431601941691 60 0.78323644789024949
		 70 3.9058384771620656 71 -2.345338425074512 74 -2.2052547358604127 80 -1.7408357488558357
		 83 -2.4259723677454001 86 -1.6698697731518795 92 -2.1112358450995146 95 -2.3445353015972565
		 96 5.848787845578574 98 -6.7157505408912375 100 -1.9226696828830114 102 14.190896455208957
		 104 7.6496006916194634 106 -6.7417887927533453 108 -1.8343303318911519 110 9.7225241207973578
		 112 5.848787845578574 115 3.9058384771620656 118 -19.772967338462806 121 -8.3079271624162949
		 125 19.130419650318331 128 43.183985812812665 130 36.195211636972097 132 3.9058384771620656
		 135 3.9058384771620656 140 3.9058384771620656 145 4.2381027718395163 149 3.9469341227404362
		 155 3.9058384771620656;
	setAttr -s 37 ".kit[2:36]"  1 1 3 1 18 18 1 3 
		18 18 18 18 18 1 1 18 18 18 1 18 1 18 1 1 18 
		18 18 18 18 1 18 18 18 18 1;
	setAttr -s 37 ".kot[2:36]"  1 1 3 1 18 18 1 3 
		18 18 18 18 18 1 1 1 18 18 1 18 1 18 1 1 18 
		18 18 18 18 1 18 18 18 18 1;
	setAttr -s 37 ".ktl[16:36]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 37 ".kix[2:36]"  0.98413240909576416 0.99806863069534302 
		1 0.96721333265304565 1 0.99330097436904907 0.98413240909576416 1 0.99938219785690308 
		1 1 1 0.99923056364059448 1 1 1 0.343211829662323 1 0.23242552578449249 1 0.33385631442070007 
		1 1 0.98413240909576416 1 0.32499203085899353 0.25130164623260498 1 0.19091813266277313 
		0.98413240909576416 1 1 1 0.9999421238899231 0.98413240909576416;
	setAttr -s 37 ".kiy[2:36]"  0.17743563652038574 0.06212180107831955 
		0 -0.2539653480052948 0 0.11555627733469009 0.17743563652038574 0 0.035146791487932205 
		0 0 0 -0.039220221340656281 0 0 0 0.93925803899765015 0 -0.97261422872543335 0 0.94262397289276123 
		0 0 0.17743563652038574 0 0.94571679830551147 0.96790885925292969 0 -0.98160600662231445 
		0.17743563652038574 0 0 0 -0.010758201591670513 0.17743563652038574;
	setAttr -s 37 ".kox[2:36]"  0.98413246870040894 0.99806863069534302 
		1 0.96721339225769043 1 0.9933009147644043 0.98413246870040894 1 0.99938219785690308 
		1 1 1 0.99923056364059448 1 0.15090031921863556 0.99938219785690308 0.343211829662323 
		1 0.23242555558681488 1 0.33385652303695679 1 0.15090031921863556 0.98413246870040894 
		1 0.32499200105667114 0.25130161643028259 1 0.19091813266277313 0.98413246870040894 
		1 1 1 0.9999421238899231 0.98413246870040894;
	setAttr -s 37 ".koy[2:36]"  0.17743568122386932 0.062121782451868057 
		0 -0.25396537780761719 0 0.11555627733469009 0.17743568122386932 0 0.035146791487932205 
		0 0 0 -0.039220225065946579 0 -0.98854899406433105 0.035146791487932205 0.93925797939300537 
		0 -0.97261416912078857 0 0.94262391328811646 0 -0.98854899406433105 0.17743568122386932 
		0 0.9457167387008667 0.96790885925292969 0 -0.98160600662231445 0.17743568122386932 
		0 0 0 -0.010758202522993088 0.17743568122386932;
createNode animCurveTA -n "Spine_CTRL_rotateY";
	rename -uid "6948CC80-4AAE-AF8D-A033-3AAAA7982373";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -2.4995217490033439 25 -2.6385892721166151
		 45 -2.5627372001422333 60 -2.5079540087849304 70 -2.4995217490033439 71 17.973541982814979
		 74 10.797317950051369 80 -22.032045372852291 83 -29.654721707480906 86 -22.526642758239582
		 92 9.9182822043965597 95 17.582689644755323 96 17.582689644755323 98 10.797317950051369
		 100 -5.5801777495847187 102 -22.032045372852291 104 -29.654721707480906 106 -22.526642758239582
		 108 -6.3488977648976359 110 9.9182822043965597 112 17.582689644755323 115 -2.4995217490033439
		 118 -2.4995217490033439 121 -2.4995217490033439 125 -2.4995217490033439 128 -2.4995217490033439
		 132 -2.4995217490033439 135 -2.4995217490033439 140 -2.4995217490033439 145 22.949274888273024
		 149 8.6358387469463924 155 -2.4995217490033439;
	setAttr -s 34 ".kit[2:33]"  1 18 1 1 1 18 18 18 
		18 18 18 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 1 1 1 18 18 18 
		18 18 18 1 1 1 18 18 18 18 18 18 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 34 ".kix[2:33]"  1 1 0.99999451637268066 0.99999958276748657 
		1 1 0.39476299285888672 0.39107537269592285 1 0.39839622378349304 0.39390051364898682 
		1 1 0.31321784853935242 0.22664600610733032 0.30246156454086304 1 0.31148353219032288 
		0.22919124364852905 0.30410170555114746 1 1 1 1 1 1 1 1 1 1 0.60024088621139526 1;
	setAttr -s 34 ".kiy[2:33]"  0 0 0.0033308572601526976 0.00096195546211674809 
		0 0 -0.91878294944763184 -0.92035859823226929 0 0.91721343994140625 0.91915309429168701 
		0 0 -0.94968128204345703 -0.97397720813751221 -0.95316153764724731 0 0.95025157928466797 
		0.97338145971298218 0.95263957977294922 0 0 0 0 0 0 0 0 0 0 -0.7998192310333252 0;
	setAttr -s 34 ".kox[2:33]"  1 1 0.99999451637268066 0.9999995231628418 
		1 1 0.39476305246353149 0.39107543230056763 1 0.39839616417884827 0.3939005434513092 
		1 1 0.39476296305656433 0.22664600610733032 0.30246156454086304 1 0.31148353219032288 
		0.22919124364852905 0.30410167574882507 1 1 1 1 1 1 1 1 1 1 0.60024088621139526 1;
	setAttr -s 34 ".koy[2:33]"  0 0 0.0033308588899672031 0.00096195557853206992 
		0 0 -0.91878306865692139 -0.92035871744155884 0 0.91721338033676147 0.91915303468704224 
		0 0 -0.91878306865692139 -0.97397720813751221 -0.95316153764724731 0 0.95025157928466797 
		0.97338145971298218 0.95263957977294922 0 0 0 0 0 0 0 0 0 0 -0.7998192310333252 0;
createNode animCurveTA -n "Spine_CTRL_rotateZ";
	rename -uid "67D106B7-4A26-8B5E-365A-D2BCDF685D99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 -2.6456441442561971 25 -1.5638836507071476
		 45 -3.3575106826434178 60 -1.9889354475045102 70 -2.6456441442561971 71 -1.1473355541363919
		 74 0.26206560626094355 80 -4.1820675678169108 86 -5.6149206739503654 92 -3.2958347727814634
		 95 -1.1398134481242821 96 -1.1398134481242821 98 0.26206560626094355 100 -1.5926928656019401
		 102 -4.1820675678169108 104 -5.2336790370838342 106 -5.6149206739503654 108 -5.0208099508943267
		 110 -3.2958347727814634 112 -1.1398134481242821 115 -2.6456441442561971 118 -2.6456441442561971
		 121 -2.6456441442561971 125 -2.6456441442561971 128 -2.6456441442561971 132 -2.6456441442561971
		 135 -2.6456441442561971 140 -2.6456441442561971 145 -0.81997841348973444 149 -1.8814774876976539
		 155 -2.6456441442561971;
	setAttr -s 33 ".kit[2:32]"  1 18 18 18 1 18 18 18 
		18 1 1 1 18 18 18 18 18 18 1 1 1 18 18 18 18 
		1 18 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 18 18 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18 1 1 1 18 18 18 18 
		1 18 18 18 18 1;
	setAttr -s 33 ".ktl[12:32]" no no yes yes yes yes yes yes yes no yes 
		yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 33 ".kix[2:32]"  1 1 1 1 1 0.93459165096282959 1 0.96865880489349365 
		1 0.93015265464782715 0.93672943115234375 0.93672943115234375 1 0.86437952518463135 
		0.90271568298339844 0.98286145925521851 1 0.95688158273696899 0.93015265464782715 
		0.93672943115234375 1 1 1 1 1 1 1 1 1 0.99546217918395996 1;
	setAttr -s 33 ".kiy[2:32]"  0 0 0 0 0 0.35572239756584167 0 -0.24839510023593903 
		0 0.36717319488525391 0.35005438327789307 0.35005438327789307 0 -0.50283998250961304 
		-0.4302375316619873 -0.18434570729732513 0 0.29047802090644836 0.36717319488525391 
		0.35005438327789307 0 0 0 0 0 0 0 0 0 -0.095157943665981293 0;
	setAttr -s 33 ".kox[2:32]"  1 1 1 1 1 0.93459165096282959 1 0.96865874528884888 
		1 0.93015265464782715 1 1 1 0.86437946557998657 0.90271568298339844 0.98286145925521851 
		1 0.95688164234161377 0.93015265464782715 1 1 1 1 1 1 1 1 1 1 0.99546217918395996 
		1;
	setAttr -s 33 ".koy[2:32]"  0 0 0 0 0 0.35572239756584167 0 -0.24839510023593903 
		0 0.36717310547828674 0 0 0 -0.50283992290496826 -0.4302375316619873 -0.18434570729732513 
		0 0.29047805070877075 0.36717310547828674 0 0 0 0 0 0 0 0 0 0 -0.09515795111656189 
		0;
createNode animCurveTU -n "L_Shoulder_CTRL_visibility";
	rename -uid "27118B2C-4526-C15A-3BB8-53AAD8DC5D0D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 9 1 10 1 70 1 71 1 83 1 92 1 95 1 96 1
		 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1 132 1
		 135 1 140 1 145 1 155 1;
	setAttr -s 27 ".kit[0:26]"  9 9 1 1 9 9 9 9 
		1 9 9 9 9 9 9 9 1 1 9 9 9 9 1 9 9 
		9 1;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "L_Shoulder_CTRL_rotateX";
	rename -uid "3148188F-4310-3106-9826-379A98E4CACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 0.26350736427643867 25 -0.96659884994721623
		 47 -0.61769634038369259 70 0.26350736427643867 71 0.26597647870832186 83 0.26323917845137002
		 92 0.26554877462542154 95 0.26597647870832186 96 0.2731326926373393 98 0.2655487760020489
		 100 0.20356024753061622 102 0.26375004555655712 104 -3.0764714639890562 106 0.26368589097714618
		 108 0.26461891547244831 110 0.26554877462542154 112 0.2731326926373393 115 0.26350736427643867
		 118 -0.061277892528548816 121 -1.0786413349921669 125 -0.92723656878797145 128 -0.34940801122535337
		 132 0.26350736427643867 135 0.26350736427643867 140 0.26350736427643867 145 0.26350736427643867
		 155 0.26350736427643867;
	setAttr -s 29 ".kit[2:28]"  1 18 1 1 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 1 1 18 18 18 18 
		1 18 18 18 1 18 18 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 0.99983954429626465 1 1 1 1 0.99999994039535522 
		1 0.99998223781585693 1 1 1 0.99999964237213135 0.99999988079071045 0.9999997615814209 
		1 1 0.99321067333221436 1 0.99851572513580322 0.99605697393417358 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 0.017915084958076477 0 0 0 0.00011943723075091839 
		0.00022394499683286995 0 -0.0059562940150499344 0 0 0 0.00073279620846733451 0.00024385066353715956 
		0.00073030759813264012 0 0 -0.11632934212684631 0 0.054465502500534058 0.088716141879558563 
		0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 0.99983954429626465 1 1 1 1 1 1 0.99998223781585693 
		1 1 1 0.99999964237213135 0.99999988079071045 0.99999964237213135 1 1 0.99321073293685913 
		1 0.99851566553115845 0.99605691432952881 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 0.017915084958076477 0 0 0 0.00011943723075091839 
		0.00022394501138478518 0 -0.0059562940150499344 0 0 0 0.00073279620846733451 0.00024385066353715956 
		0.0007303074817173183 0 0 -0.11632934957742691 0 0.054465502500534058 0.088716134428977966 
		0 0 0 0 0;
createNode animCurveTA -n "L_Shoulder_CTRL_rotateY";
	rename -uid "C964DBBE-42CD-7E49-1ABB-17950DEE11DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 -3.5817672535399701 25 2.9316226137353287
		 47 2.5447329566000634 70 -3.5817672535399701 71 8.5903117495459362 83 -2.4799117162108484
		 92 6.8605856214392036 95 8.5903117495459362 96 15.661095763474258 98 6.860591188812557
		 100 3.213396340057725 102 -0.41385662443665922 104 -12.424230665887222 106 -0.67331140949802204
		 108 3.1000378131873148 110 6.8605856214392036 112 15.661095763474258 115 -3.5817672535399701
		 118 -3.590912454015212 121 -3.423802092539642 125 1.4853998830400394 128 -6.260210534151768
		 132 -3.5817672535399701 135 -3.5817672535399701 140 -3.5817672535399701 145 -3.5817672535399701
		 155 -3.5817672535399701;
	setAttr -s 29 ".kit[2:28]"  1 18 18 1 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 1 18 18 18 18 
		1 18 18 18 1 18 18 18 1 1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 1 0.99961864948272705 1 1 1 0.90045613050460815 
		0.74119675159454346 1 0.52306938171386719 0.72419536113739014 0.4389495849609375 
		1 0.44153112173080444 0.71200823783874512 0.51962840557098389 1 1 1 0.99619382619857788 
		1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[2:28]"  0 0 -0.027613319456577301 0 0 0 0.43494689464569092 
		0.67128795385360718 0 -0.85229009389877319 -0.68959492444992065 -0.89851170778274536 
		0 0.89724594354629517 0.70217114686965942 0.854392409324646 0 0 0 0.087165825068950653 
		0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[2:28]"  1 1 0.99961864948272705 1 1 1 0.90045613050460815 
		0.74119669198989868 1 0.52306938171386719 0.72419530153274536 0.43894955515861511 
		1 0.44153112173080444 0.71200823783874512 0.51962840557098389 1 1 1 0.99619382619857788 
		1 1 1 1 1 1 1;
	setAttr -s 29 ".koy[2:28]"  0 0 -0.027613319456577301 0 0 0 0.43494686484336853 
		0.6712878942489624 0 -0.85229009389877319 -0.6895948052406311 -0.89851164817810059 
		0 0.89724594354629517 0.70217108726501465 0.854392409324646 0 0 0 0.087165825068950653 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Shoulder_CTRL_rotateZ";
	rename -uid "E3050DA9-479D-F783-F856-64AFCE8D7FF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 9 0 10 -0.72794664894185646 25 -1.5230978317824029
		 47 -0.037985088117252194 70 -0.72794664894185646 71 -0.67175576434055528 83 -0.72287466350218554
		 92 -0.67974310947350924 95 -0.67175576434055528 96 -0.63775266872635206 100 -1.7870714487257795
		 102 -0.71333425448080134 104 14.47276320804283 108 -0.69710816702774225 110 -0.67974310947350924
		 112 -0.63775266872635206 115 -0.72794664894185646 118 4.4860256574453912 121 21.031141626379558
		 125 24.444535979291178 128 14.610712812083216 132 -0.72794664894185646 135 -0.72794664894185646
		 140 -0.72794664894185646 145 -0.72794664894185646 155 -0.72794664894185646;
	setAttr -s 27 ".kit[2:26]"  1 18 18 1 18 18 18 18 
		1 18 18 18 18 18 1 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".kot[2:26]"  1 18 18 1 18 18 18 18 
		1 18 18 1 18 18 1 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".ktl[2:26]" no yes yes no yes yes yes yes yes yes yes 
		yes yes yes yes no yes yes yes yes yes yes yes yes yes;
	setAttr -s 27 ".kix[2:26]"  1 1 1 0.99961912631988525 1 1 0.99999749660491943 
		0.99999123811721802 1 1 0.76445764303207397 1 1 0.99996984004974365 1 0.99961912631988525 
		0.46596953272819519 0.59795880317687988 1 0.46904981136322021 0.99961912631988525 
		1 1 1 0.99961912631988525;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 -0.027599217370152473 0 0 0.002230476588010788 
		0.004182121716439724 0 0 0.64467400312423706 0 0 0.0077693755738437176 0 -0.027599217370152473 
		0.88480079174041748 0.80152678489685059 0 -0.8831716775894165 -0.027599217370152473 
		0 0 0 -0.027599217370152473;
	setAttr -s 27 ".kox[2:26]"  0.99901878833770752 1 1 1 1 1 0.99999755620956421 
		0.99999129772186279 1 1 0.7644575834274292 1 1 0.99996984004974365 1 1 0.46596953272819519 
		0.59795886278152466 1 0.46904981136322021 1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  -0.044288862496614456 0 0 0 0 0 0.0022304768208414316 
		0.004182121716439724 0 0 0.64467394351959229 0 0 0.0077693755738437176 0 0 0.88480073213577271 
		0.80152684450149536 0 -0.8831716775894165 0 0 0 0 0;
createNode animCurveTU -n "R_Shoulder_CTRL_visibility";
	rename -uid "98DFEA55-482A-A918-0B72-76A3691B709A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 9 1 10 1 70 1 71 1 83 1 92 1 95 1 96 1
		 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1 132 1
		 135 1 140 1 145 1 155 1;
	setAttr -s 27 ".kit[0:26]"  9 9 1 1 9 9 9 9 
		1 9 9 9 9 9 9 9 1 1 9 9 9 9 1 9 9 
		9 1;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "R_Shoulder_CTRL_rotateX";
	rename -uid "46C6450B-414D-FA83-1569-39A6C33CB7CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 -3.1643534078137625 30 -2.3989377390243227
		 41 -2.4661883741861645 57 -3.7299879932711977 70 -3.1643534078137625 71 -3.164927377541086
		 83 -3.167689146580658 92 -3.1653589048794744 95 -3.164927377541086 96 -6.1985305642272364
		 98 -3.1653589034905414 100 -3.1670749434912842 102 -3.1671737128231698 104 -1.9858116209568348
		 106 -3.1672384408737306 108 -3.1662970760422615 110 -3.1653589048794744 112 -6.1985305642272364
		 115 -3.1643534078137625 118 -2.7179045236602879 121 -1.3797570657828946 125 -1.0049307151552469
		 128 -1.9179061439069154 132 -3.1643534078137625 135 -1.9896895773402568 140 -1.9896895773402568
		 142 -2.7111700217872734 145 -1.6443453349184947 149 1.2617391705237244 155 -3.1643534078137625;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 1 18 18 18 
		18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 18 18 18 1 18 18 18 
		18 1 18 18 18 1 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 32 ".ktl[2:31]" no yes yes yes no yes yes yes yes yes yes 
		yes yes yes yes yes yes yes no yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 32 ".kix[2:31]"  1 1 0.99995392560958862 1 0.99938809871673584 
		1 1 1 1 1 1 1 1 1 1 0.99999988079071045 1 1 0.99938809871673584 0.98808944225311279 
		0.99189096689224243 1 0.98720479011535645 0.99938809871673584 1 1 1 0.95856904983520508 
		1 0.99938809871673584;
	setAttr -s 32 ".kiy[2:31]"  0 0 -0.0096029257401823997 0 0.034978114068508148 
		-0.00013435295841190964 0 0.00012050487566739321 0 0 0 -7.7573044109158218e-005 0 
		0 0 0.00024603045312687755 0 0 0.034978114068508148 0.15388047695159912 0.12709125876426697 
		0 -0.15945751965045929 0.034978114068508148 0 0 0 0.28486043214797974 0 0.034978114068508148;
	setAttr -s 32 ".kox[2:31]"  0.99953103065490723 1 0.99995386600494385 
		1 1 1 1 1 1 1 1 1 1 1 1 0.99999988079071045 1 1 1 0.98808944225311279 0.99189102649688721 
		1 0.98720473051071167 1 1 1 1 0.9585689902305603 1 1;
	setAttr -s 32 ".koy[2:31]"  0.030624242499470711 0 -0.0096029248088598251 
		0 0 -0.00013435295841190964 0 0.00012050487566739321 0 0 0 -7.7573051385115832e-005 
		0 0 0 0.00024603045312687755 0 0 0 0.15388047695159912 0.12709125876426697 0 -0.15945751965045929 
		0 0 0 0 0.28486043214797974 0 0;
createNode animCurveTA -n "R_Shoulder_CTRL_rotateY";
	rename -uid "8911CD58-47E6-7D76-7024-959B6B0036A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 0 9 0 10 -4.906644751141898 30 1.2468850706791812
		 41 4.4545169239743778 57 -3.9647342496016722 70 -4.906644751141898 71 5.0261091533503048
		 83 -5.564743255925432 92 3.3712849135404301 95 5.0261091533503048 96 12.29952596311071
		 98 3.3712902398312417 100 -0.099175125818630569 102 -3.5881540705662061 104 -8.8234007602166127
		 106 -3.8363736889256463 108 -0.22642083583094672 110 3.3712849135404301 112 12.29952596311071
		 115 -4.906644751141898 118 -5.1865764448116165 121 -5.7019283307830628 125 -5.7109861138582891
		 128 8.7595501146228063 132 -4.906644751141898 135 -5.4879003863809297 140 -5.4879003863809297
		 142 -7.0736717950312471 145 26.692716373736147 149 11.464598440629974 155 -4.906644751141898;
	setAttr -s 32 ".kit[2:31]"  1 1 18 18 1 18 18 18 
		18 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 32 ".kot[2:31]"  1 1 18 18 1 18 18 18 
		18 1 18 18 18 1 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 32 ".kix[2:31]"  1 0.96126192808151245 1 0.99358564615249634 
		1 1 1 0.9077608585357666 0.75576537847518921 1 0.52456849813461304 0.73924148082733154 
		0.65878516435623169 1 0.66425061225891113 0.72736334800720215 0.52069038152694702 
		1 1 0.99760037660598755 0.99999368190765381 1 1 1 1 1 1 1 0.51726037263870239 1;
	setAttr -s 32 ".kiy[2:31]"  0 0.27563661336898804 0 -0.11308149248361588 
		0 0 0 0.41948807239532471 0.65484249591827393 0 -0.851368248462677 -0.67344033718109131 
		-0.75233107805252075 0 0.74750989675521851 0.68625247478485107 0.85374546051025391 
		0 0 -0.069235034286975861 -0.0035569639876484871 0 0 0 0 0 0 0 -0.85582810640335083 
		0;
	setAttr -s 32 ".kox[2:31]"  1 0.96126192808151245 1 0.99358564615249634 
		1 1 1 0.9077608585357666 0.75576531887054443 1 0.52456849813461304 0.73924148082733154 
		0.65878522396087646 1 0.66425061225891113 0.72736340761184692 0.52069050073623657 
		1 1 0.99760037660598755 0.99999362230300903 1 1 1 1 1 1 1 0.51726037263870239 1;
	setAttr -s 32 ".koy[2:31]"  0 0.27563667297363281 0 -0.11308149248361588 
		0 0 0 0.41948810219764709 0.65484249591827393 0 -0.851368248462677 -0.67344039678573608 
		-0.75233107805252075 0 0.74750989675521851 0.68625247478485107 0.85374557971954346 
		0 0 -0.069235026836395264 -0.0035569637548178434 0 0 0 0 0 0 0 -0.85582804679870605 
		0;
createNode animCurveTA -n "R_Shoulder_CTRL_rotateZ";
	rename -uid "AC654ECB-4C7C-E539-E64B-A89F015D6979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 9 0 10 6.9760308273622016 30 4.2934457471318508
		 41 3.4334621740266931 57 4.7029953537482996 70 6.9760308273622016 71 6.4275438622705847
		 83 7.0125850721901237 92 6.5189567474708943 95 6.4275438622705847 96 -7.3024677180527933
		 100 7.1286024638799068 102 6.9033978115164905 104 -0.80732659672637819 108 6.7176948706975352
		 110 6.5189567474708943 112 -7.3024677180527933 115 6.9760308273622016 118 1.5401144328789076
		 121 -12.818038061379895 125 -16.791107291328892 128 -7.9078935541936017 132 6.9760308273622016
		 135 -5.9368277391172022 140 -5.9368277391172022 142 -13.744193924002706 145 -5.8479792664771173
		 149 8.4342305789313521 155 6.9760308273622016;
	setAttr -s 30 ".kit[2:29]"  1 1 18 1 1 18 18 18 
		18 1 18 18 18 18 18 1 1 18 18 18 18 1 18 18 18 
		18 18 1;
	setAttr -s 30 ".kot[2:29]"  1 1 18 1 1 18 18 18 
		18 1 18 18 1 18 18 1 1 18 18 18 18 1 18 18 18 
		18 18 1;
	setAttr -s 30 ".kix[2:29]"  1 0.99623721837997437 1 0.9948352575302124 
		1 1 1 0.99967426061630249 0.99885642528533936 1 1 0.98471534252166748 1 1 0.9880363941192627 
		1 1 0.50101774930953979 0.58924371004104614 1 0.49026167392730713 1 1 1 1 0.51625442504882813 
		1 1;
	setAttr -s 30 ".kiy[2:29]"  0 -0.086668126285076141 0 0.10150299966335297 
		0 0 0 -0.025518918409943581 -0.047808874398469925 0 0 -0.17417138814926147 0 0 -0.15422077476978302 
		0 0 -0.86543703079223633 -0.80795538425445557 0 0.87157535552978516 0 0 0 0 0.85643529891967773 
		0 0;
	setAttr -s 30 ".kox[2:29]"  1 0.99623727798461914 1 0.9948352575302124 
		1 1 1 0.99967437982559204 0.99885642528533936 1 1 0.98471540212631226 1 1 0.98803633451461792 
		1 1 0.50101774930953979 0.58924371004104614 1 0.49026164412498474 1 1 1 1 0.51625442504882813 
		1 1;
	setAttr -s 30 ".koy[2:29]"  0 -0.086668111383914948 0 0.10150305926799774 
		0 0 0 -0.025518918409943581 -0.047808874398469925 0 0 -0.17417138814926147 0 0 -0.15422075986862183 
		0 0 -0.86543697118759155 -0.80795532464981079 0 0.87157535552978516 0 0 0 0 0.85643529891967773 
		0 0;
createNode animCurveTU -n "Head_CTRL_visibility";
	rename -uid "88CABCD8-4B21-3760-58F3-01AABC9222AF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 1 9 1 10 1 70 1 71 1 83 1 92 1 95 1 96 1
		 98 1 100 1 102 1 104 1 106 1 108 1 110 1 112 1 115 1 118 1 121 1 125 1 128 1 132 1
		 135 1 140 1 145 1 149 1 155 1;
	setAttr -s 28 ".kit[0:27]"  9 9 1 9 9 9 9 1 
		1 9 9 9 9 9 9 9 1 1 9 9 9 9 1 9 9 
		9 9 1;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "Head_CTRL_rotateX";
	rename -uid "0C5AFB68-490C-71B9-6AA8-B1BECCB5EE18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 0 20 -2.4244203628065675 30 -3.3421375617614975
		 45 3.0842443614688997 50 4.2755850623280462 70 0 71 -8.1085328183941598 76 -8.0733543397710115
		 83 -8.1709468455798024 88 -8.3405782221502349 95 -8.1085328183941598 96 -24.703787909562234
		 98 -12.590453325041606 100 -17.721200561056801 102 -28.34732345625882 104 -17.793400341607601
		 106 -12.526676088369213 108 -17.858935644605971 110 -17.814875168073172 112 -24.703787909562234
		 115 0 118 4.7231382645387487 121 21.422578525892778 125 15.32009446475044 128 -36.54328284400237
		 130 -16.128096850223038 132 0 135 0 140 0 145 0 149 0 155 0;
	setAttr -s 34 ".kit[1:33]"  2 2 1 18 18 18 1 3 
		18 1 18 1 1 3 1 1 1 18 18 1 1 1 18 18 18 
		18 18 1 18 18 18 18 1;
	setAttr -s 34 ".kot[1:33]"  2 1 1 18 18 18 18 1 
		18 1 18 1 1 3 1 1 1 18 18 1 1 1 18 18 18 
		18 18 1 18 18 18 18 1;
	setAttr -s 34 ".ktl[1:33]" no no yes yes yes yes yes no yes yes yes 
		no yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes 
		yes;
	setAttr -s 34 ".kix[3:33]"  0.99659103155136108 1 0.98068773746490479 
		1 0.97905564308166504 1 1 0.99987637996673584 1 0.99994635581970215 0.99994635581970215 
		1 0.30383214354515076 0.999980628490448 0.99979841709136963 1 1 0.99971014261245728 
		0.99994635581970215 0.97905564308166504 0.4716704785823822 1 0.38510176539421082 
		1 0.20462796092033386 0.97905564308166504 1 1 1 1 0.97905564308166504;
	setAttr -s 34 ".kiy[3:33]"  -0.08250042051076889 0 0.19558005034923553 
		0 -0.20359283685684204 0 0 -0.015723235905170441 0 0.010362034663558006 0.010362034663558006 
		0 -0.95272558927536011 -0.0062269624322652817 -0.020078686997294426 0 0 0.024077048525214195 
		0.010362034663558006 -0.20359283685684204 0.88177490234375 0 -0.9228740930557251 
		0 0.97883981466293335 -0.20359283685684204 0 0 0 0 -0.20359283685684204;
	setAttr -s 34 ".kox[2:33]"  0.98910063505172729 0.99659103155136108 
		1 0.98068767786026001 1 0.95548737049102783 0.99997437000274658 1 0.99987643957138062 
		1 1 0.99998313188552856 1 0.30383205413818359 0.999980628490448 0.99979841709136963 
		1 1 0.99971014261245728 0.99998313188552856 0.95548737049102783 0.4716704785823822 
		1 0.38510176539421082 1 0.20462796092033386 0.95548737049102783 1 1 1 1 0.95548737049102783;
	setAttr -s 34 ".koy[2:33]"  -0.14724121987819672 -0.08250042051076889 
		0 0.19558003544807434 0 -0.29503217339515686 0.0071581467054784298 0 -0.01572323776781559 
		0 0 0.0058120465837419033 0 -0.95272564888000488 -0.006226962897926569 -0.020078686997294426 
		0 0 0.024077048525214195 0.0058120465837419033 -0.29503217339515686 0.88177490234375 
		0 -0.92287415266036987 0 0.97883981466293335 -0.29503217339515686 0 0 0 0 -0.29503217339515686;
createNode animCurveTA -n "Head_CTRL_rotateY";
	rename -uid "CDC269CF-49DB-F1E7-9DBA-61B01A032887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 9 0 10 0 20 0.083560694963811785 45 0.091461965233081838
		 70 0 71 -17.272568147561646 76 -1.351618195642772 83 20.288371546660848 88 4.6695144906299824
		 95 -17.272568147561646 96 -17.272568147561646 98 -11.823578878071231 102 15.118376548670909
		 104 20.288371546660848 106 14.003234659040652 110 -13.086315552311595 112 -17.272568147561646
		 115 0 118 -0.015804636343995496 121 -0.007161494703825151 125 0.0082908274617010825
		 128 0.013091282179590552 132 0 135 0 140 0 145 -20.397802413451757 149 -20.397802413451757
		 155 0;
	setAttr -s 29 ".kit[2:28]"  1 18 18 18 18 1 18 1 
		1 1 18 18 18 18 18 1 1 18 18 18 18 1 18 18 18 
		18 1;
	setAttr -s 29 ".kot[2:28]"  1 18 18 18 18 1 18 1 
		1 1 18 18 18 18 18 1 1 18 18 18 18 1 18 18 18 
		18 1;
	setAttr -s 29 ".kix[2:28]"  1 0.99999982118606567 1 0.99998348951339722 
		1 0.41487213969230652 1 0.37906399369239807 1 1 0.33352041244506836 0.33609199523925781 
		1 0.32474040985107422 0.344026118516922 1 0.99998348951339722 1 0.99999839067459106 
		0.99999874830245972 1 0.99998348951339722 1 1 1 1 0.99998348951339722;
	setAttr -s 29 ".kiy[2:28]"  0 0.00049645139370113611 0 -0.0057466304861009121 
		0 0.90987974405288696 0 -0.92537051439285278 0 0 0.94274288415908813 0.9418291449546814 
		0 -0.94580322504043579 -0.93896013498306274 0 -0.0057466304861009121 0 0.0018023352604359388 
		0.0015149007085710764 0 -0.0057466304861009121 0 0 0 0 -0.0057466304861009121;
	setAttr -s 29 ".kox[2:28]"  1 0.99999988079071045 1 0.99998348951339722 
		1 0.41487208008766174 1 0.37906396389007568 1 1 0.33352038264274597 0.33609199523925781 
		1 0.32474040985107422 0.344026118516922 1 0.99998348951339722 1 0.99999833106994629 
		0.99999880790710449 1 0.99998348951339722 1 1 1 1 0.99998348951339722;
	setAttr -s 29 ".koy[2:28]"  0 0.00049645139370113611 0 -0.0057466300204396248 
		0 0.90987974405288696 0 -0.92537045478820801 0 0 0.94274288415908813 0.9418291449546814 
		0 -0.94580316543579102 -0.93896013498306274 0 -0.0057466300204396248 0 0.0018023352604359388 
		0.0015149008249863982 0 -0.0057466300204396248 0 0 0 0 -0.0057466300204396248;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	rename -uid "523D6649-4C96-7BDD-E5CE-4CB575BD7368";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0 9 0 10 0.89112600523235941 24 2.4703869858000105
		 45 -0.079473783842792856 70 0.89112600523235941 71 1.4684899414397676 76 4.8988869785744757
		 83 -0.27344284278248043 88 -2.9618100543340682 95 1.4684899414397676 96 1.4684899414397676
		 98 3.6913872215030583 100 4.692581829470547 102 2.2672762101113495 104 -0.27344284278248043
		 106 -2.3292517531343173 108 -2.716400325607959 110 -0.14927691694084499 112 1.4684899414397676
		 115 0.89112600523235941 118 0.97367285832585848 121 0.92355112855843557 125 0.83617837613345358
		 128 0.80918592866457573 132 0.89112600523235941 135 0.89112600523235941 140 0.89112600523235941
		 145 0.89112600523235941 149 0.89112600523235941 155 0.89112600523235941;
	setAttr -s 31 ".kit[2:30]"  1 18 18 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 31 ".kot[2:30]"  1 18 18 18 18 18 18 18 
		1 1 18 18 18 18 18 18 18 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 31 ".ktl[2:30]" no yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 31 ".kix[2:30]"  0.99940019845962524 1 1 0.99940019845962524 
		0.94393396377563477 1 0.94590812921524048 1 1 1 0.92131197452545166 1 0.8384242057800293 
		0.85685539245605469 0.95674890279769897 1 0.8770291805267334 1 0.99940019845962524 
		1 0.99994713068008423 0.99996346235275269 1 0.99940019845962524 1 1 1 1 0.99940019845962524;
	setAttr -s 31 ".kiy[2:30]"  0.034628774970769882 0 0 0.034628774970769882 
		0.33013433218002319 0 -0.32443466782569885 0 0 0 0.38882410526275635 0 -0.54501813650131226 
		-0.51555675268173218 -0.2909148633480072 0 0.48043695092201233 0 0.034628774970769882 
		0 -0.010284029878675938 -0.0085541754961013794 0 0.034628774970769882 0 0 0 0 0.034628774970769882;
	setAttr -s 31 ".kox[2:30]"  0.99831807613372803 1 1 0.99951440095901489 
		0.94393396377563477 1 0.94590812921524048 1 1 1 0.92131197452545166 1 0.8384242057800293 
		0.85685539245605469 0.95674890279769897 1 0.87702924013137817 1 0.99951440095901489 
		1 0.99994701147079468 0.99996340274810791 1 0.99951440095901489 1 1 1 1 0.99951440095901489;
	setAttr -s 31 ".koy[2:30]"  0.057973477989435196 0 0 0.031158402562141418 
		0.33013433218002319 0 -0.32443469762802124 0 0 0 0.38882410526275635 0 -0.54501813650131226 
		-0.51555675268173218 -0.2909148633480072 0 0.48043698072433472 0 0.031158402562141418 
		0 -0.010284028016030788 -0.0085541745647788048 0 0.031158402562141418 0 0 0 0 0.031158402562141418;
createNode animCurveTA -n "R_Hand_CTRL_rotateX";
	rename -uid "CA143EF9-43A7-D6F3-B9C1-1EA7556E6C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 32.394678180401066 30 19.681484756390606
		 52 28.366871067708807 70 32.394678180401066 71 33.791439587233469 74 25.844805383549044
		 77 36.49262377866873 83 52.980791669149582 89 44.344160887846918 92 32.233376298655237
		 95 33.791439587233469 96 125.88544725435712 98 138.72661666325288 100 -3.904174474091497
		 102 46.99803814882759 104 52.980791669149582 106 48.489984990377387 108 57.141851291537741
		 110 22.118920948106307 112 125.88544725435712 115 32.394678180401066 118 -97.704626099569708
		 121 -84.924161887136208 125 -48.80146800994698 128 -6.3959795232921071 132 32.394678180401066
		 135 -174.60378148306086 140 -174.60378148306086 144 -93.634673239074658 145 -50.322023911971435
		 149 49.561191540428098 155 32.394678180401066;
	setAttr -s 34 ".kit[2:33]"  3 18 1 3 18 18 18 18 
		18 18 18 1 16 16 1 16 16 16 16 16 1 18 18 18 18 
		1 18 18 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  3 18 1 3 18 18 18 18 
		18 18 18 1 16 16 1 16 16 16 16 16 1 18 18 18 18 
		1 18 18 18 18 18 1;
	setAttr -s 34 ".kix[4:33]"  0.97304677963256836 1 1 1 0.5351099967956543 
		1 0.63797426223754883 1 0.77486145496368408 0.11402981728315353 1 1 0.28617846965789795 
		1 1 1 1 1 1 1 0.26370075345039368 0.16783022880554199 0.16246357560157776 1 1 1 0.076610200107097626 
		0.066539101302623749 1 1;
	setAttr -s 34 ".kiy[4:33]"  0.23060792684555054 0 0 0 0.84478241205215454 
		0 -0.7700577974319458 0 0.63213109970092773 0.99347740411758423 0 0 0.9581763744354248 
		0 0 0 0 0 0 0 0.96460449695587158 0.98581594228744507 0.98671454191207886 0 0 0 0.99706107378005981 
		0.99778378009796143 0 0;
	setAttr -s 34 ".kox[4:33]"  0.97304677963256836 1 1 1 0.5351099967956543 
		1 0.63797420263290405 1 0.77486145496368408 0.11402986198663712 1 1 0.28617852926254272 
		1 1 1 1 1 1 1 0.26370075345039368 0.1678302139043808 0.16246357560157776 1 1 1 0.076610200107097626 
		0.066539101302623749 1 1;
	setAttr -s 34 ".koy[4:33]"  0.23060794174671173 0 0 0 0.84478241205215454 
		0 -0.77005773782730103 0 0.63213109970092773 0.99347734451293945 0 0 0.95817631483078003 
		0 0 0 0 0 0 0 0.96460443735122681 0.98581582307815552 0.98671454191207886 0 0 0 0.99706113338470459 
		0.99778378009796143 0 0;
createNode animCurveTA -n "R_Hand_CTRL_rotateY";
	rename -uid "46ACAAA7-405E-94CE-EA3F-C291E0E034E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -13.206871368986926 30 -26.458231667517886
		 52 0.025798781943590844 70 -13.206871368986926 71 17.680054043337002 74 34.076685250162043
		 77 0.74490569933035489 83 -22.934166791736104 89 -4.6547570271209135 92 21.985361789870538
		 95 17.680054043337002 96 49.152641590230928 98 78.432761851091712 100 45.580589255636824
		 102 -15.845531632907655 104 -22.934166791736104 106 -49.242176691900319 108 -41.544387071429746
		 110 -10.247674476261439 112 49.152641590230928 115 -13.206871368986926 118 46.512542282498934
		 121 20.833376714487109 125 21.840508648836654 128 8.9719468096168296 132 -13.206871368986926
		 135 27.809169267741556 140 27.809169267741556 144 48.665707021131453 145 51.701979414170054
		 149 75.624462185851371 155 -13.206871368986926;
	setAttr -s 34 ".kit[5:33]"  1 18 18 18 18 18 18 18 
		1 16 1 16 16 16 1 1 1 1 18 18 18 18 1 18 18 
		18 18 18 1;
	setAttr -s 34 ".kot[5:33]"  1 18 18 18 18 18 18 18 
		1 16 1 16 16 16 1 1 16 1 18 18 18 18 1 18 18 
		18 18 18 1;
	setAttr -s 34 ".ktl[21:33]" no yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 34 ".kix[5:33]"  0.8347281813621521 0.15949825942516327 
		1 0.28866451978683472 1 0.35738447308540344 1 1 0.067212529480457306 1 0.058576676994562149 
		1 0.22298876941204071 1 0.2664027214050293 0.052367120981216431 0.12580691277980804 
		0.8347281813621521 1 1 1 0.35640612244606018 0.8347281813621521 1 1 0.37112903594970703 
		0.33389049768447876 1 0.8347281813621521;
	setAttr -s 34 ".kiy[5:33]"  -0.55066215991973877 0.98719817399978638 
		0 -0.95743030309677124 0 0.93395739793777466 0 0 0.99773871898651123 0 -0.99828296899795532 
		0 -0.97482103109359741 0 0.96386182308197021 0.99862790107727051 0.99205476045608521 
		-0.55066215991973877 0 0 0 -0.93433105945587158 -0.55066215991973877 0 0 0.9285813570022583 
		0.94261187314987183 0 -0.55066215991973877;
	setAttr -s 34 ".kox[5:33]"  0.83472824096679688 0.15949827432632446 
		1 0.2886645495891571 1 0.35738447308540344 1 1 0.067212522029876709 1 0.058576673269271851 
		1 0.22298876941204071 1 0.26640266180038452 0.052367135882377625 1 0.83472824096679688 
		1 1 1 0.35640612244606018 0.83472824096679688 1 1 0.37112903594970703 0.33389049768447876 
		1 0.83472824096679688;
	setAttr -s 34 ".koy[5:33]"  -0.55066215991973877 0.98719823360443115 
		0 -0.95743030309677124 0 0.93395739793777466 0 0 0.99773871898651123 0 -0.99828296899795532 
		0 -0.97482103109359741 0 0.96386182308197021 0.99862790107727051 0 -0.55066215991973877 
		0 0 0 -0.93433111906051636 -0.55066215991973877 0 0 0.9285813570022583 0.94261187314987183 
		0 -0.55066215991973877;
createNode animCurveTA -n "R_Hand_CTRL_rotateZ";
	rename -uid "005431AE-40EF-C854-3CF8-45BCDB407CD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 66.556634146466692 30 76.928393410472609
		 52 64.000499015226367 70 66.556634146466692 71 72.914932986118998 74 47.383384339974498
		 77 40.541691253867455 83 55.913890346246831 89 63.565619677751044 92 61.851209374341252
		 95 72.914932986118998 96 195.15043540469205 98 203.95132559249831 100 55.104845405722983
		 102 46.788796143607925 104 55.913890346246831 106 56.583224421966079 108 53.257511846314046
		 110 51.057429582008766 112 195.15043540469205 115 66.556634146466692 118 -68.33130397377117
		 121 -43.834807109546055 125 -39.032892803980232 128 5.8267315514484572 132 66.556634146466692
		 135 -12.479204353046196 140 -12.479204353046196 144 -59.264076051062574 145 -38.663982012262565
		 149 66.874104430725538 155 66.556634146466692;
	setAttr -s 34 ".kit[2:33]"  1 18 3 1 18 18 18 18 
		18 18 18 16 16 1 16 16 16 16 16 1 1 18 18 18 18 
		1 18 18 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 3 1 18 18 18 18 
		18 18 18 1 16 1 16 16 16 16 16 16 1 18 18 18 18 
		1 18 18 18 18 18 1;
	setAttr -s 34 ".ktl[13:33]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  0.80419367551803589 1 1 0.98715925216674805 
		1 0.33368247747421265 1 0.70547944307327271 1 1 0.17010790109634399 1 1 0.19761769473552704 
		1 1 1 0.81025522947311401 1 0.097175620496273041 0.98715925216674805 1 0.46850362420082092 
		0.46850362420082092 0.12561039626598358 0.98715925216674805 1 1 1 0.075488962233066559 
		1 0.98715925216674805;
	setAttr -s 34 ".kiy[2:33]"  0.59436732530593872 0 0 0.15973919630050659 
		0 -0.94268560409545898 0 0.70873039960861206 0 0 0.98542547225952148 0 0 -0.98027914762496948 
		0 0 0 -0.58607727289199829 0 0.99526727199554443 0.15973919630050659 0 0.883461594581604 
		0.883461594581604 0.99207967519760132 0.15973919630050659 0 0 0 0.99714666604995728 
		0 0.15973919630050659;
	setAttr -s 34 ".kox[2:33]"  0.80419361591339111 1 1 0.98715931177139282 
		1 0.33368244767189026 1 0.70547944307327271 1 1 0.1701078861951828 0.26972594857215881 
		1 0.19761773943901062 1 1 1 0.81025522947311401 1 1 0.98715931177139282 1 0.46850362420082092 
		0.46850362420082092 0.12561039626598358 0.98715931177139282 1 1 1 0.075488962233066559 
		1 0.98715931177139282;
	setAttr -s 34 ".koy[2:33]"  0.59436750411987305 0 0 0.15973913669586182 
		0 -0.94268554449081421 0 0.70873039960861206 0 0 0.98542541265487671 0.9629371166229248 
		0 -0.98027914762496948 0 0 0 -0.58607727289199829 0 0 0.15973913669586182 0 0.883461594581604 
		0.88346153497695923 0.99207961559295654 0.15973913669586182 0 0 0 0.99714666604995728 
		0 0.15973913669586182;
createNode animCurveTU -n "R_Hand_CTRL_Grab";
	rename -uid "EE3F1D26-4DE0-62A5-25D0-3E8A163646BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 0 9 0 10 1.0726606771902012 24 2.3000000000000003
		 45 1.199621861618156 57 -1.2264596119390261 70 1.1 71 1.1 77 1.1 83 1.1 89 1.1 92 1.1
		 95 1.1 96 1.1 102 -3.1999999999999997 104 1.1 106 4.7 112 1.1 115 1.1 118 1.0088054602270509
		 121 0.91618639135843627 125 0.80519579409025566 128 0.78164330256844361 132 1.1 135 1.1
		 140 1.1 145 1.1 155 1.1;
	setAttr -s 28 ".kit[2:27]"  1 18 1 18 1 18 18 18 
		18 18 18 16 16 1 16 16 1 18 18 18 18 1 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 1 18 2 18 18 18 
		18 18 18 16 16 1 16 16 1 18 18 18 18 1 18 18 18 
		1;
	setAttr -s 28 ".ktl[2:27]" no yes yes yes no yes yes yes yes yes yes 
		yes yes yes yes yes no yes yes yes yes yes yes yes yes yes;
	setAttr -s 28 ".kix[2:27]"  1 1 0.23323464393615723 1 0.17280988395214081 
		1 1 1 1 1 1 1 1 0.011331444606184959 1 1 0.17280988395214081 0.73627287149429321 
		0.75346702337265015 0.86630195379257202 1 0.17280988395214081 1 1 1 0.17280988395214081;
	setAttr -s 28 ".kiy[2:27]"  0 0 -0.97242051362991333 0 0.98495525121688843 
		0 0 0 0 0 0 0 0 0.9999358057975769 0 0 0.98495525121688843 -0.6766846776008606 -0.65748560428619385 
		-0.49952065944671631 0 0.98495525121688843 0 0 0 0.98495525121688843;
	setAttr -s 28 ".kox[2:27]"  0.17591190338134766 1 0.23323461413383484 
		1 1 1 1 1 1 1 1 1 1 0.011331446468830109 1 1 1 0.73627287149429321 0.75346702337265015 
		0.86630195379257202 1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0.9844059944152832 0 -0.97242051362991333 
		0 0 0 0 0 0 0 0 0 0 0.9999358057975769 0 0 0 -0.67668473720550537 -0.65748566389083862 
		-0.49952062964439392 0 0 0 0 0 0;
createNode animCurveTA -n "L_Hand_CTRL_rotateX";
	rename -uid "9C6F7165-4D96-DDFD-2A89-F5A189C680CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 9 0 10 28.644773787625205 24 57.989835356923564
		 35 58.771790067998054 45 39.488606761444068 58 30.339847784962259 70 28.165339538418714
		 71 28.165339538418714 77 72.489610757544028 80 64.624454279854632 83 36.641071385869111
		 86 24.507395240415899 89 28.047902835918965 92 28.119967975979492 95 28.165339538418714
		 96 28.165339538418714 98 69.207942975078737 100 72.489610757544028 102 36.908687584339056
		 104 133.11125268155138 106 -2.0350203550187618 108 21.763410520276768 110 28.119967975979492
		 112 28.165339538418714 115 28.165339538418714 118 -14.64866927987006 121 -93.697029129787254
		 125 -66.178090151312958 128 -18.193373682072824 132 28.165339538418714 135 28.165339538418714
		 140 28.165339538418714 145 28.165339538418714 155 28.165339538418714;
	setAttr -s 35 ".kit[2:34]"  1 3 18 1 1 18 18 18 
		18 18 18 18 18 18 16 1 16 16 16 16 16 16 16 1 18 
		18 18 18 1 18 18 18 1;
	setAttr -s 35 ".kot[2:34]"  1 3 18 1 1 18 18 18 
		18 18 18 18 18 18 16 1 16 16 16 16 16 16 16 1 18 
		18 18 18 1 18 18 18 1;
	setAttr -s 35 ".kix[2:34]"  1 1 1 0.71928995847702026 0.99103069305419922 
		1 1 1 0.30447748303413391 0.2746574878692627 1 0.99928885698318481 0.99994748830795288 
		1 1 0.40900745987892151 1 1 1 1 0.24558106064796448 1 1 1 0.093620605766773224 1 
		0.17435261607170105 0.14030429720878601 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 -0.69471001625061035 -0.13363447785377502 
		0 0 0 -0.95251953601837158 -0.96154212951660156 0 0.037706419825553894 0.010247745551168919 
		0 0 0.91253107786178589 0 0 0 0 0.9693760871887207 0 0 0 -0.99560791254043579 0 0.98468327522277832 
		0.9901084303855896 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 0.71928977966308594 0.99103075265884399 
		1 1 1 0.30447745323181152 0.2746574878692627 1 0.99928879737854004 0.99994748830795288 
		1 1 0.40900740027427673 1 1 1 1 0.24558106064796448 1 1 1 0.093620605766773224 1 
		0.17435263097286224 0.1403043121099472 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 -0.69471019506454468 -0.13363398611545563 
		0 0 0 -0.95251953601837158 -0.96154212951660156 0 0.037706419825553894 0.010247745551168919 
		0 0 0.91253107786178589 0 0 0 0 0.9693760871887207 0 0 0 -0.99560791254043579 0 0.98468327522277832 
		0.99010848999023438 0 0 0 0 0;
createNode animCurveTA -n "L_Hand_CTRL_rotateY";
	rename -uid "18C34F10-4768-E4B5-3ED8-D8A96FCE47BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 9 0 10 5.4774367382491578 24 31.799853849937254
		 45 11.923458524480829 58 -0.36732623441276563 70 5.3458527471633559 71 5.3458527471633559
		 77 27.747028359601757 80 16.460023117511035 83 -8.2043019101836236 86 -20.189562652013951
		 89 -6.0782114631755446 95 5.3458527471633559 96 5.3458527471633559 98 56.789603374992041
		 100 27.747028359601757 102 -31.96547768022392 104 -59.320255296528714 106 -66.668599861994593
		 108 -28.503420660233587 110 3.2787038942008304 112 5.3458527471633559 115 5.3458527471633559
		 118 -43.235881645036471 121 -24.823821211923107 125 -25.80572940474655 128 -14.080393517769625
		 132 5.3458527471633559 135 5.3458527471633559 140 5.3458527471633559 145 5.3458527471633559
		 155 5.3458527471633559;
	setAttr -s 33 ".kit[2:32]"  1 18 1 18 1 18 18 1 
		1 18 1 18 16 16 16 16 1 16 1 1 16 1 18 18 18 
		18 1 18 18 18 1;
	setAttr -s 33 ".kot[2:32]"  1 18 1 18 1 18 18 1 
		1 18 1 18 16 16 16 16 1 16 1 1 16 1 18 18 18 
		18 1 18 18 18 1;
	setAttr -s 33 ".ktl[2:32]" no yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 33 ".kix[2:32]"  1 1 0.81301647424697876 1 0.93426513671875 
		1 1 0.24660663306713104 0.23233970999717712 1 0.36575832962989807 1 1 1 0.08575623482465744 
		0.087406031787395477 0.26251927018165588 1 0.071974553167819977 0.56337583065032959 
		1 0.93426513671875 1 1 1 0.39437660574913025 0.93426513671875 1 1 1 0.93426513671875;
	setAttr -s 33 ".kiy[2:32]"  0 0 -0.58224070072174072 0 0.35657906532287598 
		0 0 -0.96911567449569702 -0.97263473272323608 0 0.9307098388671875 0 0 0 -0.99631613492965698 
		-0.99617272615432739 -0.96492677927017212 0 0.9974064826965332 0.82620078325271606 
		0 0.35657906532287598 0 0 0 0.9189489483833313 0.35657906532287598 0 0 0 0.35657906532287598;
	setAttr -s 33 ".kox[2:32]"  0.88864552974700928 1 0.81301647424697876 
		1 0.93426513671875 1 1 0.24660669267177582 0.23233970999717712 1 0.3657582700252533 
		1 1 1 0.08575623482465744 0.087406031787395477 0.26251932978630066 1 0.07197454571723938 
		0.56337583065032959 1 0.93426513671875 1 1 1 0.39437657594680786 0.93426513671875 
		1 1 1 0.93426513671875;
	setAttr -s 33 ".koy[2:32]"  0.45859473943710327 0 -0.58224081993103027 
		0 0.35657912492752075 0 0 -0.96911567449569702 -0.97263473272323608 0 0.93070989847183228 
		0 0 0 -0.99631613492965698 -0.99617272615432739 -0.96492677927017212 0 0.9974064826965332 
		0.82620078325271606 0 0.35657912492752075 0 0 0 0.91894888877868652 0.35657912492752075 
		0 0 0 0.35657912492752075;
createNode animCurveTA -n "L_Hand_CTRL_rotateZ";
	rename -uid "FEF8A216-43BD-5007-7B1A-AF9DAF85C3C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 0 9 0 10 -58.82552648488771 24 -53.15537737412442
		 45 -58.797747081730066 58 -64.750463777103462 70 -58.559424678210256 71 -58.559424678210256
		 77 -53.198189822126139 80 -46.545739925383209 83 -49.598543447151783 86 -59.148607718676061
		 89 -65.595544630447677 92 -61.277823116695629 95 -58.559424678210256 96 -58.559424678210256
		 98 -40.950838127098571 100 -53.198189822126139 102 -57.359600256676437 104 -207.36927693824876
		 106 -57.81439815444719 108 -56.076562651021803 110 -61.277823116695629 112 -58.559424678210256
		 115 -58.559424678210256 118 -16.059092783764324 121 33.495763428491529 125 20.357836671415654
		 128 -19.547856398346756 132 -58.559424678210256 135 -58.559424678210256 140 -58.559424678210256
		 145 -58.559424678210256 155 -58.559424678210256;
	setAttr -s 34 ".kit[2:33]"  1 18 1 18 1 18 1 18 
		18 1 18 1 18 16 16 16 16 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".kot[2:33]"  1 18 1 18 1 18 1 18 
		18 1 18 1 18 16 16 16 16 16 16 16 16 16 1 18 18 
		18 18 1 18 18 18 1;
	setAttr -s 34 ".ktl[2:33]" no yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 34 ".kix[2:33]"  1 1 0.97369116544723511 1 0.9081188440322876 
		1 0.64671754837036133 1 0.67273682355880737 0.39998281002044678 1 0.69968134164810181 
		1 1 1 0.42206963896751404 1 1 1 1 1 1 0.9081188440322876 0.12352801114320755 1 0.24439552426338196 
		0.16702592372894287 0.9081188440322876 1 1 1 0.9081188440322876;
	setAttr -s 34 ".kiy[2:33]"  0 0 -0.22787193953990936 0 0.41871261596679688 
		0 0.76272958517074585 0 -0.73988181352615356 -0.91652274131774902 0 0.71445506811141968 
		0 0 0 -0.90656346082687378 0 0 0 0 0 0 0.41871261596679688 0.99234110116958618 0 
		-0.96967560052871704 -0.98595249652862549 0.41871261596679688 0 0 0 0.41871261596679688;
	setAttr -s 34 ".kox[2:33]"  0.94098055362701416 1 0.97369116544723511 
		1 0.9081188440322876 1 0.64671742916107178 1 0.67273682355880737 0.39998266100883484 
		1 0.69968152046203613 1 1 1 0.42206963896751404 1 1 1 1 1 1 0.9081188440322876 0.12352801114320755 
		1 0.24439550936222076 0.16702590882778168 0.9081188440322876 1 1 1 0.9081188440322876;
	setAttr -s 34 ".koy[2:33]"  0.338460773229599 0 -0.22787190973758698 
		0 0.41871252655982971 0 0.76272964477539063 0 -0.73988181352615356 -0.91652274131774902 
		0 0.71445488929748535 0 0 0 -0.90656346082687378 0 0 0 0 0 0 0.41871252655982971 
		0.99234110116958618 0 -0.96967560052871704 -0.98595249652862549 0.41871252655982971 
		0 0 0 0.41871252655982971;
createNode animCurveTU -n "L_Hand_CTRL_Grab";
	rename -uid "6014672D-4051-9337-184C-ABAB24652936";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 9 0 10 2.5 24 1.4748697180703507 45 -2.0349982658206613
		 70 2.5 71 2.5 77 2.5 83 2.5 89 2.5 92 2.5 95 2.5 96 2.5 100 6 103 2.549992221595712
		 106 -2.7 112 2.5 115 2.5 118 2.5 121 2.5 125 2.5 128 2.5 132 2.5 135 2.5 140 2.5
		 145 2.5 155 2.5;
	setAttr -s 27 ".kit[2:26]"  3 1 18 3 18 18 18 18 
		18 18 16 16 1 16 16 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".kot[2:26]"  3 1 18 3 18 18 18 18 
		18 18 16 16 1 16 16 1 18 18 18 18 1 18 18 18 1;
	setAttr -s 27 ".ktl[2:26]" no yes yes no yes yes yes yes yes yes yes 
		yes yes yes yes no yes yes yes yes yes yes yes yes yes;
	setAttr -s 27 ".kix[3:26]"  0.25396561622619629 1 1 1 1 1 1 1 1 1 1 
		0.013867377303540707 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[3:26]"  -0.96721327304840088 0 0 0 0 0 0 0 0 0 
		0 -0.99990391731262207 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[3:26]"  0.25396552681922913 1 1 1 1 1 1 1 1 1 1 
		0.013867377303540707 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[3:26]"  -0.96721327304840088 0 0 0 0 0 0 0 0 0 
		0 -0.99990385770797729 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_LegIK_twist";
	rename -uid "8C0AA85C-44DE-55DF-4224-1CBA1EC9BDAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.25 -34.377467707849391 9 -34.377467707849391
		 10 -4.5836623610465832;
createNode animCurveTA -n "R_LegIK_twist";
	rename -uid "C2E825AD-4EA8-8130-9970-04B208A511B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.25 25.210142985756221 11.25 25.210142985756221;
createNode skinCluster -n "skinCluster1";
	rename -uid "8A5AEA51-41C9-4B19-284C-F19981D86885";
	setAttr -s 415 ".wl";
	setAttr -s 2 ".wl[0].w[6:7]"  0.062992129223584603 0.93700787077641545;
	setAttr ".wl[1].w[7]"  1;
	setAttr -s 2 ".wl[2].w[6:7]"  0.055118110471808299 0.94488188952819174;
	setAttr -s 2 ".wl[3].w[6:7]"  0.007874016204482916 0.99212598379551709;
	setAttr -s 2 ".wl[4].w[7:8]"  0.4803149474370032 0.5196850525629968;
	setAttr -s 2 ".wl[5].w[6:7]"  0.20078740151590618 0.79921259848409376;
	setAttr ".wl[6].w[9]"  1;
	setAttr -s 2 ".wl[7].w";
	setAttr ".wl[7].w[7]" 0.0003756277437787503;
	setAttr ".wl[7].w[9]" 0.99962437225622125;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[7]" 0.013432151641638093;
	setAttr ".wl[8].w[8]" 0.061787896785943694;
	setAttr ".wl[8].w[11]" 0.92477995157241821;
	setAttr -s 2 ".wl[9].w[7:8]"  0.46456691735446715 0.53543308264553291;
	setAttr -s 2 ".wl[10].w[7:8]"  0.43700786471002906 0.56299213528997094;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[7]" 0.37401574158227946;
	setAttr ".wl[11].w[8]" 0.52362205616698321;
	setAttr ".wl[11].w[11]" 0.10236220225073733;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[7]" 0.1889763787773133;
	setAttr ".wl[12].w[8]" 0.42125984092946722;
	setAttr ".wl[12].w[11]" 0.38976378029321951;
	setAttr -s 2 ".wl[13].w[7:8]"  0.40944881206559092 0.59055118793440908;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[7]" 0.094861659752552327;
	setAttr ".wl[14].w[8]" 0.72332015842926589;
	setAttr ".wl[14].w[11]" 0.18181818181818182;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[8]" 0.279527563361958;
	setAttr ".wl[15].w[9]" 0.019685039436337815;
	setAttr ".wl[15].w[11]" 0.70078739720170424;
	setAttr -s 3 ".wl[16].w[7:9]"  0.33464566854776451 0.6496062995291696 
		0.015748031923065918;
	setAttr -s 2 ".wl[17].w";
	setAttr ".wl[17].w[7]" 0.00034535469603724778;
	setAttr ".wl[17].w[9]" 0.99965464530396275;
	setAttr -s 2 ".wl[18].w";
	setAttr ".wl[18].w[7]" 0.0046358788385987282;
	setAttr ".wl[18].w[9]" 0.99536412116140127;
	setAttr ".wl[19].w[9]"  1;
	setAttr -s 2 ".wl[20].w";
	setAttr ".wl[20].w[7]" 0.00014854724577162415;
	setAttr ".wl[20].w[9]" 0.99985145275422838;
	setAttr -s 2 ".wl[21].w[6:7]"  0.24409448489074681 0.75590551510925319;
	setAttr ".wl[22].w[9]"  1;
	setAttr -s 2 ".wl[23].w";
	setAttr ".wl[23].w[7]" 0.0039370081040819875;
	setAttr ".wl[23].w[9]" 0.99606299189591796;
	setAttr -s 2 ".wl[24].w[23:24]"  0.81102362122268667 0.1889763787773133;
	setAttr -s 2 ".wl[25].w[23:24]"  0.570866150331239 0.429133849668761;
	setAttr -s 2 ".wl[26].w[23:24]"  0.53149607512489883 0.46850392487510117;
	setAttr -s 2 ".wl[27].w[23:24]"  0.43307085718939503 0.56692914281060502;
	setAttr -s 2 ".wl[28].w[22:23]"  0.2519685112402304 0.74803148875976966;
	setAttr -s 2 ".wl[29].w[22:23]"  0.17716535603872041 0.82283464396127959;
	setAttr -s 2 ".wl[30].w[22:23]"  0.33858267669417869 0.66141732330582137;
	setAttr -s 2 ".wl[31].w[22:23]"  0.2125984242544991 0.78740157574550096;
	setAttr -s 2 ".wl[32].w[23:24]"  0.72440944363596549 0.27559055636403446;
	setAttr -s 3 ".wl[33].w[23:25]"  0.71653543395432051 0.20866141511419881 
		0.074803150931480725;
	setAttr -s 3 ".wl[34].w[23:25]"  0.10236220378205815 0.77165353965547534 
		0.12598425656246651;
	setAttr -s 3 ".wl[35].w[23:25]"  0.043307087438730622 0.89763779468662108 
		0.059055117874648393;
	setAttr -s 3 ".wl[36].w[23:25]"  0.10629921133214064 0.24803149061502369 
		0.64566929805283568;
	setAttr -s 3 ".wl[37].w[23:25]"  0.051181102082444183 0.24015747641303728 
		0.7086614215045185;
	setAttr -s 2 ".wl[38].w[6:7]"  0.13385827266387978 0.86614172733612027;
	setAttr -s 2 ".wl[39].w[6:7]"  0.12598425750481784 0.8740157424951821;
	setAttr -s 3 ".wl[40].w[23:25]"  0.67716535845349557 0.20078740001403381 
		0.1220472415324706;
	setAttr -s 2 ".wl[41].w[23:24]"  0.91338582512253874 0.086614174877461245;
	setAttr ".wl[42].w[23]"  1;
	setAttr -s 2 ".wl[43].w[22:23]"  0.011811023839229775 0.98818897616077017;
	setAttr ".wl[44].w[23]"  1;
	setAttr -s 2 ".wl[45].w[22:23]"  0.019685040025307389 0.98031495997469265;
	setAttr -s 2 ".wl[46].w[22:23]"  0.91732283273151816 0.082677167268481816;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.043307086952830726;
	setAttr ".wl[47].w[21]" 0.14566929485767582;
	setAttr ".wl[47].w[22]" 0.81102361818949342;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.035433072088253588;
	setAttr ".wl[48].w[21]" 0.1023622049305488;
	setAttr ".wl[48].w[22]" 0.86220472298119766;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.015748032276447669;
	setAttr ".wl[49].w[21]" 0.066929136707408007;
	setAttr ".wl[49].w[22]" 0.91732283101614431;
	setAttr -s 2 ".wl[50].w[21:22]"  0.21653543183403007 0.78346456816596999;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.0039370080451850281;
	setAttr ".wl[51].w[21]" 0.22047243931049135;
	setAttr ".wl[51].w[22]" 0.77559055264432364;
	setAttr -s 2 ".wl[52].w";
	setAttr ".wl[52].w[2]" 0.074803152050522931;
	setAttr ".wl[52].w[5]" 0.9251968479494771;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.24803149061502369;
	setAttr ".wl[53].w[1]" 0.67322835090341304;
	setAttr ".wl[53].w[5]" 0.078740158481563211;
	setAttr ".wl[54].w[5]"  1;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.24803149247027778;
	setAttr ".wl[55].w[1]" 0.44488188640665299;
	setAttr ".wl[55].w[5]" 0.30708662112306923;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[2]" 0.7480314943549804;
	setAttr ".wl[56].w[3]" 0.11811023398238811;
	setAttr ".wl[56].w[5]" 0.13385827166263148;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[2]" 0.46062991672477688;
	setAttr ".wl[57].w[3]" 0.31889764386166214;
	setAttr ".wl[57].w[5]" 0.22047243941356101;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.50787402905138135;
	setAttr ".wl[58].w[1]" 0.46850392399900898;
	setAttr ".wl[58].w[5]" 0.023622046949609711;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.48616600691080031;
	setAttr ".wl[59].w[1]" 0.45454545556947434;
	setAttr ".wl[59].w[5]" 0.059288537519725383;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[3]" 0.97244094471256104;
	setAttr ".wl[60].w[5]" 0.027559055287438988;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[3]" 0.97637795234362679;
	setAttr ".wl[61].w[5]" 0.023622047656373189;
	setAttr -s 2 ".wl[62].w[24:25]"  0.062992129223584603 0.93700787077641545;
	setAttr -s 2 ".wl[63].w[24:25]"  0.05118110284810462 0.94881889715189538;
	setAttr -s 3 ".wl[64].w[23:25]"  0.027559055184369314 0.059055117985080188 
		0.91338582683055047;
	setAttr -s 2 ".wl[65].w[24:25]"  0.0354330723532899 0.96456692764671015;
	setAttr -s 2 ".wl[66].w[5:6]"  0.078740159659502373 0.92125984034049768;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.11417322472429395;
	setAttr ".wl[67].w[1]" 0.2874015767761976;
	setAttr ".wl[67].w[5]" 0.59842519849950848;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.070866142321253017;
	setAttr ".wl[68].w[1]" 0.31496062921449636;
	setAttr ".wl[68].w[5]" 0.6141732284642506;
	setAttr -s 2 ".wl[69].w";
	setAttr ".wl[69].w[1]" 0.015748032394241589;
	setAttr ".wl[69].w[5]" 0.98425196760575839;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.76771653210539281;
	setAttr ".wl[70].w[1]" 0.14960630186296145;
	setAttr ".wl[70].w[21]" 0.08267716603164571;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.71259842640423798;
	setAttr ".wl[71].w[1]" 0.22440944531452875;
	setAttr ".wl[71].w[21]" 0.062992128281233253;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.75098814315326035;
	setAttr ".wl[72].w[1]" 0.20158102679237308;
	setAttr ".wl[72].w[21]" 0.04743083005436656;
	setAttr -s 2 ".wl[73].w[21:22]"  0.29527559396720454 0.70472440603279551;
	setAttr -s 2 ".wl[74].w[6:7]"  0.93307086316743593 0.066929136832564046;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.27165354681145543;
	setAttr ".wl[75].w[1]" 0.65354330337610611;
	setAttr ".wl[75].w[5]" 0.07480314981243856;
	setAttr -s 2 ".wl[76].w[6:7]"  0.82283464396127959 0.17716535603872041;
	setAttr -s 2 ".wl[77].w[5:6]"  0.055118110471808299 0.94488188952819174;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.027559054875160291;
	setAttr ".wl[78].w[1]" 0.14566929513007423;
	setAttr ".wl[78].w[6]" 0.82677164999476549;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.059288537074499388;
	setAttr ".wl[79].w[1]" 0.1225296430369828;
	setAttr ".wl[79].w[6]" 0.81818181988851779;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[3]" 0.96062991957391719;
	setAttr ".wl[80].w[5]" 0.03543307233672513;
	setAttr ".wl[80].w[6]" 0.0039370080893577474;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[7]" 0.20078740151590618;
	setAttr ".wl[81].w[11]" 0.79921259848409376;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[1]" 0.31102362172331083;
	setAttr ".wl[82].w[2]" 0.062992127338881931;
	setAttr ".wl[82].w[5]" 0.62598425093780719;
	setAttr -s 2 ".wl[83].w[5:6]"  0.44881888727193109 0.55118111272806891;
	setAttr -s 3 ".wl[84].w";
	setAttr ".wl[84].w[2]" 0.75196850190506292;
	setAttr ".wl[84].w[3]" 0.12992126411254901;
	setAttr ".wl[84].w[5]" 0.11811023398238811;
	setAttr -s 2 ".wl[85].w[6:7]"  0.69291338347089337 0.30708661652910657;
	setAttr -s 2 ".wl[86].w[6:7]"  0.79133858332503193 0.20866141667496813;
	setAttr -s 3 ".wl[87].w";
	setAttr ".wl[87].w[21]" 0.22440944678327157;
	setAttr ".wl[87].w[22]" 0.7677165371300394;
	setAttr ".wl[87].w[27]" 0.0078740160866889956;
	setAttr -s 3 ".wl[88].w";
	setAttr ".wl[88].w[0]" 0.7322834641546504;
	setAttr ".wl[88].w[1]" 0.19685039246395133;
	setAttr ".wl[88].w[21]" 0.070866143381398239;
	setAttr -s 2 ".wl[89].w[21:22]"  0.15748031814106558 0.84251968185893444;
	setAttr -s 3 ".wl[90].w";
	setAttr ".wl[90].w[0]" 0.33464566416730351;
	setAttr ".wl[90].w[1]" 0.50393701494165033;
	setAttr ".wl[90].w[5]" 0.16141732089104616;
	setAttr -s 2 ".wl[91].w[22:23]"  0.8818897642507032 0.11811023574929679;
	setAttr -s 2 ".wl[92].w[22:23]"  0.50787403000109477 0.49212596999890523;
	setAttr -s 2 ".wl[93].w[22:23]"  0.8070866136431557 0.19291338635684427;
	setAttr -s 3 ".wl[94].w";
	setAttr ".wl[94].w[21]" 0.40157479552245057;
	setAttr ".wl[94].w[22]" 0.54330709565485591;
	setAttr ".wl[94].w[27]" 0.055118108822693544;
	setAttr ".wl[95].w[22]"  1;
	setAttr -s 2 ".wl[96].w[22:23]"  0.99212598379551709 0.007874016204482916;
	setAttr ".wl[97].w[22]"  1;
	setAttr ".wl[98].w[22]"  1;
	setAttr -s 3 ".wl[99].w";
	setAttr ".wl[99].w[21]" 0.46245059340480582;
	setAttr ".wl[99].w[22]" 0.48221343799313454;
	setAttr ".wl[99].w[27]" 0.055335968602059638;
	setAttr -s 3 ".wl[100].w";
	setAttr ".wl[100].w[21]" 0.52569170836085399;
	setAttr ".wl[100].w[22]" 0.36363635817492496;
	setAttr ".wl[100].w[27]" 0.11067193346422104;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[0]" 0.60629921688317867;
	setAttr ".wl[101].w[1]" 0.37795275119375538;
	setAttr ".wl[101].w[5]" 0.015748031923065918;
	setAttr -s 2 ".wl[102].w[21:22]"  0.59055118793440908 0.40944881206559092;
	setAttr -s 2 ".wl[103].w";
	setAttr ".wl[103].w[2]" 0.10236220531337901;
	setAttr ".wl[103].w[5]" 0.89763779468662097;
	setAttr -s 2 ".wl[104].w[5:6]"  0.940944881904488 0.059055118095511984;
	setAttr -s 3 ".wl[105].w";
	setAttr ".wl[105].w[0]" 0.69685039620390798;
	setAttr ".wl[105].w[1]" 0.062992128281233253;
	setAttr ".wl[105].w[21]" 0.24015747551485872;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[0]" 0.70472440603279551;
	setAttr ".wl[106].w[21]" 0.15354330826455329;
	setAttr ".wl[106].w[22]" 0.14173228570265126;
	setAttr -s 3 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.71259842107406346;
	setAttr ".wl[107].w[21]" 0.15748031578518731;
	setAttr ".wl[107].w[22]" 0.1299212631407492;
	setAttr -s 3 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.76771653210539292;
	setAttr ".wl[108].w[1]" 0.13385827166263148;
	setAttr ".wl[108].w[21]" 0.098425196231975667;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.77952755475564028;
	setAttr ".wl[109].w[1]" 0.13779527921271398;
	setAttr ".wl[109].w[21]" 0.08267716603164571;
	setAttr -s 3 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.73622047170473293;
	setAttr ".wl[110].w[1]" 0.17322834716345639;
	setAttr ".wl[110].w[21]" 0.090551181131810682;
	setAttr -s 3 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.20866141511419881;
	setAttr ".wl[111].w[1]" 0.67716535845349557;
	setAttr ".wl[111].w[5]" 0.11417322643230562;
	setAttr -s 2 ".wl[112].w[6:7]"  0.011811023839229775 0.98818897616077017;
	setAttr -s 2 ".wl[113].w[6:7]"  0.05118110284810462 0.94881889715189538;
	setAttr -s 2 ".wl[114].w[6:7]"  0.015748032394241589 0.98425196760575839;
	setAttr -s 2 ".wl[115].w[6:7]"  0.05118110284810462 0.94881889715189538;
	setAttr -s 3 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.16929133834708934;
	setAttr ".wl[116].w[21]" 0.15354330826455329;
	setAttr ".wl[116].w[22]" 0.67716535338835737;
	setAttr -s 3 ".wl[117].w";
	setAttr ".wl[117].w[0]" 0.40551181061134334;
	setAttr ".wl[117].w[21]" 0.18110236361825136;
	setAttr ".wl[117].w[22]" 0.41338582577040528;
	setAttr -s 3 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.25984252239429928;
	setAttr ".wl[118].w[21]" 0.53937008209728388;
	setAttr ".wl[118].w[22]" 0.20078739550841682;
	setAttr -s 3 ".wl[119].w";
	setAttr ".wl[119].w[0]" 0.15748031578518731;
	setAttr ".wl[119].w[21]" 0.13385827066138323;
	setAttr ".wl[119].w[22]" 0.70866141355342949;
	setAttr -s 3 ".wl[120].w";
	setAttr ".wl[120].w[0]" 0.52173913565876739;
	setAttr ".wl[120].w[21]" 0.16996047145885415;
	setAttr ".wl[120].w[22]" 0.30830039288237848;
	setAttr -s 3 ".wl[121].w";
	setAttr ".wl[121].w[0]" 0.4645669169201021;
	setAttr ".wl[121].w[1]" 0.0078740159688950803;
	setAttr ".wl[121].w[21]" 0.52755906711100287;
	setAttr -s 3 ".wl[122].w";
	setAttr ".wl[122].w[0]" 0.54150198349724588;
	setAttr ".wl[122].w[21]" 0.3715414957431209;
	setAttr ".wl[122].w[22]" 0.086956520759633282;
	setAttr -s 3 ".wl[123].w";
	setAttr ".wl[123].w[0]" 0.62992126314074925;
	setAttr ".wl[123].w[21]" 0.1889763759502594;
	setAttr ".wl[123].w[22]" 0.18110236090899137;
	setAttr -s 3 ".wl[124].w";
	setAttr ".wl[124].w[0]" 0.61811024057884711;
	setAttr ".wl[124].w[21]" 0.19291338347089343;
	setAttr ".wl[124].w[22]" 0.1889763759502594;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[0]" 0.2677165373177734;
	setAttr ".wl[125].w[1]" 0.55118110448249513;
	setAttr ".wl[125].w[5]" 0.18110235819973147;
	setAttr ".wl[126].w[3]"  1;
	setAttr ".wl[127].w[3]"  1;
	setAttr ".wl[128].w[3]"  1;
	setAttr ".wl[129].w[3]"  1;
	setAttr ".wl[130].w[3]"  1;
	setAttr ".wl[131].w[3]"  1;
	setAttr ".wl[132].w[3]"  1;
	setAttr ".wl[133].w[3]"  1;
	setAttr ".wl[134].w[3]"  1;
	setAttr ".wl[135].w[3]"  1;
	setAttr ".wl[136].w[3]"  1;
	setAttr ".wl[137].w[3]"  1;
	setAttr ".wl[138].w[3]"  1;
	setAttr ".wl[139].w[3]"  1;
	setAttr ".wl[140].w[3]"  1;
	setAttr ".wl[141].w[3]"  1;
	setAttr ".wl[142].w[3]"  1;
	setAttr ".wl[143].w[3]"  1;
	setAttr ".wl[144].w[3]"  1;
	setAttr ".wl[145].w[3]"  1;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[3]" 0.99212598379551709;
	setAttr ".wl[146].w[5]" 0.007874016204482916;
	setAttr ".wl[147].w[3]"  1;
	setAttr ".wl[148].w[3]"  1;
	setAttr -s 2 ".wl[149].w[28:29]"  0.81102362122268667 0.1889763787773133;
	setAttr -s 2 ".wl[150].w[28:29]"  0.570866150331239 0.429133849668761;
	setAttr -s 2 ".wl[151].w[28:29]"  0.53149607512489883 0.46850392487510117;
	setAttr -s 2 ".wl[152].w[28:29]"  0.43307085718939503 0.56692914281060502;
	setAttr -s 2 ".wl[153].w[27:28]"  0.2519685112402304 0.74803148875976966;
	setAttr -s 2 ".wl[154].w[27:28]"  0.17716535603872041 0.82283464396127959;
	setAttr -s 2 ".wl[155].w[27:28]"  0.33858267669417869 0.66141732330582137;
	setAttr -s 2 ".wl[156].w[27:28]"  0.2125984242544991 0.78740157574550096;
	setAttr -s 2 ".wl[157].w[28:29]"  0.72440944363596549 0.27559055636403446;
	setAttr -s 3 ".wl[158].w[28:30]"  0.71653543395432051 0.20866141511419881 
		0.074803150931480725;
	setAttr -s 3 ".wl[159].w[28:30]"  0.10236220378205815 0.77165353965547534 
		0.12598425656246651;
	setAttr -s 3 ".wl[160].w[28:30]"  0.043307087438730622 0.89763779468662108 
		0.059055117874648393;
	setAttr -s 3 ".wl[161].w[28:30]"  0.10629921133214064 0.24803149061502369 
		0.64566929805283568;
	setAttr -s 3 ".wl[162].w[28:30]"  0.051181102082444183 0.24015747641303728 
		0.7086614215045185;
	setAttr -s 3 ".wl[163].w[28:30]"  0.67716535845349557 0.20078740001403381 
		0.1220472415324706;
	setAttr -s 2 ".wl[164].w[28:29]"  0.91338582512253874 0.086614174877461245;
	setAttr ".wl[165].w[28]"  1;
	setAttr -s 2 ".wl[166].w[27:28]"  0.011811023839229775 0.98818897616077017;
	setAttr ".wl[167].w[28]"  1;
	setAttr -s 2 ".wl[168].w[27:28]"  0.019685040025307389 0.98031495997469265;
	setAttr -s 2 ".wl[169].w[27:28]"  0.91732283273151816 0.082677167268481816;
	setAttr -s 3 ".wl[170].w";
	setAttr ".wl[170].w[21]" 0.89370078707764156;
	setAttr ".wl[170].w[22]" 0.05511811026566895;
	setAttr ".wl[170].w[27]" 0.051181102656689507;
	setAttr -s 3 ".wl[171].w";
	setAttr ".wl[171].w[21]" 0.56692913857002414;
	setAttr ".wl[171].w[22]" 0.33070865917923853;
	setAttr ".wl[171].w[27]" 0.10236220225073733;
	setAttr -s 3 ".wl[172].w";
	setAttr ".wl[172].w[0]" 0.043307086952830726;
	setAttr ".wl[172].w[21]" 0.14566929485767582;
	setAttr ".wl[172].w[27]" 0.81102361818949342;
	setAttr -s 2 ".wl[173].w[27:28]"  0.99212598379551709 0.007874016204482916;
	setAttr -s 3 ".wl[174].w";
	setAttr ".wl[174].w[0]" 0.015748032276447669;
	setAttr ".wl[174].w[21]" 0.066929136707408007;
	setAttr ".wl[174].w[27]" 0.91732283101614431;
	setAttr -s 2 ".wl[175].w";
	setAttr ".wl[175].w[21]" 0.21653543183403007;
	setAttr ".wl[175].w[27]" 0.78346456816596999;
	setAttr -s 3 ".wl[176].w";
	setAttr ".wl[176].w[21]" 0.22440944678327157;
	setAttr ".wl[176].w[22]" 0.0078740160866889956;
	setAttr ".wl[176].w[27]" 0.7677165371300394;
	setAttr -s 2 ".wl[177].w";
	setAttr ".wl[177].w[2]" 0.15785551071166992;
	setAttr ".wl[177].w[13]" 0.84214448928833008;
	setAttr -s 3 ".wl[178].w";
	setAttr ".wl[178].w[0]" 0.20938003657677098;
	setAttr ".wl[178].w[1]" 0.56831725837371427;
	setAttr ".wl[178].w[13]" 0.22230270504951477;
	setAttr -s 2 ".wl[179].w";
	setAttr ".wl[179].w[2]" 0.1548648476600647;
	setAttr ".wl[179].w[13]" 0.8451351523399353;
	setAttr -s 3 ".wl[180].w";
	setAttr ".wl[180].w[1]" 0.49929707510065169;
	setAttr ".wl[180].w[2]" 0.34464754896570121;
	setAttr ".wl[180].w[13]" 0.15605537593364716;
	setAttr -s 3 ".wl[181].w";
	setAttr ".wl[181].w[0]" 0.14173228676279648;
	setAttr ".wl[181].w[21]" 0.7480314943549804;
	setAttr ".wl[181].w[27]" 0.11023621888222312;
	setAttr -s 3 ".wl[182].w";
	setAttr ".wl[182].w[0]" 0.24015747686212657;
	setAttr ".wl[182].w[1]" 0.74015748340705079;
	setAttr ".wl[182].w[14]" 0.019685039730822598;
	setAttr -s 3 ".wl[183].w";
	setAttr ".wl[183].w[1]" 0.58905735819889005;
	setAttr ".wl[183].w[5]" 0.099209664172402082;
	setAttr ".wl[183].w[13]" 0.31173297762870789;
	setAttr -s 3 ".wl[184].w[1:3]"  0.11462450483062965 0.8142292479433153 
		0.071146247226055018;
	setAttr -s 3 ".wl[185].w";
	setAttr ".wl[185].w[2]" 0.32051873897041278;
	setAttr ".wl[185].w[3]" 0.1500694682744603;
	setAttr ".wl[185].w[13]" 0.52941179275512695;
	setAttr -s 3 ".wl[186].w";
	setAttr ".wl[186].w[2]" 0.28704645517622002;
	setAttr ".wl[186].w[3]" 0.038443721501483862;
	setAttr ".wl[186].w[13]" 0.67450982332229614;
	setAttr -s 3 ".wl[187].w";
	setAttr ".wl[187].w[0]" 0.51533302879997855;
	setAttr ".wl[187].w[1]" 0.47538470634153723;
	setAttr ".wl[187].w[13]" 0.0092822648584842682;
	setAttr -s 3 ".wl[188].w";
	setAttr ".wl[188].w[0]" 0.51066011571151793;
	setAttr ".wl[188].w[1]" 0.47744645170109684;
	setAttr ".wl[188].w[13]" 0.011893432587385178;
	setAttr -s 3 ".wl[189].w";
	setAttr ".wl[189].w[1]" 0.77165354542737707;
	setAttr ".wl[189].w[5]" 0.10629921212724955;
	setAttr ".wl[189].w[13]" 0.12204724244537341;
	setAttr -s 2 ".wl[190].w[2:3]"  0.027559055287438988 0.97244094471256104;
	setAttr ".wl[191].w[3]"  1;
	setAttr -s 2 ".wl[192].w[2:3]"  0.023622047656373189 0.97637795234362679;
	setAttr -s 2 ".wl[193].w[29:30]"  0.062992129223584603 0.93700787077641545;
	setAttr -s 2 ".wl[194].w[29:30]"  0.05118110284810462 0.94881889715189538;
	setAttr -s 3 ".wl[195].w[28:30]"  0.027559055184369314 0.059055117985080188 
		0.91338582683055047;
	setAttr -s 2 ".wl[196].w[29:30]"  0.0354330723532899 0.96456692764671015;
	setAttr -s 3 ".wl[197].w";
	setAttr ".wl[197].w[1]" 0.01272331082379376;
	setAttr ".wl[197].w[2]" 0.026492373113278993;
	setAttr ".wl[197].w[13]" 0.96078431606292725;
	setAttr -s 3 ".wl[198].w";
	setAttr ".wl[198].w[1]" 0.38339920497454272;
	setAttr ".wl[198].w[5]" 0.30830039751272864;
	setAttr ".wl[198].w[13]" 0.30830039751272864;
	setAttr -s 3 ".wl[199].w";
	setAttr ".wl[199].w[1]" 0.080608897160200324;
	setAttr ".wl[199].w[2]" 0.15718734984526234;
	setAttr ".wl[199].w[13]" 0.76220375299453735;
	setAttr -s 3 ".wl[200].w";
	setAttr ".wl[200].w[1]" 0.00017750451957661243;
	setAttr ".wl[200].w[2]" 0.011094031830673631;
	setAttr ".wl[200].w[13]" 0.98872846364974976;
	setAttr -s 3 ".wl[201].w";
	setAttr ".wl[201].w[0]" 0.76771653210539281;
	setAttr ".wl[201].w[1]" 0.14960630186296145;
	setAttr ".wl[201].w[21]" 0.08267716603164571;
	setAttr -s 3 ".wl[202].w";
	setAttr ".wl[202].w[0]" 0.69565217652503597;
	setAttr ".wl[202].w[1]" 0.11857707281332083;
	setAttr ".wl[202].w[21]" 0.18577075066164322;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[0]" 0.71259842640423798;
	setAttr ".wl[203].w[1]" 0.22440944531452875;
	setAttr ".wl[203].w[21]" 0.062992128281233253;
	setAttr -s 2 ".wl[204].w[0:1]"  0.79133858332503193 0.20866141667496813;
	setAttr -s 3 ".wl[205].w";
	setAttr ".wl[205].w[0]" 0.75098814315326035;
	setAttr ".wl[205].w[1]" 0.20158102679237308;
	setAttr ".wl[205].w[21]" 0.04743083005436656;
	setAttr -s 2 ".wl[206].w";
	setAttr ".wl[206].w[21]" 0.29527559396720454;
	setAttr ".wl[206].w[27]" 0.70472440603279551;
	setAttr -s 3 ".wl[207].w";
	setAttr ".wl[207].w[0]" 0.21372979994991823;
	setAttr ".wl[207].w[1]" 0.51419052366038753;
	setAttr ".wl[207].w[13]" 0.27207967638969421;
	setAttr -s 3 ".wl[208].w";
	setAttr ".wl[208].w[1]" 0.28611207025802299;
	setAttr ".wl[208].w[13]" 0.43076813203537295;
	setAttr ".wl[208].w[14]" 0.283119797706604;
	setAttr -s 3 ".wl[209].w";
	setAttr ".wl[209].w[1]" 0.0084166514616472576;
	setAttr ".wl[209].w[13]" 0.20691090822219849;
	setAttr ".wl[209].w[14]" 0.78467244031615424;
	setAttr -s 3 ".wl[210].w";
	setAttr ".wl[210].w[2]" 0.03543307233672513;
	setAttr ".wl[210].w[3]" 0.96062991957391719;
	setAttr ".wl[210].w[14]" 0.0039370080893577474;
	setAttr -s 3 ".wl[211].w";
	setAttr ".wl[211].w[1]" 0.057127446773340633;
	setAttr ".wl[211].w[2]" 0.12654814040393597;
	setAttr ".wl[211].w[13]" 0.81632441282272339;
	setAttr -s 3 ".wl[212].w";
	setAttr ".wl[212].w[2]" 0.0055560342016414965;
	setAttr ".wl[212].w[13]" 0.82944084489915804;
	setAttr ".wl[212].w[14]" 0.16500312089920044;
	setAttr -s 3 ".wl[213].w";
	setAttr ".wl[213].w[2]" 0.40944879202584339;
	setAttr ".wl[213].w[3]" 0.061139415219029637;
	setAttr ".wl[213].w[13]" 0.52941179275512695;
	setAttr -s 3 ".wl[214].w";
	setAttr ".wl[214].w[21]" 0.22440944678327157;
	setAttr ".wl[214].w[22]" 0.0078740160866889956;
	setAttr ".wl[214].w[27]" 0.7677165371300394;
	setAttr -s 3 ".wl[215].w";
	setAttr ".wl[215].w[0]" 0.7322834641546504;
	setAttr ".wl[215].w[1]" 0.19685039246395133;
	setAttr ".wl[215].w[21]" 0.070866143381398239;
	setAttr -s 3 ".wl[216].w";
	setAttr ".wl[216].w[0]" 0.69685039620390798;
	setAttr ".wl[216].w[1]" 0.18897637736378634;
	setAttr ".wl[216].w[21]" 0.11417322643230562;
	setAttr -s 2 ".wl[217].w";
	setAttr ".wl[217].w[21]" 0.15748031814106558;
	setAttr ".wl[217].w[27]" 0.84251968185893444;
	setAttr -s 3 ".wl[218].w";
	setAttr ".wl[218].w[0]" 0.26634135989300944;
	setAttr ".wl[218].w[1]" 0.63848955037243627;
	setAttr ".wl[218].w[13]" 0.095169089734554291;
	setAttr -s 3 ".wl[219].w";
	setAttr ".wl[219].w[0]" 0.32899444001754985;
	setAttr ".wl[219].w[1]" 0.49542693597236415;
	setAttr ".wl[219].w[13]" 0.17557862401008606;
	setAttr -s 2 ".wl[220].w[27:28]"  0.8818897642507032 0.11811023574929679;
	setAttr -s 2 ".wl[221].w[27:28]"  0.50787403000109477 0.49212596999890523;
	setAttr -s 2 ".wl[222].w[27:28]"  0.8070866136431557 0.19291338635684427;
	setAttr -s 3 ".wl[223].w";
	setAttr ".wl[223].w[21]" 0.40157479552245057;
	setAttr ".wl[223].w[22]" 0.055118108822693544;
	setAttr ".wl[223].w[27]" 0.54330709565485591;
	setAttr ".wl[224].w[27]"  1;
	setAttr -s 2 ".wl[225].w[27:28]"  0.99212598379551709 0.007874016204482916;
	setAttr ".wl[226].w[27]"  1;
	setAttr ".wl[227].w[27]"  1;
	setAttr -s 3 ".wl[228].w";
	setAttr ".wl[228].w[21]" 0.52569170836085399;
	setAttr ".wl[228].w[22]" 0.11067193346422104;
	setAttr ".wl[228].w[27]" 0.36363635817492496;
	setAttr -s 3 ".wl[229].w";
	setAttr ".wl[229].w[21]" 0.63385827066138323;
	setAttr ".wl[229].w[22]" 0.16141732330582131;
	setAttr ".wl[229].w[27]" 0.20472440603279546;
	setAttr -s 3 ".wl[230].w";
	setAttr ".wl[230].w[1]" 0.36758892971942397;
	setAttr ".wl[230].w[5]" 0.31620553514028804;
	setAttr ".wl[230].w[13]" 0.31620553514028804;
	setAttr -s 3 ".wl[231].w";
	setAttr ".wl[231].w[0]" 0.61551845657536886;
	setAttr ".wl[231].w[1]" 0.38369980959091216;
	setAttr ".wl[231].w[13]" 0.00078173383371904492;
	setAttr -s 2 ".wl[232].w";
	setAttr ".wl[232].w[21]" 0.59055118793440908;
	setAttr ".wl[232].w[27]" 0.40944881206559092;
	setAttr ".wl[233].w[13]"  1;
	setAttr -s 3 ".wl[234].w";
	setAttr ".wl[234].w[2]" 0.0041736540363243989;
	setAttr ".wl[234].w[13]" 0.99556440114974976;
	setAttr ".wl[234].w[14]" 0.00026194481392584535;
	setAttr -s 3 ".wl[235].w";
	setAttr ".wl[235].w[0]" 0.69685039620390798;
	setAttr ".wl[235].w[1]" 0.062992128281233253;
	setAttr ".wl[235].w[21]" 0.24015747551485872;
	setAttr -s 3 ".wl[236].w";
	setAttr ".wl[236].w[0]" 0.86561264654432601;
	setAttr ".wl[236].w[21]" 0.055335968186515379;
	setAttr ".wl[236].w[22]" 0.079051385269158642;
	setAttr -s 3 ".wl[237].w";
	setAttr ".wl[237].w[0]" 0.70472440603279551;
	setAttr ".wl[237].w[21]" 0.15354330826455329;
	setAttr ".wl[237].w[27]" 0.14173228570265126;
	setAttr -s 3 ".wl[238].w";
	setAttr ".wl[238].w[0]" 0.71259842107406346;
	setAttr ".wl[238].w[21]" 0.15748031578518731;
	setAttr ".wl[238].w[27]" 0.1299212631407492;
	setAttr -s 3 ".wl[239].w";
	setAttr ".wl[239].w[0]" 0.51968505061939718;
	setAttr ".wl[239].w[21]" 0.43700786307563855;
	setAttr ".wl[239].w[27]" 0.043307086304964215;
	setAttr -s 3 ".wl[240].w";
	setAttr ".wl[240].w[0]" 0.75098814315326035;
	setAttr ".wl[240].w[1]" 0.20158102679237308;
	setAttr ".wl[240].w[21]" 0.04743083005436656;
	setAttr -s 2 ".wl[241].w[0:1]"  0.8622047197565893 0.13779528024341076;
	setAttr -s 3 ".wl[242].w";
	setAttr ".wl[242].w[0]" 0.76771653210539281;
	setAttr ".wl[242].w[1]" 0.14960630186296145;
	setAttr ".wl[242].w[21]" 0.08267716603164571;
	setAttr -s 3 ".wl[243].w";
	setAttr ".wl[243].w[0]" 0.71259842640423798;
	setAttr ".wl[243].w[1]" 0.22440944531452875;
	setAttr ".wl[243].w[21]" 0.062992128281233253;
	setAttr -s 3 ".wl[244].w";
	setAttr ".wl[244].w[0]" 0.67322835090341315;
	setAttr ".wl[244].w[1]" 0.094488188681893168;
	setAttr ".wl[244].w[21]" 0.23228346041469372;
	setAttr -s 3 ".wl[245].w";
	setAttr ".wl[245].w[0]" 0.19193452391767893;
	setAttr ".wl[245].w[1]" 0.62288186158990466;
	setAttr ".wl[245].w[13]" 0.18518361449241638;
	setAttr -s 3 ".wl[246].w";
	setAttr ".wl[246].w[0]" 0.11462450483062965;
	setAttr ".wl[246].w[1]" 0.78656126583131325;
	setAttr ".wl[246].w[13]" 0.098814229338057058;
	setAttr -s 3 ".wl[247].w";
	setAttr ".wl[247].w[0]" 0.62992126314074925;
	setAttr ".wl[247].w[21]" 0.1889763759502594;
	setAttr ".wl[247].w[27]" 0.18110236090899137;
	setAttr -s 3 ".wl[248].w";
	setAttr ".wl[248].w[0]" 0.48425196763520689;
	setAttr ".wl[248].w[21]" 0.46850393714039218;
	setAttr ".wl[248].w[22]" 0.047244095224400942;
	setAttr -s 3 ".wl[249].w";
	setAttr ".wl[249].w[0]" 0.71259842107406346;
	setAttr ".wl[249].w[21]" 0.15748031578518731;
	setAttr ".wl[249].w[27]" 0.1299212631407492;
	setAttr -s 3 ".wl[250].w";
	setAttr ".wl[250].w[0]" 0.54150198349724588;
	setAttr ".wl[250].w[21]" 0.3715414957431209;
	setAttr ".wl[250].w[27]" 0.086956520759633282;
	setAttr -s 3 ".wl[251].w";
	setAttr ".wl[251].w[0]" 0.65217391434947447;
	setAttr ".wl[251].w[21]" 0.15415019875636432;
	setAttr ".wl[251].w[22]" 0.19367588689416121;
	setAttr -s 3 ".wl[252].w";
	setAttr ".wl[252].w[0]" 0.61811024057884711;
	setAttr ".wl[252].w[21]" 0.19291338347089343;
	setAttr ".wl[252].w[27]" 0.1889763759502594;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[0]" 0.70472440603279551;
	setAttr ".wl[253].w[21]" 0.15354330826455329;
	setAttr ".wl[253].w[27]" 0.14173228570265126;
	setAttr -s 3 ".wl[254].w";
	setAttr ".wl[254].w[0]" 0.81889763638174862;
	setAttr ".wl[254].w[21]" 0.082677166650063749;
	setAttr ".wl[254].w[22]" 0.09842519696818762;
	setAttr -s 3 ".wl[255].w";
	setAttr ".wl[255].w[0]" 0.69685039620390798;
	setAttr ".wl[255].w[1]" 0.062992128281233253;
	setAttr ".wl[255].w[21]" 0.24015747551485872;
	setAttr -s 3 ".wl[256].w";
	setAttr ".wl[256].w[0]" 0.40944881053427012;
	setAttr ".wl[256].w[21]" 0.53149607313712655;
	setAttr ".wl[256].w[27]" 0.059055116328603316;
	setAttr -s 3 ".wl[257].w";
	setAttr ".wl[257].w[0]" 0.48425196763520689;
	setAttr ".wl[257].w[21]" 0.46850393714039218;
	setAttr ".wl[257].w[27]" 0.047244095224400942;
	setAttr -s 3 ".wl[258].w";
	setAttr ".wl[258].w[0]" 0.27542087007762617;
	setAttr ".wl[258].w[1]" 0.56704296599624926;
	setAttr ".wl[258].w[13]" 0.15753616392612457;
	setAttr ".wl[259].w[3]"  1;
	setAttr ".wl[260].w[3]"  1;
	setAttr ".wl[261].w[3]"  1;
	setAttr -s 2 ".wl[262].w[2:3]"  0.007874016204482916 0.99212598379551709;
	setAttr ".wl[263].w[3]"  1;
	setAttr ".wl[264].w[3]"  1;
	setAttr ".wl[265].w[3]"  1;
	setAttr ".wl[266].w[3]"  1;
	setAttr ".wl[267].w[3]"  1;
	setAttr ".wl[268].w[3]"  1;
	setAttr ".wl[269].w[3]"  1;
	setAttr ".wl[270].w[3]"  1;
	setAttr ".wl[271].w[3]"  1;
	setAttr ".wl[272].w[3]"  1;
	setAttr ".wl[273].w[3]"  1;
	setAttr ".wl[274].w[3]"  1;
	setAttr ".wl[275].w[3]"  1;
	setAttr ".wl[276].w[3]"  1;
	setAttr ".wl[277].w[3]"  1;
	setAttr ".wl[278].w[3]"  1;
	setAttr ".wl[279].w[3]"  1;
	setAttr ".wl[280].w[3]"  1;
	setAttr ".wl[281].w[3]"  1;
	setAttr ".wl[282].w[3]"  1;
	setAttr ".wl[283].w[3]"  1;
	setAttr ".wl[284].w[3]"  1;
	setAttr ".wl[285].w[3]"  1;
	setAttr -s 2 ".wl[286].w[2:3]"  0.007874016204482916 0.99212598379551709;
	setAttr ".wl[287].w[3]"  1;
	setAttr ".wl[288].w[8]"  1;
	setAttr -s 2 ".wl[289].w[7:8]"  0.47637793991636918 0.52362206008363077;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[7]" 0.46456691648573706;
	setAttr ".wl[290].w[8]" 0.50787402905138135;
	setAttr ".wl[290].w[11]" 0.027559054462881608;
	setAttr -s 3 ".wl[291].w";
	setAttr ".wl[291].w[7]" 0.0062184905283781634;
	setAttr ".wl[291].w[8]" 0.0077133203274873151;
	setAttr ".wl[291].w[13]" 0.98606818914413452;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[2]" 4.4992388119169391e-005;
	setAttr ".wl[292].w[8]" 0.91764706373214722;
	setAttr ".wl[292].w[9]" 0.082307943879733614;
	setAttr -s 3 ".wl[293].w[7:9]"  0.070866143381398239 0.7637795245553104 
		0.16535433206329142;
	setAttr -s 3 ".wl[294].w[7:9]"  0.29921259924975424 0.59055118351713731 
		0.11023621723310841;
	setAttr -s 3 ".wl[295].w[7:9]"  0.00083193287719041109 0.65034608025580709 
		0.34882198686700244;
	setAttr -s 3 ".wl[296].w[7:9]"  0.027559054462881608 0.61811023942299437 
		0.35433070611412398;
	setAttr -s 3 ".wl[297].w";
	setAttr ".wl[297].w[7]" 0.46456691648573706;
	setAttr ".wl[297].w[8]" 0.50787402905138135;
	setAttr ".wl[297].w[11]" 0.027559054462881608;
	setAttr -s 2 ".wl[298].w[7:8]"  0.48425195495763723 0.51574804504236282;
	setAttr -s 2 ".wl[299].w[7:8]"  0.44094487223066303 0.55905512776933697;
	setAttr -s 3 ".wl[300].w";
	setAttr ".wl[300].w[7]" 0.44949527882984525;
	setAttr ".wl[300].w[8]" 0.5484667408092444;
	setAttr ".wl[300].w[11]" 0.0020379803609102964;
	setAttr -s 3 ".wl[301].w[7:9]"  0.18110236327959386 0.80314960456175244 
		0.015748032158653752;
	setAttr -s 3 ".wl[302].w[7:9]"  0.068919076458916262 0.0050524930792001932 
		0.92602843046188354;
	setAttr ".wl[303].w[9]"  1;
	setAttr ".wl[304].w[9]"  1;
	setAttr ".wl[305].w[9]"  1;
	setAttr ".wl[306].w[9]"  1;
	setAttr ".wl[307].w[9]"  1;
	setAttr ".wl[308].w[9]"  1;
	setAttr ".wl[309].w[9]"  1;
	setAttr ".wl[310].w[9]"  1;
	setAttr -s 3 ".wl[311].w[7:9]"  0.088775664567947388 0.74160248840433496 
		0.16962184702771771;
	setAttr -s 2 ".wl[312].w[8:9]"  0.8070866136431557 0.19291338635684427;
	setAttr -s 3 ".wl[313].w[7:9]"  0.010314141400158405 0.75094585224993371 
		0.23874000634990789;
	setAttr -s 2 ".wl[314].w[8:9]"  0.01847991906106472 0.98152008093893528;
	setAttr ".wl[315].w[9]"  1;
	setAttr ".wl[316].w[9]"  1;
	setAttr -s 2 ".wl[317].w";
	setAttr ".wl[317].w[7]" 0.0058905263431370258;
	setAttr ".wl[317].w[9]" 0.99410947365686297;
	setAttr -s 2 ".wl[318].w";
	setAttr ".wl[318].w[7]" 0.0047567831352353096;
	setAttr ".wl[318].w[9]" 0.99524321686476469;
	setAttr -s 2 ".wl[319].w";
	setAttr ".wl[319].w[7]" 0.0046862652525305748;
	setAttr ".wl[319].w[9]" 0.99531373474746943;
	setAttr ".wl[320].w[9]"  1;
	setAttr ".wl[321].w[9]"  1;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[7]" 0.021235108223321246;
	setAttr ".wl[322].w[9]" 0.0016025854274630547;
	setAttr ".wl[322].w[11]" 0.97716230634921575;
	setAttr ".wl[323].w[11]"  1;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[7]" 0.098425196231975667;
	setAttr ".wl[324].w[8]" 0.12992126411254901;
	setAttr ".wl[324].w[11]" 0.77165353965547534;
	setAttr -s 2 ".wl[325].w";
	setAttr ".wl[325].w[7]" 0.011811023839229775;
	setAttr ".wl[325].w[11]" 0.98818897616077017;
	setAttr ".wl[326].w[11]"  1;
	setAttr -s 2 ".wl[327].w";
	setAttr ".wl[327].w[7]" 0.0039370081040819875;
	setAttr ".wl[327].w[11]" 0.99606299189591796;
	setAttr ".wl[328].w[11]"  1;
	setAttr ".wl[329].w[11]"  1;
	setAttr ".wl[330].w[11]"  1;
	setAttr ".wl[331].w[11]"  1;
	setAttr ".wl[332].w[11]"  1;
	setAttr -s 2 ".wl[333].w[15:16]"  0.98596123978495598 0.014038760215044022;
	setAttr -s 3 ".wl[334].w[14:16]"  4.152453038841486e-005 0.96368368078014799 
		0.036274794689463638;
	setAttr -s 2 ".wl[335].w[15:16]"  0.9726898055523634 0.027310194447636604;
	setAttr -s 3 ".wl[336].w[14:16]"  2.7136860808241181e-005 0.96987788808882769 
		0.030094975050364091;
	setAttr ".wl[337].w[19]"  1;
	setAttr ".wl[338].w[15]"  1;
	setAttr -s 3 ".wl[339].w";
	setAttr ".wl[339].w[14]" 0.017372822389006615;
	setAttr ".wl[339].w[15]" 0.00061392858431249077;
	setAttr ".wl[339].w[19]" 0.98201324902668086;
	setAttr ".wl[340].w[19]"  1;
	setAttr ".wl[341].w[19]"  1;
	setAttr ".wl[342].w[19]"  1;
	setAttr ".wl[343].w[19]"  1;
	setAttr -s 2 ".wl[344].w";
	setAttr ".wl[344].w[15]" 4.6312808990478516e-005;
	setAttr ".wl[344].w[19]" 0.99995368719100952;
	setAttr ".wl[345].w[19]"  1;
	setAttr ".wl[346].w[19]"  1;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[16]" 0.096701601121053055;
	setAttr ".wl[347].w[19]" 0.79624849557876587;
	setAttr ".wl[347].w[20]" 0.10704990330018106;
	setAttr -s 2 ".wl[348].w";
	setAttr ".wl[348].w[16]" 0.14410480813079357;
	setAttr ".wl[348].w[19]" 0.85589519186920648;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[16]" 0.36193325317843572;
	setAttr ".wl[349].w[17]" 0.63593818020628079;
	setAttr ".wl[349].w[19]" 0.0021285666152834892;
	setAttr -s 3 ".wl[350].w[15:17]"  0.0012042576189397348 0.0080129450444818961 
		0.99078279733657837;
	setAttr ".wl[351].w[17]"  1;
	setAttr ".wl[352].w[17]"  1;
	setAttr ".wl[353].w[17]"  1;
	setAttr ".wl[354].w[15]"  1;
	setAttr -s 2 ".wl[355].w";
	setAttr ".wl[355].w[14]" 0.0075913307532200257;
	setAttr ".wl[355].w[17]" 0.99240866924677995;
	setAttr ".wl[356].w[17]"  1;
	setAttr ".wl[357].w[15]"  1;
	setAttr -s 2 ".wl[358].w[14:15]"  0.13385827266387978 0.86614172733612027;
	setAttr -s 3 ".wl[359].w[13:15]"  0.79439987242284993 0.20259090512927794 
		0.0030092224478721619;
	setAttr -s 2 ".wl[360].w";
	setAttr ".wl[360].w[2]" 0.078740159659502373;
	setAttr ".wl[360].w[14]" 0.92125984034049768;
	setAttr ".wl[361].w[14]"  1;
	setAttr -s 3 ".wl[362].w[13:15]"  0.69814966817241697 0.30180242657661438 
		4.7905250968605635e-005;
	setAttr ".wl[363].w[17]"  1;
	setAttr -s 3 ".wl[364].w[13:15]"  0.024830733712911682 0.67138099176049226 
		0.30378827452659607;
	setAttr -s 2 ".wl[365].w[14:15]"  0.63502228260040283 0.36497771739959717;
	setAttr -s 3 ".wl[366].w[14:16]"  0.00021601571643259376 0.80363269039380014 
		0.19615129388976721;
	setAttr -s 3 ".wl[367].w[14:16]"  0.0034501252230256796 0.90426858312515723 
		0.09228129165181706;
	setAttr -s 2 ".wl[368].w[15:16]"  0.79152753949165344 0.20847246050834656;
	setAttr -s 2 ".wl[369].w[15:16]"  0.87372016906738281 0.12627983093261719;
	setAttr -s 2 ".wl[370].w[16:17]"  0.74269440770149231 0.25730559229850769;
	setAttr -s 2 ".wl[371].w[16:17]"  0.59113079309463501 0.40886920690536499;
	setAttr -s 3 ".wl[372].w[15:17]"  0.014266018484930231 0.063266690159936717 
		0.92246729135513306;
	setAttr -s 2 ".wl[373].w[16:17]"  0.32864594459533691 0.67135405540466309;
	setAttr -s 2 ".wl[374].w[16:17]"  0.29782535619375489 0.70217464380624506;
	setAttr ".wl[375].w[17]"  1;
	setAttr ".wl[376].w[17]"  1;
	setAttr -s 2 ".wl[377].w";
	setAttr ".wl[377].w[15]" 0.0019916626624763012;
	setAttr ".wl[377].w[17]" 0.9980083373375237;
	setAttr ".wl[378].w[17]"  1;
	setAttr ".wl[379].w[17]"  1;
	setAttr ".wl[380].w[17]"  1;
	setAttr ".wl[381].w[17]"  1;
	setAttr -s 2 ".wl[382].w[16:17]"  0.88288768380880356 0.11711231619119644;
	setAttr -s 2 ".wl[383].w[16:17]"  0.84979385137557983 0.15020614862442017;
	setAttr ".wl[384].w[16]"  1;
	setAttr ".wl[385].w[16]"  1;
	setAttr -s 3 ".wl[386].w";
	setAttr ".wl[386].w[15]" 0.44895744968882184;
	setAttr ".wl[386].w[16]" 0.54781049054370834;
	setAttr ".wl[386].w[19]" 0.0032320597674697638;
	setAttr -s 3 ".wl[387].w";
	setAttr ".wl[387].w[15]" 0.47580939157414648;
	setAttr ".wl[387].w[16]" 0.52016453213509706;
	setAttr ".wl[387].w[19]" 0.004026076290756464;
	setAttr -s 3 ".wl[388].w";
	setAttr ".wl[388].w[16]" 0.12319028475873563;
	setAttr ".wl[388].w[17]" 0.84072728356726079;
	setAttr ".wl[388].w[19]" 0.036082431674003601;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[16]" 0.35523686894954737;
	setAttr ".wl[389].w[17]" 0.64078446140705059;
	setAttr ".wl[389].w[19]" 0.0039786696434020996;
	setAttr -s 2 ".wl[390].w[16:17]"  0.24746733903884888 0.75253266096115112;
	setAttr -s 3 ".wl[391].w";
	setAttr ".wl[391].w[16]" 0.071215868463931714;
	setAttr ".wl[391].w[17]" 0.92859351135643098;
	setAttr ".wl[391].w[19]" 0.00019062017963733524;
	setAttr -s 3 ".wl[392].w";
	setAttr ".wl[392].w[15]" 0.0088387012281777172;
	setAttr ".wl[392].w[16]" 0.97422045469284058;
	setAttr ".wl[392].w[19]" 0.016940844078981707;
	setAttr ".wl[393].w[16]"  1;
	setAttr -s 3 ".wl[394].w";
	setAttr ".wl[394].w[15]" 0.47662584967493415;
	setAttr ".wl[394].w[16]" 0.52105710078448653;
	setAttr ".wl[394].w[19]" 0.002317049540579319;
	setAttr -s 2 ".wl[395].w";
	setAttr ".wl[395].w[16]" 0.70612585544586182;
	setAttr ".wl[395].w[19]" 0.29387414455413818;
	setAttr -s 2 ".wl[396].w";
	setAttr ".wl[396].w[17]" 0.99802975601496213;
	setAttr ".wl[396].w[19]" 0.0019702439850378434;
	setAttr -s 2 ".wl[397].w";
	setAttr ".wl[397].w[15]" 0.0039370081040819875;
	setAttr ".wl[397].w[17]" 0.99606299189591796;
	setAttr ".wl[398].w[17]"  1;
	setAttr ".wl[399].w[17]"  1;
	setAttr ".wl[400].w[17]"  1;
	setAttr -s 2 ".wl[401].w[16:17]"  0.0051351506288044068 0.99486484937119557;
	setAttr -s 2 ".wl[402].w[16:17]"  0.67431902885437012 0.32568097114562988;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[16]" 0.53769777382170836;
	setAttr ".wl[403].w[17]" 0.15290622413158417;
	setAttr ".wl[403].w[19]" 0.30939600204670747;
	setAttr -s 3 ".wl[404].w";
	setAttr ".wl[404].w[16]" 0.5185872422947525;
	setAttr ".wl[404].w[17]" 0.39992845482686773;
	setAttr ".wl[404].w[19]" 0.081484302878379822;
	setAttr -s 3 ".wl[405].w[15:17]"  0.02150798961520195 0.55981821262433362 
		0.41867379776046448;
	setAttr -s 2 ".wl[406].w";
	setAttr ".wl[406].w[16]" 0.67917624115943909;
	setAttr ".wl[406].w[19]" 0.32082375884056091;
	setAttr -s 2 ".wl[407].w";
	setAttr ".wl[407].w[16]" 0.93706642836332321;
	setAttr ".wl[407].w[19]" 0.062933571636676788;
	setAttr ".wl[408].w[16]"  1;
	setAttr ".wl[409].w[16]"  1;
	setAttr -s 2 ".wl[410].w";
	setAttr ".wl[410].w[16]" 0.81571708619594574;
	setAttr ".wl[410].w[19]" 0.18428291380405426;
	setAttr -s 2 ".wl[411].w[16:17]"  0.11362510195507051 0.88637489804492953;
	setAttr -s 2 ".wl[412].w";
	setAttr ".wl[412].w[15]" 0.0030562281608581543;
	setAttr ".wl[412].w[17]" 0.99694377183914185;
	setAttr ".wl[413].w[15]"  1;
	setAttr -s 3 ".wl[414].w";
	setAttr ".wl[414].w[0]" 0.48425196763520689;
	setAttr ".wl[414].w[21]" 0.46850393714039218;
	setAttr ".wl[414].w[27]" 0.047244095224400942;
	setAttr -s 32 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.0099999999999998666 7.2199653779145049e-010 1.4756642114820642e-009 0
		 6.5117378594703768e-010 0.0099887395291073707 -0.00047442872978717903 0 -1.5082561341255094e-009 -0.00047442872978707652 -0.0099887395291072822 0
		 0.010943251661196453 -0.65069936349607094 0.066450781505996884 1;
	setAttr ".pm[1]" -type "matrix" -0.0099999999999983297 7.1696810127957104e-010 -5.7343182743153653e-009 0
		 1.4387808557814796e-009 0.0099191723672536689 -0.0012688654572921218 0 5.5969955313932751e-009 -0.0012688654572927352 -0.009919172367252118 0
		 0.010943166406235112 -0.83372407225513245 0.13330938529570116 1;
	setAttr ".pm[2]" -type "matrix" -0.0099999999999984424 7.148079031759219e-010 -5.5353374383026194e-009 0
		 -1.1455725596862373e-010 0.0098892725103384253 0.0014840111914216536 0 5.5801243292082926e-009 0.0014840111914214864 -0.0098892725103368762 0
		 0.010943329975931546 -1.0413183629068372 -0.15657417551996372 1;
	setAttr ".pm[3]" -type "matrix" -0.0099999999999998597 7.2276799821283023e-010 1.502090375169296e-009 0
		 7.0638699763691937e-010 0.0099994084363335834 -0.00010877004817622899 0 -1.5098630679589176e-009 -0.00010877004817612104 -0.0099994084363334949 0
		 0.010943245808214468 -1.1555821629589176 0.027688362349753869 1;
	setAttr ".pm[4]" -type "matrix" -0.0099999999999998597 7.2276799821283023e-010 1.502090375169296e-009 0
		 7.0638699763691937e-010 0.0099994084363335834 -0.00010877004817622899 0 -1.5098630679589176e-009 -0.00010877004817612104 -0.0099994084363334949 0
		 0.010943245808219478 -1.5208025811580714 0.027688363069973011 1;
	setAttr ".pm[5]" -type "matrix" -0.00030744583886058543 0.0099952724121668869 -2.5421925276334605e-006 0
		 0.0099952727132763073 0.00030744599767487928 5.880031794738601e-007 0 6.6588388759996905e-007 -2.5229128472582347e-006 -0.0099999996595754627 0
		 -1.0521896262595731 -0.043313019828052191 -0.00036680077464501596 1;
	setAttr ".pm[6]" -type "matrix" 0.0059169820096387224 0.0079090364490658292 0.0015609184299507557 0
		 0.0080519563683746891 -0.0058927244570312681 -0.00066467820431832163 0 0.00039410980627484389 0.0016501336069705888 -0.009855036100377525 0
		 -1.007496947217573 0.41994556711661507 0.029649623109429847 1;
	setAttr ".pm[7]" -type "matrix" 0.0030381695339184271 0.0083551208648308967 0.0045783710222345843 0
		 0.0094663803081403951 -0.0021047462133495392 -0.0024408374052858422 0 -0.0010757182460205946 0.0050756279130230028 -0.0085487327448996869 0
		 -1.0169884831918785 -0.16404193276218335 0.068091109718373288 1;
	setAttr ".pm[8]" -type "matrix" 0.0024861852092066075 0.0086693589380562458 0.0043198493849515964 0
		 0.0092247893551589012 -0.00075942501343182498 -0.0037850409511551021 0 -0.0029533276923615057 0.0049260013451194323 -0.0081861081283728637 0
		 -0.93976577605393752 -0.48876164652196569 0.19996566924191503 1;
	setAttr ".pm[9]" -type "matrix" 0.0082084897969685391 0.0057095609423469433 0.0001470003356790895 0
		 0.0054908039937437399 -0.0078179110624727963 -0.0029548837746268949 0 -0.001572185343829164 0.0025062283345481172 -0.0095523323214677259 0
		 -1.024672639412356 0.25999313915222771 0.43826551354494403 1;
	setAttr ".pm[10]" -type "matrix" 0.0082084897969685391 0.0057095609423469433 0.0001470003356790895 0
		 0.0054908039937437399 -0.0078179110624727963 -0.0029548837746268949 0 -0.001572185343829164 0.0025062283345481172 -0.0095523323214677259 0
		 -1.0246726426148569 0.19094219769664861 0.43826551589513424 1;
	setAttr ".pm[11]" -type "matrix" 0.0096275094440734788 0.002696962254819058 -0.00019353681912583838 0
		 0.0020108188789309525 -0.0076198886864162485 -0.006155802453194914 0 -0.001807669588285119 0.0058875878764318235 -0.0078783652909015425 0
		 -0.68233051311566495 0.39136152271303676 0.73689746118874688 1;
	setAttr ".pm[12]" -type "matrix" 0.0096275094440734788 0.002696962254819058 -0.00019353681912583838 0
		 0.0020108188789309525 -0.0076198886864162485 -0.006155802453194914 0 -0.001807669588285119 0.0058875878764318235 -0.0078783652909015425 0
		 -0.68233051411997414 0.33037253142138262 0.73689746353220786 1;
	setAttr ".pm[13]" -type "matrix" -0.00030744737907546831 -0.0099952723647852432 2.5422155793208288e-006 0
		 -0.0099952726658837417 0.00030744753795465546 5.8825412299409604e-007 0 -6.6613580998456521e-007 -2.5229280702424611e-006 -0.0099999996595548455 0
		 1.0528625186395069 -0.021436887445134643 -0.00037239123052945861 1;
	setAttr ".pm[14]" -type "matrix" 0.0059169802257798172 -0.0079090377215854189 -0.0015609187442879823 0
		 -0.008051957660489422 -0.005892722769316871 -0.00066467751403233018 0 -0.00039411018943479688 0.0016501335347520927 -0.0098550360971469929 0
		 0.99454679499474463 0.43725558916226492 0.033065870605319028 1;
	setAttr ".pm[15]" -type "matrix" 0.0030381667452809191 -0.0083551216393273897 -0.0045783714593632934 0
		 -0.0094663812042705877 -0.0021047438397872259 -0.0024408359765273543 0 0.0010757182360179953 0.0050756276223656261 -0.008548732918729967 0
		 1.010339059155168 -0.14575561088985914 0.078111489237822754 1;
	setAttr ".pm[16]" -type "matrix" 0.0024861821042888319 -0.0086693596875467814 -0.0043198496677839104 0
		 -0.0092247900717480954 -0.00075942232767780996 -0.0037850397435696985 0 0.0029533280678738874 0.004926000440130229 -0.0081861085374764653 0
		 0.93432432117529252 -0.46978761641111666 0.20942027057203405 1;
	setAttr ".pm[17]" -type "matrix" 0.0082084874833516092 -0.0057095642268903506 -0.00014700195466029232 0
		 -0.0054908074407404982 -0.0078179084444435359 -0.0029548842960439589 0 0.0015721853848604257 0.0025062290185281218 -0.0095523321352598937 0
		 1.0067072323369632 0.27248903860151963 0.43858724841410585 1;
	setAttr ".pm[18]" -type "matrix" 0.0082084874833516092 -0.0057095642268903506 -0.00014700195466029232 0
		 -0.0054908074407404982 -0.0078179084444435359 -0.0029548842960439589 0 0.0015721853848604257 0.0025062290185281218 -0.0095523321352598937 0
		 1.0067072366672027 0.20343809158068721 0.43858724702715074 1;
	setAttr ".pm[19]" -type "matrix" 0.0096275093298603797 -0.0026969628027535691 0.00019353486511470213 0
		 -0.0020108203991136952 -0.0076198880414710896 -0.0061558027549584561 0 0.0018076685055506132 0.0058875884601430409 -0.0078783651031182171 0
		 0.66125923176707146 0.39726418415576498 0.73647379178634653 1;
	setAttr ".pm[20]" -type "matrix" 0.0096275093298603797 -0.0026969628027535691 0.00019353486511470213 0
		 -0.0020108203991136952 -0.0076198880414710896 -0.0061558027549584561 0 0.0018076685055506132 0.0058875884601430409 -0.0078783651031182171 0
		 0.66125923233258765 0.33627519398387568 0.73647379536030644 1;
	setAttr ".pm[21]" -type "matrix" -0.0099999999999980556 7.180043135118938e-010 -6.1951152731274485e-009 0
		 -3.0113976796138774e-015 0.009933506309667663 0.0011512829347266058 0 6.2365842767936329e-009 0.0011512829347263818 -0.0099335063096657305 0
		 0.010943266692821739 -0.46414736662308997 -0.039923680247986489 1;
	setAttr ".pm[22]" -type "matrix" 0.0081288963267270829 0.0036997797934463315 -0.00449807447574283 0
		 0.0015989776420745722 -0.0088440364590973309 -0.0043847793114708484 0 -0.005600385255450608 0.0028451095919425169 -0.0077808120656116661 0
		 -0.17165466826169912 0.41619537245571453 0.30843113715339893 1;
	setAttr ".pm[23]" -type "matrix" 0.0079531845934110949 -7.4447727243229057e-005 -0.0060614612395887392 0
		 0.0026141197844725844 -0.008979588457444905 0.0035402498340302443 0 -0.0054692990936277509 -0.0044001646186058192 -0.0071221709298227394 0
		 -0.19990848591808888 0.31757880155203749 0.095654298290891171 0.99999999999999989;
	setAttr ".pm[24]" -type "matrix" 0.0001665378506042245 -0.0028178656523515045 -0.0095933257168519873 0
		 0.0099825811508925406 0.00058997759774834398 -4.2348347051301945e-018 0 0.00056598472608457621 -0.0095766152475419333 0.0028227826147945315 0
		 -0.017827579221559368 0.019859967873755279 0.22001055832354804 0.99999999999999989;
	setAttr ".pm[25]" -type "matrix" -2.2265830872969535e-005 0.0031502822381836546 0.0094907969134609572 0
		 0.0099998365579867989 5.6992805807407778e-005 4.542426322179401e-006 0 -5.2659722048540274e-005 0.0094906519080551408 -0.0031503576485540485 0
		 -0.0081833477048821983 -0.15466614432325015 -0.2148348729883762 1;
	setAttr ".pm[26]" -type "matrix" -2.2265830872969535e-005 0.0031502822381836546 0.0094907969134609572 0
		 0.0099998365579867989 5.6992805807407778e-005 4.542426322179401e-006 0 -5.2659722048540274e-005 0.0094906519080551408 -0.0031503576485540485 0
		 -0.0081833332590318386 -0.20833458541046238 -0.21483487408916058 1;
	setAttr ".pm[27]" -type "matrix" 0.008820396278230714 -0.0035172460844444756 0.0031352176122932491 0
		 -0.0021484043580804872 -0.0089242869811181156 -0.0039675509565507147 0 0.0041934434787122788 0.0028259656509069101 -0.0086272214490379032 0
		 0.19368552699828753 0.43047027707939522 0.2646384506641894 1;
	setAttr ".pm[28]" -type "matrix" 0.0086184604420668966 -0.0011381197399906629 0.0049423499538146509 0
		 -0.0030814869678183277 -0.008915069897401243 0.003320537123962936 0 0.0040282226447521359 -0.0043847704822366478 -0.0080341278395611969 0
		 0.21954562035514727 0.28984367196248079 0.073918179059595926 0.99999999999999989;
	setAttr ".pm[29]" -type "matrix" 0.00016654010411979695 -0.0028178711071862035 -0.0095933240754706561 0
		 -0.0099825807479767218 -0.00058998441515393781 1.0970779840135939e-017 0 -0.00056599116940487485 0.0095766132224894933 -0.0028227881930805655 0
		 0.018030302884408857 -0.02328988824574147 -0.23168713840663963 1;
	setAttr ".pm[30]" -type "matrix" -2.2266575808499697e-005 -0.0031502812818570837 -0.0094907972291469085 0
		 -0.0099998365537246198 5.6993509241533648e-005 4.5429833031040602e-006 0 5.2660216432537474e-005 0.0094906522212693661 -0.0031503566967123046 0
		 0.0081563301424976871 -0.15850048380562951 -0.22638676440452069 1;
	setAttr ".pm[31]" -type "matrix" -2.2266575808499697e-005 -0.0031502812818570837 -0.0094907972291469085 0
		 -0.0099998365537246198 5.6993509241533648e-005 4.5429833031040602e-006 0 5.2660216432537474e-005 0.0094906522212693661 -0.0031503566967123046 0
		 0.0081563182040338602 -0.21216893656622599 -0.22638676869145899 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 32 ".ma";
	setAttr -s 32 ".dpf[0:31]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 32 ".lw";
	setAttr -s 32 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 32 ".ifcl";
	setAttr -s 32 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "9F876266-487B-D881-B321-13A66B7FE133";
createNode objectSet -n "skinCluster1Set";
	rename -uid "8DBBBF0B-4160-9897-0403-92BB26BD20C8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "F1F6A6EE-433F-184E-86C2-24B9F71B6CEA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "058CFF91-428E-69DC-8E8D-98B7AD6C2437";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "C15C9A2C-489F-E2FA-9BB3-E086BD0CEC21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "B048313C-4070-41CC-AADC-059A6C45D241";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "74A1AEFA-4C72-B9E6-794F-93AFEEB2E74E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "98C98352-4E36-7DD5-42B3-03B34034D057";
	setAttr -s 33 ".wm";
	setAttr ".wm[0]" -type "matrix" 100 0 0 0 0 100 0 0 0 0 100 0 0 0 0 1;
	setAttr -s 33 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 100 100 100 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -3.1415926535897931 -3.1415926535897931
		 3.1415926535897931 0 0.010943288835561052 0.65311926064555026 0.035504909197754848 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -3.4338926329166873e-008 -0.9997184485920837 0.0237281171741539 -7.4619017669926269e-008 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -3.1415926535897927 3.1415926535897931
		 3.1415926535897931 0 -1.0535787305841631e-014 0.19099625366696826 -5.1575498732914227e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.039873841801933332 3.5734357483406518e-007 8.2392231028901179e-009 0.99920472213647327 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4295802273053598e-015
		 0.21082751329768368 -6.9682992293040869e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.13765195098941729 4.5177629010694916e-015 -7.7671486513368363e-008 0.99048066128965928 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -3.1415926535897931 -3.1415926535897931
		 3.1415926535897931 0 8.2984001211901995e-015 0.10394200446039226 -8.2567865045124478e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.079829223962919568 -3.5648644080040086e-007 1.6495283762465638e-008 0.99680855483956932 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.0075718243239871e-015
		 0.36522041819915407 -7.2021914040293344e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -3.1415926535897936 3.1415926535897931
		 3.1415926535897927 0 -1.4295802273053598e-015 0.21082751329768368 -6.9682992293040869e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.045570832559838272 0.044366971415376981 0.69473679043270109 0.71644655284710479 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.4575391055492446e-008
		 0.24854376989019231 5.9837558484543418e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.084845387576602066 -0.0084419726907898757 0.32652056526516882 0.94133645088404971 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 5.3686079691350722e-015 -1.3462700103184698e-016
		 5.2422097953769087e-015 0 5.2918263993007031e-008 0.19660182968139711 1.0334420662977406e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18641157748624065 -0.012891821247514319 -0.1759408368815254 0.96650367130261949 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 8.1185058675714582e-016 1.5265566588595957e-016
		 -1.2212453270876726e-015 0 8.8606689985226694e-008 0.18685943072716188 -6.2697109837195342e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0077270558217961346 -0.070379866892331749 -0.069049617138072492 0.99509754160968067 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.6689063998582867e-008
		 0.13291435488550707 7.3170499520491816e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.21157551522110335 -0.07181084902581393 0.34107276146802618 0.91309822839916355 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2025009311098529e-009
		 0.069050941455579273 -2.3501900425770827e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.046002308169313499
		 0.045804219399777413 -0.077852323986677879 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.082109599297121777 -0.24181127073624953 0.44989814983168502 0.85579026509198675 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0043090803435462e-009
		 0.060988991291654193 -2.3434609808248297e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -2.4750980345128454e-016 1.2404628105949787e-016
		 7.7715611723760968e-016 0 -6.250295152165225e-009 0.21082751329768368 -6.9683027820177657e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.045570448963620926 -0.044367385013005099 -0.69473681212169369 0.71644653060179464 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.7532402802066258e-008
		 0.24854378895405593 3.2161168311839461e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.084845395557843428 0.0084419622700663798 -0.32652053438803919 0.9413364609684538 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 1.0738085731464436e-015 4.2499661895628071e-017
		 -1.0423398409725216e-015 0 -8.8998391989392189e-008 0.19660176708096805 1.5579593582240592e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18641156121965941 0.012891829099292845 0.17594087724263752 0.96650366698798151 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -1.3877787807814451e-017 -6.9388939039072259e-017
		 -1.1102230246251563e-016 0 8.9008196368922654e-009 0.18685945344066898 -5.8633882513148272e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0077270257539653192 0.070379879140467963 0.069049638752781042 0.99509753947705104 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2192639059781527e-008
		 0.13291437367673031 3.5629902583877993e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.21157543552672387 0.071810811438612732 -0.34107273122814302 0.91309826111694026 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.3302395003053107e-009
		 0.069050947020832421 1.386955050808325e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.046002400905726382
		 0.045804147313727395 -0.07785233297027519 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.082109532684244452 0.2418112542682728 -0.44989825443316328 0.85579022114626457 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.6551618943245785e-010
		 0.060988990171889357 -3.5739599058004501e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6198501000558822e-009
		 -0.18621997114547484 0.030595897606921739 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.081332483127355748 3.881242617109173e-007 -1.9391183599239633e-008 0.9966870256947199 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -0.26406182013648227 -0.58687376950261871
		 -0.057885779516390692 0 -0.11334451731346502 0.066024251909100218 -0.0040868108940925879 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0045412143661054567 -0.093415429051443663 0.9913604959218445 0.091963591234848041 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0.56881597153241137 7.2394659885024332e-007
		 -0.064836164443468874 0 -1.77898414333022e-007 0.25690188449852125 4.8866211840858931e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13331886384895381 0.012748707796271942 -0.016936727911772684 0.9908464554305032 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -0.6637633654429641 0.063831403461819425
		 1.7292897127265947 0 -4.2131493585562119e-007 0.31954935276994823 -1.2823086510682646e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.79124720965556494 0.051624414916644976 -0.59612970691557976 0.12606405328062942 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4681198750747843e-007
		 -0.12649617906008223 -3.2403113048315251e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99932917192630233 -0.032351362526641329 0.00023059427133846795 0.017162234879019106 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4445850361408108e-008
		 0.053668441087212193 1.1007844080701545e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -0.23796555023315849 0.42251907959636203
		 0.086996621363659307 0 0.11334451619474882 0.06602425187479255 -0.0040866682751922873 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0045418261417076271 0.093415360533948708 -0.9913604962740622 0.091963626825262879 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0.50626434632524653 -6.5594687289146218e-007
		 0.057706049207901434 0 1.5850133144867939e-007 0.25690184677595068 1.414078278083597e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.1333188443434965 -0.012748664475212385 0.016936715809475596 0.99084645881922695 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 2.6416443598241499 -3.2533729842594439
		 -4.5932793642960892 0 4.3112547951085212e-007 0.31954941777914053 -1.5000191250225114e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59612944967347614 -0.12606431669162615 -0.79124737813512691 -0.051624159880422946 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.411230518603992e-007
		 0.1264961295953855 -1.1915583045940667e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.017161894842950033 0.00023056260393139645 0.032351738700198716 0.99932916559528051 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1938463828631285e-008
		 0.05366845276059648 4.2869383320986998e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 33 ".m";
	setAttr -s 33 ".p";
	setAttr -s 33 ".g[0:32]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "8DFDEC86-4D17-D7DE-8F57-99B938C8A9CE";
	setAttr ".uopa" yes;
	setAttr -s 10 ".vclr";
	setAttr ".vclr[79].vxal" 1;
	setAttr ".vclr[79].vfcl[127].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[79].vfcl[127].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr ".vclr[83].vfcl[127].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[83].vfcl[127].vfal" 1;
	setAttr ".vclr[125].vxal" 1;
	setAttr ".vclr[125].vfcl[127].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[125].vfcl[127].vfal" 1;
	setAttr ".vclr[173].vxal" 1;
	setAttr ".vclr[173].vfcl[120].frgb" -type "float3" 0.1806 0.055599999 0.053100001 ;
	setAttr ".vclr[173].vfcl[120].vfal" 1;
	setAttr ".vclr[174].vxal" 1;
	setAttr ".vclr[174].vfcl[120].frgb" -type "float3" 0.1806 0.055599999 0.053100001 ;
	setAttr ".vclr[174].vfcl[120].vfal" 1;
	setAttr ".vclr[209].vxal" 1;
	setAttr ".vclr[209].vfcl[289].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[209].vfcl[289].vfal" 1;
	setAttr ".vclr[212].vxal" 1;
	setAttr ".vclr[212].vfcl[289].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[212].vfcl[289].vfal" 1;
	setAttr ".vclr[247].vxal" 1;
	setAttr ".vclr[247].vfcl[120].frgb" -type "float3" 0.1806 0.055599999 0.053100001 ;
	setAttr ".vclr[247].vfcl[120].vfal" 1;
	setAttr ".vclr[252].vxal" 1;
	setAttr ".vclr[252].vfcl[120].frgb" -type "float3" 0.1806 0.055599999 0.053100001 ;
	setAttr ".vclr[252].vfcl[120].vfal" 1;
	setAttr ".vclr[258].vxal" 1;
	setAttr ".vclr[258].vfcl[289].frgb" -type "float3" 0.37799999 0.2841 0.17460001 ;
	setAttr ".vclr[258].vfcl[289].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
select -ne :time1;
	setAttr ".o" 155;
	setAttr ".unw" 155;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :ikSystem;
connectAttr "Spine_pointConstraint1.ctx" "Spine.tx";
connectAttr "Spine_pointConstraint1.cty" "Spine.ty";
connectAttr "Spine_pointConstraint1.ctz" "Spine.tz";
connectAttr "Spine_orientConstraint1.crx" "Spine.rx";
connectAttr "Spine_orientConstraint1.cry" "Spine.ry";
connectAttr "Spine_orientConstraint1.crz" "Spine.rz";
connectAttr "Spine.s" "Chest.is";
connectAttr "Chest_orientConstraint1.crx" "Chest.rx";
connectAttr "Chest_orientConstraint1.cry" "Chest.ry";
connectAttr "Chest_orientConstraint1.crz" "Chest.rz";
connectAttr "Chest.s" "Neck.is";
connectAttr "Neck.s" "Head.is";
connectAttr "Head_orientConstraint1.crx" "Head.rx";
connectAttr "Head_orientConstraint1.cry" "Head.ry";
connectAttr "Head_orientConstraint1.crz" "Head.rz";
connectAttr "Head.s" "Head_end.is";
connectAttr "Head.ro" "Head_orientConstraint1.cro";
connectAttr "Head.pim" "Head_orientConstraint1.cpim";
connectAttr "Head.jo" "Head_orientConstraint1.cjo";
connectAttr "Head.is" "Head_orientConstraint1.is";
connectAttr "Head_CTRL.r" "Head_orientConstraint1.tg[0].tr";
connectAttr "Head_CTRL.ro" "Head_orientConstraint1.tg[0].tro";
connectAttr "Head_CTRL.pm" "Head_orientConstraint1.tg[0].tpm";
connectAttr "Head_orientConstraint1.w0" "Head_orientConstraint1.tg[0].tw";
connectAttr "Chest.s" "ShoulderFBXASC046l.is";
connectAttr "ShoulderFBXASC046l_orientConstraint1.crx" "ShoulderFBXASC046l.rx";
connectAttr "ShoulderFBXASC046l_orientConstraint1.cry" "ShoulderFBXASC046l.ry";
connectAttr "ShoulderFBXASC046l_orientConstraint1.crz" "ShoulderFBXASC046l.rz";
connectAttr "ShoulderFBXASC046l.s" "UpperarmFBXASC046l.is";
connectAttr "UpperarmFBXASC046l.s" "LowerarmFBXASC046l.is";
connectAttr "LowerarmFBXASC046l.s" "HandFBXASC046l.is";
connectAttr "HandFBXASC046l_orientConstraint1.crx" "HandFBXASC046l.rx";
connectAttr "HandFBXASC046l_orientConstraint1.cry" "HandFBXASC046l.ry";
connectAttr "HandFBXASC046l_orientConstraint1.crz" "HandFBXASC046l.rz";
connectAttr "HandFBXASC046l.s" "FingersFBXASC046l.is";
connectAttr "FingersFBXASC046l_rotateX.o" "FingersFBXASC046l.rx";
connectAttr "FingersFBXASC046l_rotateY.o" "FingersFBXASC046l.ry";
connectAttr "FingersFBXASC046l_rotateZ.o" "FingersFBXASC046l.rz";
connectAttr "FingersFBXASC046l.s" "FingersFBXASC046l_end.is";
connectAttr "HandFBXASC046l.s" "ThumbFBXASC046l.is";
connectAttr "ThumbFBXASC046l_rotateX.o" "ThumbFBXASC046l.rx";
connectAttr "ThumbFBXASC046l_rotateY.o" "ThumbFBXASC046l.ry";
connectAttr "ThumbFBXASC046l_rotateZ.o" "ThumbFBXASC046l.rz";
connectAttr "ThumbFBXASC046l.s" "ThumbFBXASC046l_end.is";
connectAttr "HandFBXASC046l.ro" "HandFBXASC046l_orientConstraint1.cro";
connectAttr "HandFBXASC046l.pim" "HandFBXASC046l_orientConstraint1.cpim";
connectAttr "HandFBXASC046l.jo" "HandFBXASC046l_orientConstraint1.cjo";
connectAttr "HandFBXASC046l.is" "HandFBXASC046l_orientConstraint1.is";
connectAttr "L_Hand_CTRL.r" "HandFBXASC046l_orientConstraint1.tg[0].tr";
connectAttr "L_Hand_CTRL.ro" "HandFBXASC046l_orientConstraint1.tg[0].tro";
connectAttr "L_Hand_CTRL.pm" "HandFBXASC046l_orientConstraint1.tg[0].tpm";
connectAttr "HandFBXASC046l_orientConstraint1.w0" "HandFBXASC046l_orientConstraint1.tg[0].tw"
		;
connectAttr "HandFBXASC046l.tx" "effector3.tx";
connectAttr "HandFBXASC046l.ty" "effector3.ty";
connectAttr "HandFBXASC046l.tz" "effector3.tz";
connectAttr "ShoulderFBXASC046l.ro" "ShoulderFBXASC046l_orientConstraint1.cro";
connectAttr "ShoulderFBXASC046l.pim" "ShoulderFBXASC046l_orientConstraint1.cpim"
		;
connectAttr "ShoulderFBXASC046l.jo" "ShoulderFBXASC046l_orientConstraint1.cjo";
connectAttr "ShoulderFBXASC046l.is" "ShoulderFBXASC046l_orientConstraint1.is";
connectAttr "L_Shoulder_CTRL.r" "ShoulderFBXASC046l_orientConstraint1.tg[0].tr";
connectAttr "L_Shoulder_CTRL.ro" "ShoulderFBXASC046l_orientConstraint1.tg[0].tro"
		;
connectAttr "L_Shoulder_CTRL.pm" "ShoulderFBXASC046l_orientConstraint1.tg[0].tpm"
		;
connectAttr "ShoulderFBXASC046l_orientConstraint1.w0" "ShoulderFBXASC046l_orientConstraint1.tg[0].tw"
		;
connectAttr "Chest.s" "ShoulderFBXASC046r.is";
connectAttr "ShoulderFBXASC046r_orientConstraint1.crx" "ShoulderFBXASC046r.rx";
connectAttr "ShoulderFBXASC046r_orientConstraint1.cry" "ShoulderFBXASC046r.ry";
connectAttr "ShoulderFBXASC046r_orientConstraint1.crz" "ShoulderFBXASC046r.rz";
connectAttr "ShoulderFBXASC046r.s" "UpperarmFBXASC046r.is";
connectAttr "UpperarmFBXASC046r.s" "LowerarmFBXASC046r.is";
connectAttr "LowerarmFBXASC046r.s" "HandFBXASC046r.is";
connectAttr "HandFBXASC046r_orientConstraint1.crx" "HandFBXASC046r.rx";
connectAttr "HandFBXASC046r_orientConstraint1.cry" "HandFBXASC046r.ry";
connectAttr "HandFBXASC046r_orientConstraint1.crz" "HandFBXASC046r.rz";
connectAttr "HandFBXASC046r.s" "FingersFBXASC046r.is";
connectAttr "FingersFBXASC046r_rotateX.o" "FingersFBXASC046r.rx";
connectAttr "FingersFBXASC046r_rotateY.o" "FingersFBXASC046r.ry";
connectAttr "FingersFBXASC046r_rotateZ.o" "FingersFBXASC046r.rz";
connectAttr "FingersFBXASC046r.s" "FingersFBXASC046r_end.is";
connectAttr "HandFBXASC046r.s" "ThumbFBXASC046r.is";
connectAttr "ThumbFBXASC046r_rotateX.o" "ThumbFBXASC046r.rx";
connectAttr "ThumbFBXASC046r_rotateY.o" "ThumbFBXASC046r.ry";
connectAttr "ThumbFBXASC046r_rotateZ.o" "ThumbFBXASC046r.rz";
connectAttr "ThumbFBXASC046r.s" "ThumbFBXASC046r_end.is";
connectAttr "HandFBXASC046r.ro" "HandFBXASC046r_orientConstraint1.cro";
connectAttr "HandFBXASC046r.pim" "HandFBXASC046r_orientConstraint1.cpim";
connectAttr "HandFBXASC046r.jo" "HandFBXASC046r_orientConstraint1.cjo";
connectAttr "HandFBXASC046r.is" "HandFBXASC046r_orientConstraint1.is";
connectAttr "R_Hand_CTRL.r" "HandFBXASC046r_orientConstraint1.tg[0].tr";
connectAttr "R_Hand_CTRL.ro" "HandFBXASC046r_orientConstraint1.tg[0].tro";
connectAttr "R_Hand_CTRL.pm" "HandFBXASC046r_orientConstraint1.tg[0].tpm";
connectAttr "HandFBXASC046r_orientConstraint1.w0" "HandFBXASC046r_orientConstraint1.tg[0].tw"
		;
connectAttr "HandFBXASC046r.tx" "effector4.tx";
connectAttr "HandFBXASC046r.ty" "effector4.ty";
connectAttr "HandFBXASC046r.tz" "effector4.tz";
connectAttr "ShoulderFBXASC046r.ro" "ShoulderFBXASC046r_orientConstraint1.cro";
connectAttr "ShoulderFBXASC046r.pim" "ShoulderFBXASC046r_orientConstraint1.cpim"
		;
connectAttr "ShoulderFBXASC046r.jo" "ShoulderFBXASC046r_orientConstraint1.cjo";
connectAttr "ShoulderFBXASC046r.is" "ShoulderFBXASC046r_orientConstraint1.is";
connectAttr "R_Shoulder_CTRL.r" "ShoulderFBXASC046r_orientConstraint1.tg[0].tr";
connectAttr "R_Shoulder_CTRL.ro" "ShoulderFBXASC046r_orientConstraint1.tg[0].tro"
		;
connectAttr "R_Shoulder_CTRL.pm" "ShoulderFBXASC046r_orientConstraint1.tg[0].tpm"
		;
connectAttr "ShoulderFBXASC046r_orientConstraint1.w0" "ShoulderFBXASC046r_orientConstraint1.tg[0].tw"
		;
connectAttr "Chest.ro" "Chest_orientConstraint1.cro";
connectAttr "Chest.pim" "Chest_orientConstraint1.cpim";
connectAttr "Chest.jo" "Chest_orientConstraint1.cjo";
connectAttr "Chest.is" "Chest_orientConstraint1.is";
connectAttr "Spine_CTRL.r" "Chest_orientConstraint1.tg[0].tr";
connectAttr "Spine_CTRL.ro" "Chest_orientConstraint1.tg[0].tro";
connectAttr "Spine_CTRL.pm" "Chest_orientConstraint1.tg[0].tpm";
connectAttr "Chest_orientConstraint1.w0" "Chest_orientConstraint1.tg[0].tw";
connectAttr "Spine.s" "Hips.is";
connectAttr "Hips.s" "UpperlegFBXASC046l.is";
connectAttr "UpperlegFBXASC046l.s" "LowerlegFBXASC046l.is";
connectAttr "LowerlegFBXASC046l.s" "FootFBXASC046l.is";
connectAttr "FootFBXASC046l_orientConstraint1.crz" "FootFBXASC046l.rz";
connectAttr "FootFBXASC046l_orientConstraint1.crx" "FootFBXASC046l.rx";
connectAttr "FootFBXASC046l_orientConstraint1.cry" "FootFBXASC046l.ry";
connectAttr "FootFBXASC046l.s" "ToesFBXASC046l.is";
connectAttr "ToesFBXASC046l.s" "ToesFBXASC046l_end.is";
connectAttr "FootFBXASC046l.ro" "FootFBXASC046l_orientConstraint1.cro";
connectAttr "FootFBXASC046l.pim" "FootFBXASC046l_orientConstraint1.cpim";
connectAttr "FootFBXASC046l.jo" "FootFBXASC046l_orientConstraint1.cjo";
connectAttr "FootFBXASC046l.is" "FootFBXASC046l_orientConstraint1.is";
connectAttr "L_Foot_CTRL.r" "FootFBXASC046l_orientConstraint1.tg[0].tr";
connectAttr "L_Foot_CTRL.ro" "FootFBXASC046l_orientConstraint1.tg[0].tro";
connectAttr "L_Foot_CTRL.pm" "FootFBXASC046l_orientConstraint1.tg[0].tpm";
connectAttr "FootFBXASC046l_orientConstraint1.w0" "FootFBXASC046l_orientConstraint1.tg[0].tw"
		;
connectAttr "FootFBXASC046l.tx" "effector2.tx";
connectAttr "FootFBXASC046l.ty" "effector2.ty";
connectAttr "FootFBXASC046l.tz" "effector2.tz";
connectAttr "Hips.s" "UpperlegFBXASC046r.is";
connectAttr "UpperlegFBXASC046r.s" "LowerlegFBXASC046r.is";
connectAttr "LowerlegFBXASC046r.s" "FootFBXASC046r.is";
connectAttr "FootFBXASC046r_orientConstraint1.crz" "FootFBXASC046r.rz";
connectAttr "FootFBXASC046r_orientConstraint1.crx" "FootFBXASC046r.rx";
connectAttr "FootFBXASC046r_orientConstraint1.cry" "FootFBXASC046r.ry";
connectAttr "FootFBXASC046r.s" "ToesFBXASC046r.is";
connectAttr "ToesFBXASC046r.s" "ToesFBXASC046r_end.is";
connectAttr "FootFBXASC046r.ro" "FootFBXASC046r_orientConstraint1.cro";
connectAttr "FootFBXASC046r.pim" "FootFBXASC046r_orientConstraint1.cpim";
connectAttr "FootFBXASC046r.jo" "FootFBXASC046r_orientConstraint1.cjo";
connectAttr "FootFBXASC046r.is" "FootFBXASC046r_orientConstraint1.is";
connectAttr "R_Foot_CTRL.r" "FootFBXASC046r_orientConstraint1.tg[0].tr";
connectAttr "R_Foot_CTRL.ro" "FootFBXASC046r_orientConstraint1.tg[0].tro";
connectAttr "R_Foot_CTRL.pm" "FootFBXASC046r_orientConstraint1.tg[0].tpm";
connectAttr "FootFBXASC046r_orientConstraint1.w0" "FootFBXASC046r_orientConstraint1.tg[0].tw"
		;
connectAttr "FootFBXASC046r.tx" "effector1.tx";
connectAttr "FootFBXASC046r.ty" "effector1.ty";
connectAttr "FootFBXASC046r.tz" "effector1.tz";
connectAttr "Spine.pim" "Spine_pointConstraint1.cpim";
connectAttr "Spine.rp" "Spine_pointConstraint1.crp";
connectAttr "Spine.rpt" "Spine_pointConstraint1.crt";
connectAttr "Waist_CTRL.t" "Spine_pointConstraint1.tg[0].tt";
connectAttr "Waist_CTRL.rp" "Spine_pointConstraint1.tg[0].trp";
connectAttr "Waist_CTRL.rpt" "Spine_pointConstraint1.tg[0].trt";
connectAttr "Waist_CTRL.pm" "Spine_pointConstraint1.tg[0].tpm";
connectAttr "Spine_pointConstraint1.w0" "Spine_pointConstraint1.tg[0].tw";
connectAttr "Spine.ro" "Spine_orientConstraint1.cro";
connectAttr "Spine.pim" "Spine_orientConstraint1.cpim";
connectAttr "Spine.jo" "Spine_orientConstraint1.cjo";
connectAttr "Spine.is" "Spine_orientConstraint1.is";
connectAttr "Waist_CTRL.r" "Spine_orientConstraint1.tg[0].tr";
connectAttr "Waist_CTRL.ro" "Spine_orientConstraint1.tg[0].tro";
connectAttr "Waist_CTRL.pm" "Spine_orientConstraint1.tg[0].tpm";
connectAttr "Spine_orientConstraint1.w0" "Spine_orientConstraint1.tg[0].tw";
connectAttr "R_Foot_CTRL_rotateX.o" "R_Foot_CTRL.rx";
connectAttr "R_Foot_CTRL_rotateY.o" "R_Foot_CTRL.ry";
connectAttr "R_Foot_CTRL_rotateZ.o" "R_Foot_CTRL.rz";
connectAttr "R_Foot_CTRL_translateX.o" "R_Foot_CTRL.tx";
connectAttr "R_Foot_CTRL_translateY.o" "R_Foot_CTRL.ty";
connectAttr "R_Foot_CTRL_translateZ.o" "R_Foot_CTRL.tz";
connectAttr "R_Foot_CTRL_visibility.o" "R_Foot_CTRL.v";
connectAttr "L_Foot_CTRL_rotateX.o" "L_Foot_CTRL.rx";
connectAttr "L_Foot_CTRL_rotateY.o" "L_Foot_CTRL.ry";
connectAttr "L_Foot_CTRL_rotateZ.o" "L_Foot_CTRL.rz";
connectAttr "L_Foot_CTRL_translateX.o" "L_Foot_CTRL.tx";
connectAttr "L_Foot_CTRL_translateY.o" "L_Foot_CTRL.ty";
connectAttr "L_Foot_CTRL_translateZ.o" "L_Foot_CTRL.tz";
connectAttr "L_Foot_CTRL_visibility.o" "L_Foot_CTRL.v";
connectAttr "Waist_CTRL_translateX.o" "Waist_CTRL.tx";
connectAttr "Waist_CTRL_translateY.o" "Waist_CTRL.ty";
connectAttr "Waist_CTRL_translateZ.o" "Waist_CTRL.tz";
connectAttr "Waist_CTRL_rotateX.o" "Waist_CTRL.rx";
connectAttr "Waist_CTRL_rotateY.o" "Waist_CTRL.ry";
connectAttr "Waist_CTRL_rotateZ.o" "Waist_CTRL.rz";
connectAttr "Waist_CTRL_visibility.o" "Waist_CTRL.v";
connectAttr "Spine_CTRL_rotateX.o" "Spine_CTRL.rx";
connectAttr "Spine_CTRL_rotateY.o" "Spine_CTRL.ry";
connectAttr "Spine_CTRL_rotateZ.o" "Spine_CTRL.rz";
connectAttr "Spine_CTRL_pointConstraint1.ctx" "Spine_CTRL.tx" -l on;
connectAttr "Spine_CTRL_pointConstraint1.cty" "Spine_CTRL.ty" -l on;
connectAttr "Spine_CTRL_pointConstraint1.ctz" "Spine_CTRL.tz" -l on;
connectAttr "Spine_CTRL_visibility.o" "Spine_CTRL.v";
connectAttr "Spine_CTRL.pim" "Spine_CTRL_pointConstraint1.cpim";
connectAttr "Spine_CTRL.rp" "Spine_CTRL_pointConstraint1.crp";
connectAttr "Spine_CTRL.rpt" "Spine_CTRL_pointConstraint1.crt";
connectAttr "Chest.t" "Spine_CTRL_pointConstraint1.tg[0].tt";
connectAttr "Chest.rp" "Spine_CTRL_pointConstraint1.tg[0].trp";
connectAttr "Chest.rpt" "Spine_CTRL_pointConstraint1.tg[0].trt";
connectAttr "Chest.pm" "Spine_CTRL_pointConstraint1.tg[0].tpm";
connectAttr "Spine_CTRL_pointConstraint1.w0" "Spine_CTRL_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Shoulder_CTRL_rotateX.o" "L_Shoulder_CTRL.rx";
connectAttr "L_Shoulder_CTRL_rotateY.o" "L_Shoulder_CTRL.ry";
connectAttr "L_Shoulder_CTRL_rotateZ.o" "L_Shoulder_CTRL.rz";
connectAttr "L_Shoulder_CTRL_visibility.o" "L_Shoulder_CTRL.v";
connectAttr "R_Shoulder_CTRL_rotateX.o" "R_Shoulder_CTRL.rx";
connectAttr "R_Shoulder_CTRL_rotateY.o" "R_Shoulder_CTRL.ry";
connectAttr "R_Shoulder_CTRL_rotateZ.o" "R_Shoulder_CTRL.rz";
connectAttr "R_Shoulder_CTRL_visibility.o" "R_Shoulder_CTRL.v";
connectAttr "Head_CTRL_rotateX.o" "Head_CTRL.rx";
connectAttr "Head_CTRL_rotateY.o" "Head_CTRL.ry";
connectAttr "Head_CTRL_rotateZ.o" "Head_CTRL.rz";
connectAttr "Head_CTRL_visibility.o" "Head_CTRL.v";
connectAttr "layer1.di" "knight.do";
connectAttr "skinCluster1GroupId.id" "knightShape.iog.og[7].gid";
connectAttr "skinCluster1Set.mwc" "knightShape.iog.og[7].gco";
connectAttr "groupId2.id" "knightShape.iog.og[8].gid";
connectAttr "tweakSet1.mwc" "knightShape.iog.og[8].gco";
connectAttr "polyColorPerVertex1.out" "knightShape.i";
connectAttr "tweak1.vl[0].vt[0]" "knightShape.twl";
connectAttr "UpperlegFBXASC046r.msg" "R_LegIK.hsj";
connectAttr "effector1.hp" "R_LegIK.hee";
connectAttr "ikRPsolver.msg" "R_LegIK.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "R_LegIK.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "R_LegIK.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "R_LegIK.tz";
connectAttr "R_LegIK_twist.o" "R_LegIK.twi";
connectAttr "R_LegIK.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "R_LegIK.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "R_LegIK.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "R_Foot_CTRL.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "R_Foot_CTRL.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "R_Foot_CTRL.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "R_Foot_CTRL.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "UpperlegFBXASC046l.msg" "L_LegIK.hsj";
connectAttr "effector2.hp" "L_LegIK.hee";
connectAttr "ikRPsolver.msg" "L_LegIK.hsv";
connectAttr "ikHandle2_pointConstraint1.ctx" "L_LegIK.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "L_LegIK.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "L_LegIK.tz";
connectAttr "L_LegIK_twist.o" "L_LegIK.twi";
connectAttr "L_LegIK.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "L_LegIK.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "L_LegIK.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "L_Foot_CTRL.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "L_Foot_CTRL.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "L_Foot_CTRL.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "L_Foot_CTRL.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_CTRL_Grab.o" "R_Hand_CTRL.Grab";
connectAttr "R_Hand_CTRL_rotateX.o" "R_Hand_CTRL.rx";
connectAttr "R_Hand_CTRL_rotateY.o" "R_Hand_CTRL.ry";
connectAttr "R_Hand_CTRL_rotateZ.o" "R_Hand_CTRL.rz";
connectAttr "R_Hand_CTRL_translateX.o" "R_Hand_CTRL.tx";
connectAttr "R_Hand_CTRL_translateY.o" "R_Hand_CTRL.ty";
connectAttr "R_Hand_CTRL_translateZ.o" "R_Hand_CTRL.tz";
connectAttr "R_Elbow_translateY.o" "R_Elbow.ty";
connectAttr "R_Elbow_translateZ.o" "R_Elbow.tz";
connectAttr "R_Elbow_translateX.o" "R_Elbow.tx";
connectAttr "L_Elbow_translateY.o" "L_Elbow.ty";
connectAttr "L_Elbow_translateZ.o" "L_Elbow.tz";
connectAttr "L_Elbow_translateX.o" "L_Elbow.tx";
connectAttr "L_Hand_CTRL_Grab.o" "L_Hand_CTRL.Grab";
connectAttr "L_Hand_CTRL_rotateX.o" "L_Hand_CTRL.rx";
connectAttr "L_Hand_CTRL_rotateY.o" "L_Hand_CTRL.ry";
connectAttr "L_Hand_CTRL_rotateZ.o" "L_Hand_CTRL.rz";
connectAttr "L_Hand_CTRL_translateX.o" "L_Hand_CTRL.tx";
connectAttr "L_Hand_CTRL_translateY.o" "L_Hand_CTRL.ty";
connectAttr "L_Hand_CTRL_translateZ.o" "L_Hand_CTRL.tz";
connectAttr "UpperarmFBXASC046l.msg" "L_HandIK.hsj";
connectAttr "effector3.hp" "L_HandIK.hee";
connectAttr "ikRPsolver.msg" "L_HandIK.hsv";
connectAttr "ikHandle3_pointConstraint1.ctx" "L_HandIK.tx";
connectAttr "ikHandle3_pointConstraint1.cty" "L_HandIK.ty";
connectAttr "ikHandle3_pointConstraint1.ctz" "L_HandIK.tz";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "L_HandIK.pvx";
connectAttr "ikHandle3_poleVectorConstraint1.cty" "L_HandIK.pvy";
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "L_HandIK.pvz";
connectAttr "L_HandIK.pim" "ikHandle3_pointConstraint1.cpim";
connectAttr "L_HandIK.rp" "ikHandle3_pointConstraint1.crp";
connectAttr "L_HandIK.rpt" "ikHandle3_pointConstraint1.crt";
connectAttr "L_Hand_CTRL.t" "ikHandle3_pointConstraint1.tg[0].tt";
connectAttr "L_Hand_CTRL.rp" "ikHandle3_pointConstraint1.tg[0].trp";
connectAttr "L_Hand_CTRL.rpt" "ikHandle3_pointConstraint1.tg[0].trt";
connectAttr "L_Hand_CTRL.pm" "ikHandle3_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle3_pointConstraint1.w0" "ikHandle3_pointConstraint1.tg[0].tw"
		;
connectAttr "L_HandIK.pim" "ikHandle3_poleVectorConstraint1.cpim";
connectAttr "UpperarmFBXASC046l.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "UpperarmFBXASC046l.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "L_Elbow.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Elbow.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Elbow.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Elbow.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "UpperarmFBXASC046r.msg" "R_HandIK.hsj";
connectAttr "effector4.hp" "R_HandIK.hee";
connectAttr "ikRPsolver.msg" "R_HandIK.hsv";
connectAttr "ikHandle4_pointConstraint1.ctx" "R_HandIK.tx";
connectAttr "ikHandle4_pointConstraint1.cty" "R_HandIK.ty";
connectAttr "ikHandle4_pointConstraint1.ctz" "R_HandIK.tz";
connectAttr "ikHandle4_poleVectorConstraint1.ctx" "R_HandIK.pvx";
connectAttr "ikHandle4_poleVectorConstraint1.cty" "R_HandIK.pvy";
connectAttr "ikHandle4_poleVectorConstraint1.ctz" "R_HandIK.pvz";
connectAttr "R_HandIK.pim" "ikHandle4_pointConstraint1.cpim";
connectAttr "R_HandIK.rp" "ikHandle4_pointConstraint1.crp";
connectAttr "R_HandIK.rpt" "ikHandle4_pointConstraint1.crt";
connectAttr "R_Hand_CTRL.t" "ikHandle4_pointConstraint1.tg[0].tt";
connectAttr "R_Hand_CTRL.rp" "ikHandle4_pointConstraint1.tg[0].trp";
connectAttr "R_Hand_CTRL.rpt" "ikHandle4_pointConstraint1.tg[0].trt";
connectAttr "R_Hand_CTRL.pm" "ikHandle4_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle4_pointConstraint1.w0" "ikHandle4_pointConstraint1.tg[0].tw"
		;
connectAttr "R_HandIK.pim" "ikHandle4_poleVectorConstraint1.cpim";
connectAttr "UpperarmFBXASC046r.pm" "ikHandle4_poleVectorConstraint1.ps";
connectAttr "UpperarmFBXASC046r.t" "ikHandle4_poleVectorConstraint1.crp";
connectAttr "R_Elbow.t" "ikHandle4_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Elbow.rp" "ikHandle4_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Elbow.rpt" "ikHandle4_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Elbow.pm" "ikHandle4_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle4_poleVectorConstraint1.w0" "ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "knightSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "knightSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "knigt_tex.oc" "knight_mat.c";
connectAttr "knight_mat.oc" "knightSG.ss";
connectAttr "knightShape.iog" "knightSG.dsm" -na;
connectAttr "knightSG.msg" "materialInfo1.sg";
connectAttr "knight_mat.msg" "materialInfo1.m";
connectAttr "knigt_tex.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "knigt_tex.uv";
connectAttr "place2dTexture1.ofu" "knigt_tex.ofu";
connectAttr "place2dTexture1.ofv" "knigt_tex.ofv";
connectAttr "place2dTexture1.rf" "knigt_tex.rf";
connectAttr "place2dTexture1.reu" "knigt_tex.reu";
connectAttr "place2dTexture1.rev" "knigt_tex.rev";
connectAttr "place2dTexture1.vt1" "knigt_tex.vt1";
connectAttr "place2dTexture1.vt2" "knigt_tex.vt2";
connectAttr "place2dTexture1.vt3" "knigt_tex.vt3";
connectAttr "place2dTexture1.vc1" "knigt_tex.vc1";
connectAttr "place2dTexture1.ofs" "knigt_tex.fs";
connectAttr ":defaultColorMgtGlobals.cme" "knigt_tex.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "knigt_tex.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "knigt_tex.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "knigt_tex.ws";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "L_Hand_CTRL.Grab" "FingersFBXASC046l_rotateX.i";
connectAttr "L_Hand_CTRL.Grab" "FingersFBXASC046l_rotateY.i";
connectAttr "L_Hand_CTRL.Grab" "FingersFBXASC046l_rotateZ.i";
connectAttr "L_Hand_CTRL.Grab" "ThumbFBXASC046l_rotateX.i";
connectAttr "L_Hand_CTRL.Grab" "ThumbFBXASC046l_rotateY.i";
connectAttr "L_Hand_CTRL.Grab" "ThumbFBXASC046l_rotateZ.i";
connectAttr "R_Hand_CTRL.Grab" "FingersFBXASC046r_rotateX.i";
connectAttr "R_Hand_CTRL.Grab" "FingersFBXASC046r_rotateY.i";
connectAttr "R_Hand_CTRL.Grab" "FingersFBXASC046r_rotateZ.i";
connectAttr "R_Hand_CTRL.Grab" "ThumbFBXASC046r_rotateX.i";
connectAttr "R_Hand_CTRL.Grab" "ThumbFBXASC046r_rotateY.i";
connectAttr "R_Hand_CTRL.Grab" "ThumbFBXASC046r_rotateZ.i";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "Spine.wm" "skinCluster1.ma[0]";
connectAttr "Chest.wm" "skinCluster1.ma[1]";
connectAttr "Neck.wm" "skinCluster1.ma[2]";
connectAttr "Head.wm" "skinCluster1.ma[3]";
connectAttr "Head_end.wm" "skinCluster1.ma[4]";
connectAttr "ShoulderFBXASC046l.wm" "skinCluster1.ma[5]";
connectAttr "UpperarmFBXASC046l.wm" "skinCluster1.ma[6]";
connectAttr "LowerarmFBXASC046l.wm" "skinCluster1.ma[7]";
connectAttr "HandFBXASC046l.wm" "skinCluster1.ma[8]";
connectAttr "FingersFBXASC046l.wm" "skinCluster1.ma[9]";
connectAttr "FingersFBXASC046l_end.wm" "skinCluster1.ma[10]";
connectAttr "ThumbFBXASC046l.wm" "skinCluster1.ma[11]";
connectAttr "ThumbFBXASC046l_end.wm" "skinCluster1.ma[12]";
connectAttr "ShoulderFBXASC046r.wm" "skinCluster1.ma[13]";
connectAttr "UpperarmFBXASC046r.wm" "skinCluster1.ma[14]";
connectAttr "LowerarmFBXASC046r.wm" "skinCluster1.ma[15]";
connectAttr "HandFBXASC046r.wm" "skinCluster1.ma[16]";
connectAttr "FingersFBXASC046r.wm" "skinCluster1.ma[17]";
connectAttr "FingersFBXASC046r_end.wm" "skinCluster1.ma[18]";
connectAttr "ThumbFBXASC046r.wm" "skinCluster1.ma[19]";
connectAttr "ThumbFBXASC046r_end.wm" "skinCluster1.ma[20]";
connectAttr "Hips.wm" "skinCluster1.ma[21]";
connectAttr "UpperlegFBXASC046l.wm" "skinCluster1.ma[22]";
connectAttr "LowerlegFBXASC046l.wm" "skinCluster1.ma[23]";
connectAttr "FootFBXASC046l.wm" "skinCluster1.ma[24]";
connectAttr "ToesFBXASC046l.wm" "skinCluster1.ma[25]";
connectAttr "ToesFBXASC046l_end.wm" "skinCluster1.ma[26]";
connectAttr "UpperlegFBXASC046r.wm" "skinCluster1.ma[27]";
connectAttr "LowerlegFBXASC046r.wm" "skinCluster1.ma[28]";
connectAttr "FootFBXASC046r.wm" "skinCluster1.ma[29]";
connectAttr "ToesFBXASC046r.wm" "skinCluster1.ma[30]";
connectAttr "ToesFBXASC046r_end.wm" "skinCluster1.ma[31]";
connectAttr "Spine.liw" "skinCluster1.lw[0]";
connectAttr "Chest.liw" "skinCluster1.lw[1]";
connectAttr "Neck.liw" "skinCluster1.lw[2]";
connectAttr "Head.liw" "skinCluster1.lw[3]";
connectAttr "Head_end.liw" "skinCluster1.lw[4]";
connectAttr "ShoulderFBXASC046l.liw" "skinCluster1.lw[5]";
connectAttr "UpperarmFBXASC046l.liw" "skinCluster1.lw[6]";
connectAttr "LowerarmFBXASC046l.liw" "skinCluster1.lw[7]";
connectAttr "HandFBXASC046l.liw" "skinCluster1.lw[8]";
connectAttr "FingersFBXASC046l.liw" "skinCluster1.lw[9]";
connectAttr "FingersFBXASC046l_end.liw" "skinCluster1.lw[10]";
connectAttr "ThumbFBXASC046l.liw" "skinCluster1.lw[11]";
connectAttr "ThumbFBXASC046l_end.liw" "skinCluster1.lw[12]";
connectAttr "ShoulderFBXASC046r.liw" "skinCluster1.lw[13]";
connectAttr "UpperarmFBXASC046r.liw" "skinCluster1.lw[14]";
connectAttr "LowerarmFBXASC046r.liw" "skinCluster1.lw[15]";
connectAttr "HandFBXASC046r.liw" "skinCluster1.lw[16]";
connectAttr "FingersFBXASC046r.liw" "skinCluster1.lw[17]";
connectAttr "FingersFBXASC046r_end.liw" "skinCluster1.lw[18]";
connectAttr "ThumbFBXASC046r.liw" "skinCluster1.lw[19]";
connectAttr "ThumbFBXASC046r_end.liw" "skinCluster1.lw[20]";
connectAttr "Hips.liw" "skinCluster1.lw[21]";
connectAttr "UpperlegFBXASC046l.liw" "skinCluster1.lw[22]";
connectAttr "LowerlegFBXASC046l.liw" "skinCluster1.lw[23]";
connectAttr "FootFBXASC046l.liw" "skinCluster1.lw[24]";
connectAttr "ToesFBXASC046l.liw" "skinCluster1.lw[25]";
connectAttr "ToesFBXASC046l_end.liw" "skinCluster1.lw[26]";
connectAttr "UpperlegFBXASC046r.liw" "skinCluster1.lw[27]";
connectAttr "LowerlegFBXASC046r.liw" "skinCluster1.lw[28]";
connectAttr "FootFBXASC046r.liw" "skinCluster1.lw[29]";
connectAttr "ToesFBXASC046r.liw" "skinCluster1.lw[30]";
connectAttr "ToesFBXASC046r_end.liw" "skinCluster1.lw[31]";
connectAttr "Spine.obcc" "skinCluster1.ifcl[0]";
connectAttr "Chest.obcc" "skinCluster1.ifcl[1]";
connectAttr "Neck.obcc" "skinCluster1.ifcl[2]";
connectAttr "Head.obcc" "skinCluster1.ifcl[3]";
connectAttr "Head_end.obcc" "skinCluster1.ifcl[4]";
connectAttr "ShoulderFBXASC046l.obcc" "skinCluster1.ifcl[5]";
connectAttr "UpperarmFBXASC046l.obcc" "skinCluster1.ifcl[6]";
connectAttr "LowerarmFBXASC046l.obcc" "skinCluster1.ifcl[7]";
connectAttr "HandFBXASC046l.obcc" "skinCluster1.ifcl[8]";
connectAttr "FingersFBXASC046l.obcc" "skinCluster1.ifcl[9]";
connectAttr "FingersFBXASC046l_end.obcc" "skinCluster1.ifcl[10]";
connectAttr "ThumbFBXASC046l.obcc" "skinCluster1.ifcl[11]";
connectAttr "ThumbFBXASC046l_end.obcc" "skinCluster1.ifcl[12]";
connectAttr "ShoulderFBXASC046r.obcc" "skinCluster1.ifcl[13]";
connectAttr "UpperarmFBXASC046r.obcc" "skinCluster1.ifcl[14]";
connectAttr "LowerarmFBXASC046r.obcc" "skinCluster1.ifcl[15]";
connectAttr "HandFBXASC046r.obcc" "skinCluster1.ifcl[16]";
connectAttr "FingersFBXASC046r.obcc" "skinCluster1.ifcl[17]";
connectAttr "FingersFBXASC046r_end.obcc" "skinCluster1.ifcl[18]";
connectAttr "ThumbFBXASC046r.obcc" "skinCluster1.ifcl[19]";
connectAttr "ThumbFBXASC046r_end.obcc" "skinCluster1.ifcl[20]";
connectAttr "Hips.obcc" "skinCluster1.ifcl[21]";
connectAttr "UpperlegFBXASC046l.obcc" "skinCluster1.ifcl[22]";
connectAttr "LowerlegFBXASC046l.obcc" "skinCluster1.ifcl[23]";
connectAttr "FootFBXASC046l.obcc" "skinCluster1.ifcl[24]";
connectAttr "ToesFBXASC046l.obcc" "skinCluster1.ifcl[25]";
connectAttr "ToesFBXASC046l_end.obcc" "skinCluster1.ifcl[26]";
connectAttr "UpperlegFBXASC046r.obcc" "skinCluster1.ifcl[27]";
connectAttr "LowerlegFBXASC046r.obcc" "skinCluster1.ifcl[28]";
connectAttr "FootFBXASC046r.obcc" "skinCluster1.ifcl[29]";
connectAttr "ToesFBXASC046r.obcc" "skinCluster1.ifcl[30]";
connectAttr "ToesFBXASC046r_end.obcc" "skinCluster1.ifcl[31]";
connectAttr "HandFBXASC046l.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "knightShape.iog.og[7]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "knightShape.iog.og[8]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "knightShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Armature_Knight.msg" "bindPose2.m[0]";
connectAttr "Spine.msg" "bindPose2.m[1]";
connectAttr "Chest.msg" "bindPose2.m[2]";
connectAttr "Neck.msg" "bindPose2.m[3]";
connectAttr "Head.msg" "bindPose2.m[4]";
connectAttr "Head_end.msg" "bindPose2.m[5]";
connectAttr "ShoulderFBXASC046l.msg" "bindPose2.m[6]";
connectAttr "UpperarmFBXASC046l.msg" "bindPose2.m[7]";
connectAttr "LowerarmFBXASC046l.msg" "bindPose2.m[8]";
connectAttr "HandFBXASC046l.msg" "bindPose2.m[9]";
connectAttr "FingersFBXASC046l.msg" "bindPose2.m[10]";
connectAttr "FingersFBXASC046l_end.msg" "bindPose2.m[11]";
connectAttr "ThumbFBXASC046l.msg" "bindPose2.m[12]";
connectAttr "ThumbFBXASC046l_end.msg" "bindPose2.m[13]";
connectAttr "ShoulderFBXASC046r.msg" "bindPose2.m[14]";
connectAttr "UpperarmFBXASC046r.msg" "bindPose2.m[15]";
connectAttr "LowerarmFBXASC046r.msg" "bindPose2.m[16]";
connectAttr "HandFBXASC046r.msg" "bindPose2.m[17]";
connectAttr "FingersFBXASC046r.msg" "bindPose2.m[18]";
connectAttr "FingersFBXASC046r_end.msg" "bindPose2.m[19]";
connectAttr "ThumbFBXASC046r.msg" "bindPose2.m[20]";
connectAttr "ThumbFBXASC046r_end.msg" "bindPose2.m[21]";
connectAttr "Hips.msg" "bindPose2.m[22]";
connectAttr "UpperlegFBXASC046l.msg" "bindPose2.m[23]";
connectAttr "LowerlegFBXASC046l.msg" "bindPose2.m[24]";
connectAttr "FootFBXASC046l.msg" "bindPose2.m[25]";
connectAttr "ToesFBXASC046l.msg" "bindPose2.m[26]";
connectAttr "ToesFBXASC046l_end.msg" "bindPose2.m[27]";
connectAttr "UpperlegFBXASC046r.msg" "bindPose2.m[28]";
connectAttr "LowerlegFBXASC046r.msg" "bindPose2.m[29]";
connectAttr "FootFBXASC046r.msg" "bindPose2.m[30]";
connectAttr "ToesFBXASC046r.msg" "bindPose2.m[31]";
connectAttr "ToesFBXASC046r_end.msg" "bindPose2.m[32]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[2]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[9]" "bindPose2.p[12]";
connectAttr "bindPose2.m[12]" "bindPose2.p[13]";
connectAttr "bindPose2.m[2]" "bindPose2.p[14]";
connectAttr "bindPose2.m[14]" "bindPose2.p[15]";
connectAttr "bindPose2.m[15]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[18]" "bindPose2.p[19]";
connectAttr "bindPose2.m[17]" "bindPose2.p[20]";
connectAttr "bindPose2.m[20]" "bindPose2.p[21]";
connectAttr "bindPose2.m[1]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[23]" "bindPose2.p[24]";
connectAttr "bindPose2.m[24]" "bindPose2.p[25]";
connectAttr "bindPose2.m[25]" "bindPose2.p[26]";
connectAttr "bindPose2.m[26]" "bindPose2.p[27]";
connectAttr "bindPose2.m[22]" "bindPose2.p[28]";
connectAttr "bindPose2.m[28]" "bindPose2.p[29]";
connectAttr "bindPose2.m[29]" "bindPose2.p[30]";
connectAttr "bindPose2.m[30]" "bindPose2.p[31]";
connectAttr "bindPose2.m[31]" "bindPose2.p[32]";
connectAttr "Spine.bps" "bindPose2.wm[1]";
connectAttr "Chest.bps" "bindPose2.wm[2]";
connectAttr "Neck.bps" "bindPose2.wm[3]";
connectAttr "Head.bps" "bindPose2.wm[4]";
connectAttr "Head_end.bps" "bindPose2.wm[5]";
connectAttr "ShoulderFBXASC046l.bps" "bindPose2.wm[6]";
connectAttr "UpperarmFBXASC046l.bps" "bindPose2.wm[7]";
connectAttr "LowerarmFBXASC046l.bps" "bindPose2.wm[8]";
connectAttr "HandFBXASC046l.bps" "bindPose2.wm[9]";
connectAttr "FingersFBXASC046l.bps" "bindPose2.wm[10]";
connectAttr "FingersFBXASC046l_end.bps" "bindPose2.wm[11]";
connectAttr "ThumbFBXASC046l.bps" "bindPose2.wm[12]";
connectAttr "ThumbFBXASC046l_end.bps" "bindPose2.wm[13]";
connectAttr "ShoulderFBXASC046r.bps" "bindPose2.wm[14]";
connectAttr "UpperarmFBXASC046r.bps" "bindPose2.wm[15]";
connectAttr "LowerarmFBXASC046r.bps" "bindPose2.wm[16]";
connectAttr "HandFBXASC046r.bps" "bindPose2.wm[17]";
connectAttr "FingersFBXASC046r.bps" "bindPose2.wm[18]";
connectAttr "FingersFBXASC046r_end.bps" "bindPose2.wm[19]";
connectAttr "ThumbFBXASC046r.bps" "bindPose2.wm[20]";
connectAttr "ThumbFBXASC046r_end.bps" "bindPose2.wm[21]";
connectAttr "Hips.bps" "bindPose2.wm[22]";
connectAttr "UpperlegFBXASC046l.bps" "bindPose2.wm[23]";
connectAttr "LowerlegFBXASC046l.bps" "bindPose2.wm[24]";
connectAttr "FootFBXASC046l.bps" "bindPose2.wm[25]";
connectAttr "ToesFBXASC046l.bps" "bindPose2.wm[26]";
connectAttr "ToesFBXASC046l_end.bps" "bindPose2.wm[27]";
connectAttr "UpperlegFBXASC046r.bps" "bindPose2.wm[28]";
connectAttr "LowerlegFBXASC046r.bps" "bindPose2.wm[29]";
connectAttr "FootFBXASC046r.bps" "bindPose2.wm[30]";
connectAttr "ToesFBXASC046r.bps" "bindPose2.wm[31]";
connectAttr "ToesFBXASC046r_end.bps" "bindPose2.wm[32]";
connectAttr "skinCluster1.og[0]" "polyColorPerVertex1.ip";
connectAttr "knightSG.pa" ":renderPartition.st" -na;
connectAttr "knight_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "knigt_tex.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of KnightAnimations03.ma
