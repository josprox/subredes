package mono.com.onesignal.notifications;


public class INotificationLifecycleListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.notifications.INotificationLifecycleListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onWillDisplay:(Lcom/onesignal/notifications/INotificationWillDisplayEvent;)V:GetOnWillDisplay_Lcom_onesignal_notifications_INotificationWillDisplayEvent_Handler:Com.OneSignal.Android.Notifications.INotificationLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("Com.OneSignal.Android.Notifications.INotificationLifecycleListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", INotificationLifecycleListenerImplementor.class, __md_methods);
	}


	public INotificationLifecycleListenerImplementor ()
	{
		super ();
		if (getClass () == INotificationLifecycleListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.OneSignal.Android.Notifications.INotificationLifecycleListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", "", this, new java.lang.Object[] {  });
		}
	}


	public void onWillDisplay (com.onesignal.notifications.INotificationWillDisplayEvent p0)
	{
		n_onWillDisplay (p0);
	}

	private native void n_onWillDisplay (com.onesignal.notifications.INotificationWillDisplayEvent p0);

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
