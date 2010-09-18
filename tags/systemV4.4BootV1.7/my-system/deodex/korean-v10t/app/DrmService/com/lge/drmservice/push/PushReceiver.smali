.class public Lcom/lge/drmservice/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const-string v0, "DrmService"

    iput-object v0, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private processWapPush_DRMPdu(Landroid/content/Context;[BLjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v4, -0x1

    .line 54
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "################## processDRMPdu() : START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x2

    :try_start_9
    invoke-static {v2, p1}, Landroid/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Landroid/lge/lgdrm/DrmObjectSession;

    move-result-object v1

    .line 60
    .local v1, session:Landroid/lge/lgdrm/DrmObjectSession;
    if-nez v1, :cond_17

    .line 62
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "createObjectSession() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1           #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_16
    :goto_16
    return-void

    .line 66
    .restart local v1       #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_31

    .line 69
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "processInit() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_2a} :catch_2b

    goto :goto_16

    .line 98
    .end local v1           #session:Landroid/lge/lgdrm/DrmObjectSession;
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_16

    .line 74
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_31
    :try_start_31
    array-length v2, p2

    invoke-virtual {v1, p2, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v2

    if-eqz v2, :cond_44

    .line 76
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "processUpdate() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_16

    .line 81
    :cond_44
    invoke-virtual {v1}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v2

    if-ne v4, v2, :cond_56

    .line 83
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "processStatus() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_16

    .line 88
    :cond_56
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v2

    if-ne v4, v2, :cond_16

    .line 90
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "processEnd() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_69} :catch_2b

    goto :goto_16
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 35
    iget-object v2, p0, Lcom/lge/drmservice/push/PushReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Receiver onBoot"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lge/drmservice/DrmService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    :cond_1d
    :goto_1d
    return-void

    .line 39
    :cond_1e
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    .local v0, document:[B
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, mimeType:Ljava/lang/String;
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 47
    :cond_40
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/drmservice/push/PushReceiver;->processWapPush_DRMPdu(Landroid/content/Context;[BLjava/lang/String;)V

    goto :goto_1d
.end method
