package crc64fddc838597f4fd38;


public class AndroidNotificationsManager_InternalNotificationsEventsHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.notifications.IPermissionObserver,
		com.onesignal.notifications.INotificationLifecycleListener,
		com.onesignal.notifications.INotificationClickListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onNotificationPermissionChange:(Z)V:GetOnNotificationPermissionChange_ZHandler:Com.OneSignal.Android.Notifications.IPermissionObserverInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onWillDisplay:(Lcom/onesignal/notifications/INotificationWillDisplayEvent;)V:GetOnWillDisplay_Lcom_onesignal_notifications_INotificationWillDisplayEvent_Handler:Com.OneSignal.Android.Notifications.INotificationLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onClick:(Lcom/onesignal/notifications/INotificationClickEvent;)V:GetOnClick_Lcom_onesignal_notifications_INotificationClickEvent_Handler:Com.OneSignal.Android.Notifications.INotificationClickListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidNotificationsManager+InternalNotificationsEventsHandler, OneSignalSDK.DotNet.Android", AndroidNotificationsManager_InternalNotificationsEventsHandler.class, __md_methods);
	}


	public AndroidNotificationsManager_InternalNotificationsEventsHandler ()
	{
		super ();
		if (getClass () == AndroidNotificationsManager_InternalNotificationsEventsHandler.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidNotificationsManager+InternalNotificationsEventsHandler, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onNotificationPermissionChange (boolean p0)
	{
		n_onNotificationPermissionChange (p0);
	}

	private native void n_onNotificationPermissionChange (boolean p0);


	public void onWillDisplay (com.onesignal.notifications.INotificationWillDisplayEvent p0)
	{
		n_onWillDisplay (p0);
	}

	private native void n_onWillDisplay (com.onesignal.notifications.INotificationWillDisplayEvent p0);


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
