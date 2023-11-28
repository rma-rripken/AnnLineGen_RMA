module fnet_EMM

! a = 0.00011288
! b = 0.20171

intrinsic Reshape
real, dimension(8,126) :: input = &
  Reshape((/1.387479403415,0.097291936253,0.013309959681,0.228466835974,0.160412236353,0.052683513507,0.048069463679,0.002539967903,-2.072998129467,-1.043283708041,-0.057076000579,-0.355639588558 &
            ,-0.240033709094,-0.168543854132,0.030402637869,-0.057159940427,0.417503510821,2.246210099451,-0.179303994825,0.089183795978,-0.165152767004,0.094817721816,-0.236844388307,-0.334869152790 &
            ,-0.654892262194,-1.288323271892,0.272778484126,-0.300053911446,0.251018835146,-0.017081882117,0.147042148645,0.465775188303,-0.720027585833,0.598492819508,-0.192464158904,0.574285563248 &
            ,-0.193055403570,0.027489626390,-0.019778021015,-0.315526678435,0.543360360041,-1.930407497177,0.144977517957,-0.470067511022,0.011504528961,-0.160966697848,0.057861470658,0.212838666799 &
            ,2.976868300031,0.417476694887,-0.019906311303,0.284608373530,0.278579654914,0.251013957504,0.080451769147,0.054990205633,-0.053269433272,1.098166564215,-0.334477783282,-0.220408775981 &
            ,-0.325865048103,-0.263599167415,0.164819458279,-0.460619439352,3.726982602831,-3.388653697569,0.239874373802,-0.279003740608,0.107303594531,0.109764406588,-0.386931872288,0.182423372022 &
            ,2.736229406507,0.652444549587,-0.017656050284,-0.368933784084,0.033779180195,-0.084570802619,0.592353906518,0.250078422867,1.844616893235,0.019796503718,0.086892101607,-0.603637878139 &
            ,0.008923772134,-0.091275082267,-0.217471372673,0.020496566046,1.781890971902,-3.735903027030,-0.283879076237,-0.163349285704,-0.030463659135,-0.002015455151,0.005468928797,-0.412268010035 &
            ,1.889377440486,-1.204780213492,0.178693208386,0.414228835790,0.144369272569,0.079457337624,-0.059596487623,0.194514149151,1.633909021651,3.362893384576,-0.251055601171,0.656395758349 &
            ,0.024855631066,0.103620441210,0.075689016067,-0.380663787144,1.291539068299,4.042576493151,0.181756046580,0.114874739460,0.002455995196,0.015311230220,0.012080678442,0.280947512660 &
            ,1.314693056997,-0.119082588610,0.165422536589,-0.563954345842,-0.129021043039,-0.055325794688,-0.134842537485,0.237071818730,0.167341158867,-0.349991238098,-0.333230411932,0.027310364495 &
            ,-0.125383202129,-0.054401618143,0.021957195746,-0.511854479991,1.013669742312,-5.304770026694,0.036335892619,-0.140293843220,0.071085304687,-0.070805593227,-0.013245091150,0.024415989045 &
            ,15.527549669777,-0.558509952838,-0.641710082606,-0.257449199278,0.233299888603,-0.387728122365,-0.455433856908,-1.319097564266,-17.943395657785,1.867947604637,-0.982044130636,-7.365790015145 &
            ,0.604401356251,-0.838186478673,-0.205099180658,-1.386489834361,-6.558498049368,0.886618915314,0.304650818012,0.892904362402,2.200820277661,1.884571100418,1.193159493864,1.269312625342 &
            ,-4.280052158486,12.439717349524,1.385818166732,2.706501685325,-2.938517731335,-1.192997823701,0.641025184051,2.339863313841,6.324489529919,3.800846017058,-0.195739992466,0.132126911216 &
            ,0.046745367616,-0.222639565630,-1.581569952782,-1.293894787505,7.114495529096,-8.543772666517,0.127448062911,-2.757526828690,1.553308964676,-0.453272555318,0.274236705160,-0.104336934005 &
            ,1.287242925587,7.286961412251,-0.306021422659,-3.523657799379,-0.849201146034,-0.293024608343,4.264255499334,2.621646228520,-4.143397905972,-1.359540099730,3.302253820348,14.253690754205 &
            ,2.939369873254,2.560664952091,-4.211838183837,1.671475627231,-10.182412852272,-2.619398004041,-2.568009620030,-7.772657963539,-0.575730100595,-1.951139664640,1.193822401686,-3.042279542519 &
            ,-3.561863283058,4.213326941073,-1.519439867451,-1.061529311401,1.440992027926,0.940985951160,-2.111781574115,-2.667901624696,-5.656630654237,-1.934856134936,-0.442162741614,-0.215792473823 &
            ,0.562090237094,0.104099092438,-0.110521568156,-0.799982828494,-2.583160165523,-9.074980259756,-0.896278168850,-0.294705941313,-1.077314699253,-0.841504744850,1.076729104534,-0.800579212245 &
            ,-0.711167614978,-4.007740544014,-0.256488974069,-3.231824807404,-1.063408282029,-0.390327789753,-0.407763294673,-0.153279831323,-2.966190621046,-1.102882618344,1.060413418258,-2.121987360275 &
            ,0.741193273056,1.349845856527,-1.288602144439,1.787198257943,-0.168397527191,5.623414408701,-1.850622397161,-1.535081788335,-0.411147749790,0.086802050944,0.702200550858,-1.913975529858 &
            ,-0.039247226705,0.923319244452,0.569079505101,-1.686997821284,-0.791438918058,-1.087353002231,-0.602606948320,0.444091848518,1.307011473267,1.558791228117,-2.006731001705,-0.846869286780 &
            ,-1.856428660871,-2.019141958222,2.075168517872,-2.295713897926,-1.120830934879,-0.632653118387,0.420373268803,-0.794617400611,1.120564459718,0.327725565629,-0.020854827523,0.564515266130 &
            ,4.565991175966,-17.387681741491,-1.245540592301,-2.148293648449,-3.250277538384,-2.463524573562,1.352692804718,-1.540765338653,2.355311186709,-0.903661880258,1.901781920670,4.546526909048 &
            ,1.726209453460,1.244669303382,0.619303769492,2.656867498437,-1.370655625535,-7.647153505037,-2.706784835493,-2.496527314360,-3.507407931360,-1.436328198030,0.063702934764,-4.269239793636 &
            ,-5.444848662481,12.611930156826,-1.817202033510,-2.497862957947,3.344851473641,0.791697888537,1.245727096868,-1.594009207326,0.697130328461,0.626490122776,-0.738169117751,-0.944648647542 &
            ,1.334087244523,0.554558437445,-0.643008761784,-1.821966249417,0.595905551641,6.963264218591,-0.354798992334,-3.527644159153,4.212618114782,1.585043662906,-0.005991664433,-0.015554554202 &
            ,4.102734278570,-12.823427404955,-2.898697820594,-3.057085201001,-5.068630956103,-3.028889281402,0.729305971614,-3.961975495797,1.965008270828,11.856936648452,2.413356898176,5.959454149133 &
            ,0.274063706860,0.089460958851,0.351613855107,4.046476924738,9.816353694473,-1.385919770057,0.802890298973,7.740779042443,-4.901972526009,-0.525872996188,-1.548328330545,-0.553257816184 &
            ,10.644613470158,1.612945628030,-0.003846559377,1.029489566060,-0.842786736046,-0.456536030049,0.765870115072,0.432572323313,-4.666602799666,-0.693239038050,-0.201054353062,-0.001890609794 &
            ,0.264769533081,0.368215988625,-0.255239307578,-0.528604039897,3.159565646137,-1.822399822975,-0.114031852383,-0.727194784472,-0.537480105364,-0.316773889601,0.358389735396,0.031745514509 &
            ,2.822571634390,2.429415304712,-0.126562305384,1.349226022473,-0.464402194977,-0.071090025431,-0.252030428244,-0.475628255348,0.713943759338,3.536349995090,0.853947243385,1.837402438552 &
            ,0.703226311302,0.619862477773,-0.476269316569,1.022633151870,-1.873074367399,-3.415216053483,-0.280541772203,-0.678619925330,-0.491125638215,-0.155739528103,0.072162025269,-0.357816067171 &
            ,5.495878590200,-3.343696645203,0.148324394826,1.844707196753,0.470842008506,0.565460919523,-0.563879383872,-0.103574457413,3.152069795507,1.409398792934,-0.273414024333,1.994660017510 &
            ,-0.106467419563,0.054016052565,0.220463792789,-0.333511831184,-2.215303768873,4.441790513411,0.088555309236,0.776811165645,0.427394684611,0.620456564636,-0.572845382702,0.126654057095 &
            ,-6.805843300152,4.104888464192,0.480717770649,5.597400194597,2.840518750387,0.048478808981,-0.647793855363,-0.662916088676,-3.910493873200,3.211652926180,-1.438282534329,-7.239813700125 &
            ,-7.056262486163,-0.728504173351,-1.140949960855,-0.956607910683,-6.087539095836,1.465331285964,3.291239708335,-2.087459719370,2.338805243307,0.916288332803,-1.110029452044,4.488144036920 &
            ,-4.355882326541,1.629634186456,4.596969547917,-0.900692121233,-4.336560194690,-3.348343994915,-1.193582393983,6.582880640812,-3.099150008091,3.829756808738,-7.254907276474,-0.003067908405 &
            ,-2.905108425098,-1.823722170572,3.048599708501,-9.640295447096,-4.642723696425,5.966094794648,-6.121236682012,4.142484876735,6.853772071163,5.384326635360,7.016253523509,-6.985827435151 &
            ,-2.137965718204,2.627983399823,0.004464288937,-5.821694690909,15.238791642367,9.852295763761,-6.338939193599,-3.968676686771,-1.349779672567,4.336211800420,3.827021301325,-11.906710248256 &
            ,8.305976357528,3.522606325641,1.050597613202,6.401544473586,3.053845251599,1.286045235660,8.227742140383,-0.162697659058,-8.284680595582,2.717911821638,-8.285346985807,10.849490120762 &
            ,-0.230823461343,1.340406138036,-0.586661872647,6.955738354032,-5.977155164375,-0.483882499943,13.064569690267,3.474067060740,-0.562237701829,-3.623174199222,1.805402612942,1.135369095451 &
            ,1.386208064693,-1.103683512836,-3.127012265716,-4.693785578842,-0.877811390262,-5.095336677666,-1.456360019516,1.232549031478,0.696357648950,0.044927474406,-3.707977759713,-0.252399606126 &
            ,-0.581049181368,-4.199540231024,3.003363090930,0.091134168702,-0.815601434460,4.199240099550,-1.477578809868,-2.502105682446,-0.785142041414,-2.431374676491,-0.892682351367,-1.067459094004 &
            ,1.825034050558,-0.575692338947,-3.655285445564,-0.121934844875,-1.206080054052,-1.174895981266,2.212051350677,-3.492209198619,1.372333625344,-0.864991808231,0.015405695141,0.164890494632 &
            ,-1.047519300018,-1.320984394326,1.024878169377,-4.430382261875,2.548482295342,-2.791553114351,1.348314605943,3.830279018510,-0.218325987156,-2.297591068386,1.855562293680,-6.083448317139 &
            ,-0.812525641944,1.397277017673,1.837974017246,5.245039969520,1.246515793952,-3.420857713858,2.965812885991,-6.745374944504,1.831589664039,-3.836006366624,2.758686019107,3.749387868483 &
            ,-0.627405922935,-6.324515465537,0.215521564118,-0.298526512600,0.210240968293,-1.400728985833,0.296592879927,0.472641303433,-1.937401188407,-7.089779690233,4.304346618427,-0.619163927452 &
            ,4.931020099451,9.047649434197,-2.942229586545,5.895415016307,-1.330594758972,-5.625111206131,-3.143285293173,-16.393557086349,7.746121794457,2.657166405067,2.909392157292,-2.116931014436 &
            ,0.890620220736,-1.728530613903,2.440866278685,-3.623242319435,-5.908765119392,-5.651015750283,-2.393123588591,2.153141366940,2.808737922133,-0.674951399115,-1.557133546749,7.235965145659 &
            ,-2.042039498069,11.475246688643,0.513828703910,-0.611504663078,1.464104543241,-6.292642450595,4.742951413553,3.412853075436,6.659528068975,7.617973667874,1.251435538928,7.772489551110 &
            ,1.496699192027,-3.465950734294,2.299882092007,2.202315608328,7.911563802925,3.254734896116,-3.090132116305,-2.726339792578,1.898167867014,-3.951580330763,-0.023316586149,-9.111706762110 &
            ,2.078929175154,18.666262930533,-7.534591504132,-4.144996041307,1.502965420792,-0.123013092644,0.140008982570,-11.231373481356,1.004103902016,4.563560632890,16.743226490865,3.381899576983 &
            ,2.888529887250,-4.007139108456,9.445357472713,-2.382131154296,7.411020663854,5.446221838354,-1.943561662536,-4.833184932439,3.559231900362,-4.878254707483,6.221079579163,7.789862676663 &
            ,12.091290887552,9.479055881613,6.190718386705,7.181821086689,3.300447636912,-3.450773117649,1.636291970250,8.453205638499,8.386317192314,6.147607082493,5.769764903657,5.193753990217 &
            ,2.633820476740,-3.913778230355,3.303631442544,8.877477466955,6.383757325135,-1.524962986949,5.974005112713,1.821481351197,2.431735706514,-4.643985516610,1.915300483661,7.139585281577 &
            ,1.393172454417,0.685215519993,6.025811050034,3.129487819345,2.019981825907,-6.410929175655,1.858822463663,4.801006108731,-2.256044917966,3.574275117392,2.816397479272,0.903398611399 &
            ,-1.035460719445,-9.947312592221,4.677864171439,1.303319190881,-6.341937484549,-2.932403884543,0.911405728948,-1.260703649125,-6.626997787731,-9.723896388254,5.005471127515,-1.130370887118 &
            ,-6.252364307022,-3.103788587070,-1.403518934005,3.099126133304,-9.855195928515,-8.468915580006,10.510040142515,-4.970914968112,0.395484921258,0.304565012006,-5.281678275648,15.405224320277 &
            ,-7.160698735587,3.698854613581,0.208353078919,-1.134907204691,-0.415352718486,-0.277511903544,-1.357662619629,-0.499433496861,6.198509324143,-4.398255962094,0.732112333431,1.350387229934 &
            ,0.443259886789,-0.238637472654,0.887442923433,1.445721880500,-0.266119144023,3.326318021519,-1.497469816387,-0.552017765378,-1.289493157760,-0.320597620745,1.109917436720,-1.448022942531 &
            ,11.370291222144,-3.470315008226,0.207253177738,2.327483670389,1.063566596222,0.422067446712,-1.015758360538,-0.603359628487,-5.465355602205,2.394907372262,1.052097859292,-0.255524607933 &
            ,0.425415271314,-0.393105411495,0.171763836438,1.676322242338,1.387766147298,-4.279425129854,-0.819452080168,-3.173241159942,-0.635905727925,-1.287190948373,1.987653951502,-0.069540508715 &
            ,7.300242949461,11.401281717150,0.278493320281,5.322891225205,-0.312557942227,1.220505510723,-1.583945440541,-0.248275204121,-0.488531193424,-9.253112187732,-1.174636226965,0.389213338378 &
            ,-1.076302948023,-2.000628760901,1.031148856510,-1.587025503282,3.870250505155,4.713603390007,0.380049370160,-1.666817235600,0.115947066585,-0.353473307822,-0.724321763287,0.800550319932 &
            ,1.030941739542,-6.684326622226,0.003915134258,5.768180701915,0.488446397149,0.926652798988,-0.720771976173,0.247074083550,-4.584912798804,-0.637107427683,-0.121405101503,-1.054060124328 &
            ,-0.469878140051,-0.374479810070,-0.108124870633,0.002005934131,2.670714946989,-0.243144718620,0.669748324496,-0.941077633416,-0.121236990272,-0.004120493915,0.229668553272,1.489832952919 &
            ,-1.306974124575,1.040252416423,0.607182428351,0.656139483927,0.359778504137,0.495340292747,-0.532082863097,0.783246777321,0.471955860446,1.211117077942,-0.689663896579,1.371189580097 &
            ,-0.222894770587,0.093523552487,-0.900937817386,-1.572900949307,2.577458650822,3.135897777634,-0.200444281626,-1.188329058353,0.078136818621,-0.228924281094,-0.363980303567,-0.392213633674 &
            ,3.308590919465,-1.711507916059,-0.587232524817,-2.198467139714,-0.639521825520,-0.513268265044,0.217492278931,-0.398695827604,0.495934282424,1.079669193169,0.090538015509,0.904336442798 &
            ,-0.290725846814,-0.132722787949,0.785835106518,0.745926988290,-2.745479518149,2.537974344447,-1.011658908218,-0.929134933621,-0.104829854400,-0.298386752722,0.346066720131,-1.467529919365 &
            ,-1.106075582077,-1.339443871525,-0.598001387782,-0.722503552543,-0.658067398918,-0.314353845227,0.008329966137,-0.860953842656,-5.389032182300,2.899451171839,-0.315511832294,-0.151954244586 &
            ,-0.257018797961,0.109435419772,-0.070961115966,-0.410730244990,-3.002970540339,1.413645828984,-0.059054095016,-1.138209730015,-0.113610630350,-0.314815471375,-0.287348327433,-0.272305947534 &
            ,1.016904943065,0.716912806944,0.297976533650,1.503372771860,0.092431876948,0.102289983617,0.069846642402,0.358256418039,-2.594727486576,4.470122185580,0.134471707824,-0.969317741754 &
            ,0.364659020183,0.419867310986,-0.772202007520,-0.046709397827,-0.983433654577,0.677177558204,-0.247614031385,-0.504890131655,0.141240351598,0.097104006567,0.169443260722,-0.222800112011 &
            ,-0.360096696862,-0.862499299077,0.146229984537,-0.906013671865,-0.041361934506,-0.278284532261,-0.371439029636,0.002789036259,-0.862367175694,0.497171818792,-0.005478339876,0.276190623785 &
            ,-0.449788254340,-0.146975723076,0.157102065832,0.138161347531,-1.117354626378,0.679011008884,0.459877270424,1.789323251444,-0.500639902024,0.007746001052,-0.226178107852,0.573632152093 &
            ,0.696415834007,0.450691048375,0.130199036997,0.285834428025,-0.068798002878,-0.080337915077,0.162420929772,0.238895350054,-0.868686774836,0.270278293546,0.259104444790,0.304638006548 &
            ,0.318743594354,0.183770109107,-0.491751416281,0.052675639702,-0.593485601026,0.170332392667,0.038093077784,0.538695268070,-0.026754698898,0.008442432224,-0.029501116982,0.009599901964 &
            ,0.641105631205,-0.289991420179,-0.177676620077,0.379134825907,-0.370194188701,-0.276036317456,0.188849749496,-0.232992110451,0.141461421706,-0.992566950011,-0.104979939198,-0.066667929383 &
            ,-0.244424560492,-0.190426748865,0.057454846248,-0.151234378634,0.352503868836,-0.594176409443,-0.091809695340,-0.191947391452,-0.171699694536,-0.130783027531,-0.021205182347,-0.136233621933 &
            ,-0.065891055089,-0.039314253544,-0.099560904973,-0.313528405407,-0.047010347629,-0.006282515368,-0.058449214883,-0.099466414302,0.695214381272,-0.058232896934,0.089793235797,-0.571972519572 &
            ,0.163184141732,0.041157733674,0.005430194231,0.247428051379,0.700031320168,1.211562037205,0.038114912859,0.271429570063,0.692395268917,0.486266822784,-0.214461395267,-0.025884677256 &
            /),(/8,126/))
real, dimension(2,8) :: hidden1 = &
  Reshape((/1.0066,1.5827 &
            ,-4.5155,-14.8098,11.0575,6.762 &
            ,-0.95415,12.0236 &
            ,-7.1766,-10.0763 &
            ,13.3797,21.2224 &
            ,4.3765,3.0659 &
            ,-7.1082,-4.4961 &
            /),(/2,8/))
real, dimension(1,2) :: hidden2 = &
  Reshape((/-9.3568,12.8045/),(/1,2/))
real, dimension(8) :: bias1 = &
  (/15.3984,-8.5996,-2.8075,5.9811,-1.4411,-3.2274,-3.5282,0.70368/)
real, dimension(2) :: bias2 = &
  (/-5.1455,-7.9459/)
real, dimension(1) :: bias3 = &
  (/-3.225/)
contains
subroutine fnet_EMM_initall()
end subroutine fnet_EMM_initall
subroutine fnet_EMM_engine(inarray, outarray, init)
  intrinsic MatMul, Size
  real, dimension(:), intent(in) :: inarray
  real, dimension(:), intent(inout) :: outarray
  real, dimension(126) :: inarray2
  real (kind=8), dimension(8) :: layer1
  real (kind=8), dimension(2) :: layer2
  real (kind=8), dimension(1) :: layer3
  integer , intent(inout) :: init
  integer :: i, j
  do i = 1, 126
    inarray2(i) = inarray(127-i)
  end do
  layer1 = MatMul(input,inarray2)
  layer1 = layer1 + bias1
  do i = 1, Size(layer1,1)
    layer1(i) = 1.0 / (1.0 + DEXP(-1.0 * layer1(i)))
  end do
  layer2 = MatMul(hidden1,layer1)
  layer2 = layer2 + bias2
  do i = 1, Size(layer2,1)
    layer2(i) = 1.0 / (1.0 + DEXP(-1.0 * layer2(i)))
  end do
  layer3 = MatMul(hidden2,layer2)
  layer3 = layer3 + bias3
  outarray(1) = layer3(1)
end subroutine fnet_EMM_engine
end module fnet_EMM
