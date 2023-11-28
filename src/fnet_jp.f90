module fnet_JP

! a = 0.00016741
! b = 0.25084

intrinsic Reshape
real, dimension(8,126) :: input = &
  Reshape((/0.129602387316,0.150778024106,0.229258084713,-0.110437444371,-0.258479746928,0.120039179696,0.221586949244,-0.010842914307,-0.184560242106,-0.176310301624,-0.036175255095,0.098729265222 &
            ,1.538843584562,-0.129119270435,0.360349047875,-0.105526339487,0.015735110078,-0.157359251558,-0.146932091313,-0.077432724834,-1.016040166953,-0.206289344962,-0.349832562633,0.581069603047 &
            ,0.278725847661,-0.022993298112,0.018215544602,0.094573226135,0.502570149658,0.010455950274,0.316315710957,-0.452499239317,-0.236905638718,-0.096045791383,0.175495689662,-0.104077079793 &
            ,0.428967605903,0.469639257109,0.059236343708,-0.188878366823,0.399557695084,-0.226838141741,-0.227421014158,-0.015469230307,-0.430668245013,-0.121849514572,-0.313149415925,0.343820790043 &
            ,0.222355665679,0.381548162791,0.108936472082,-0.009735276479,-0.442084230599,0.176544167740,-0.157973345425,0.029510329575,-0.137517162807,0.144942554837,0.334378067343,0.127108196509 &
            ,0.810909357256,0.064389838880,0.824600070442,0.317119298896,-0.429741108569,-0.173364942450,-0.430039760260,0.019282224295,-0.617752359774,-1.074559088922,-0.400678629032,-0.059166625926 &
            ,0.123497812659,-0.413652361871,0.261167771299,-0.074189358136,0.158263052292,0.859488105571,0.265074401097,0.215279446350,-0.011828892183,0.280140673179,-0.005898814919,-0.016785417633 &
            ,-0.597298338111,-0.175277211566,-0.159811727768,-0.224908750926,-0.380175683955,-0.017760871679,0.029755891024,-0.043756700134,-0.291632010244,-0.095748461490,-0.027918818115,0.056841068956 &
            ,0.091900230436,0.123849336440,0.048557884063,-0.037215879187,-0.265156524857,-0.023906875883,-0.021924388279,0.032376220802,0.113447096980,0.523805999739,0.143556827936,-0.045568602034 &
            ,-0.533953733930,-0.229698544654,0.048997556101,-0.660681714277,-0.272433713458,-0.139192753089,0.007659580001,-0.188974351949,-0.538991242313,-0.089012592740,-0.167186818867,-0.141281344239 &
            ,0.038454971058,-0.268444916681,-0.123980924417,-0.015722689781,-0.412791691617,-0.169004331490,-0.031547036782,0.261533943264,0.123359107979,0.074550270577,0.078615254865,0.041805415797 &
            ,-0.481332429988,-0.076500860227,0.208350868847,0.212470475740,0.173717366350,-0.126716166329,-0.065481746347,-0.148683231952,-0.312661303257,0.099315951786,-0.261350612271,-0.215235921824 &
            ,1.974324067503,0.254935910526,0.550530984446,-0.545652480805,0.138914381517,1.108578347166,0.104266896783,0.165034809931,-0.033235648180,-1.059926605594,-0.014089698521,0.514843436415 &
            ,0.164292898664,1.259543199881,0.899656003198,0.649255388298,-0.129310912945,-0.907885173713,0.009142814937,0.476577309314,0.135895014380,-0.997389025211,1.821428590593,0.438757600285 &
            ,-0.301399561244,0.809875491993,0.381238403830,1.002355382018,0.229659838263,0.002840633770,1.730139904693,0.602025602997,0.035080731696,-0.630940393525,-0.002176713306,0.138174618689 &
            ,0.144342686945,0.608352281837,0.169309224470,0.314562497887,-0.131647890697,0.078375014957,0.348042489263,0.719706845495,-0.264183532203,0.791202252221,1.561067936239,-0.513715017038 &
            ,1.565343743046,-0.378015581300,0.129748278156,-0.077644209517,0.339239278635,0.472645755279,0.712229231889,-0.928313264796,-0.000735047934,-0.637204296846,0.156247813668,0.097647945561 &
            ,0.925732284246,1.095188194811,0.626330338074,0.237855078160,-0.515083462785,-0.468983766545,-0.744988921919,-0.219322488272,0.869920096968,-0.626035184815,-0.323626232837,-0.557618483696 &
            ,-1.882090198231,1.672792016524,0.827297575759,-0.900682768209,-0.076308339031,1.269396818982,-0.623064547886,-0.333099753579,-1.291013263918,-0.349784884015,0.137162503425,-0.728344079908 &
            ,0.779892197396,0.192026293399,-0.436064966077,0.473475747390,-0.658014570037,-0.219211339295,-0.164092879824,-0.244491310243,0.807282623940,-0.185737175783,-0.533756127391,0.413931828852 &
            ,-0.281487213481,0.014732792756,-0.271106317354,0.326237815057,0.569352099700,-0.283143755497,-0.212843910900,0.353296662724,-0.480473255409,-0.085914624959,-0.130744188646,-0.068388159208 &
            ,0.575749839916,-0.243768665381,-0.168862579828,0.178551300475,-0.234255553362,0.189106204362,0.253753320814,-0.291458159020,-0.217258799541,0.130897940429,-0.006734336104,0.002702225296 &
            ,0.066160800330,0.845815156180,0.142632630181,0.191601410241,-0.783927344590,-0.414073162431,0.152455380392,0.365108681169,0.126191417123,0.102374733431,0.085698095362,-0.220114945759 &
            ,-0.343526066800,-0.292282117718,0.072427297765,0.380106588058,-0.190926504590,-0.438173069557,0.359825060225,-0.362080783530,-0.319816120198,0.354411995683,0.584041849748,-0.057750664856 &
            ,0.839425149624,0.230424538798,0.696094566997,-1.391839766186,1.246291786309,-0.772345844004,0.144673263219,-1.167879593061,-0.475029351342,0.403729545729,0.759392010753,-0.583418245610 &
            ,-0.179687507493,0.278225265907,-0.114356441430,-1.234640524126,1.565583420767,-0.337719347635,0.800578025353,-1.061666264865,0.196656054859,-0.392468669166,1.056412976978,-0.157194219954 &
            ,0.891554360103,0.995547549354,0.557773957589,-0.922687160820,-0.525922087194,-0.286427104364,0.137986739285,-0.567588864556,0.199795191991,1.228362764474,0.242378417724,-0.622920716435 &
            ,-1.159972189558,-0.157568104094,-0.927321020932,-1.160176996499,-0.565614003020,0.354759495821,-0.611652778979,0.466119674393,0.257647129309,-0.088049731066,-0.764350793691,0.518166088190 &
            ,1.186723424374,0.303708920914,-0.236733046403,-0.402406075174,-0.661128916388,-0.743431876233,-0.605120870663,0.155459188048,-0.024089990772,0.013745707991,-0.529068433472,-0.282968354049 &
            ,-0.238268655981,-1.025808666088,-1.068619469565,0.800754964727,1.042690093868,-0.571087930165,-0.787934304718,0.610904686676,0.086526294613,0.003084781139,-1.014434700644,-0.069075250705 &
            ,0.018739033764,-0.389305322728,-0.895829481214,0.392587402365,-0.168608230342,-0.515076004700,-0.897092143760,0.091571849468,-0.727126657235,0.032457729499,0.177461631850,0.128859905503 &
            ,0.805123589443,0.369651846164,0.031908926802,0.508422897638,-0.110562011778,0.323639670657,0.141932677118,-0.137286567276,0.248627795024,0.109324717882,-0.251984472278,-0.167495691115 &
            ,0.283101423046,-0.224084477650,-0.177870324344,0.134910940640,-0.367750453185,-0.158088949552,0.054465102716,-0.180971646463,0.496897004423,-0.095077809452,-0.096293841087,0.246455320497 &
            ,-0.548508785776,0.020196073631,0.307018847940,-0.087786301554,-0.175257323655,0.001412558230,-0.185635001349,-0.091844371672,-0.219515453877,-0.241342594003,-0.504648762464,0.127093913750 &
            ,-0.365747721908,0.152380858953,-0.027408846048,-0.202976396143,-0.320783762413,-0.511414033746,-0.245716493133,0.293787703022,-0.298881879450,-0.072131492008,0.078226126144,0.332178778587 &
            ,-0.172007254318,0.214677335604,0.547219278136,0.278862997191,0.144363608577,0.118582020018,-0.013759627219,-0.356680668582,0.128896204856,0.127117484966,-0.662513264930,0.843633851574 &
            ,-0.606134147670,0.766208737083,0.108098642020,0.375318129037,-0.145849545819,0.473679558731,-0.354184723210,0.950589204864,-0.724259024760,-0.439784505743,-0.077826597279,0.845713622436 &
            ,-0.344532113695,0.669565134137,-0.002745447166,0.869854034941,-0.460779939720,-0.690348753603,-0.227321802548,0.907435039047,-0.365907758492,0.084721470753,-0.269668503749,0.541059760513 &
            ,-0.283090983997,-0.106368319189,-0.341089465484,0.097037013545,-0.423504165862,0.134984560599,-0.231361881729,0.253624157575,-0.333037013673,0.142247478142,-0.635281868840,0.336872978752 &
            ,-0.401962878749,-0.047359907935,-0.708360515104,0.207495609331,-0.239262202817,-0.126052144929,0.175935476126,-0.241660365252,-0.219408423607,0.081717245904,-1.359912716311,0.093074020117 &
            ,-0.196166325472,-0.029735700558,0.793528823862,-0.403560813446,-0.130288080391,-0.369228790342,-1.552285558139,-0.180980706667,-0.353642306671,-0.243420130058,1.110640545369,-0.397097271923 &
            ,-0.356277451987,-0.277198750306,-1.222706513641,-0.477467314010,-0.701353681434,-1.033084873330,2.192615978847,-0.223952802677,-0.514072198439,0.222461546116,-0.604993020303,-0.279382837573 &
            ,-0.392981471822,-1.217795935870,1.606998192745,0.092734337574,-0.448185461183,-0.019568395107,-0.167355722282,0.006380614773,-0.263898462314,-0.559561426345,0.808036543701,0.673627506538 &
            ,-0.333288999240,-0.228140502197,-0.274043415045,-0.074435027817,-0.219287937275,-0.430406748739,0.625568914800,0.512524514070,-0.316711678526,-0.224520585379,-0.233873782769,-0.068839620362 &
            ,-0.204085189175,-0.373120180174,0.622509332537,0.388061132250,-0.328737514100,-0.228587062843,-0.220387285242,-0.048059710590,-0.269059627561,-0.141050017395,0.087676946693,-0.008545925680 &
            ,-0.336018792453,-0.097939229627,0.042900902131,0.018560466651,-0.317838021666,-0.077856753810,0.033360065035,-0.140825677390,-0.340488271489,-0.104424144507,0.116041398634,0.092118451071 &
            ,-0.303327766717,-0.151745544939,0.524756514727,0.078595964430,-0.301251558013,-0.258569567775,-0.055570725299,0.121300154910,-0.293201422098,-0.179555723091,0.759551938068,0.121173030045 &
            ,-0.269836626306,-0.366049219775,-0.131209248758,0.130727106620,-0.330171298833,-0.001472086638,0.175045664316,-0.170454912145,-0.291796370340,-0.262762652008,0.282845073665,0.140053560702 &
            ,-0.215903745976,1.071931602135,0.254843130968,-0.100305144729,0.009749501360,0.095363403737,-0.226393346209,-0.632708704798,-0.923728708656,0.738890301795,0.175386402810,0.973024718740 &
            ,-0.345298347622,0.402952154750,-1.428713048355,-0.824782394344,-0.849454056527,0.613754369783,-0.474309422340,1.639726309848,-0.398744221053,0.659120291700,-1.885880587153,-0.756400040877 &
            ,-0.511407495099,0.536577433958,-0.411261053843,1.184407918381,-0.429393096515,0.723506481953,-1.052398775347,-0.698754259271,-0.271430744002,-0.025599760208,-0.173136326185,2.098015344368 &
            ,-0.450688918407,0.057948889248,-2.064219060245,-1.037488397601,-0.730433426627,0.145997457974,-0.536375214809,2.188348769482,-0.288875591874,-0.822040286667,-4.477471785416,-0.475783830313 &
            ,-0.534782946438,0.076528157070,0.409460346911,2.047007192774,-0.027543433911,-1.767350900493,-4.897669736432,-0.097905840319,-0.346508028901,-0.635864728101,2.691575696708,2.174044420113 &
            ,0.091900505356,-2.584593283692,-4.774826362373,-0.129062062367,0.108230252063,-2.701405675847,6.863680779285,3.815337589039,-0.056374746463,-2.894161489256,-3.558511996025,-0.237067551914 &
            ,-0.526651089479,-3.860147907476,5.910771893462,8.587607975269,-0.390335076800,-1.999500652922,-1.661198722804,0.125836125076,-0.732646350140,-0.948202128339,-0.516688509428,4.910526358876 &
            ,-0.367567069497,-0.211672024644,0.079931077743,0.115861056978,-0.438940359911,-0.797665515160,-0.549119032355,3.588882851339,-0.217372125908,-0.360539741244,-0.331851409007,-0.055998240792 &
            ,-0.261245984939,-0.753975797849,-0.452013556278,2.750017835772,-0.112644191826,-0.436650845146,-0.537399344472,-0.188914151699,-0.264690742095,-0.574902408557,-0.758781866198,2.225150932606 &
            ,-0.056029131348,-0.253645888950,-0.385007667484,-0.261363342953,-0.084003096857,-0.830608400967,-0.324851970621,1.948280805534,0.088557139844,-0.325543422355,-0.512111036565,-0.408224219386 &
            ,0.087433007395,-0.857811388174,-0.345887171305,1.190874987026,0.156165578237,-0.299758502103,-0.457250921855,-0.505305519614,0.262654405529,-0.802620030739,0.024941132218,0.741475960701 &
            ,0.244626661645,-0.421812415354,-0.815963163807,-0.551225412214,0.213212183188,-0.970497410366,-1.197141269592,0.212953020252,0.235558368206,-0.149257424751,0.036054909358,-0.560439095993 &
            ,-0.212832209740,0.849299527714,0.481250633029,-0.290827332024,-1.429531149355,-1.185350006953,0.744970167246,-0.852131545723,0.615765662756,0.244716876502,0.213313830767,0.300741349907 &
            ,0.612477058783,1.489509048937,0.051654183263,0.615515442810,-0.177104076537,-0.376930162785,0.016223792969,-0.158495484937,0.860281993971,-0.371569133153,0.450402689924,-0.174013877260 &
            ,0.822653333217,0.573347640469,0.158593929520,0.148827532526,1.399091773888,0.260256418632,0.279390560267,-0.039962728505,-0.782272190816,-0.331859631506,0.032903313256,-0.380225918468 &
            ,0.401799198659,-0.666882183630,0.554620842759,-0.819386249277,-0.585255184757,-0.509021892513,-0.412385473923,-0.009174361943,0.244427090641,-0.453108447353,-0.006704544077,-0.339265307631 &
            ,0.432131526085,1.293974517242,0.240897854929,0.151653883655,-0.041315692585,0.538986626555,-0.009200711603,-1.073538693968,1.737626547588,-0.805476510003,-0.661279606606,-0.570558626917 &
            ,-0.379062973432,0.884034424922,-0.923958272537,-0.209924388717,0.914119819600,0.078678302219,-0.766082470479,0.577488059903,-0.834126905650,0.083238644360,0.447806323540,0.328575831190 &
            ,-0.175965285996,0.412890991159,-0.943039163331,-0.251116213411,0.263544040481,-0.667106461361,-0.549976345902,-0.163839155778,-0.317345226056,0.313891616395,-0.062567109201,0.069904770356 &
            ,-0.144105653008,-0.630086962658,0.451372017709,-0.525719457358,-0.248419287742,0.071060387768,-0.083359689939,-0.201704487583,-0.150609804204,-0.221683111493,-0.110145279693,-0.546439773347 &
            ,-0.540787698954,-0.217614151042,-0.231378167271,-0.089324946817,-0.045300671725,0.079390036604,-0.288030700012,-0.724330482501,-0.325141455259,0.117305561956,-0.280845700155,0.003301140577 &
            ,-0.191433120873,-0.493539903765,-0.249675635527,-0.595262598043,0.363245382813,0.420013004674,0.038315678641,-0.045828577102,0.140118520921,0.171036229874,-0.063552351903,-0.195384644528 &
            ,-0.061842344905,0.008538128591,0.120878441410,-0.226561532805,0.155880934026,0.617524799870,-0.141973008000,-0.055573514334,-0.523200659047,-0.149965875888,-0.031012625248,-0.094478514599 &
            ,-0.295809779339,-0.207305916330,0.326335842398,-0.140681343985,-0.365999545446,-0.030862277277,-0.045139266275,0.087689340024,-0.153423190780,-0.055822774953,0.066206816701,-0.325785642822 &
            ,-0.279003926247,0.499567296741,0.023146570926,-0.055432295549,-0.891128720128,-0.240243634073,-0.357508906788,0.274322830960,-0.206104878547,-0.420716363957,-0.196549396431,0.056340600441 &
            ,-0.638015528803,-0.487055792664,-0.006942750626,0.728915674053,-0.352090689374,-0.779436820966,-0.398503752340,-0.019676661798,0.355506749296,0.133954953407,-0.540885448095,0.747626615341 &
            ,-0.187323193353,-0.295177312421,-0.133946641015,0.147860235741,0.467883677059,0.104609472773,-0.024907452226,0.441273308481,-0.448878673115,0.245424458633,-0.019662395098,0.156414686937 &
            ,-0.371087962337,-0.329955820908,-0.014234371646,0.244094698655,-0.243564818347,0.342415403613,0.343148413557,-0.202295263801,1.083214467203,0.375174361309,0.050532261402,0.098921223539 &
            ,0.417251065835,-0.062979200064,0.246491803042,-0.196824983409,-0.616514231892,0.696680418118,0.073194510296,-0.295460962664,0.152118951005,0.334013058047,0.115916151326,0.097889915584 &
            ,0.387458629880,-0.261049927439,0.406418359056,0.312010565585,-0.118910406469,-0.474972738212,-0.342585228245,-0.005451183546,-0.813530759335,-0.193439277459,-0.521145013746,0.371777269034 &
            ,0.243109541690,-0.054539209275,-0.057388535985,-0.065946670536,-1.109380268443,0.449160248959,-0.483304965131,-0.736082152574,0.091229289664,0.088498773538,0.120320776482,-0.126817181229 &
            ,0.684738710384,0.093515214375,0.114040440074,-0.479761323945,0.095759309878,-0.005878083142,0.037163099360,-0.094289590628,-0.091722679537,-0.036770109815,0.054509195838,-0.337364298849 &
            ,0.403277574713,-0.256899239662,-0.084801561447,-0.044651470047,0.280289759746,0.152764281965,0.001491588241,-0.221958368502,-0.056480378267,0.171375828701,0.103478863545,-0.132084840310 &
            ,0.389687888958,-0.246390242670,0.135067000263,-0.395214202128,-0.077967331380,0.016369245924,0.085249691604,-0.167314064958,0.553189690416,-0.150300712475,0.072425958508,-0.237305345984 &
            ,-0.193715645779,0.053463985161,0.082022629486,-0.145627260121,0.431454524821,0.034091746620,-0.117574709421,-0.175678171269,0.118936546686,-0.058882616307,-0.044717684076,-0.006158261526 &
            ,0.136910031483,0.027474097237,-0.092958088025,0.021901980891,0.054254578529,-0.018563029702,0.028932443934,0.061643218951,-0.756305285210,-0.057449988485,0.119118509057,0.208064940226 &
            /),(/8,126/))
real, dimension(2,8) :: hidden1 = &
  Reshape((/-1.7331,2.1025 &
            ,3.4657,2.6814,-11.0598,-0.15173 &
            ,-7.1601,3.1047 &
            ,-0.52112,0.88463 &
            ,3.3275,-2.8138 &
            ,4.7776,-2.4562 &
            ,0.46766,2.4568 &
            /),(/2,8/))
real, dimension(1,2) :: hidden2 = &
  Reshape((/6.575,0.67698/),(/1,2/))
real, dimension(8) :: bias1 = &
  (/2.5937,1.0167,-3.2206,-1.6612,0.69402,0.45912,1.3421,0.5545/)
real, dimension(2) :: bias2 = &
  (/2.8586,0.39192/)
real, dimension(1) :: bias3 = &
  (/-0.38446/)
contains
subroutine fnet_JP_initall()
end subroutine fnet_JP_initall
subroutine fnet_JP_engine(inarray, outarray, init)
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
end subroutine fnet_JP_engine
end module fnet_JP
