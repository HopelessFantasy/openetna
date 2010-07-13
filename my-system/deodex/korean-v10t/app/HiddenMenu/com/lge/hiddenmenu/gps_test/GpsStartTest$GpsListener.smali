.class Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;
.super Landroid/location/IGpsStatusListener$Stub;
.source "GpsStartTest.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsListener"
.end annotation


# instance fields
.field private bWaiter:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 303
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

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
    .line 310
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFirstFix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setTTFF(I)V

    .line 312
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const-string v1, "First Fix"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 314
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
    .line 318
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGpsStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setGpsOn(Z)V

    .line 320
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const-string v1, "Gps Started"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 322
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
    .line 326
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGpsStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setGpsOn(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 330
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setLocation(Landroid/location/Location;)V

    .line 350
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const-string v1, "Position Fixed"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$408(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    .line 353
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 356
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 360
    const-string v0, "gps"

    if-ne p1, v0, :cond_27

    .line 361
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProvider Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const-string v1, "Provider Disabled"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 366
    :cond_27
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 370
    const-string v0, "gps"

    if-ne p1, v0, :cond_27

    .line 371
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProvider Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    const-string v1, "Provider Enabled"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 376
    :cond_27
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStatusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :try_start_b
    const-string v1, "gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_25

    .line 384
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v1

    invoke-static {}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$500()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->setStatus(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_26

    .line 390
    :cond_25
    :goto_25
    return-void

    .line 387
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 388
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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
    .line 336
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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

    .line 337
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 340
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3e

    .line 341
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V

    .line 343
    :cond_3e
    return-void
.end method

.method public printScreen()V
    .registers 6

    .prologue
    .line 393
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    .line 395
    monitor-enter p0

    .line 396
    :try_start_7
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    .line 398
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->bWaiter:I

    if-lez v1, :cond_13

    .line 399
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_25

    .line 423
    :goto_12
    return-void

    .line 403
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$100(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_28

    .line 422
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

    .line 419
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 420
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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
