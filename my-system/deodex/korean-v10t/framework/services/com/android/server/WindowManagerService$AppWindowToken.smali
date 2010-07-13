.class Lcom/android/server/WindowManagerService$AppWindowToken;
.super Lcom/android/server/WindowManagerService$WindowToken;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppWindowToken"
.end annotation


# instance fields
.field final allAppWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field firstWindowDrawn:Z

.field freezingScreen:Z

.field groupId:I

.field hasTransformation:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field lastTransactionSequence:I

.field numDrawnWindows:I

.field numInterestingWindows:I

.field removed:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field startingData:Lcom/android/server/WindowManagerService$StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;

.field final transformation:Landroid/view/animation/Transformation;

.field willBeHidden:Z


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V
    .registers 7
    .parameter
    .parameter "_token"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 7470
    iput-object p1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    .line 7471
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 7416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    .line 7418
    iput v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 7420
    iput v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 7425
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 7456
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    .line 7473
    iput-object p0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7474
    iput-object p2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 7475
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .registers 2

    .prologue
    .line 7507
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 7508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 7511
    :cond_a
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 7693
    invoke-super {p0, p1, p2}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7694
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_f

    .line 7695
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7697
    :cond_f
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 7698
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7700
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "groupId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7701
    const-string v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7702
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7703
    const-string v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7704
    const-string v0, " willBeHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7705
    const-string v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7706
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->paused:Z

    if-nez v0, :cond_6e

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v0, :cond_85

    .line 7707
    :cond_6e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7708
    const-string v0, " freezingScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7710
    :cond_85
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    if-nez v0, :cond_95

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_c0

    .line 7712
    :cond_95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7713
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7714
    const-string v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7715
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7716
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7718
    :cond_c0
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_df

    .line 7719
    :cond_c8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7720
    const-string v0, " animation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7722
    :cond_df
    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eqz v0, :cond_f0

    .line 7723
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7725
    :cond_f0
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v0, :cond_10e

    .line 7726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTransformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7727
    const-string v0, " transformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 7728
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7730
    :cond_10e
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-nez v0, :cond_11a

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v0, :cond_11a

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_13b

    .line 7731
    :cond_11a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7732
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7733
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7735
    :cond_13b
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-nez v0, :cond_14b

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_14b

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-eqz v0, :cond_176

    .line 7737
    :cond_14b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7738
    const-string v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7739
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7740
    const-string v0, " startingMoved"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7742
    :cond_176
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 6

    .prologue
    .line 7528
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7529
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 7530
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 7531
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v2, v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v3, :cond_1c

    .line 7529
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7538
    :cond_1c
    :try_start_1c
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    :goto_23
    invoke-interface {v3, v4}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_19

    .line 7539
    :catch_27
    move-exception v3

    goto :goto_19

    .line 7538
    :cond_29
    const/4 v4, 0x0

    goto :goto_23

    .line 7542
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2b
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "anim"

    .prologue
    .line 7480
    iput-object p1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7481
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 7482
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 7483
    iget-object v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 7484
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 7485
    .local v1, zorder:I
    const/4 v0, 0x0

    .line 7486
    .local v0, adj:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 7487
    const/16 v0, 0x3e8

    .line 7492
    :cond_1b
    :goto_1b
    iget v2, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eq v2, v0, :cond_24

    .line 7493
    iput v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 7494
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 7496
    :cond_24
    return-void

    .line 7488
    :cond_25
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 7489
    const/16 v0, -0x3e8

    goto :goto_1b
.end method

.method public setDummyAnimation()V
    .registers 2

    .prologue
    .line 7499
    iget-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    .line 7502
    sget-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7504
    :cond_8
    return-void
.end method

.method showAllWindowsLocked()V
    .registers 5

    .prologue
    .line 7545
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7546
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 7547
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 7550
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    .line 7546
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7552
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_17
    return-void
.end method

.method stepAnimationLocked(JII)Z
    .registers 13
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7556
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_4e

    .line 7559
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_11

    move v3, v5

    .line 7629
    :goto_10
    return v3

    .line 7567
    :cond_11
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-eqz v3, :cond_46

    :cond_1d
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_46

    .line 7568
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_31

    .line 7574
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 7575
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 7576
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 7578
    :cond_31
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 7579
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    .line 7584
    .local v2, more:Z
    if-eqz v2, :cond_44

    .line 7586
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    move v3, v6

    .line 7587
    goto :goto_10

    .line 7592
    :cond_44
    iput-object v7, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 7601
    .end local v2           #more:Z
    :cond_46
    :goto_46
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    .line 7603
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v3, :cond_57

    move v3, v5

    .line 7604
    goto :goto_10

    .line 7594
    :cond_4e
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_46

    .line 7597
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 7598
    iput-object v7, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    goto :goto_46

    .line 7607
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    .line 7608
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 7609
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v3, p0, :cond_6f

    .line 7610
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 7617
    :cond_6f
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 7618
    iget v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    if-eqz v3, :cond_7d

    .line 7619
    iput v5, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 7620
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 7623
    :cond_7d
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7624
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_84
    if-ge v1, v0, :cond_94

    .line 7625
    iget-object v3, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 7624
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 7627
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    move v3, v5

    .line 7629
    goto/16 :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 7746
    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 7747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7748
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7749
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7750
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7751
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    .line 7753
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateLayers()V
    .registers 6

    .prologue
    .line 7514
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7515
    .local v0, N:I
    iget v1, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 7516
    .local v1, adj:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_26

    .line 7517
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 7518
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 7521
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, v4, :cond_23

    .line 7522
    iget-object v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 7516
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7525
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_26
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 7633
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v8, :cond_7

    .line 7690
    :cond_6
    :goto_6
    return-void

    .line 7637
    :cond_7
    const/4 v5, 0x0

    .line 7638
    .local v5, numInteresting:I
    const/4 v6, 0x0

    .line 7639
    .local v6, numVisible:I
    const/4 v3, 0x1

    .line 7642
    .local v3, nowGone:Z
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7643
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_40

    .line 7644
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 7645
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v7, v8, :cond_23

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v8, :cond_26

    .line 7643
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 7664
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 7665
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 7666
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_36

    .line 7667
    add-int/lit8 v6, v6, 0x1

    .line 7669
    :cond_36
    const/4 v3, 0x0

    goto :goto_23

    .line 7670
    :cond_38
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 7671
    const/4 v3, 0x0

    goto :goto_23

    .line 7675
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_40
    if-lez v5, :cond_63

    if-lt v6, v5, :cond_63

    move v4, v12

    .line 7678
    .local v4, nowVisible:Z
    :goto_45
    iget-boolean v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    if-eq v4, v8, :cond_6

    .line 7682
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 7683
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v9, 0x8

    if-eqz v4, :cond_65

    move v10, v12

    :goto_54
    if-eqz v3, :cond_57

    move v11, v12

    :cond_57
    invoke-virtual {v8, v9, v10, v11, p0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7688
    .local v2, m:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/WindowManagerService$AppWindowToken;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v8, v2}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .end local v2           #m:Landroid/os/Message;
    .end local v4           #nowVisible:Z
    :cond_63
    move v4, v11

    .line 7675
    goto :goto_45

    .restart local v4       #nowVisible:Z
    :cond_65
    move v10, v11

    .line 7683
    goto :goto_54
.end method
