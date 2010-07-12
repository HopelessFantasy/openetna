.class public Lcom/android/internal/app/UsbStorageActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field private mMediaChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/app/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/UsbStorageActivity$1;-><init>(Lcom/android/internal/app/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/UsbStorageActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private mountAsUsbStorage()V
    .registers 4

    .prologue
    .line 102
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    .line 104
    .local v1, mountService:Landroid/os/IMountService;
    if-nez v1, :cond_10

    .line 105
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageActivity;->showSharingError()V

    .line 115
    :goto_f
    return-void

    .line 110
    :cond_10
    const/4 v2, 0x1

    :try_start_11
    invoke-interface {v1, v2}, Landroid/os/IMountService;->setMassStorageEnabled(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_f

    .line 111
    :catch_15
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageActivity;->showSharingError()V

    goto :goto_f
.end method

.method private showSharingError()V
    .registers 3

    .prologue
    .line 118
    const v0, 0x10402c8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 90
    const-string v0, "ro.monkey"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageActivity;->finish()V

    .line 99
    :goto_12
    return-void

    .line 94
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageActivity;->mountAsUsbStorage()V

    .line 98
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageActivity;->finish()V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/app/UsbStorageActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 60
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080173

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 61
    const v1, 0x10402c4

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    const v1, 0x10402c5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 63
    const v1, 0x10402c6

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 64
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    const v1, 0x10402c7

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 66
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageActivity;->setupAlert()V

    .line 68
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/app/UsbStorageActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UsbStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/app/UsbStorageActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UsbStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method
