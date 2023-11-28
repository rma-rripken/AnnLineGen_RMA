module fnet_CO

! a = 5.0211e-005
! b = 0.14524

intrinsic Reshape
real, dimension(8,126) :: input = &
  Reshape((/-0.194282777371,-0.198244394274,-0.257231894563,-0.025396801715,-0.222445076542,-0.013123701902,0.148555341395,0.208965264437,-0.119382487514,0.440577243967,-0.085878686756,-0.051783498113 &
            ,-0.056082203003,-0.040114815207,-0.445850935398,0.063294120088,0.417094714403,-0.053055499448,0.447528252835,0.067385884558,0.539805052035,0.059720210696,2.109751106907,-0.555500022894 &
            ,-0.265473617664,0.289360322484,-0.350808528637,-0.062495593032,-0.360041679508,-0.019746384810,-1.661894850538,0.313395679566,0.159090675254,-0.536435055859,0.299196138764,0.013344479478 &
            ,0.440791752743,-0.040060049093,0.866329318079,-0.343610431721,0.251489642608,-0.375982762164,0.091080875017,-0.057577353022,0.006859870050,0.099659110513,0.061642195849,-0.119525165305 &
            ,-0.505081598163,0.767195033926,-0.415912065576,0.186740622785,-0.973574257557,-0.074705484155,-0.556424448631,1.136205175816,0.099580068861,-0.968618604176,0.067493827684,0.004206383634 &
            ,0.690519629250,0.026330700466,0.786028965772,-0.703919800176,0.184575881189,1.069853334838,0.092629954866,0.068938793356,-0.104638615823,0.090051783608,-0.041575229386,-0.011162526481 &
            ,0.477490167409,-0.546486999543,0.484992910281,-0.060827640084,0.227341875018,0.042431063670,-0.907503884094,-0.253592552634,-0.081212376552,-0.477310549686,-0.110811480551,0.075394924905 &
            ,0.426661466153,0.008366989879,0.136476035448,-0.365731630042,-0.127323512142,0.288629760834,-0.145170730688,-0.014183348690,-0.496099773826,-0.014540847004,0.419926085868,0.460673775616 &
            ,-0.006593707919,0.183543462868,0.043067866173,-0.014177006065,-0.075867824400,-0.033383356254,-0.338333430915,0.087679907333,-0.274197271224,-0.584323503391,-0.174179494093,-0.071992032975 &
            ,0.655543639554,-0.136855990553,0.622692672069,-0.551679616023,0.122949064353,-0.319003699124,0.166309063706,-0.125874237259,0.195646693320,-0.040484485945,-0.000921997294,-0.215486654562 &
            ,0.234204418231,0.802032192772,0.216588913992,-0.059460804232,-0.388792979401,0.037475790869,-0.123683521428,0.311554141733,-0.007201700995,-0.174656803027,-0.035130946408,0.110032375611 &
            ,-0.290150454749,0.039539874157,-0.772914726544,0.317381669058,-0.088435301774,0.507408369160,-0.113808357412,-0.034553742409,-0.001293490936,-0.019362704752,0.447607535998,-0.017017538409 &
            ,-2.335117529861,-5.399910995518,-3.311783069688,0.059192847834,0.661481744104,0.114937956522,-0.550588560585,-1.371827732680,2.717621399098,-6.154198800473,3.732753493908,0.259479175290 &
            ,-2.011650320579,0.023388464337,3.693999456549,3.105842826158,-2.099319540334,-0.685464114359,-2.858056182710,-0.042109790448,0.456528771324,-0.002357090637,-4.493983123981,-0.953092861957 &
            ,-0.312024075048,5.213896789528,-0.633849368873,-0.831216224324,-2.729250235921,-0.013004751399,-1.130962020627,1.755477449025,0.368032515125,1.465005345070,1.585992254933,0.981640910690 &
            ,1.071283661860,-0.342220438912,-1.142518270104,0.051560118676,3.018576142167,-1.252098705952,2.703392620602,-1.316454704469,-0.827382434815,0.403245243177,-0.665016898886,-0.045187736534 &
            ,-1.967025643182,-3.931856483678,-0.907456288046,0.363217915077,6.870341053851,-0.829674588439,-5.593640020760,-5.487995494762,2.864097198741,-5.697875225466,2.916245373637,-0.221916491007 &
            ,3.224568683421,0.441021916245,-0.896277997336,-3.432170006887,-2.463593338241,0.087684020245,-4.356210930832,-0.724930486827,-5.092969857320,0.425261738889,7.741469028097,4.302497702574 &
            ,0.072560321508,-0.592602857497,0.957876884716,-0.039003914157,-1.442438543499,-0.196680038578,2.197582293582,2.069593766296,-0.083764224993,-0.220957121018,-0.781327075767,-0.043997778615 &
            ,-0.179679768923,0.381756829806,1.440554516235,-0.357144754272,-0.762192172101,-0.259058374851,-0.458195659596,0.168718777812,0.815282695261,-0.220122804759,-1.582397257171,-0.458376467757 &
            ,1.687424359005,1.138555118659,1.855359310487,-0.055606949065,-0.971217914069,0.221050241676,-2.068140408210,0.767246648426,0.120420191529,-0.710321306836,0.067292170991,-0.388381020478 &
            ,-2.494432226523,0.029054592174,0.183477379379,2.111145859196,0.097240130722,4.622622616746,0.232574447235,0.270003858567,-1.174252512718,0.149779836456,-1.802247791913,1.018419070978 &
            ,0.215441071618,1.165173394428,0.024805128591,-0.020686858159,0.158518089845,0.175366780480,-2.907314109343,-0.173643601596,0.219419760075,2.078452775551,-0.392963316291,0.281327353507 &
            ,-2.445154968628,0.511443407410,-2.327312485800,2.061534793015,-0.020208168233,0.796764875747,-0.362345693367,-0.030404015901,-0.917252128059,0.179959795128,0.288675388037,0.653139334014 &
            ,-0.244898458003,2.041499128559,-0.906114167288,-0.976783146961,2.204111911682,-0.092379506152,-1.036048463205,-3.047954041600,-0.309710980265,1.087673163063,-0.191022110978,-0.030078500120 &
            ,0.816143597522,-0.232223455536,2.060396211078,-0.797252882142,0.448245594212,7.028172504192,-0.218211364343,-0.367218787942,-1.767894763270,0.258977257117,-7.312017836805,1.035479165471 &
            ,-1.794009006049,2.694678133747,-1.468461529865,1.226507653612,-4.952832199561,0.115630406354,-0.589404023759,5.960292074120,0.493567328449,0.770390515972,-0.505169193889,-1.143125302818 &
            ,0.323503170175,0.282514534660,5.785171120881,-1.903425309336,-0.037453165281,1.765383258170,0.384147592631,0.919419528116,-1.796398761054,0.185969079511,2.936429878623,2.239636073728 &
            ,0.025149253025,-1.182181017346,-0.537778889419,-0.324013564899,2.903608100721,0.182211918902,-2.837245163464,-3.762688505316,-0.549920724541,-7.614017816233,-0.686846130267,0.521792923886 &
            ,5.592182037880,0.202416001107,1.224368284551,-5.784968939245,0.253526584269,5.915408511511,-0.000591152484,-0.356610081077,1.301006013414,-0.223597087525,1.168066273158,-2.077723965114 &
            ,-2.169147653777,8.042262564664,-1.508482213872,1.376504660130,-5.994161492715,-0.334257162357,2.091854742977,7.297020157932,-0.899191783786,-0.461615693448,-0.698803931179,0.030147123929 &
            ,-0.695171412028,-0.283989643635,2.445794952158,0.916078441900,0.660841396075,0.277103056495,0.789075467931,0.111965108680,-0.099684985761,0.066612394990,-1.387507166021,0.254456939984 &
            ,0.091232800258,1.388638392029,0.194754322935,0.152530147742,0.059099231196,0.009418198824,-2.213643850721,-0.028877000354,-0.512462986084,-1.785532208826,-0.465690527020,-0.039212615575 &
            ,-0.014884195874,-0.120886056321,0.583067770256,0.123235865730,-0.170345927777,2.530277233928,-0.088361293217,0.172498693362,-0.680120011499,-0.013594870611,1.433628541079,0.689118192784 &
            ,-0.063877905261,1.933629246004,-0.277340186228,0.170010501051,-0.348520700238,0.125784840636,1.028015224318,0.257421221235,0.494223523665,-5.494691512282,0.608063947902,-0.543517382259 &
            ,1.697912155991,-0.084045909829,0.826263670954,-1.820670439738,-0.152574931490,-0.274276027026,-0.009401642593,0.656706537841,0.516319376871,0.174434381332,-0.606346737493,-0.356868758835 &
            ,-2.791344009752,4.344182395973,-2.365122805314,1.198522160100,0.148090920892,-0.327324472180,-0.868139355295,0.266759739080,-0.539291066228,2.450114459933,-2.234269204562,-1.093883663313 &
            ,0.355259566044,0.481356998721,0.369918270943,-1.851687585042,-0.002855143502,2.264716506113,1.935194663335,1.211895736154,0.817525751109,-0.956455920009,2.218350124306,2.426377432851 &
            ,1.226968520398,0.887012881940,-0.186700995036,-0.954373471828,-1.190888409618,0.969374402770,-2.229167628972,-2.614167652436,-1.570350025032,0.010314513007,-1.931060845532,0.241076031329 &
            ,-0.149504882930,0.007933858717,-2.230856099981,-0.635585722274,0.790770909473,-0.475546753884,0.470825995081,-1.914204993392,-3.272728104100,-0.048875527894,1.506418086649,-1.045571565267 &
            ,1.786082959619,-2.432625997376,7.120312199704,5.627338408856,-0.161867812690,-1.500477276679,3.576341904126,6.803803826849,3.692202530221,-2.381581091989,-1.194749028619,-2.403814998579 &
            ,-3.346310588822,2.118814251542,2.801760149076,0.090959475374,-2.585621431613,1.197128569877,-1.108003178882,4.360658278917,0.690319075448,-1.108542599430,-0.325805273073,1.387056428594 &
            ,1.004819559860,2.486604514971,-0.356289481947,-0.013158955391,3.152110377039,-0.578345560135,-0.916176707875,0.532124811037,-1.399366426873,2.354625379683,-0.866469008650,-0.389918659956 &
            ,-0.351493701455,-1.193794643659,-0.169897343408,-0.320617449269,-2.033910613124,2.461977676848,-1.141876073246,-1.188666782080,-0.869168743332,-0.211412845544,0.457314048158,-0.038622776072 &
            ,-1.456669488986,2.407297804848,-1.273756448462,-0.766712171266,-2.946414223933,-1.403540836790,1.080311429303,-0.982056589828,-1.098149910862,2.768628131401,-1.127593593587,-0.683753680356 &
            ,-2.432287831234,0.420646941632,1.536072623565,-0.183703841804,1.026596799312,3.631007436718,-2.527549542441,0.165071334221,-0.095642028115,0.453847623402,1.504277480639,1.319827475631 &
            ,1.305536820379,4.407294664551,-2.338907180371,0.278274944319,0.684887445370,2.725282890631,1.275044178132,1.046474013412,2.577966873747,4.686029482863,-0.896426500278,1.596075102336 &
            ,0.067758057040,-0.281771252290,1.040313403133,0.192058182271,-1.420930424566,4.642786486018,6.758538584455,-1.209142535986,1.076958062232,-3.050708079623,1.264978490753,1.008308666381 &
            ,0.087478956681,-9.743555376587,-0.183813195587,0.420765938370,0.539958726490,0.154897356518,2.278151719630,0.346226858298,1.053608697616,-6.354765316393,1.883025157314,-1.664135738491 &
            ,-3.435000906025,-0.379268184294,-0.690348436190,1.975676636586,-2.527751636473,-1.641968875603,-4.380570940118,2.334242718338,-4.124021510621,0.932254405638,-1.636905168568,2.640576461225 &
            ,-1.109051576064,0.804862421050,-0.217275626492,0.745063276777,-1.323709010296,-0.784406273155,0.987825559674,3.182713902213,0.144860398294,0.152272087041,5.276571211360,1.933885039725 &
            ,1.943450846037,-1.863301268427,-2.629337482055,0.499094006452,-0.610594797603,1.769788742834,-1.752091401041,2.563691805884,-0.887931988082,0.432943617658,-2.715450667214,-2.658523807866 &
            ,-0.657847347391,4.355299466039,2.129248336688,9.325523101172,3.748017841012,-1.110829481914,-2.337442279896,3.117021958756,-3.556175626679,3.993246753745,2.808398133471,8.839090333819 &
            ,-0.561020801397,-2.801333234685,-3.285226383503,1.839606613512,1.463997056709,2.913402580996,-2.335577302772,13.824157886326,-0.360876724927,0.929282085933,-3.210551829523,1.533713838612 &
            ,-2.267869186452,3.202018099609,-0.875650233753,11.112427891798,3.460287932304,-5.874752972279,-2.458518087393,1.918807867838,-0.544033797448,4.188832316322,-0.575884939025,-5.134536265404 &
            ,3.168103511801,-3.269748836138,-2.197780984386,-1.679110423703,-0.782861510326,3.409119955630,0.040011116892,-3.224524499250,3.031663919387,-2.067164782743,-2.071079373136,-1.823785175512 &
            ,-0.861234261907,1.981381449344,0.168194930476,-3.857386733311,-0.015224329145,-3.128000280139,-2.176253231478,-2.352886968662,-1.341316665048,2.068546968808,0.222951735092,-3.648866981106 &
            ,0.402633087299,-1.758652077053,-1.248593968381,-0.213974415241,-1.949996261430,1.229128361876,0.369319664981,1.752958586546,0.352666018451,-2.794695090069,-0.324497360996,-0.263534583286 &
            ,-2.264761429281,1.526312683836,-0.441104124238,4.112387022439,2.633749076780,-2.852223790772,0.837492362588,0.804787573778,-0.821309131158,0.129303470294,-5.774819178297,1.158724117261 &
            ,1.298139931453,1.507791868256,1.005516621991,-2.414169867765,-0.023686434568,-0.815272007726,-1.266354067341,-3.241465777207,0.000897241269,-0.062928810686,0.647310468810,-2.610170897325 &
            ,-1.253092033731,2.183912399411,-1.859706846269,0.433852704969,-2.353714452819,0.178922862114,-7.206744849312,2.292810209372,1.171941353994,-1.661866933497,1.770934058507,-0.354959001757 &
            ,2.233359959367,-0.142680116470,4.459025731674,-2.183559263304,0.527095242311,2.579190829682,0.639320749539,-0.135029464722,0.415981880749,0.025504513611,-2.509517195229,-0.555765551893 &
            ,-1.150545549460,-1.793690477185,-0.986085766585,0.149027401965,-0.987929380753,-0.300970130875,6.077418064136,1.489676579721,1.032664305560,1.171849578384,0.582323670147,-0.809142208692 &
            ,0.500637469980,0.273245303392,-4.257195646698,-1.282148111380,-0.821204181637,-0.502992627103,-0.683898302717,0.261247389935,-0.669160602676,-0.125842396982,-1.374367769047,1.195488332005 &
            ,-1.238562323607,-0.727853500022,-1.529567535623,-0.403079190905,-0.368493201562,-0.095116100165,0.580451834236,0.103942993030,-0.092137480698,0.741102108186,-0.495077447412,-0.482389626532 &
            ,-0.316953404658,0.131858321719,1.739899311536,0.026769160422,0.421107346903,-2.116171430335,0.499401029674,-0.309568851527,0.406277846307,0.140038240854,1.466597513153,-0.106297096077 &
            ,-0.190026293830,-1.132130280659,0.101485919391,-0.158804872749,-0.556779236417,0.190724629196,0.412791911512,0.562264554362,-0.277770919771,1.710303175220,-0.769765632073,-0.162166258739 &
            ,-0.831606329710,0.242761454388,-0.048458736625,0.318871136491,0.132330011397,1.279634562815,0.029272875129,0.039180114704,-0.956650422158,0.142670187121,-0.008446767172,0.769811153159 &
            ,-0.183877563836,-0.297540509532,-0.002461016617,0.176965790887,0.054630774955,-0.005285818762,-0.967072749540,0.026127618294,0.078709336596,-2.424791176803,-0.012235417341,0.111664953198 &
            ,-0.359377143549,0.149679777771,-0.831396008052,0.320509967534,0.342902473203,-0.504379951275,0.263419853753,0.115972249455,0.789874380391,0.150485089914,0.336212645228,-0.765857564300 &
            ,0.421538726490,1.628889871828,0.446606244791,-0.026555636668,0.061764415683,0.140956022044,-0.863831266155,-0.034518794977,0.512603249245,-0.808750985320,0.677912848699,-0.073666519099 &
            ,0.041839309099,0.040184664349,0.308296605929,0.150761771077,-1.062291853040,0.231274250486,-1.117433200361,0.029601521714,0.133190461202,-0.155135084795,3.083646116146,-0.106096068769 &
            ,-0.245911373562,0.553825591784,-0.378539377179,-0.092251785623,-0.059961626742,-0.002198081900,-0.533814569749,-0.023878391799,0.208650800908,-0.126317348109,0.256884820345,-0.053554511663 &
            ,0.365309019811,-0.003043654958,-0.424374519522,-0.377581225004,0.272925211618,0.435134284026,0.216319176763,0.101659280654,-0.130375951196,0.099639033065,1.074525212582,0.035058111059 &
            ,0.293192291620,-0.798951437576,0.417104311129,-0.136856777078,0.842383582029,-0.028869870437,-0.319119702571,-0.957401354688,0.297209574308,0.385712654079,0.458259054670,0.110125244906 &
            ,0.710445637103,0.009204778789,-0.072099784417,-0.751543246377,-0.214867766354,-0.115497283713,-0.181819283684,-0.100494683833,0.263267545012,-0.088130324691,0.739199886440,-0.181584407974 &
            ,1.193384537603,-0.549920038595,1.436268408399,0.083477434240,0.344480736616,0.088980009420,0.097395205139,-0.141821442402,-0.047424032622,0.263254507082,0.119976431079,-0.124324871366 &
            ,1.575609410111,-0.102006543251,-0.988466064530,-1.583795482949,0.643685501225,0.683622877970,0.703347034371,0.111266984074,0.045768512792,0.097005822443,-0.445887790306,-0.031145970399 &
            ,0.212471787601,-1.189232358562,0.375847591384,-0.113202923159,1.180355708988,-0.086961417084,0.548785469628,-1.067788302102,-0.030447732824,-0.002469685965,-0.050556435164,-0.015404270534 &
            ,-0.471177389817,0.014872753174,-0.701848727415,0.427203703903,-0.062032690357,-0.108882489803,-0.086632388833,-0.006310453791,-0.035212483196,0.005984338866,-0.273202334443,0.030740631066 &
            ,-0.046871103859,0.180690406174,0.010687482434,-0.042736209291,0.298856518648,-0.049028847988,-0.315173364278,-0.253660296228,-0.183280556263,-0.105323564829,-0.173120862859,-0.032369758082 &
            ,0.105092693898,-0.042470676490,0.027031362031,-0.100812187335,-0.120831852784,-0.009945520643,-0.160939127801,-0.040006217042,-0.253252801835,-0.002312688268,-0.298138810428,0.208317625089 &
            ,-0.099490139911,0.273973158850,-0.123251130974,0.045692010571,-0.280498265432,0.009644699094,0.434805328923,0.278420494206,-0.098157388768,0.097669366452,-0.123047750946,0.059621795563 &
            ,-0.083688519723,0.014349028567,0.255681588985,0.081120625461,0.083623026946,-0.110684356174,0.067865879231,0.080147877634,-0.276754333161,0.040568850634,0.162535926674,0.332300345926 &
            /),(/8,126/))
real, dimension(2,8) :: hidden1 = &
  Reshape((/-2.2359,6.2436 &
            ,12.5838,4.3394,0.094441,-5.1951 &
            ,10.0472,8.65 &
            ,2.3363,-4.436 &
            ,-7.0117,-13.1913 &
            ,-2.7767,-4.1892 &
            ,-1.6243,-6.3197 &
            /),(/2,8/))
real, dimension(1,2) :: hidden2 = &
  Reshape((/11.0122,-7.68/),(/1,2/))
real, dimension(8) :: bias1 = &
  (/3.825,-2.2443,4.0799,-2.2032,0.70079,2.9906,-0.40611,-0.10028/)
real, dimension(2) :: bias2 = &
  (/-8.4105,6.4664/)
real, dimension(1) :: bias3 = &
  (/-3.177/)
contains
subroutine fnet_CO_initall()
end subroutine fnet_CO_initall
subroutine fnet_CO_engine(inarray, outarray, init)
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
end subroutine fnet_CO_engine
end module fnet_CO
