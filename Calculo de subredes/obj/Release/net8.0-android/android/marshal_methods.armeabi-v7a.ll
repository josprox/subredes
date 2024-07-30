; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [125 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [250 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 115
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 50
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 110
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 62
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 93
	i32 270014963, ; 9: OneSignalSDK.DotNet.Android => 0x101819f3 => 55
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 58
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 356389973, ; 15: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 115
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 101
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 426620334, ; 19: OneSignalSDK.DotNet.Core => 0x196db5ae => 56
	i32 435591531, ; 20: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 436088230, ; 21: OneSignalSDK.DotNet => 0x19fe2da6 => 57
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 456227837, ; 24: System.Web.HttpUtility.dll => 0x1b317bfd => 117
	i32 469710990, ; 25: System.dll => 0x1bff388e => 119
	i32 498788369, ; 26: System.ObjectModel => 0x1dbae811 => 107
	i32 500358224, ; 27: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 28: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 539058512, ; 30: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 592146354, ; 31: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 32: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 66
	i32 627931235, ; 34: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 35: System.Collections.Concurrent => 0x2814a96c => 87
	i32 688181140, ; 36: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 37: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 38: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 39: System.Runtime.Loader.dll => 0x2b15ed29 => 111
	i32 759454413, ; 40: System.Net.Requests => 0x2d445acd => 105
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 98
	i32 777317022, ; 42: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 43: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 823281589, ; 44: System.Private.Uri.dll => 0x311247b5 => 108
	i32 830298997, ; 45: System.IO.Compression.Brotli => 0x317d5b75 => 97
	i32 904024072, ; 46: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 926902833, ; 47: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 79
	i32 1028951442, ; 51: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1029334545, ; 52: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1044663988, ; 54: System.Linq.Expressions.dll => 0x3e444eb4 => 99
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 71
	i32 1082857460, ; 56: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 57: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 58: System => 0x41761b2c => 119
	i32 1118262833, ; 59: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 60: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 61: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 76
	i32 1203215381, ; 62: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 63: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 64: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 65: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 67
	i32 1324164729, ; 66: System.Linq => 0x4eed2679 => 100
	i32 1373134921, ; 67: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 79
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 63
	i32 1430672901, ; 70: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 71: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 72: System.Collections.Immutable.dll => 0x5718a9ef => 88
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1470490898, ; 75: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1479771757, ; 76: System.Collections.Immutable => 0x5833866d => 88
	i32 1480492111, ; 77: System.IO.Compression.Brotli.dll => 0x583e844f => 97
	i32 1493001747, ; 78: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 79: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 80: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 114
	i32 1551623176, ; 81: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1560353690, ; 82: OneSignalSDK.DotNet.Android.dll => 0x5d011b9a => 55
	i32 1622152042, ; 83: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 73
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 82
	i32 1634654947, ; 85: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 65
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 102
	i32 1639986890, ; 88: System.Text.RegularExpressions => 0x61c036ca => 114
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 112
	i32 1658251792, ; 90: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 83
	i32 1677501392, ; 91: System.Net.Primitives.dll => 0x63fca3d0 => 104
	i32 1679769178, ; 92: System.Security.Cryptography => 0x641f3e5a => 113
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 61
	i32 1736233607, ; 94: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 95: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 96: System.Diagnostics.TraceSource.dll => 0x69239124 => 96
	i32 1766324549, ; 97: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1770582343, ; 98: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 99: Mono.Android.Runtime.dll => 0x6a216153 => 123
	i32 1782862114, ; 100: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 101: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1793755602, ; 102: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 103: Xamarin.AndroidX.Loader => 0x6bcd3296 => 73
	i32 1813058853, ; 104: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 83
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 77
	i32 1828688058, ; 107: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1842015223, ; 108: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 109: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 110: System.Linq.Expressions => 0x6ec71a65 => 99
	i32 1875935024, ; 111: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 112: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1968388702, ; 113: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2003115576, ; 114: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 71
	i32 2025202353, ; 116: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 117: System.Private.Xml => 0x79eb68ee => 109
	i32 2055257422, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2066184531, ; 119: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 120: System.Diagnostics.TraceSource => 0x7b6f419e => 96
	i32 2079903147, ; 121: System.Runtime.dll => 0x7bf8cdab => 112
	i32 2090596640, ; 122: System.Numerics.Vectors => 0x7c9bf920 => 106
	i32 2127167465, ; 123: System.Console => 0x7ec9ffe9 => 94
	i32 2140476313, ; 124: OneSignalSDK.DotNet.Core.dll => 0x7f951399 => 56
	i32 2159891885, ; 125: Microsoft.Maui => 0x80bd55ad => 48
	i32 2169148018, ; 126: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 127: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 128: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 129: System.ObjectModel.dll => 0x82b6c85e => 107
	i32 2201107256, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 85
	i32 2201231467, ; 131: System.Net.Http => 0x8334206b => 102
	i32 2207618523, ; 132: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 133: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2270573516, ; 134: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 135: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 78
	i32 2298471582, ; 136: System.Net.Mail => 0x88ffe49e => 103
	i32 2303942373, ; 137: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 138: System.Private.CoreLib.dll => 0x896b7878 => 121
	i32 2349911137, ; 139: OneSignalSDK.DotNet.Android.Core.Binding => 0x8c10cc61 => 51
	i32 2353062107, ; 140: System.Net.Primitives => 0x8c40e0db => 104
	i32 2368005991, ; 141: System.Xml.ReaderWriter.dll => 0x8d24e767 => 118
	i32 2371007202, ; 142: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2395872292, ; 143: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 144: System.Web.HttpUtility => 0x8f24faee => 117
	i32 2427813419, ; 145: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 146: System.Console.dll => 0x912896e5 => 94
	i32 2471841756, ; 147: netstandard.dll => 0x93554fdc => 120
	i32 2475788418, ; 148: Java.Interop.dll => 0x93918882 => 122
	i32 2480646305, ; 149: Microsoft.Maui.Controls => 0x93dba8a1 => 46
	i32 2550873716, ; 150: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 151: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 85
	i32 2617129537, ; 153: System.Private.Xml.dll => 0x9bfe3a41 => 109
	i32 2620871830, ; 154: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 65
	i32 2626831493, ; 155: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 156: System.Runtime.Loader => 0x9ec4cf01 => 111
	i32 2732626843, ; 157: Xamarin.AndroidX.Activity => 0xa2e0939b => 58
	i32 2737747696, ; 158: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2752995522, ; 159: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 160: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 47
	i32 2764765095, ; 161: Microsoft.Maui.dll => 0xa4caf7a7 => 48
	i32 2778768386, ; 162: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 81
	i32 2785988530, ; 163: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 164: Microsoft.Maui.Graphics => 0xa7008e0b => 50
	i32 2806116107, ; 165: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2809624274, ; 166: OneSignalSDK.DotNet.Android.Notifications.Binding => 0xa77776d2 => 54
	i32 2810250172, ; 167: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 63
	i32 2831556043, ; 168: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 169: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 81
	i32 2861189240, ; 170: Microsoft.Maui.Essentials => 0xaa8a4878 => 49
	i32 2868488919, ; 171: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 172: System.Private.CoreLib => 0xad6f1e8a => 121
	i32 2916838712, ; 173: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 82
	i32 2919462931, ; 174: System.Numerics.Vectors.dll => 0xae037813 => 106
	i32 2956865972, ; 175: OneSignalSDK.DotNet.Android.Core.Binding.dll => 0xb03e31b4 => 51
	i32 2959614098, ; 176: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2978675010, ; 177: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 67
	i32 3038032645, ; 178: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 179: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 74
	i32 3059408633, ; 180: Mono.Android.Runtime => 0xb65adef9 => 123
	i32 3059793426, ; 181: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3077302341, ; 182: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3085677078, ; 183: OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll => 0xb7ebb216 => 52
	i32 3178803400, ; 184: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 75
	i32 3220365878, ; 185: System.Threading => 0xbff2e236 => 116
	i32 3258312781, ; 186: Xamarin.AndroidX.CardView => 0xc235e84d => 61
	i32 3303704087, ; 187: Calculo de subredes.dll => 0xc4ea8617 => 86
	i32 3305363605, ; 188: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 189: System.Net.Requests.dll => 0xc5b097e4 => 105
	i32 3317135071, ; 190: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 66
	i32 3346324047, ; 191: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 76
	i32 3357674450, ; 192: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 193: Xamarin.AndroidX.Core => 0xc86c06e3 => 64
	i32 3366347497, ; 194: Java.Interop => 0xc8a662e9 => 122
	i32 3374999561, ; 195: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 78
	i32 3381016424, ; 196: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3393046787, ; 197: OneSignalSDK.DotNet.Android.Location.Binding => 0xca3dc903 => 53
	i32 3428513518, ; 198: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3430777524, ; 199: netstandard => 0xcc7d82b4 => 120
	i32 3452344032, ; 200: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 45
	i32 3463511458, ; 201: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 202: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 124
	i32 3479583265, ; 204: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 205: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3501697948, ; 206: OneSignalSDK.DotNet.Android.Location.Binding.dll => 0xd0b7ab9c => 53
	i32 3562733627, ; 207: Calculo de subredes => 0xd45b003b => 86
	i32 3580758918, ; 208: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 209: System.Linq.dll => 0xd715a361 => 100
	i32 3625673393, ; 210: OneSignalSDK.DotNet.Android.Notifications.Binding.dll => 0xd81b62b1 => 54
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3643446276, ; 212: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 213: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 75
	i32 3657292374, ; 214: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3672681054, ; 215: Mono.Android.dll => 0xdae8aa5e => 124
	i32 3697841164, ; 216: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 217: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 74
	i32 3732890190, ; 218: OneSignalSDK.DotNet.Android.InAppMessages.Binding => 0xde7f624e => 52
	i32 3748608112, ; 219: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3786282454, ; 220: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 62
	i32 3792276235, ; 221: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3800979733, ; 222: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 45
	i32 3817368567, ; 223: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 224: System.Security.Cryptography.dll => 0xe3df9d2b => 113
	i32 3841636137, ; 225: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3844307129, ; 226: System.Net.Mail.dll => 0xe52378b9 => 103
	i32 3849253459, ; 227: System.Runtime.InteropServices.dll => 0xe56ef253 => 110
	i32 3875151090, ; 228: OneSignalSDK.DotNet.dll => 0xe6fa1cf2 => 57
	i32 3889960447, ; 229: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 230: System.Collections.Concurrent.dll => 0xe839deed => 87
	i32 3896760992, ; 231: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 64
	i32 3928044579, ; 232: System.Xml.ReaderWriter => 0xea213423 => 118
	i32 3931092270, ; 233: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 77
	i32 3955647286, ; 234: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 3980434154, ; 235: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 236: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 237: System.Memory => 0xeff49a63 => 101
	i32 4046471985, ; 238: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 47
	i32 4073602200, ; 239: System.Threading.dll => 0xf2ce3c98 => 116
	i32 4094352644, ; 240: Microsoft.Maui.Essentials.dll => 0xf40add04 => 49
	i32 4100113165, ; 241: System.Private.Uri => 0xf462c30d => 108
	i32 4102112229, ; 242: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 243: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 244: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4150914736, ; 245: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 246: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 72
	i32 4213026141, ; 247: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4271975918, ; 248: Microsoft.Maui.Controls.dll => 0xfea12dee => 46
	i32 4292120959 ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 72
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [250 x i32] [
	i32 115, ; 0
	i32 33, ; 1
	i32 50, ; 2
	i32 110, ; 3
	i32 62, ; 4
	i32 80, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 93, ; 8
	i32 55, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 58, ; 12
	i32 15, ; 13
	i32 69, ; 14
	i32 14, ; 15
	i32 115, ; 16
	i32 101, ; 17
	i32 34, ; 18
	i32 56, ; 19
	i32 26, ; 20
	i32 57, ; 21
	i32 90, ; 22
	i32 68, ; 23
	i32 117, ; 24
	i32 119, ; 25
	i32 107, ; 26
	i32 13, ; 27
	i32 7, ; 28
	i32 44, ; 29
	i32 41, ; 30
	i32 21, ; 31
	i32 35, ; 32
	i32 66, ; 33
	i32 19, ; 34
	i32 87, ; 35
	i32 1, ; 36
	i32 16, ; 37
	i32 4, ; 38
	i32 111, ; 39
	i32 105, ; 40
	i32 98, ; 41
	i32 25, ; 42
	i32 43, ; 43
	i32 108, ; 44
	i32 97, ; 45
	i32 91, ; 46
	i32 28, ; 47
	i32 69, ; 48
	i32 90, ; 49
	i32 79, ; 50
	i32 40, ; 51
	i32 3, ; 52
	i32 59, ; 53
	i32 99, ; 54
	i32 71, ; 55
	i32 92, ; 56
	i32 84, ; 57
	i32 119, ; 58
	i32 16, ; 59
	i32 22, ; 60
	i32 76, ; 61
	i32 20, ; 62
	i32 18, ; 63
	i32 2, ; 64
	i32 67, ; 65
	i32 100, ; 66
	i32 32, ; 67
	i32 79, ; 68
	i32 63, ; 69
	i32 0, ; 70
	i32 6, ; 71
	i32 88, ; 72
	i32 98, ; 73
	i32 60, ; 74
	i32 44, ; 75
	i32 88, ; 76
	i32 97, ; 77
	i32 10, ; 78
	i32 5, ; 79
	i32 114, ; 80
	i32 25, ; 81
	i32 55, ; 82
	i32 73, ; 83
	i32 82, ; 84
	i32 36, ; 85
	i32 65, ; 86
	i32 102, ; 87
	i32 114, ; 88
	i32 112, ; 89
	i32 83, ; 90
	i32 104, ; 91
	i32 113, ; 92
	i32 61, ; 93
	i32 23, ; 94
	i32 1, ; 95
	i32 96, ; 96
	i32 80, ; 97
	i32 41, ; 98
	i32 123, ; 99
	i32 17, ; 100
	i32 68, ; 101
	i32 9, ; 102
	i32 73, ; 103
	i32 84, ; 104
	i32 83, ; 105
	i32 77, ; 106
	i32 42, ; 107
	i32 29, ; 108
	i32 26, ; 109
	i32 99, ; 110
	i32 8, ; 111
	i32 89, ; 112
	i32 37, ; 113
	i32 5, ; 114
	i32 71, ; 115
	i32 0, ; 116
	i32 109, ; 117
	i32 70, ; 118
	i32 4, ; 119
	i32 96, ; 120
	i32 112, ; 121
	i32 106, ; 122
	i32 94, ; 123
	i32 56, ; 124
	i32 48, ; 125
	i32 12, ; 126
	i32 43, ; 127
	i32 42, ; 128
	i32 107, ; 129
	i32 85, ; 130
	i32 102, ; 131
	i32 14, ; 132
	i32 38, ; 133
	i32 8, ; 134
	i32 78, ; 135
	i32 103, ; 136
	i32 18, ; 137
	i32 121, ; 138
	i32 51, ; 139
	i32 104, ; 140
	i32 118, ; 141
	i32 37, ; 142
	i32 13, ; 143
	i32 117, ; 144
	i32 10, ; 145
	i32 94, ; 146
	i32 120, ; 147
	i32 122, ; 148
	i32 46, ; 149
	i32 11, ; 150
	i32 20, ; 151
	i32 85, ; 152
	i32 109, ; 153
	i32 65, ; 154
	i32 15, ; 155
	i32 111, ; 156
	i32 58, ; 157
	i32 60, ; 158
	i32 21, ; 159
	i32 47, ; 160
	i32 48, ; 161
	i32 81, ; 162
	i32 27, ; 163
	i32 50, ; 164
	i32 6, ; 165
	i32 54, ; 166
	i32 63, ; 167
	i32 19, ; 168
	i32 81, ; 169
	i32 49, ; 170
	i32 36, ; 171
	i32 121, ; 172
	i32 82, ; 173
	i32 106, ; 174
	i32 51, ; 175
	i32 93, ; 176
	i32 67, ; 177
	i32 34, ; 178
	i32 74, ; 179
	i32 123, ; 180
	i32 91, ; 181
	i32 12, ; 182
	i32 52, ; 183
	i32 75, ; 184
	i32 116, ; 185
	i32 61, ; 186
	i32 86, ; 187
	i32 7, ; 188
	i32 105, ; 189
	i32 66, ; 190
	i32 76, ; 191
	i32 24, ; 192
	i32 64, ; 193
	i32 122, ; 194
	i32 78, ; 195
	i32 3, ; 196
	i32 53, ; 197
	i32 39, ; 198
	i32 120, ; 199
	i32 45, ; 200
	i32 11, ; 201
	i32 92, ; 202
	i32 124, ; 203
	i32 24, ; 204
	i32 23, ; 205
	i32 53, ; 206
	i32 86, ; 207
	i32 31, ; 208
	i32 100, ; 209
	i32 54, ; 210
	i32 70, ; 211
	i32 28, ; 212
	i32 75, ; 213
	i32 38, ; 214
	i32 124, ; 215
	i32 33, ; 216
	i32 74, ; 217
	i32 52, ; 218
	i32 95, ; 219
	i32 62, ; 220
	i32 89, ; 221
	i32 45, ; 222
	i32 35, ; 223
	i32 113, ; 224
	i32 40, ; 225
	i32 103, ; 226
	i32 110, ; 227
	i32 57, ; 228
	i32 32, ; 229
	i32 87, ; 230
	i32 64, ; 231
	i32 118, ; 232
	i32 77, ; 233
	i32 59, ; 234
	i32 27, ; 235
	i32 9, ; 236
	i32 101, ; 237
	i32 47, ; 238
	i32 116, ; 239
	i32 49, ; 240
	i32 108, ; 241
	i32 22, ; 242
	i32 17, ; 243
	i32 39, ; 244
	i32 29, ; 245
	i32 72, ; 246
	i32 95, ; 247
	i32 46, ; 248
	i32 72 ; 249
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
