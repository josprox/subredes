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

@assembly_image_cache = dso_local local_unnamed_addr global [351 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [696 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 240
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 298
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 346
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 262
	i32 103834273, ; 14: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 278
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 262
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 308
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 212
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 266
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 343
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 344
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 210
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 233
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 215
	i32 270014963, ; 37: OneSignalSDK.DotNet.Android => 0x101819f3 => 193
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 236
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 231
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 315
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 307891448, ; 44: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 276
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 343
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 200
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 328
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 235
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 327
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 347
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 426620334, ; 60: OneSignalSDK.DotNet.Core => 0x196db5ae => 194
	i32 435591531, ; 61: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 339
	i32 436088230, ; 62: OneSignalSDK.DotNet => 0x19fe2da6 => 195
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 216
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 229
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 70: System.dll => 0x1bff388e => 164
	i32 476646585, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 231
	i32 485140951, ; 72: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 292
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 247
	i32 495452658, ; 74: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 292
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 76: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 326
	i32 503918385, ; 77: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 320
	i32 507148113, ; 78: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 290
	i32 513247710, ; 79: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 80: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 81: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 308
	i32 530272170, ; 82: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 83: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 84: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 542030372, ; 85: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 302
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 87: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 88: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 89: Jsr305Binding => 0x213954e7 => 294
	i32 569601784, ; 90: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 275
	i32 577335427, ; 91: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 92: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 334
	i32 601371474, ; 93: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 94: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 221
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 332
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 227
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 662205335, ; 100: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 101: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 271
	i32 666292255, ; 102: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 207
	i32 672442732, ; 103: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 105: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 314
	i32 690569205, ; 106: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 107: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 310
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 305
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 112: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 329
	i32 709557578, ; 113: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 317
	i32 720511267, ; 114: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 309
	i32 722857257, ; 115: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 116: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 117: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 118: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 197
	i32 759454413, ; 119: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 120: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 121: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 122: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 338
	i32 789151979, ; 123: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 124: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 222
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 238
	i32 823281589, ; 127: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 128: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 129: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 130: System.Net.Quic => 0x31b69d60 => 71
	i32 836755697, ; 131: Xamarin.AndroidX.Lifecycle.Service => 0x31dfe0f1 => 242
	i32 843511501, ; 132: Xamarin.AndroidX.Print => 0x3246f6cd => 253
	i32 846667644, ; 133: Xamarin.Firebase.Installations.dll => 0x32771f7c => 286
	i32 873119928, ; 134: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 135: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 136: System.Net.Http.Json => 0x3463c971 => 63
	i32 882434999, ; 137: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 287
	i32 904024072, ; 138: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 139: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 140: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 341
	i32 928116545, ; 141: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 298
	i32 952186615, ; 142: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 309
	i32 966729478, ; 144: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 295
	i32 967690846, ; 145: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 235
	i32 975236339, ; 146: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 147: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 148: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 149: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 150: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 151: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 996733531, ; 152: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 291
	i32 1001831731, ; 153: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 154: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 259
	i32 1019214401, ; 155: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 156: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 157: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 316
	i32 1031528504, ; 158: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 297
	i32 1035644815, ; 159: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 205
	i32 1036359102, ; 160: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 301
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 162: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 163: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 243
	i32 1067306892, ; 164: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 165: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 166: Xamarin.Kotlin.StdLib => 0x409e66d8 => 306
	i32 1098259244, ; 167: System => 0x41761b2c => 164
	i32 1118262833, ; 168: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 329
	i32 1121599056, ; 169: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 241
	i32 1127624469, ; 170: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1141947663, ; 171: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 288
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 274
	i32 1168523401, ; 173: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 335
	i32 1170634674, ; 174: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 175: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 270
	i32 1178241025, ; 176: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 251
	i32 1203215381, ; 177: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 333
	i32 1204270330, ; 178: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 207
	i32 1208641965, ; 179: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1218932828, ; 180: Xamarin.AndroidX.Work.Work.Runtime.Ktx => 0x48a7705c => 277
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 331
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 275
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 185: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 315
	i32 1264511973, ; 186: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 265
	i32 1264890200, ; 187: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 311
	i32 1267360935, ; 188: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 269
	i32 1273260888, ; 189: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 213
	i32 1275534314, ; 190: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 310
	i32 1278448581, ; 191: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 204
	i32 1293217323, ; 192: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 224
	i32 1309188875, ; 193: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 194: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 274
	i32 1324164729, ; 195: System.Linq => 0x4eed2679 => 61
	i32 1333047053, ; 196: Xamarin.Firebase.Common => 0x4f74af0d => 279
	i32 1335329327, ; 197: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 198: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 199: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 345
	i32 1376866003, ; 200: Xamarin.AndroidX.SavedState => 0x52114ed3 => 259
	i32 1379779777, ; 201: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1379897097, ; 202: Xamarin.JavaX.Inject => 0x523f8f09 => 304
	i32 1395857551, ; 203: Xamarin.AndroidX.Media.dll => 0x5333188f => 248
	i32 1402170036, ; 204: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 205: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 217
	i32 1408764838, ; 206: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 207: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 208: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 209: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 313
	i32 1434145427, ; 210: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 211: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 295
	i32 1439761251, ; 212: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 213: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 214: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 215: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 216: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 217: es\Microsoft.Maui.Controls.resources => 0x57152abe => 319
	i32 1461234159, ; 218: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 219: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 220: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 221: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 206
	i32 1470490898, ; 222: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 223: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 224: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 225: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 226: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 260
	i32 1493001747, ; 227: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 323
	i32 1514721132, ; 228: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 318
	i32 1531040989, ; 229: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 285
	i32 1536373174, ; 230: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 231: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 232: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 233: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 234: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 338
	i32 1560353690, ; 235: OneSignalSDK.DotNet.Android.dll => 0x5d011b9a => 193
	i32 1565862583, ; 236: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 237: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 238: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 239: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 240: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 223
	i32 1592978981, ; 241: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 242: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 297
	i32 1601112923, ; 243: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 244: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 245: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 246: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 246
	i32 1622358360, ; 247: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 248: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 273
	i32 1634619362, ; 249: Xamarin.AndroidX.Room.Common => 0x616e4fe2 => 257
	i32 1635184631, ; 250: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 227
	i32 1636350590, ; 251: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 220
	i32 1639515021, ; 252: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 253: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 254: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 255: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 256: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 267
	i32 1658251792, ; 257: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 293
	i32 1670060433, ; 258: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 215
	i32 1675553242, ; 259: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 260: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 261: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 262: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 263: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 264: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 265: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 307
	i32 1701541528, ; 266: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 238
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 269: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 270: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 211
	i32 1736233607, ; 271: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 336
	i32 1736948048, ; 272: Xamarin.AndroidX.Sqlite.dll => 0x6787b950 => 263
	i32 1743415430, ; 273: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 314
	i32 1744735666, ; 274: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 275: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 276: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758026047, ; 277: Xamarin.AndroidX.Room.Runtime.dll => 0x68c9593f => 258
	i32 1758240030, ; 278: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 279: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 280: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 281: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 266
	i32 1770582343, ; 282: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 283: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 284: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 285: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 286: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 330
	i32 1788241197, ; 287: Xamarin.AndroidX.Fragment => 0x6a96652d => 229
	i32 1793755602, ; 288: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 322
	i32 1808609942, ; 289: Xamarin.AndroidX.Loader => 0x6bcd3296 => 246
	i32 1813058853, ; 290: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 306
	i32 1813201214, ; 291: Xamarin.Google.Android.Material => 0x6c13413e => 293
	i32 1818569960, ; 292: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 252
	i32 1818787751, ; 293: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 294: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 295: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 296: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 297: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 342
	i32 1847515442, ; 298: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 197
	i32 1853025655, ; 299: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 339
	i32 1858542181, ; 300: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 301: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 302: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 321
	i32 1876173635, ; 303: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 284
	i32 1879696579, ; 304: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 305: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 208
	i32 1888955245, ; 306: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 307: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 310: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 300
	i32 1910275211, ; 311: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1933215285, ; 312: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 289
	i32 1939592360, ; 313: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 314: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 315: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 261
	i32 1968388702, ; 316: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 317: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 307
	i32 1985761444, ; 318: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 199
	i32 2003115576, ; 319: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 318
	i32 2011961780, ; 320: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 321: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 243
	i32 2025202353, ; 322: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 313
	i32 2031763787, ; 323: Xamarin.Android.Glide => 0x791a414b => 196
	i32 2045470958, ; 324: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 325: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 237
	i32 2060060697, ; 326: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 327: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 317
	i32 2070888862, ; 328: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 329: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 330: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2097448633, ; 331: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 232
	i32 2124230737, ; 332: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 291
	i32 2127167465, ; 333: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 334: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 299
	i32 2140476313, ; 335: OneSignalSDK.DotNet.Core.dll => 0x7f951399 => 194
	i32 2142473426, ; 336: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 337: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 338: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 339: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 340: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 325
	i32 2174878672, ; 341: Xamarin.Firebase.Annotations => 0x81a203d0 => 278
	i32 2181898931, ; 342: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 343: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 344: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 345: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 312
	i32 2201231467, ; 346: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 347: it\Microsoft.Maui.Controls.resources => 0x839595db => 327
	i32 2217644978, ; 348: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 270
	i32 2222056684, ; 349: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 350: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 247
	i32 2252106437, ; 351: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 352: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2261435625, ; 353: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 234
	i32 2265110946, ; 354: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 355: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 356: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 198
	i32 2270573516, ; 357: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 321
	i32 2279703579, ; 358: Xamarin.AndroidX.Sqlite.Framework.dll => 0x87e1841b => 264
	i32 2279755925, ; 359: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 255
	i32 2293034957, ; 360: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 361: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 362: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 363: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 331
	i32 2305521784, ; 364: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 365: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 202
	i32 2320631194, ; 366: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 367: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 368: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2349911137, ; 369: OneSignalSDK.DotNet.Android.Core.Binding => 0x8c10cc61 => 189
	i32 2353062107, ; 370: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 371: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 372: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 373: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 374: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 375: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 326
	i32 2401565422, ; 376: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 377: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 226
	i32 2421380589, ; 378: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 379: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 213
	i32 2427813419, ; 380: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 323
	i32 2435356389, ; 381: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 382: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 383: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 384: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 385: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 386: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 216
	i32 2471841756, ; 387: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 388: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 389: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483661569, ; 390: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 288
	i32 2483742551, ; 391: Xamarin.Firebase.Messaging => 0x940ae757 => 289
	i32 2483903535, ; 392: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 393: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486410006, ; 394: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 301
	i32 2490993605, ; 395: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 396: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 397: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 240
	i32 2522472828, ; 398: Xamarin.Android.Glide.dll => 0x9659e17c => 196
	i32 2538310050, ; 399: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 400: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 324
	i32 2562349572, ; 401: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 402: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 403: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 241
	i32 2581819634, ; 404: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 269
	i32 2585220780, ; 405: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 406: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 407: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 408: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 333
	i32 2593964533, ; 409: Xamarin.Google.Dagger => 0x9a9cc1f5 => 296
	i32 2605712449, ; 410: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 312
	i32 2615233544, ; 411: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 230
	i32 2616218305, ; 412: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 413: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 414: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620111890, ; 415: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 282
	i32 2620871830, ; 416: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 220
	i32 2623491480, ; 417: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 287
	i32 2624644809, ; 418: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 225
	i32 2626831493, ; 419: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 328
	i32 2627185994, ; 420: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 421: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 422: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 236
	i32 2639764100, ; 423: Xamarin.Firebase.Encoders => 0x9d579a84 => 282
	i32 2663391936, ; 424: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 198
	i32 2663698177, ; 425: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 426: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 427: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 428: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 311
	i32 2676780864, ; 429: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 430: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 431: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 432: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 267
	i32 2715334215, ; 433: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 434: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 435: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 436: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 437: Xamarin.AndroidX.Activity => 0xa2e0939b => 200
	i32 2735172069, ; 438: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 439: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 206
	i32 2739926663, ; 440: Xamarin.AndroidX.Sqlite.Framework => 0xa34ff687 => 264
	i32 2740948882, ; 441: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 442: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 443: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 334
	i32 2758225723, ; 444: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 445: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 446: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 447: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 305
	i32 2772412848, ; 448: Xamarin.Google.Dagger.dll => 0xa53fa9b0 => 296
	i32 2778768386, ; 449: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 272
	i32 2779977773, ; 450: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 256
	i32 2785988530, ; 451: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 340
	i32 2788224221, ; 452: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 230
	i32 2801831435, ; 453: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 454: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804607052, ; 455: Xamarin.Firebase.Components.dll => 0xa72ae84c => 280
	i32 2806116107, ; 456: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 319
	i32 2809624274, ; 457: OneSignalSDK.DotNet.Android.Notifications.Binding => 0xa77776d2 => 192
	i32 2810250172, ; 458: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 217
	i32 2819470561, ; 459: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 460: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 461: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 256
	i32 2824502124, ; 462: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 463: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 332
	i32 2838993487, ; 464: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 244
	i32 2847418871, ; 465: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 299
	i32 2849599387, ; 466: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 467: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 272
	i32 2855708567, ; 468: Xamarin.AndroidX.Transition => 0xaa36a797 => 268
	i32 2861098320, ; 469: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 470: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 471: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 201
	i32 2875164099, ; 472: Jsr305Binding.dll => 0xab5f85c3 => 294
	i32 2875220617, ; 473: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883826422, ; 474: Xamarin.Firebase.Installations => 0xabe3b2f6 => 286
	i32 2884993177, ; 475: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 228
	i32 2887636118, ; 476: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 477: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 478: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 479: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 480: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 481: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2914202368, ; 482: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 285
	i32 2916838712, ; 483: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 273
	i32 2919462931, ; 484: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 485: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 203
	i32 2936416060, ; 486: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 487: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 488: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2953735189, ; 489: Xamarin.AndroidX.Lifecycle.Service.dll => 0xb00e6c15 => 242
	i32 2956865972, ; 490: OneSignalSDK.DotNet.Android.Core.Binding.dll => 0xb03e31b4 => 189
	i32 2959614098, ; 491: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 492: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 493: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 494: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 224
	i32 2987532451, ; 495: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 261
	i32 2996846495, ; 496: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 239
	i32 3016983068, ; 497: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 265
	i32 3023353419, ; 498: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 499: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 233
	i32 3038032645, ; 500: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 347
	i32 3056245963, ; 501: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 260
	i32 3057625584, ; 502: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 249
	i32 3058099980, ; 503: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 303
	i32 3059408633, ; 504: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 505: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3071899978, ; 506: Xamarin.Firebase.Common.dll => 0xb719794a => 279
	i32 3075834255, ; 507: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 508: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 325
	i32 3085677078, ; 509: OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll => 0xb7ebb216 => 190
	i32 3090735792, ; 510: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 511: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 512: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3106737866, ; 513: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 281
	i32 3111772706, ; 514: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 515: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 516: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 517: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144132135, ; 518: Xamarin.AndroidX.Sqlite => 0xbb67a627 => 263
	i32 3147165239, ; 519: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 520: GoogleGson.dll => 0xbba64c02 => 173
	i32 3155362983, ; 521: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 290
	i32 3159123045, ; 522: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 523: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 524: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 250
	i32 3192346100, ; 525: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 526: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 527: System.Data.dll => 0xbefef58f => 24
	i32 3206292531, ; 528: Xamarin.AndroidX.Work.Work.Runtime.Ktx.dll => 0xbf1c2433 => 277
	i32 3209718065, ; 529: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 530: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 223
	i32 3220365878, ; 531: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 532: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 533: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 300
	i32 3251039220, ; 534: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 535: Xamarin.AndroidX.CardView => 0xc235e84d => 211
	i32 3265493905, ; 536: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 537: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3267021929, ; 538: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 209
	i32 3277815716, ; 539: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 540: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 541: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 542: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 543: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 544: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3303704087, ; 545: Calculo de subredes.dll => 0xc4ea8617 => 0
	i32 3305363605, ; 546: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 320
	i32 3316684772, ; 547: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 548: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 221
	i32 3317144872, ; 549: System.Data => 0xc5b79d28 => 24
	i32 3331531814, ; 550: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 302
	i32 3340431453, ; 551: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 208
	i32 3345895724, ; 552: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 254
	i32 3346324047, ; 553: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 251
	i32 3353484488, ; 554: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 232
	i32 3357674450, ; 555: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 337
	i32 3358260929, ; 556: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 557: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 201
	i32 3362522851, ; 558: Xamarin.AndroidX.Core => 0xc86c06e3 => 218
	i32 3366347497, ; 559: Java.Interop => 0xc8a662e9 => 168
	i32 3371992681, ; 560: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 284
	i32 3374999561, ; 561: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 255
	i32 3381016424, ; 562: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 316
	i32 3383578424, ; 563: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 283
	i32 3393046787, ; 564: OneSignalSDK.DotNet.Android.Location.Binding => 0xca3dc903 => 191
	i32 3395150330, ; 565: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 566: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 567: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 222
	i32 3428513518, ; 568: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 569: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 570: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 571: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 225
	i32 3445260447, ; 572: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 573: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 574: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 324
	i32 3471940407, ; 575: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 576: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 577: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 337
	i32 3484440000, ; 578: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 336
	i32 3485117614, ; 579: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 580: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 581: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 214
	i32 3501239056, ; 582: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 209
	i32 3501697948, ; 583: OneSignalSDK.DotNet.Android.Location.Binding.dll => 0xd0b7ab9c => 191
	i32 3509114376, ; 584: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 585: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 586: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 587: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 588: System.Threading.Timer => 0xd432d20b => 147
	i32 3562733627, ; 589: Calculo de subredes => 0xd45b003b => 0
	i32 3570554715, ; 590: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 591: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 344
	i32 3597029428, ; 592: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 199
	i32 3598340787, ; 593: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 594: System.Linq.dll => 0xd715a361 => 61
	i32 3612947231, ; 595: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 276
	i32 3624195450, ; 596: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3625673393, ; 597: OneSignalSDK.DotNet.Android.Notifications.Binding.dll => 0xd81b62b1 => 192
	i32 3627220390, ; 598: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 253
	i32 3633644679, ; 599: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 203
	i32 3638274909, ; 600: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 601: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 237
	i32 3643446276, ; 602: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 341
	i32 3643854240, ; 603: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 250
	i32 3645089577, ; 604: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 605: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 606: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 607: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 608: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 210
	i32 3684561358, ; 609: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 214
	i32 3697841164, ; 610: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 346
	i32 3700866549, ; 611: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 612: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 219
	i32 3716563718, ; 613: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 614: Xamarin.AndroidX.Annotation => 0xdda814c6 => 202
	i32 3724971120, ; 615: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 249
	i32 3732100267, ; 616: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732890190, ; 617: OneSignalSDK.DotNet.Android.InAppMessages.Binding => 0xde7f624e => 190
	i32 3735092365, ; 618: Xamarin.AndroidX.Room.Common.dll => 0xdea0fc8d => 257
	i32 3737834244, ; 619: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 620: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 621: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758932259, ; 622: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 234
	i32 3786282454, ; 623: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 212
	i32 3792276235, ; 624: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 625: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 626: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 627: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 628: Xamarin.AndroidX.Media => 0xe3d849b1 => 248
	i32 3823082795, ; 629: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 630: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 631: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 632: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 633: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 634: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 635: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 636: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3875151090, ; 637: OneSignalSDK.DotNet.dll => 0xe6fa1cf2 => 195
	i32 3885497537, ; 638: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 639: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 268
	i32 3888767677, ; 640: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 254
	i32 3889960447, ; 641: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 345
	i32 3896106733, ; 642: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 643: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 218
	i32 3901907137, ; 644: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 645: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 646: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 271
	i32 3928044579, ; 647: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 648: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 649: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 252
	i32 3934056515, ; 650: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 304
	i32 3945713374, ; 651: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 652: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 653: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 205
	i32 3959773229, ; 654: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 239
	i32 3970018735, ; 655: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 303
	i32 3980434154, ; 656: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 340
	i32 3987592930, ; 657: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 322
	i32 4003436829, ; 658: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 659: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 204
	i32 4025784931, ; 660: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 661: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 662: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 663: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 664: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 665: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 666: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 667: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 668: Xamarin.AndroidX.Emoji2 => 0xf479582c => 226
	i32 4102112229, ; 669: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 335
	i32 4125707920, ; 670: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 330
	i32 4126470640, ; 671: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 672: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 673: System.AppContext => 0xf6318da0 => 6
	i32 4137181845, ; 674: Xamarin.AndroidX.Room.Runtime => 0xf6986295 => 258
	i32 4147896353, ; 675: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 676: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 342
	i32 4151237749, ; 677: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 678: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 679: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 680: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 681: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 682: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 245
	i32 4185676441, ; 683: System.Security => 0xf97c5a99 => 130
	i32 4192648326, ; 684: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 283
	i32 4196529839, ; 685: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 686: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 687: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 219
	i32 4258378803, ; 688: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 244
	i32 4260525087, ; 689: System.Buffers => 0xfdf2741f => 7
	i32 4269159614, ; 690: Xamarin.Firebase.Datatransport => 0xfe7634be => 281
	i32 4271975918, ; 691: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 692: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4284549794, ; 693: Xamarin.Firebase.Components => 0xff610aa2 => 280
	i32 4292120959, ; 694: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 245
	i32 4294763496 ; 695: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 228
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [696 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 240, ; 3
	i32 298, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 346, ; 9
	i32 124, ; 10
	i32 188, ; 11
	i32 102, ; 12
	i32 262, ; 13
	i32 278, ; 14
	i32 107, ; 15
	i32 262, ; 16
	i32 139, ; 17
	i32 308, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 212, ; 22
	i32 132, ; 23
	i32 266, ; 24
	i32 151, ; 25
	i32 343, ; 26
	i32 344, ; 27
	i32 18, ; 28
	i32 210, ; 29
	i32 26, ; 30
	i32 233, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 215, ; 36
	i32 193, ; 37
	i32 147, ; 38
	i32 236, ; 39
	i32 231, ; 40
	i32 315, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 276, ; 44
	i32 343, ; 45
	i32 200, ; 46
	i32 83, ; 47
	i32 328, ; 48
	i32 235, ; 49
	i32 327, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 347, ; 58
	i32 165, ; 59
	i32 194, ; 60
	i32 339, ; 61
	i32 195, ; 62
	i32 216, ; 63
	i32 12, ; 64
	i32 229, ; 65
	i32 125, ; 66
	i32 152, ; 67
	i32 113, ; 68
	i32 166, ; 69
	i32 164, ; 70
	i32 231, ; 71
	i32 292, ; 72
	i32 247, ; 73
	i32 292, ; 74
	i32 84, ; 75
	i32 326, ; 76
	i32 320, ; 77
	i32 290, ; 78
	i32 182, ; 79
	i32 150, ; 80
	i32 308, ; 81
	i32 60, ; 82
	i32 178, ; 83
	i32 51, ; 84
	i32 302, ; 85
	i32 103, ; 86
	i32 114, ; 87
	i32 40, ; 88
	i32 294, ; 89
	i32 275, ; 90
	i32 120, ; 91
	i32 334, ; 92
	i32 52, ; 93
	i32 44, ; 94
	i32 119, ; 95
	i32 221, ; 96
	i32 332, ; 97
	i32 227, ; 98
	i32 81, ; 99
	i32 136, ; 100
	i32 271, ; 101
	i32 207, ; 102
	i32 8, ; 103
	i32 73, ; 104
	i32 314, ; 105
	i32 155, ; 106
	i32 310, ; 107
	i32 154, ; 108
	i32 92, ; 109
	i32 305, ; 110
	i32 45, ; 111
	i32 329, ; 112
	i32 317, ; 113
	i32 309, ; 114
	i32 109, ; 115
	i32 129, ; 116
	i32 25, ; 117
	i32 197, ; 118
	i32 72, ; 119
	i32 55, ; 120
	i32 46, ; 121
	i32 338, ; 122
	i32 181, ; 123
	i32 222, ; 124
	i32 22, ; 125
	i32 238, ; 126
	i32 86, ; 127
	i32 43, ; 128
	i32 160, ; 129
	i32 71, ; 130
	i32 242, ; 131
	i32 253, ; 132
	i32 286, ; 133
	i32 3, ; 134
	i32 42, ; 135
	i32 63, ; 136
	i32 287, ; 137
	i32 16, ; 138
	i32 53, ; 139
	i32 341, ; 140
	i32 298, ; 141
	i32 105, ; 142
	i32 309, ; 143
	i32 295, ; 144
	i32 235, ; 145
	i32 34, ; 146
	i32 158, ; 147
	i32 85, ; 148
	i32 32, ; 149
	i32 12, ; 150
	i32 51, ; 151
	i32 291, ; 152
	i32 56, ; 153
	i32 259, ; 154
	i32 36, ; 155
	i32 177, ; 156
	i32 316, ; 157
	i32 297, ; 158
	i32 205, ; 159
	i32 301, ; 160
	i32 35, ; 161
	i32 58, ; 162
	i32 243, ; 163
	i32 173, ; 164
	i32 17, ; 165
	i32 306, ; 166
	i32 164, ; 167
	i32 329, ; 168
	i32 241, ; 169
	i32 180, ; 170
	i32 288, ; 171
	i32 274, ; 172
	i32 335, ; 173
	i32 153, ; 174
	i32 270, ; 175
	i32 251, ; 176
	i32 333, ; 177
	i32 207, ; 178
	i32 29, ; 179
	i32 277, ; 180
	i32 52, ; 181
	i32 331, ; 182
	i32 275, ; 183
	i32 5, ; 184
	i32 315, ; 185
	i32 265, ; 186
	i32 311, ; 187
	i32 269, ; 188
	i32 213, ; 189
	i32 310, ; 190
	i32 204, ; 191
	i32 224, ; 192
	i32 85, ; 193
	i32 274, ; 194
	i32 61, ; 195
	i32 279, ; 196
	i32 112, ; 197
	i32 57, ; 198
	i32 345, ; 199
	i32 259, ; 200
	i32 99, ; 201
	i32 304, ; 202
	i32 248, ; 203
	i32 19, ; 204
	i32 217, ; 205
	i32 111, ; 206
	i32 101, ; 207
	i32 102, ; 208
	i32 313, ; 209
	i32 104, ; 210
	i32 295, ; 211
	i32 71, ; 212
	i32 38, ; 213
	i32 32, ; 214
	i32 103, ; 215
	i32 73, ; 216
	i32 319, ; 217
	i32 9, ; 218
	i32 123, ; 219
	i32 46, ; 220
	i32 206, ; 221
	i32 182, ; 222
	i32 9, ; 223
	i32 43, ; 224
	i32 4, ; 225
	i32 260, ; 226
	i32 323, ; 227
	i32 318, ; 228
	i32 285, ; 229
	i32 31, ; 230
	i32 138, ; 231
	i32 92, ; 232
	i32 93, ; 233
	i32 338, ; 234
	i32 193, ; 235
	i32 49, ; 236
	i32 141, ; 237
	i32 112, ; 238
	i32 140, ; 239
	i32 223, ; 240
	i32 115, ; 241
	i32 297, ; 242
	i32 157, ; 243
	i32 76, ; 244
	i32 79, ; 245
	i32 246, ; 246
	i32 37, ; 247
	i32 273, ; 248
	i32 257, ; 249
	i32 227, ; 250
	i32 220, ; 251
	i32 64, ; 252
	i32 138, ; 253
	i32 15, ; 254
	i32 116, ; 255
	i32 267, ; 256
	i32 293, ; 257
	i32 215, ; 258
	i32 48, ; 259
	i32 70, ; 260
	i32 80, ; 261
	i32 126, ; 262
	i32 94, ; 263
	i32 121, ; 264
	i32 307, ; 265
	i32 26, ; 266
	i32 238, ; 267
	i32 97, ; 268
	i32 28, ; 269
	i32 211, ; 270
	i32 336, ; 271
	i32 263, ; 272
	i32 314, ; 273
	i32 149, ; 274
	i32 169, ; 275
	i32 4, ; 276
	i32 258, ; 277
	i32 98, ; 278
	i32 33, ; 279
	i32 93, ; 280
	i32 266, ; 281
	i32 178, ; 282
	i32 21, ; 283
	i32 41, ; 284
	i32 170, ; 285
	i32 330, ; 286
	i32 229, ; 287
	i32 322, ; 288
	i32 246, ; 289
	i32 306, ; 290
	i32 293, ; 291
	i32 252, ; 292
	i32 2, ; 293
	i32 134, ; 294
	i32 111, ; 295
	i32 179, ; 296
	i32 342, ; 297
	i32 197, ; 298
	i32 339, ; 299
	i32 58, ; 300
	i32 95, ; 301
	i32 321, ; 302
	i32 284, ; 303
	i32 39, ; 304
	i32 208, ; 305
	i32 25, ; 306
	i32 94, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 300, ; 310
	i32 10, ; 311
	i32 289, ; 312
	i32 87, ; 313
	i32 100, ; 314
	i32 261, ; 315
	i32 174, ; 316
	i32 307, ; 317
	i32 199, ; 318
	i32 318, ; 319
	i32 7, ; 320
	i32 243, ; 321
	i32 313, ; 322
	i32 196, ; 323
	i32 88, ; 324
	i32 237, ; 325
	i32 154, ; 326
	i32 317, ; 327
	i32 33, ; 328
	i32 116, ; 329
	i32 82, ; 330
	i32 232, ; 331
	i32 291, ; 332
	i32 20, ; 333
	i32 299, ; 334
	i32 194, ; 335
	i32 11, ; 336
	i32 162, ; 337
	i32 3, ; 338
	i32 186, ; 339
	i32 325, ; 340
	i32 278, ; 341
	i32 181, ; 342
	i32 179, ; 343
	i32 84, ; 344
	i32 312, ; 345
	i32 64, ; 346
	i32 327, ; 347
	i32 270, ; 348
	i32 143, ; 349
	i32 247, ; 350
	i32 157, ; 351
	i32 41, ; 352
	i32 234, ; 353
	i32 117, ; 354
	i32 175, ; 355
	i32 198, ; 356
	i32 321, ; 357
	i32 264, ; 358
	i32 255, ; 359
	i32 131, ; 360
	i32 75, ; 361
	i32 66, ; 362
	i32 331, ; 363
	i32 172, ; 364
	i32 202, ; 365
	i32 143, ; 366
	i32 106, ; 367
	i32 151, ; 368
	i32 189, ; 369
	i32 70, ; 370
	i32 156, ; 371
	i32 174, ; 372
	i32 121, ; 373
	i32 127, ; 374
	i32 326, ; 375
	i32 152, ; 376
	i32 226, ; 377
	i32 141, ; 378
	i32 213, ; 379
	i32 323, ; 380
	i32 20, ; 381
	i32 14, ; 382
	i32 135, ; 383
	i32 75, ; 384
	i32 59, ; 385
	i32 216, ; 386
	i32 167, ; 387
	i32 168, ; 388
	i32 184, ; 389
	i32 288, ; 390
	i32 289, ; 391
	i32 15, ; 392
	i32 74, ; 393
	i32 301, ; 394
	i32 6, ; 395
	i32 23, ; 396
	i32 240, ; 397
	i32 196, ; 398
	i32 91, ; 399
	i32 324, ; 400
	i32 1, ; 401
	i32 136, ; 402
	i32 241, ; 403
	i32 269, ; 404
	i32 134, ; 405
	i32 69, ; 406
	i32 146, ; 407
	i32 333, ; 408
	i32 296, ; 409
	i32 312, ; 410
	i32 230, ; 411
	i32 180, ; 412
	i32 88, ; 413
	i32 96, ; 414
	i32 282, ; 415
	i32 220, ; 416
	i32 287, ; 417
	i32 225, ; 418
	i32 328, ; 419
	i32 31, ; 420
	i32 45, ; 421
	i32 236, ; 422
	i32 282, ; 423
	i32 198, ; 424
	i32 109, ; 425
	i32 158, ; 426
	i32 35, ; 427
	i32 311, ; 428
	i32 22, ; 429
	i32 114, ; 430
	i32 57, ; 431
	i32 267, ; 432
	i32 144, ; 433
	i32 118, ; 434
	i32 120, ; 435
	i32 110, ; 436
	i32 200, ; 437
	i32 139, ; 438
	i32 206, ; 439
	i32 264, ; 440
	i32 54, ; 441
	i32 105, ; 442
	i32 334, ; 443
	i32 185, ; 444
	i32 186, ; 445
	i32 133, ; 446
	i32 305, ; 447
	i32 296, ; 448
	i32 272, ; 449
	i32 256, ; 450
	i32 340, ; 451
	i32 230, ; 452
	i32 188, ; 453
	i32 159, ; 454
	i32 280, ; 455
	i32 319, ; 456
	i32 192, ; 457
	i32 217, ; 458
	i32 163, ; 459
	i32 132, ; 460
	i32 256, ; 461
	i32 161, ; 462
	i32 332, ; 463
	i32 244, ; 464
	i32 299, ; 465
	i32 140, ; 466
	i32 272, ; 467
	i32 268, ; 468
	i32 169, ; 469
	i32 187, ; 470
	i32 201, ; 471
	i32 294, ; 472
	i32 40, ; 473
	i32 286, ; 474
	i32 228, ; 475
	i32 81, ; 476
	i32 56, ; 477
	i32 37, ; 478
	i32 97, ; 479
	i32 166, ; 480
	i32 172, ; 481
	i32 285, ; 482
	i32 273, ; 483
	i32 82, ; 484
	i32 203, ; 485
	i32 98, ; 486
	i32 30, ; 487
	i32 159, ; 488
	i32 242, ; 489
	i32 189, ; 490
	i32 18, ; 491
	i32 127, ; 492
	i32 119, ; 493
	i32 224, ; 494
	i32 261, ; 495
	i32 239, ; 496
	i32 265, ; 497
	i32 165, ; 498
	i32 233, ; 499
	i32 347, ; 500
	i32 260, ; 501
	i32 249, ; 502
	i32 303, ; 503
	i32 170, ; 504
	i32 16, ; 505
	i32 279, ; 506
	i32 144, ; 507
	i32 325, ; 508
	i32 190, ; 509
	i32 125, ; 510
	i32 118, ; 511
	i32 38, ; 512
	i32 281, ; 513
	i32 115, ; 514
	i32 47, ; 515
	i32 142, ; 516
	i32 117, ; 517
	i32 263, ; 518
	i32 34, ; 519
	i32 173, ; 520
	i32 290, ; 521
	i32 95, ; 522
	i32 53, ; 523
	i32 250, ; 524
	i32 129, ; 525
	i32 153, ; 526
	i32 24, ; 527
	i32 277, ; 528
	i32 161, ; 529
	i32 223, ; 530
	i32 148, ; 531
	i32 104, ; 532
	i32 300, ; 533
	i32 89, ; 534
	i32 211, ; 535
	i32 60, ; 536
	i32 142, ; 537
	i32 209, ; 538
	i32 100, ; 539
	i32 5, ; 540
	i32 13, ; 541
	i32 122, ; 542
	i32 135, ; 543
	i32 28, ; 544
	i32 0, ; 545
	i32 320, ; 546
	i32 72, ; 547
	i32 221, ; 548
	i32 24, ; 549
	i32 302, ; 550
	i32 208, ; 551
	i32 254, ; 552
	i32 251, ; 553
	i32 232, ; 554
	i32 337, ; 555
	i32 137, ; 556
	i32 201, ; 557
	i32 218, ; 558
	i32 168, ; 559
	i32 284, ; 560
	i32 255, ; 561
	i32 316, ; 562
	i32 283, ; 563
	i32 191, ; 564
	i32 101, ; 565
	i32 123, ; 566
	i32 222, ; 567
	i32 176, ; 568
	i32 163, ; 569
	i32 167, ; 570
	i32 225, ; 571
	i32 39, ; 572
	i32 183, ; 573
	i32 324, ; 574
	i32 17, ; 575
	i32 171, ; 576
	i32 337, ; 577
	i32 336, ; 578
	i32 137, ; 579
	i32 150, ; 580
	i32 214, ; 581
	i32 209, ; 582
	i32 191, ; 583
	i32 155, ; 584
	i32 130, ; 585
	i32 19, ; 586
	i32 65, ; 587
	i32 147, ; 588
	i32 0, ; 589
	i32 47, ; 590
	i32 344, ; 591
	i32 199, ; 592
	i32 79, ; 593
	i32 61, ; 594
	i32 276, ; 595
	i32 106, ; 596
	i32 192, ; 597
	i32 253, ; 598
	i32 203, ; 599
	i32 49, ; 600
	i32 237, ; 601
	i32 341, ; 602
	i32 250, ; 603
	i32 14, ; 604
	i32 175, ; 605
	i32 68, ; 606
	i32 171, ; 607
	i32 210, ; 608
	i32 214, ; 609
	i32 346, ; 610
	i32 78, ; 611
	i32 219, ; 612
	i32 108, ; 613
	i32 202, ; 614
	i32 249, ; 615
	i32 67, ; 616
	i32 190, ; 617
	i32 257, ; 618
	i32 63, ; 619
	i32 27, ; 620
	i32 160, ; 621
	i32 234, ; 622
	i32 212, ; 623
	i32 10, ; 624
	i32 183, ; 625
	i32 11, ; 626
	i32 78, ; 627
	i32 248, ; 628
	i32 126, ; 629
	i32 83, ; 630
	i32 177, ; 631
	i32 66, ; 632
	i32 107, ; 633
	i32 65, ; 634
	i32 128, ; 635
	i32 122, ; 636
	i32 195, ; 637
	i32 77, ; 638
	i32 268, ; 639
	i32 254, ; 640
	i32 345, ; 641
	i32 8, ; 642
	i32 218, ; 643
	i32 2, ; 644
	i32 44, ; 645
	i32 271, ; 646
	i32 156, ; 647
	i32 128, ; 648
	i32 252, ; 649
	i32 304, ; 650
	i32 23, ; 651
	i32 133, ; 652
	i32 205, ; 653
	i32 239, ; 654
	i32 303, ; 655
	i32 340, ; 656
	i32 322, ; 657
	i32 29, ; 658
	i32 204, ; 659
	i32 62, ; 660
	i32 185, ; 661
	i32 90, ; 662
	i32 87, ; 663
	i32 148, ; 664
	i32 187, ; 665
	i32 36, ; 666
	i32 86, ; 667
	i32 226, ; 668
	i32 335, ; 669
	i32 330, ; 670
	i32 176, ; 671
	i32 50, ; 672
	i32 6, ; 673
	i32 258, ; 674
	i32 90, ; 675
	i32 342, ; 676
	i32 21, ; 677
	i32 162, ; 678
	i32 96, ; 679
	i32 50, ; 680
	i32 113, ; 681
	i32 245, ; 682
	i32 130, ; 683
	i32 283, ; 684
	i32 76, ; 685
	i32 27, ; 686
	i32 219, ; 687
	i32 244, ; 688
	i32 7, ; 689
	i32 281, ; 690
	i32 184, ; 691
	i32 110, ; 692
	i32 280, ; 693
	i32 245, ; 694
	i32 228 ; 695
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
