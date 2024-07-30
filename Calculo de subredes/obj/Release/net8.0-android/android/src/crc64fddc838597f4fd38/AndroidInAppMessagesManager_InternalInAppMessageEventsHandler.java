package crc64fddc838597f4fd38;


public class AndroidInAppMessagesManager_InternalInAppMessageEventsHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.onesignal.inAppMessages.IInAppMessageClickListener,
		com.onesignal.inAppMessages.IInAppMessageLifecycleListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onClick:(Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;)V:GetOnClick_Lcom_onesignal_inAppMessages_IInAppMessageClickEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageClickListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onDidDismiss:(Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;)V:GetOnDidDismiss_Lcom_onesignal_inAppMessages_IInAppMessageDidDismissEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onDidDisplay:(Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;)V:GetOnDidDisplay_Lcom_onesignal_inAppMessages_IInAppMessageDidDisplayEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onWillDismiss:(Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;)V:GetOnWillDismiss_Lcom_onesignal_inAppMessages_IInAppMessageWillDismissEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"n_onWillDisplay:(Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;)V:GetOnWillDisplay_Lcom_onesignal_inAppMessages_IInAppMessageWillDisplayEvent_Handler:Com.OneSignal.Android.InAppMessages.IInAppMessageLifecycleListenerInvoker, OneSignalSDK.DotNet.Android.Core.Binding\n" +
			"";
		mono.android.Runtime.register ("OneSignalSDK.DotNet.Android.AndroidInAppMessagesManager+InternalInAppMessageEventsHandler, OneSignalSDK.DotNet.Android", AndroidInAppMessagesManager_InternalInAppMessageEventsHandler.class, __md_methods);
	}


	public AndroidInAppMessagesManager_InternalInAppMessageEventsHandler ()
	{
		super ();
		if (getClass () == AndroidInAppMessagesManager_InternalInAppMessageEventsHandler.class) {
			mono.android.TypeManager.Activate ("OneSignalSDK.DotNet.Android.AndroidInAppMessagesManager+InternalInAppMessageEventsHandler, OneSignalSDK.DotNet.Android", "", this, new java.lang.Object[] {  });
		}
	}


	public void onClick (com.onesignal.inAppMessages.IInAppMessageClickEvent p0)
	{
		n_onClick (p0);
	}

	private native void n_onClick (com.onesignal.inAppMessages.IInAppMessageClickEvent p0);


	public void onDidDismiss (com.onesignal.inAppMessages.IInAppMessageDidDismissEvent p0)
	{
		n_onDidDismiss (p0);
	}

	private native void n_onDidDismiss (com.onesignal.inAppMessages.IInAppMessageDidDismissEvent p0);


	public void onDidDisplay (com.onesignal.inAppMessages.IInAppMessageDidDisplayEvent p0)
	{
		n_onDidDisplay (p0);
	}

	private native void n_onDidDisplay (com.onesignal.inAppMessages.IInAppMessageDidDisplayEvent p0);


	public void onWillDismiss (com.onesignal.inAppMessages.IInAppMessageWillDismissEvent p0)
	{
		n_onWillDismiss (p0);
	}

	private native void n_onWillDismiss (com.onesignal.inAppMessages.IInAppMessageWillDismissEvent p0);


	public void onWillDisplay (com.onesignal.inAppMessages.IInAppMessageWillDisplayEvent p0)
	{
		n_onWillDisplay (p0);
	}

	private native void n_onWillDisplay (com.onesignal.inAppMessages.IInAppMessageWillDisplayEvent p0);

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
