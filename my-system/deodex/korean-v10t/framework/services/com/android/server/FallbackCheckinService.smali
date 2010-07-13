.class public final Lcom/android/server/FallbackCheckinService;
.super Landroid/os/ICheckinService$Stub;
.source "FallbackCheckinService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FallbackCheckinService"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/ICheckinService$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/FallbackCheckinService;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public checkin()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getParentalControlState(Landroid/os/IParentalControlCallback;Ljava/lang/String;)V
    .registers 5
    .parameter "p"
    .parameter "requestingApp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/net/ParentalControlState;

    invoke-direct {v0}, Lcom/google/android/net/ParentalControlState;-><init>()V

    .line 72
    .local v0, state:Lcom/google/android/net/ParentalControlState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/net/ParentalControlState;->isEnabled:Z

    .line 73
    invoke-interface {p1, v0}, Landroid/os/IParentalControlCallback;->onResult(Lcom/google/android/net/ParentalControlState;)V

    .line 74
    return-void
.end method

.method public masterClear()V
    .registers 5

    .prologue
    const-string v3, "FallbackCheckinService"

    .line 53
    iget-object v1, p0, Lcom/android/server/FallbackCheckinService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 55
    const-string v1, "FallbackCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_3c
    return-void

    .line 63
    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/android/internal/os/RecoverySystem;->rebootAndWipe()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_3c

    .line 64
    :catch_41
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FallbackCheckinService"

    const-string v1, "Reboot for masterClear() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public reportCrashAsync([B)V
    .registers 2
    .parameter "crashData"

    .prologue
    .line 50
    return-void
.end method

.method public reportCrashSync([B)V
    .registers 2
    .parameter "crashData"

    .prologue
    .line 47
    return-void
.end method
