.class public Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;
.super Landroid/app/ListActivity;
.source "FormatSDCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
    }
.end annotation


# instance fields
.field private mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMountService:Landroid/os/IMountService;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 169
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;-><init>(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mResultReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->runFormatSDCard2()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Z)V

    return-void
.end method

.method private completedFormatSDCard(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "MessageStr"

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;-><init>(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    return-void
.end method

.method private completedFormatSDCard(Z)V
    .registers 6
    .parameter "bSuccess"

    .prologue
    .line 142
    if-eqz p1, :cond_27

    const v1, 0x7f08014b

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 144
    .local v0, MessageStr:Ljava/lang/CharSequence;
    :goto_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$1;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$1;-><init>(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void

    .line 142
    .end local v0           #MessageStr:Ljava/lang/CharSequence;
    :cond_27
    const v1, 0x7f08014a

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    goto :goto_a
.end method

.method private runFormatSDCard()V
    .registers 4

    .prologue
    .line 116
    const-string v1, "FormatSDCard"

    const-string v2, "runFormatSDCard()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    iput-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 121
    :try_start_b
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mMountService:Landroid/os/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IMountService;->unmountMedia(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 125
    :goto_18
    return-void

    .line 122
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Z)V

    goto :goto_18
.end method

.method private runFormatSDCard2()V
    .registers 4

    .prologue
    .line 128
    const-string v1, "FormatSDCard"

    const-string v2, "runFormatSDCard2()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    iput-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 133
    :try_start_b
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mMountService:Landroid/os/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IMountService;->formatMedia(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 138
    :goto_18
    return-void

    .line 134
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Z)V

    goto :goto_18
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 75
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    sget-object v2, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    if-eq v1, v2, :cond_a

    .line 81
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Z)V

    .line 83
    :cond_a
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mIntentFilter:Landroid/content/IntentFilter;

    .line 86
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mResultReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mMountService:Landroid/os/IMountService;

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 94
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    sget-object v2, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    if-eq v1, v2, :cond_51

    .line 95
    invoke-direct {p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->runFormatSDCard()V

    .line 102
    :cond_51
    :goto_51
    return-void

    .line 96
    :cond_52
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 97
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->mFormatStatus:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    sget-object v2, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    if-eq v1, v2, :cond_51

    .line 98
    invoke-direct {p0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->runFormatSDCard2()V

    goto :goto_51

    .line 100
    :cond_64
    const v1, 0x7f08014c

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Ljava/lang/CharSequence;)V

    goto :goto_51
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 113
    return-void
.end method
