.class public Lcom/lge/hiddenmenu/module_test/ModuleTest;
.super Landroid/app/ListActivity;
.source "ModuleTest.java"


# static fields
.field private static lcd:Z = false

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field mDimScreen:I

.field mScreenOffTimeOut:I

.field private mService:Landroid/os/IHardwareService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mScreenOffTimeOut:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mDimScreen:I

    return-void
.end method

.method private getScreenSettings()V
    .registers 4

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mScreenOffTimeOut:I

    .line 46
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dim_screen"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mDimScreen:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 50
    :goto_18
    return-void

    .line 47
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ModuleTest"

    const-string v2, "Setting Not Found Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private selectMenuItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 92
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, packageName2:Ljava/lang/String;
    const/4 v3, 0x0

    .line 95
    .local v3, str:Ljava/lang/String;
    packed-switch p1, :pswitch_data_9a

    .line 162
    :goto_c
    if-eqz v0, :cond_2d

    .line 163
    const-string v4, "com.lge.hiddenmenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->startActivity(Landroid/content/Intent;)V

    .line 166
    :cond_2d
    return-void

    .line 97
    :pswitch_2e
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 98
    const-string v0, "BTDUTSetting"

    .line 99
    goto :goto_c

    .line 108
    :pswitch_33
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 109
    const-string v0, "FotaTest"

    .line 110
    goto :goto_c

    .line 114
    :pswitch_38
    const/4 v4, -0x1

    invoke-direct {p0, v4, v6}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->setScreenSettings(II)V

    .line 116
    :try_start_3c
    iget-object v4, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mService:Landroid/os/IHardwareService;

    sget-boolean v5, Lcom/lge/hiddenmenu/module_test/ModuleTest;->lcd:Z

    if-eqz v5, :cond_70

    const/16 v5, 0xff

    :goto_44
    invoke-interface {v4, v5}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_98

    .line 119
    :goto_47
    sget-boolean v4, Lcom/lge/hiddenmenu/module_test/ModuleTest;->lcd:Z

    if-eqz v4, :cond_72

    const-string v4, "ON"

    move-object v3, v4

    .line 120
    :goto_4e
    sget-boolean v4, Lcom/lge/hiddenmenu/module_test/ModuleTest;->lcd:Z

    if-nez v4, :cond_76

    const/4 v4, 0x1

    :goto_53
    sput-boolean v4, Lcom/lge/hiddenmenu/module_test/ModuleTest;->lcd:Z

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCD Backlight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_70
    move v5, v6

    .line 116
    goto :goto_44

    .line 119
    :cond_72
    const-string v4, "OFF"

    move-object v3, v4

    goto :goto_4e

    :cond_76
    move v4, v6

    .line 120
    goto :goto_53

    .line 126
    :pswitch_78
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 127
    const-string v0, "FSTest"

    .line 128
    goto :goto_c

    .line 132
    :pswitch_7d
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 133
    const-string v0, "HiddenReset"

    .line 134
    goto :goto_c

    .line 138
    :pswitch_82
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 139
    const-string v0, "HeapFreeInfo"

    .line 140
    goto :goto_c

    .line 145
    :pswitch_87
    const-string v2, "com.lge.hiddenmenu.module_test"

    .line 146
    const-string v0, "StabilityTest"

    .line 147
    goto :goto_c

    .line 153
    :pswitch_8c
    const-string v4, "com.lge.ChargingTest"

    const-string v5, "com.lge.ChargingTest.ChargingTest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 117
    :catch_98
    move-exception v4

    goto :goto_47

    .line 95
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_78
        :pswitch_7d
        :pswitch_82
        :pswitch_87
        :pswitch_8c
    .end packed-switch
.end method

.method private setScreenSettings(II)V
    .registers 5
    .parameter "ScreenOffTimeOut"
    .parameter "DimScreen"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dim_screen"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f060008

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 59
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mService:Landroid/os/IHardwareService;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->lcd:Z

    .line 63
    invoke-direct {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getScreenSettings()V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 77
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 78
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 81
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
    .line 86
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->selectMenuItem(I)V

    .line 87
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 69
    iget v0, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mScreenOffTimeOut:I

    iget v1, p0, Lcom/lge/hiddenmenu/module_test/ModuleTest;->mDimScreen:I

    invoke-direct {p0, v0, v1}, Lcom/lge/hiddenmenu/module_test/ModuleTest;->setScreenSettings(II)V

    .line 70
    return-void
.end method
