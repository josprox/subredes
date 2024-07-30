package crc64fddc838597f4fd38;


public class AndroidBoolConsumer
	extends crc64fddc838597f4fd38.AndroidConsumer_1
	implements
		mono.android.IGCUserPeer,
		java.util.function.Consumer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_accept:(Ljava/lang/Object;)V:GetAccept_Ljava_lang_Object_Handler:Java.Util.Functions.IConsumerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"n_andThen:(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;:GetAndThen_Ljava_util_function_Consumer_Handler:Java.Util.Functions.IConsumer, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidBoolConsumer, OneSignalSDK.DotNet.Android", AndroidBoolConsumer.class, __md_methods);
	}


	public AndroidBoolConsumer ()
	{
		super ();
		if (getClass () == AndroidBoolConsumer.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidBoolConsumer, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void accept (java.lang.Object p0)
	{
		n_accept (p0);
	}

	private native void n_accept (java.lang.Object p0);


	public java.util.function.Consumer andThen (java.util.function.Consumer p0)
	{
		return n_andThen (p0);
	}

	private native java.util.function.Consumer n_andThen (java.util.function.Consumer p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
