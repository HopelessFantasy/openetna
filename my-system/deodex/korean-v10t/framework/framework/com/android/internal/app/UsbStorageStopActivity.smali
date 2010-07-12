.class public Lcom/android/internal/app/UsbStorageStopActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbStorageStopActivity.java"

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
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/app/UsbStorageStopActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/UsbStorageStopActivity$1;-><init>(Lcom/android/internal/app/UsbStorageStopActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/UsbStorageStopActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showStoppingError()V
    .registers 3

    .prologue
    .line 112
    const v0, 0x10402da

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method

.method private stopUsbStorage()V
    .registers 4

    .prologue
    .line 96
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    .line 98
    .local v1, mountService:Landroid/os/IMountService;
    if-nez v1, :cond_10

    .line 99
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageStopActivity;->showStoppingError()V

    .line 109
    :goto_f
    return-void

    .line 104
    :cond_10
    const/4 v2, 0x0

    :try_start_11
    invoke-interface {v1, v2}, Landroid/os/IMountService;->setMassStorageEnabled(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_f

    .line 105
    :catch_15
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageStopActivity;->showStoppingError()V

    goto :goto_f
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 88
    invoke-direct {p0}, Lcom/android/internal/app/UsbStorageStopActivity;->stopUsbStorage()V

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageStopActivity;->finish()V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/app/UsbStorageStopActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 59
    const v1, 0x10402d6

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageStopActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    const v1, 0x10402d7

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageStopActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 61
    const v1, 0x10402d8

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageStopActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    const v1, 0x10402d9

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UsbStorageStopActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 64
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageStopActivity;->setupAlert()V

    .line 66
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/app/UsbStorageStopActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UsbStorageStopActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/app/UsbStorageStopActivity;->mMediaChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UsbStorageStopActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method
