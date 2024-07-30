package crc64fddc838597f4fd38;


public class AndroidUserManager_InternalUserChangedHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.user.state.IUserStateObserver
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onUserStateChange:(Lcom/onesignal/user/state/UserChangedState;)V:GetOnUserStateChange_Lcom_onesignal_user_state_UserChangedState_Handler:Com.OneSignal.Android.User.State.IUserStateObserverInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidUserManager+InternalUserChangedHandler, OneSignalSDK.DotNet.Android", AndroidUserManager_InternalUserChangedHandler.class, __md_methods);
	}


	public AndroidUserManager_InternalUserChangedHandler ()
	{
		super ();
		if (getClass () == AndroidUserManager_InternalUserChangedHandler.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidUserManager+InternalUserChangedHandler, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onUserStateChange (com.onesignal.user.state.UserChangedState p0)
	{
		n_onUserStateChange (p0);
	}

	private native void n_onUserStateChange (com.onesignal.user.state.UserChangedState p0);

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
