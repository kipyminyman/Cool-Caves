#version 430 core

layout(points) in;
layout(triangle_strip, max_vertices = 15) out;
layout(rgba32f, binding = 1) uniform image3D img_output;


uniform mat4 view;
uniform mat4 proj;

out vec3 f_pos;

uniform uint ttt[256 * 2] = {
    3435973836, 3435973836,
    138202316, 3435973836,
    27053260, 3435973836,
    406421964, 3435973836,
    313314508, 3435973836,
    137439948, 3435973836,
    2459969996, 3435973836,
    674408617, 2362232012,
    992791756, 3435973836,
    187216076, 3435973836,
    419576780, 3435973836,
    455187352, 3167538380,
    974889932, 3435973836,
    168856203, 2899102924,
    956545466, 2630667468,
    2561313740, 3435973836,
    1200409804, 3435973836,
    1124545740, 3435973836,
    26757068, 3435973836,
    1100247411, 483183820,
    313018316, 3435973836,
    879952914, 2899102924,
    2460549764, 2093796556,
    714250023, 932498636,
    2222174924, 3435973836,
    3027969056, 1288490188,
    2417510179, 3167538380,
    1203325851, 690080972,
    974371448, 1288490188,
    463555344, 1203031244,
    1200163739, 2869152972,
    1203026331, 2899102924,
    2504838348, 3435973836,
    2504033228, 3435973836,
    88166604, 3435973836,
    2236101937, 1556925644,
    313087180, 3435973836,
    813771337, 1556925644,
    1386562112, 751619276,
    710092085, 1128844492,
    2504145868, 3435973836,
    186682185, 1556925644,
    88085795, 3167538380,
    559044648, 3028667596,
    2746880917, 1288490188,
    1230012810, 414895308,
    1409616731, 2869152972,
    1418037928, 3167538380,
    2542107084, 3435973836,
    2466861911, 1020054732,
    125835029, 2093796556,
    355686348, 3435973836,
    2542360481, 751619276,
    2703839315, 91475148,
    2150114693, 2052246732,
    710038325, 2093796556,
    2035779899, 751619276,
    2507764370, 41667788,
    598743063, 2170014924,
    2988119921, 1556925644,
    2508740513, 976997580,
    1459947899, 17480204,
    3121284005, 134698764,
    3126310348, 3435973836,
    2791099596, 3435973836,
    137733836, 3435973836,
    2417338060, 3435973836,
    405903450, 1825361100,
    374497740, 3435973836,
    374416944, 2362232012,
    2522416642, 1825361100,
    1501921874, 1663618252,
    599418316, 3435973836,
    2961907878, 1556925644,
    26360666, 1825361100,
    1516343963, 697027788,
    1672893265, 1020054732,
    145798405, 364301516,
    996161030, 1348062412,
    1704369081, 2362232012,
    1516533964, 3435973836,
    1124365157, 2899102924,
    419800708, 2093796556,
    2790364951, 932498636,
    1629901127, 2362232012,
    307570224, 1128778956,
    2222523654, 1344720076,
    1939313714, 2509645468,
    992445606, 1556925644,
    1516532290, 41667788,
    26507299, 3047607500,
    2451157652, 3082050156,
    2222175541, 364301516,
    1370863120, 3082028220,
    93349123, 1801684092,
    1704368967, 2545536204,
    2761312972, 3435973836,
    1248107016, 1020054732,
    2686083172, 214748364,
    2199393926, 1176161484,
    345056294, 1288490188,
    813771044, 2456079564,
    38020812, 3435973836,
    2200446018, 1825361100,
    2761581746, 1020054732,
    136481609, 2762394828,
    991958534, 1176161484,
    1679170120, 303794972,
    2521380497, 996396236,
    2333610166, 420766748,
    996368390, 1288490188,
    1686857932, 3435973836,
    2053606025, 2899102924,
    120629001, 2793065676,
    2792466199, 2172701900,
    2793042199, 1020054732,
    308373528, 2556939468,
    647139687, 2425582492,
    2013726304, 751619276,
    1931899596, 3435973836,
    599419048, 2556939468,
    544373513, 1987746428,
    402749466, 1987716028,
    2988119974, 376556748,
    2305320849, 1801655148,
    152790988, 3435973836,
    2013726267, 190893260,
    2070727884, 3435973836,
    1992084684, 3435973836,
    814446284, 3435973836,
    26965708, 3435973836,
    2174235063, 1825361100,
    2703669196, 3435973836,
    312674411, 2093796556,
    688040299, 2093796556,
    1802675112, 983092428,
    1916151756, 3435973836,
    1887920226, 214748364,
    660748033, 2630667468,
    371295769, 2289487052,
    2808747795, 2093796556,
    2808183320, 1896402124,
    57702922, 2527579340,
    1990699146, 2630667468,
    1749780172, 3435973836,
    917702148, 1825361100,
    2260223632, 483183820,
    2489934739, 456576204,
    1749465130, 483183820,
    312675078, 2957429964,
    1266969346, 2460601548,
    2839163540, 993412668,
    2184725062, 751619276,
    69493452, 3435973836,
    419574820, 1681444044,
    423707172, 1825361100,
    2167955844, 1721879756,
    2701788768, 1288490188,
    1177827434, 809085244,
    2839979212, 3435973836,
    1230465996, 3435973836,
    137663927, 1825361100,
    1343570038, 3167538380,
    3077059637, 1125502156,
    2504659574, 3167538380,
    1802578440, 882232524,
    1991592514, 2751646924,
    881022002, 1515370348,
    1916232276, 2630667468,
    2504033798, 646433996,
    908293653, 88132812,
    1652983585, 2223314316,
    2504660503, 1631046860,
    379680272, 2020644172,
    1084531971, 2795976620,
    1990699092, 2760559820,
    1767291320, 2630667468,
    917529349, 1620430028,
    192961281, 1433128140,
    1798714707, 483183820,
    313088923, 2337721548,
    187722505, 1701384876,
    3092993664, 1515323996,
    1798714666, 978570444,
    1486170198, 595774668,
    2506711046, 751619276,
    360808534, 2206360204,
    358749900, 3435973836,
    325151288, 1701415276,
    2701788821, 90229964,
    59075276, 3435973836,
    2775370956, 3435973836,
    3047644108, 3435973836,
    3047912835, 214748364,
    1534438169, 214748364,
    2807740312, 405916876,
    2972414325, 483183820,
    137438999, 1462488268,
    2539202448, 582470860,
    1965501273, 589862956,
    631387447, 1556925644,
    2181583495, 1512426700,
    2417337171, 1940049100,
    2552832391, 707097900,
    324236748, 3435973836,
    141586711, 1556925644,
    2419668307, 2093796556,
    2557843404, 3435973836,
    1480960171, 2362232012,
    1346744410, 3140537548,
    26757770, 3125136588,
    2873771443, 1229009228,
    621970731, 2220412108,
    78689093, 2997965244,
    38820139, 1415100508,
    2488447948, 3435973836,
    631460404, 1401212108,
    1512383554, 214748364,
    975395384, 1415053724,
    1512383513, 692243660,
    2220380981, 483183820,
    72418764, 3435973836,
    2220381072, 1345703116,
    2489109708, 3435973836,
    1265933210, 3167538380,
    137664411, 2041302220,
    447853588, 122408140,
    826492954, 1196141388,
    1266267282, 3105017036,
    2538190737, 2997946428,
    3075162660, 214748364,
    3075162755, 1126485196,
    698513699, 2001325260,
    2591650978, 2020614268,
    933470836, 2711634092,
    438858956, 3435973836,
    1226053489, 1020054732,
    1226053384, 410111180,
    1077363660, 3435973836,
    1216138444, 3435973836,
    2592782540, 3435973836,
    814980025, 2899102924,
    27306122, 3167538380,
    833305292, 3435973836,
    313637275, 2362232012,
    814979858, 2461650124,
    45616076, 3435973836,
    851233996, 3435973836,
    595757736, 2630667468,
    2585825996, 3435973836,
    595757569, 2175323340,
    439143628, 3435973836,
    327751884, 3435973836,
    152882380, 3435973836,
    59559116, 3435973836,
    3435973836, 3435973836
};

vec3 offsetTable[12] = {
	vec3(.5, 0, 0),
	vec3(1, .5, 0),
	vec3(.5, 1, 0),
	vec3(0, .5, 0),
	vec3(.5, 0, 1),
	vec3(1, .5, 1),
	vec3(.5, 1, 1),
	vec3(0, .5, 1),
	vec3(0, 0, .5),
	vec3(1, 0, .5),
	vec3(1, 1, .5),
	vec3(0, 1, .5)
};

void main()
{
    int config_number = int(imageLoad(img_output, ivec3(gl_in[0].gl_Position.xyz)).x);
    uint tri_element[16];
    for (int i = 0; i < 16; i++) {
        tri_element[i] = (ttt[2 * config_number + uint(i >= 8)] << ((i % 8) * 4)) >> 28;
    }

    for (int c = 0; c < 15 && tri_element[c] != 12; c++) {
        gl_Position = gl_in[0].gl_Position;
        gl_Position += vec4(offsetTable[tri_element[c]].zyx, 0) - vec4(12.5, 12.5, 12.5, 0);
        f_pos = gl_Position.xyz;
        gl_Position = proj * view * gl_Position;
        EmitVertex();
    }

    EndPrimitive();
}
