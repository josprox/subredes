package mono.com.onesignal.notifications;


public class INotificationClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.notifications.INotificationClickListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onClick:(Lcom/onesignal/notifications/INotificationClickEvent;)V:GetOnClick_Lcom_onesignal_notifications_INotificationClickEvent_Handler:Com.OneSignal.Android.Notifications.INotificationClickListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("Com.OneSignal.Android.Notifications.INotificationClickListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", INotificationClickListenerImplementor.class, __md_methods);
	}


	public INotificationClickListenerImplementor ()
	{
		super ();
		if (getClass () == INotificationClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Com.OneSignal.Android.Notifications.INotificationClickListenerImplementor, OneSignalSDK.DotNet.Android.Core.Binding", "", this, new java.lang.Object[] {  });
		}
	}


	public void onClick (com.onesignal.notifications.INotificationClickEvent p0)
	{
		n_onClick (p0);
	}

	private native void n_onClick (com.onesignal.notifications.INotificationClickEvent p0);

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
