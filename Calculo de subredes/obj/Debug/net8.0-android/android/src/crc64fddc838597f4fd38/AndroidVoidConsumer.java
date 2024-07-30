package crc64fddc838597f4fd38;


public class AndroidVoidConsumer
	extends crc64fddc838597f4fd38.AndroidConsumer_1
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidVoidConsumer, OneSignalSDK.DotNet.Android", AndroidVoidConsumer.class, __md_methods);
	}


	public AndroidVoidConsumer ()
	{
		super ();
		if (getClass () == AndroidVoidConsumer.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidVoidConsumer, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}

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
