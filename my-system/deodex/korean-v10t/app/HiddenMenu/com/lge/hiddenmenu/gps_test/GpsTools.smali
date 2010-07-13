.class public Lcom/lge/hiddenmenu/gps_test/GpsTools;
.super Landroid/app/ListActivity;
.source "GpsTools.java"


# static fields
.field public static final GPSON_SMS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.GPSONSMS_RECEIVED"

.field public static final GPSRESULT_RECEIVED:Ljava/lang/String; = "com.lge.gps.GPSRESULT_RECEIVED"

.field public static final GPSSMS_SENTACK_NOTIFIED:Ljava/lang/String; = "com.android.mms.transaction.GPSSENTACK_NOTIFIED"

.field public static final GPS_SMS_BODY:Ljava/lang/String; = "AT%GPS"

.field private static INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "GpsTools"

.field public static mXtraAutoDownloadEnabled:I = 0x0

.field public static mXtraAutoDownloadFrequency:I = 0x0

.field public static mXtraDownloadDate:J = 0x0L

.field public static mXtraEnabled:I = 0x0

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field public mContext:Landroid/content/Context;

.field private mManager:Landroid/location/LocationManager;

.field private strCTS:Ljava/lang/String;

.field private xtra_intent_receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraEnabled:I

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadEnabled:I

    .line 46
    const/16 v0, 0xa8

    sput v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraAutoDownloadFrequency:I

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mXtraDownloadDate:J

    .line 48
    const-string v0, "android.location.xtra_setting_changed"

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/GpsTools$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/gps_test/GpsTools$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsTools;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->xtra_intent_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/gps_test/GpsTools;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const-string v5, "call_xtra_setting"

    const-string v4, "gps"

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 141
    .local v1, mLocationManager:Landroid/location/LocationManager;
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mLocationManager:Landroid/location/LocationManager;
    check-cast v1, Landroid/location/LocationManager;

    .line 143
    .restart local v1       #mLocationManager:Landroid/location/LocationManager;
    packed-switch p1, :pswitch_data_ac

    .line 200
    :cond_16
    :goto_16
    return-void

    .line 145
    :pswitch_17
    if-eqz v1, :cond_16

    .line 146
    const-string v2, "gps"

    const-string v2, "set_xtra_enable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 147
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 151
    :pswitch_28
    if-eqz v1, :cond_16

    .line 152
    const-string v2, "gps"

    const-string v2, "set_xtra_disable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 153
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 157
    :pswitch_39
    if-eqz v1, :cond_16

    .line 158
    const-string v2, "gps"

    const-string v2, "request_xtra_download"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 159
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 163
    :pswitch_4a
    if-eqz v1, :cond_16

    .line 164
    const-string v2, "gps"

    const-string v2, "set_xtra_auto_download_enable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 165
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 169
    :pswitch_5b
    if-eqz v1, :cond_16

    .line 170
    const-string v2, "gps"

    const-string v2, "set_xtra_auto_download_disable"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 171
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 175
    :pswitch_6c
    if-eqz v1, :cond_16

    .line 176
    const-string v2, "gps"

    const-string v2, "set_xtra_download_frequency_024"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 177
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 181
    :pswitch_7d
    if-eqz v1, :cond_16

    .line 182
    const-string v2, "gps"

    const-string v2, "set_xtra_download_frequency_168"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 183
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_16

    .line 187
    :pswitch_8e
    if-eqz v1, :cond_16

    .line 188
    const-string v2, "gps"

    const-string v2, "set_xtra_download_frequency_1_min"

    invoke-virtual {v1, v4, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 189
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_16

    .line 192
    :pswitch_a0
    if-eqz v1, :cond_16

    .line 193
    const-string v2, "gps"

    const-string v2, "call_xtra_setting"

    invoke-virtual {v1, v4, v5, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_16

    .line 143
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_17
        :pswitch_28
        :pswitch_39
        :pswitch_4a
        :pswitch_5b
        :pswitch_6c
        :pswitch_7d
        :pswitch_8e
        :pswitch_a0
    .end packed-switch
.end method

.method private test_assertFalse(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 117
    if-eqz p1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Err ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    .line 119
    :goto_19
    return-void

    .line 118
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OK ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    goto :goto_19
.end method

.method private test_assertTrue(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 122
    if-eqz p1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OK ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    .line 124
    :goto_19
    return-void

    .line 123
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Err ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->strCTS:Ljava/lang/String;

    goto :goto_19
.end method

.method private toast(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 203
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 204
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mContext:Landroid/content/Context;

    .line 81
    const v0, 0x7f060016

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 84
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mManager:Landroid/location/LocationManager;

    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 98
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 99
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 102
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 107
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->selectMenuItem(I)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/lge/hiddenmenu/gps_test/GpsTools;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsTools;->xtra_intent_receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/hiddenmenu/gps_test/GpsTools;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 91
    return-void
.end method
