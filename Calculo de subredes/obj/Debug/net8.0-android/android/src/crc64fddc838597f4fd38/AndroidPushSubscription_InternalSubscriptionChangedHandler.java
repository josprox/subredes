package crc64fddc838597f4fd38;


public class AndroidPushSubscription_InternalSubscriptionChangedHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.user.subscriptions.IPushSubscriptionObserver
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onPushSubscriptionChange:(Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;)V:GetOnPushSubscriptionChange_Lcom_onesignal_user_subscriptions_PushSubscriptionChangedState_Handler:Com.OneSignal.Android.User.Subscriptions.IPushSubscriptionObserverInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidPushSubscription+InternalSubscriptionChangedHandler, OneSignalSDK.DotNet.Android", AndroidPushSubscription_InternalSubscriptionChangedHandler.class, __md_methods);
	}


	public AndroidPushSubscription_InternalSubscriptionChangedHandler ()
	{
		super ();
		if (getClass () == AndroidPushSubscription_InternalSubscriptionChangedHandler.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidPushSubscription+InternalSubscriptionChangedHandler, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onPushSubscriptionChange (com.onesignal.user.subscriptions.PushSubscriptionChangedState p0)
	{
		n_onPushSubscriptionChange (p0);
	}

	private native void n_onPushSubscriptionChange (com.onesignal.user.subscriptions.PushSubscriptionChangedState p0);

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
