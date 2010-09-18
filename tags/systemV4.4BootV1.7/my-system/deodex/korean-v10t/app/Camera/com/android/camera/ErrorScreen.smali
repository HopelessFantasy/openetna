.class public Lcom/android/camera/ErrorScreen;
.super Landroid/app/Activity;
.source "ErrorScreen.java"


# instance fields
.field mCloseScreenCallback:Ljava/lang/Runnable;

.field mError:I

.field mHandler:Landroid/os/Handler;

.field mLogoutOnExit:Z

.field mReconnectOnExit:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ErrorScreen;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/android/camera/ErrorScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ErrorScreen$1;-><init>(Lcom/android/camera/ErrorScreen;)V

    iput-object v0, p0, Lcom/android/camera/ErrorScreen;->mCloseScreenCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ErrorScreen;->resolveIntent()V

    .line 48
    const/4 v0, 0x0

    .line 52
    .local v0, errMsg:Ljava/lang/String;
    iget v2, p0, Lcom/android/camera/ErrorScreen;->mError:I

    .line 54
    const-string v0, "You need to setup your Picassa Web account first."

    .line 58
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/camera/ErrorScreen;->setContentView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ErrorScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ErrorScreen;->mCloseScreenCallback:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ErrorScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ErrorScreen;->mCloseScreenCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method resolveIntent()V
    .registers 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ErrorScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error"

    iget v2, p0, Lcom/android/camera/ErrorScreen;->mError:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ErrorScreen;->mError:I

    .line 81
    const-string v1, "logout"

    iget-boolean v2, p0, Lcom/android/camera/ErrorScreen;->mLogoutOnExit:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ErrorScreen;->mLogoutOnExit:Z

    .line 82
    const-string v1, "reconnect"

    iget-boolean v2, p0, Lcom/android/camera/ErrorScreen;->mReconnectOnExit:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ErrorScreen;->mReconnectOnExit:Z

    .line 83
    return-void
.end method
