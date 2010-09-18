.class public Landroid/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# instance fields
.field private final mDefaultValue:Z

.field protected final mProxy:Landroid/webkit/CallbackProxy;

.field private mReady:Z

.field protected mResult:Z

.field private mTriedToNotifyBeforeReady:Z


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Z)V
    .registers 3
    .parameter "proxy"
    .parameter "defaultVal"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    .line 52
    iput-boolean p2, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 39
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 40
    return-void
.end method

.method public final confirm()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 47
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 48
    return-void
.end method

.method final getResult()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    return v0
.end method

.method handleDefault()V
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/webkit/JsResult;->setReady()V

    .line 68
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 69
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 70
    return-void
.end method

.method final setReady()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    .line 61
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 64
    :cond_a
    return-void
.end method

.method protected final wakeUp()V
    .registers 3

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v0

    .line 76
    :try_start_7
    iget-object v1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 77
    monitor-exit v0

    .line 81
    :goto_d
    return-void

    .line 77
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 79
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    goto :goto_d
.end method
