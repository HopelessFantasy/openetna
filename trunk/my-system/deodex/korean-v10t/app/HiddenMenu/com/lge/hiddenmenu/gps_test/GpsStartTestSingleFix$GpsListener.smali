.class Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;
.super Landroid/location/IGpsStatusListener$Stub;
.source "GpsStartTestSingleFix.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsListener"
.end annotation


# instance fields
.field private bWaiter:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 3
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 345
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    return v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 4
    .parameter "ttff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFirstFix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setTTFF(I)V

    .line 354
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const-string v1, "First Fix"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 356
    return-void
.end method

.method public onGpsStarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGpsStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setGpsOn(Z)V

    .line 362
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const-string v1, "Gps Started"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 364
    return-void
.end method

.method public onGpsStopped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGpsStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setGpsOn(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 372
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setLocation(Landroid/location/Location;)V

    .line 392
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const-string v1, "Position Fixed"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$808(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    .line 395
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 396
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$900(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    .line 397
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 401
    const-string v0, "gps"

    if-ne p1, v0, :cond_27

    .line 402
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProvider Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const-string v1, "Provider Disabled"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 407
    :cond_27
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 411
    const-string v0, "gps"

    if-ne p1, v0, :cond_27

    .line 412
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProvider Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    const-string v1, "Provider Enabled"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 417
    :cond_27
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStatusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :try_start_b
    const-string v1, "gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_25

    .line 425
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v1

    invoke-static {}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_26

    .line 431
    :cond_25
    :goto_25
    return-void

    .line 428
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 429
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChanged - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .registers 18
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSvStatusChanged, svCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 382
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v0

    iget v0, v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    if-nez v0, :cond_3c

    .line 383
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V

    .line 385
    :cond_3c
    return-void
.end method

.method public printScreen()V
    .registers 6

    .prologue
    .line 434
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    .line 436
    monitor-enter p0

    .line 437
    :try_start_7
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    .line 439
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->bWaiter:I

    if-lez v1, :cond_13

    .line 440
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_25

    .line 464
    :goto_12
    return-void

    .line 444
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_28

    .line 463
    :goto_23
    :try_start_23
    monitor-exit p0

    goto :goto_12

    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v1

    .line 460
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 461
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printScreen - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_25

    goto :goto_23
.end method
