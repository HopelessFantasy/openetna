.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideshowActivity"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field private mModel:Lcom/android/mms/model/SlideshowModel;

.field private mMsg:Landroid/net/Uri;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method private declared-synchronized createWakeLock()V
    .registers 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_24

    .line 274
    const-string v1, "SlideshowActivity"

    const-string v2, "[BackLight] createWakeLock !!"

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 276
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "MMS Slideshow"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 277
    sget-object v1, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 279
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_24
    monitor-exit p0

    return-void

    .line 273
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initMediaController()V
    .registers 4

    .prologue
    .line 135
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 138
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 3

    .prologue
    .line 285
    const-string v0, "SlideshowActivity"

    const-string v1, "[BackLight] acquireWakeLock !!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 287
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    :cond_14
    return-void
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 5
    .parameter "evt"

    .prologue
    .line 259
    move-object v0, p1

    .line 260
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 79
    const v3, 0x7f030021

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsg:Landroid/net/Uri;

    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createWakeLock()V

    .line 88
    :try_start_29
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsg:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;
    :try_end_31
    .catch Lcom/google/android/mms/MmsException; {:try_start_29 .. :try_end_31} :catch_4c

    .line 95
    const v3, 0x7f090065

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideView;

    .line 96
    .local v2, view:Lcom/android/mms/ui/SlideView;
    const-string v3, "SlideshowPresenter"

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3, p0, v2, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    .line 98
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .end local v2           #view:Lcom/android/mms/ui/SlideView;
    :goto_4b
    return-void

    .line 89
    :catch_4c
    move-exception v3

    move-object v0, v3

    .line 90
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "SlideshowActivity"

    const-string v4, "Cannot present the slide show."

    invoke-static {v3, v4, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_4b
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 256
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 185
    sparse-switch p1, :sswitch_data_1c

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_10

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 204
    :cond_10
    :goto_10
    :sswitch_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 197
    :sswitch_15
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_10

    .line 185
    nop

    :sswitch_data_1c
    .sparse-switch
        0x4 -> :sswitch_15
        0x13 -> :sswitch_10
        0x14 -> :sswitch_10
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x18 -> :sswitch_10
        0x19 -> :sswitch_10
        0x52 -> :sswitch_10
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_11

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 156
    :cond_11
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 157
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->acquireWakeLock()V

    .line 181
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_12

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 170
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 171
    return-void

    .line 166
    :cond_16
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 145
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public releaseWakeLock()V
    .registers 3

    .prologue
    .line 292
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 293
    const-string v0, "SlideshowActivity"

    const-string v1, "[BackLight] releaseWakeLock !!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/mms/ui/SlideshowActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 296
    :cond_18
    return-void
.end method
