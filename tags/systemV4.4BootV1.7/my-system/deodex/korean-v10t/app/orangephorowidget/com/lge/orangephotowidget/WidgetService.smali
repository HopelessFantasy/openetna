.class public Lcom/lge/orangephotowidget/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"


# static fields
.field public static final EJECT:Ljava/lang/String; = "com.lge.orangephotowidget.eject"

.field public static final LANDSCAPE:Ljava/lang/String; = "com.lge.orangephotowidet.landscape"

.field public static final MEDIASCANNERSTARTED:Ljava/lang/String; = "com.lge.orangephotowidget.mediascannerstarted"

.field public static final MOUNTED:Ljava/lang/String; = "com.lge.orangephotowidget.mounted"

.field public static final PORTRAIT:Ljava/lang/String; = "com.lge.orangephotowidet.portrait"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAppWidgetProvider:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

.field mRunnable:Ljava/lang/Runnable;

.field public mService:Lcom/lge/orangephotowidget/WidgetService;

.field public mTimeHandler:Landroid/os/Handler;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    const-string v0, "WidgetService"

    iput-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mTimeHandler:Landroid/os/Handler;

    .line 28
    invoke-static {}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->getInstance()Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mAppWidgetProvider:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    .line 186
    new-instance v0, Lcom/lge/orangephotowidget/WidgetService$2;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/WidgetService$2;-><init>(Lcom/lge/orangephotowidget/WidgetService;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/orangephotowidget/WidgetService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/orangephotowidget/WidgetService;)Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mAppWidgetProvider:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    return-object v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 8
    .parameter "what"

    .prologue
    .line 161
    iput-object p0, p0, Lcom/lge/orangephotowidget/WidgetService;->mService:Lcom/lge/orangephotowidget/WidgetService;

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, re_service:I
    iget-object v2, p0, Lcom/lge/orangephotowidget/WidgetService;->mAppWidgetProvider:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    invoke-virtual {v2, p0, p1}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->notifyChange(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)I

    move-result v1

    .line 179
    if-eqz v1, :cond_1c

    .line 181
    iget-object v2, p0, Lcom/lge/orangephotowidget/WidgetService;->mTimeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/orangephotowidget/WidgetService;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_1c
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/lge/orangephotowidget/WidgetService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 200
    .local v0, current:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 203
    const-string v1, "com.lge.orangephotowidet.landscape"

    invoke-direct {p0, v1}, Lcom/lge/orangephotowidget/WidgetService;->notifyChange(Ljava/lang/String;)V

    .line 217
    :cond_17
    :goto_17
    return-void

    .line 209
    :cond_18
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 212
    const-string v1, "com.lge.orangephotowidet.portrait"

    invoke-direct {p0, v1}, Lcom/lge/orangephotowidget/WidgetService;->notifyChange(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/WidgetService;->registerExternalStorageListener()V

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/WidgetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    return-void
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 113
    new-instance v1, Lcom/lge/orangephotowidget/WidgetService$1;

    invoke-direct {v1, p0}, Lcom/lge/orangephotowidget/WidgetService$1;-><init>(Lcom/lge/orangephotowidget/WidgetService;)V

    iput-object v1, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/lge/orangephotowidget/WidgetService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/orangephotowidget/WidgetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method
