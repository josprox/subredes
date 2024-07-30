package mono.com.onesignal.inAppMessages;


public class IInAppMessageClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.inAppMessages.IInAppMessageClickListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onClick:(Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;)V:GetOnClick_Lcom_onesignal_inAppMessages_IInAppMessageClickEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageClickListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("Com.OneSignal.Android.InAppMessages.IInAppMessageClickListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", IInAppMessageClickListenerImplementor.class, __md_methods);
	}


	public IInAppMessageClickListenerImplementor ()
	{
		super ();
		if (getClass () == IInAppMessageClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.OneSignal.Android.InAppMessages.IInAppMessageClickListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", "", this, new java.lang.Object[] {  });
		}
	}


	public void onClick (com.onesignal.inAppMessages.IInAppMessageClickEvent p0)
	{
		n_onClick (p0);
	}

	private native void n_onClick (com.onesignal.inAppMessages.IInAppMessageClickEvent p0);

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
