.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;
.super Ljava/lang/Object;
.source "GpsStartTestSingleFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GpsLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;
    }
.end annotation


# instance fields
.field public almanacMask:I

.field public azimuths:[F

.field public elevations:[F

.field public enabled:Z

.field public ephemerisMask:I

.field public gpsOn:Z

.field public mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

.field public prns:[I

.field public snrs:[F

.field public status:Ljava/lang/String;

.field public svCount:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

.field public ttff:I

.field public usedInFixMask:I


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x32

    .line 482
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    const-string v0, "Null"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->status:Ljava/lang/String;

    .line 478
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->enabled:Z

    .line 479
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->gpsOn:Z

    .line 483
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->prns:[I

    .line 484
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->snrs:[F

    .line 485
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->elevations:[F

    .line 486
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->azimuths:[F

    .line 487
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    .line 488
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->init()V

    .line 489
    return-void
.end method

.method private fileSave(Ljava/lang/String;)V
    .registers 14
    .parameter "log"

    .prologue
    const-string v11, "Exception closing file"

    .line 617
    const/4 v4, 0x0

    .line 621
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v6, "/data"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_34

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_34

    .line 625
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to create directory to write location"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_ed
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_cb

    .line 644
    if-eqz v4, :cond_26

    .line 646
    :try_start_23
    #Replaced unresolvable odex instruction with a throw
    throw v4
    #invoke-virtual-quick {v4}, vtable@0x11
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 652
    .end local v0           #d:Ljava/io/File;
    :cond_26
    :goto_26
    return-void

    .line 647
    .restart local v0       #d:Ljava/io/File;
    :catch_27
    move-exception v1

    .line 648
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 632
    .end local v1           #e:Ljava/io/IOException;
    :cond_34
    :try_start_34
    const-string v6, "/data/gps_log_%ty%tm%td_%tH%tI%tk.csv"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .local v2, f:Ljava/io/File;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b1
    .catchall {:try_start_34 .. :try_end_b1} :catchall_ed
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_b1} :catch_cb

    .line 640
    .end local v4           #writer:Ljava/io/FileWriter;
    .local v5, writer:Ljava/io/FileWriter;
    :try_start_b1
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_101
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_104

    .line 644
    if-eqz v5, :cond_108

    .line 646
    :try_start_b6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bc

    move-object v4, v5

    .line 649
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto/16 :goto_26

    .line 647
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_bc
    move-exception v1

    .line 648
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 649
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto/16 :goto_26

    .line 641
    .end local v0           #d:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #s:Ljava/lang/String;
    :catch_cb
    move-exception v6

    move-object v1, v6

    .line 642
    .restart local v1       #e:Ljava/io/IOException;
    :goto_cd
    :try_start_cd
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to write location"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_ed

    .line 644
    if-eqz v4, :cond_26

    .line 646
    :try_start_da
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_df

    goto/16 :goto_26

    .line 647
    :catch_df
    move-exception v1

    .line 648
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 644
    .end local v1           #e:Ljava/io/IOException;
    :catchall_ed
    move-exception v6

    :goto_ee
    if-eqz v4, :cond_f3

    .line 646
    :try_start_f0
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 649
    :cond_f3
    :goto_f3
    throw v6

    .line 647
    :catch_f4
    move-exception v1

    .line 648
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Exception closing file"

    invoke-static {v7, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    .line 644
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v0       #d:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #s:Ljava/lang/String;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catchall_101
    move-exception v6

    move-object v4, v5

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto :goto_ee

    .line 641
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_104
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto :goto_cd

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :cond_108
    move-object v4, v5

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto/16 :goto_26
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->svCount:I

    .line 493
    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    .line 494
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->init()V

    .line 495
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .registers 14
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"

    .prologue
    .line 658
    :try_start_0
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->svCount:I

    .line 663
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p1, :cond_42

    .line 664
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->prns:[I

    aget v3, p2, v1

    aput v3, v2, v1

    .line 665
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->snrs:[F

    aget v3, p3, v1

    aput v3, v2, v1

    .line 666
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->elevations:[F

    aget v3, p4, v1

    aput v3, v2, v1

    .line 667
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->azimuths:[F

    aget v3, p5, v1

    aput v3, v2, v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_20

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 669
    .end local v1           #i:I
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 670
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0           #e:Ljava/lang/Exception;
    :cond_42
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->enabled:Z

    .line 503
    return-void
.end method

.method public setGpsOn(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->gpsOn:Z

    .line 507
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 6
    .parameter "l"

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v1, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->set(Landroid/location/Location;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 680
    :goto_5
    return-void

    .line 677
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 678
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->status:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setTTFF(I)V
    .registers 2
    .parameter "ttff"

    .prologue
    .line 510
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 515
    const-string v4, ""

    .line 516
    .local v4, s:Ljava/lang/String;
    const-string v3, ""

    .line 519
    .local v3, log:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 520
    .local v0, curTime:J
    const-string v5, "Fix Cnt: %d, Cur Time: %tT, Time Span: %d sec\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 523
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Status: %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->status:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    :cond_90
    iget v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    if-lez v5, :cond_305

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Time To First Fix (TTFF): %d ms\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    :goto_b7
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    :cond_d8
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_32a

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Fix UTC: %tr\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_130

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    :cond_130
    :goto_130
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_361

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nLatitude, Longitude, Alt,   Bear, Spd., Accr\n%.6f, %.6f, %.1f, %.2f, %.2f, %.2f\n"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getAltitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getBearing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getSpeed()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getAccuracy()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    :goto_1a4
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_219

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    :cond_219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nNum of SVs: %d\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->svCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PRN,  SNR,  ELEV,  AZIM\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    const/4 v2, 0x0

    .local v2, i:I
    :goto_250
    iget v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->svCount:I

    if-ge v2, v5, :cond_37d

    .line 596
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->prns:[I

    array-length v5, v5

    if-le v5, v2, :cond_301

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->snrs:[F

    array-length v5, v5

    if-le v5, v2, :cond_301

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->elevations:[F

    array-length v5, v5

    if-le v5, v2, :cond_301

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->azimuths:[F

    array-length v5, v5

    if-le v5, v2, :cond_301

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d, %05.1f, %05.1f, %05.1f\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->prns:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->snrs:[F

    aget v9, v9, v2

    const/high16 v10, 0x4120

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->elevations:[F

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->azimuths:[F

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_301

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->prns:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->snrs:[F

    aget v6, v6, v2

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->elevations:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->azimuths:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    :cond_301
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_250

    .line 546
    .end local v2           #i:I
    :cond_305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Time To First Fix (TTFF): N/A\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->ttff:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b7

    .line 561
    :cond_32a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Fix UTC: N/A\n"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_130

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_130

    .line 578
    :cond_361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nLatitude, Longitude, Alt,   Bear, Spd., Accr\nN/A\n"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1a4

    .line 608
    .restart local v2       #i:I
    :cond_37d
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v5

    if-eqz v5, :cond_39b

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->fileSave(Ljava/lang/String;)V

    .line 613
    :cond_39b
    return-object v4
.end method
