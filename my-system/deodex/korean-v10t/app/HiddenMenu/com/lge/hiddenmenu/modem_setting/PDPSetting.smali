.class public Lcom/lge/hiddenmenu/modem_setting/PDPSetting;
.super Landroid/app/ListActivity;
.source "PDPSetting.java"


# static fields
.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    const-string v4, "PDPsetting"

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 74
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, packageName2:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_19

    .line 78
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 81
    :cond_19
    packed-switch p1, :pswitch_data_96

    .line 144
    :goto_1c
    :pswitch_1c
    if-eqz v0, :cond_3d

    .line 145
    const-string v3, "com.lge.hiddenmenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->startActivity(Landroid/content/Intent;)V

    .line 148
    :cond_3d
    return-void

    .line 102
    :pswitch_3e
    :try_start_3e
    const-string v3, "PDPsetting"

    const-string v4, "Press Activate APN for Prefer App"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const-string v4, "wap"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->setApnForPreferApp(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4c} :catch_4d

    goto :goto_1c

    .line 104
    :catch_4d
    move-exception v3

    goto :goto_1c

    .line 109
    :pswitch_4f
    :try_start_4f
    const-string v3, "PDPsetting"

    const-string v4, "Press Activate APN with default APN Type"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->setOriginalPreferredApn()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5b} :catch_5c

    goto :goto_1c

    .line 111
    :catch_5c
    move-exception v3

    goto :goto_1c

    .line 119
    :pswitch_5e
    :try_start_5e
    const-string v3, "PDPsetting"

    const-string v4, "Change FastDormancysetting on"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->setFastDormancy(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_6b} :catch_6c

    goto :goto_1c

    .line 121
    :catch_6c
    move-exception v3

    goto :goto_1c

    .line 126
    :pswitch_6e
    :try_start_6e
    const-string v3, "PDPsetting"

    const-string v4, "Change FastDormancysetting off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->setFastDormancy(I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7b} :catch_7c

    goto :goto_1c

    .line 128
    :catch_7c
    move-exception v3

    goto :goto_1c

    .line 133
    :pswitch_7e
    const-string v3, "PDPsetting"

    const-string v3, "Access Point Names"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ApnSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 81
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_3e
        :pswitch_4f
        :pswitch_5e
        :pswitch_6e
        :pswitch_7e
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 43
    const v0, 0x7f060022

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 46
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 59
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 60
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 63
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
    .line 68
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/PDPSetting;->selectMenuItem(I)V

    .line 69
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 52
    return-void
.end method
