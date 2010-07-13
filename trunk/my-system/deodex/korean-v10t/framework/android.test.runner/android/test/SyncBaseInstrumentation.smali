.class public Landroid/test/SyncBaseInstrumentation;
.super Landroid/test/InstrumentationTestCase;
.source "SyncBaseInstrumentation.java"


# static fields
.field private static final MAX_TIME_FOR_SYNC_IN_MINS:I = 0x14


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mTargetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method

.method private isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/IContentService;->isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 93
    :goto_8
    return v1

    .line 92
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method protected cancelSyncsandDisableAutoSync()V
    .registers 3

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/IContentService;->setListenForNetworkTickles(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_f

    .line 80
    :goto_8
    iget-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/net/Uri;)V

    .line 81
    return-void

    .line 78
    :catch_f
    move-exception v0

    goto :goto_8
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    .line 39
    invoke-virtual {p0}, Landroid/test/SyncBaseInstrumentation;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method protected syncProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "uri"
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v3, extras:Landroid/os/Bundle;
    const-string v6, "force"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v6, "account"

    invoke-virtual {v3, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v6, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, p1, v3}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 54
    .local v4, startTimeInMillis:J
    const-wide/32 v6, 0x124f80

    add-long v1, v4, v6

    .line 56
    .local v1, endTimeInMillis:J
    const/4 v0, 0x0

    .line 59
    .local v0, counter:I
    :goto_1f
    const/4 v6, 0x2

    if-ge v0, v6, :cond_2f

    .line 61
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_30

    .line 73
    :cond_2f
    return-void

    .line 67
    :cond_30
    invoke-direct {p0, p2, p3}, Landroid/test/SyncBaseInstrumentation;->isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 68
    const/4 v0, 0x0

    .line 69
    goto :goto_1f

    .line 71
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method
