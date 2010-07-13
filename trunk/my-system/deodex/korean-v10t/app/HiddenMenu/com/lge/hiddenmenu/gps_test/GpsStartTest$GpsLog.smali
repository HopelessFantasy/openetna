.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;
.super Ljava/lang/Object;
.source "GpsStartTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GpsLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;
    }
.end annotation


# instance fields
.field public almanacMask:I

.field public azimuths:[F

.field public elevations:[F

.field public enabled:Z

.field public ephemerisMask:I

.field public gpsOn:Z

.field public mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

.field public prns:[I

.field public snrs:[F

.field public status:Ljava/lang/String;

.field public svCount:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

.field public ttff:I

.field public usedInFixMask:I


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x32

    .line 441
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const-string v0, "Null"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->status:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->svCount:I

    .line 437
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->enabled:Z

    .line 438
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->gpsOn:Z

    .line 439
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    .line 442
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->prns:[I

    .line 443
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->snrs:[F

    .line 444
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->elevations:[F

    .line 445
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->azimuths:[F

    .line 446
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    .line 447
    return-void
.end method

.method private fileSave(Ljava/lang/String;)V
    .registers 14
    .parameter "log"

    .prologue
    const-string v11, "Exception closing file"

    .line 569
    const/4 v4, 0x0

    .line 573
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v6, "/data"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_34

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_34

    .line 577
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to create directory to write location"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_ed
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_cb

    .line 596
    if-eqz v4, :cond_26

    .line 598
    :try_start_23
    #Replaced unresolvable odex instruction with a throw
    throw v4
    #invoke-virtual-quick {v4}, vtable@0x11
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 604
    .end local v0           #d:Ljava/io/File;
    :cond_26
    :goto_26
    return-void

    .line 599
    .restart local v0       #d:Ljava/io/File;
    :catch_27
    move-exception v1

    .line 600
    .local v1, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 584
    .end local v1           #e:Ljava/io/IOException;
    :cond_34
    :try_start_34
    const-string v6, "/data/gps_log_%ty%tm%td_%tH%tI%tk.csv"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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

    .line 589
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v2, f:Ljava/io/File;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b1
    .catchall {:try_start_34 .. :try_end_b1} :catchall_ed
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_b1} :catch_cb

    .line 592
    .end local v4           #writer:Ljava/io/FileWriter;
    .local v5, writer:Ljava/io/FileWriter;
    :try_start_b1
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_101
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_104

    .line 596
    if-eqz v5, :cond_108

    .line 598
    :try_start_b6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bc

    move-object v4, v5

    .line 601
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto/16 :goto_26

    .line 599
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_bc
    move-exception v1

    .line 600
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 601
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    goto/16 :goto_26

    .line 593
    .end local v0           #d:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #s:Ljava/lang/String;
    :catch_cb
    move-exception v6

    move-object v1, v6

    .line 594
    .restart local v1       #e:Ljava/io/IOException;
    :goto_cd
    :try_start_cd
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to write location"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_ed

    .line 596
    if-eqz v4, :cond_26

    .line 598
    :try_start_da
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_df

    goto/16 :goto_26

    .line 599
    :catch_df
    move-exception v1

    .line 600
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception closing file"

    invoke-static {v6, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 596
    .end local v1           #e:Ljava/io/IOException;
    :catchall_ed
    move-exception v6

    :goto_ee
    if-eqz v4, :cond_f3

    .line 598
    :try_start_f0
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 601
    :cond_f3
    :goto_f3
    throw v6

    .line 599
    :catch_f4
    move-exception v1

    .line 600
    .restart local v1       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v7}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Exception closing file"

    invoke-static {v7, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    .line 596
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

    .line 593
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
    .line 610
    :try_start_0
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->svCount:I

    .line 615
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p1, :cond_42

    .line 616
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->prns:[I

    aget v3, p2, v1

    aput v3, v2, v1

    .line 617
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->snrs:[F

    aget v3, p3, v1

    aput v3, v2, v1

    .line 618
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->elevations:[F

    aget v3, p4, v1

    aput v3, v2, v1

    .line 619
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->azimuths:[F

    aget v3, p5, v1

    aput v3, v2, v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_20

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 621
    .end local v1           #i:I
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 622
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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

    .line 624
    .end local v0           #e:Ljava/lang/Exception;
    :cond_42
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->enabled:Z

    .line 455
    return-void
.end method

.method public setGpsOn(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->gpsOn:Z

    .line 459
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 6
    .parameter "l"

    .prologue
    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v1, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->set(Landroid/location/Location;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 632
    :goto_5
    return-void

    .line 629
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 630
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;

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
    .line 450
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->status:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setTTFF(I)V
    .registers 2
    .parameter "ttff"

    .prologue
    .line 462
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    .line 463
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 467
    const-string v4, ""

    .line 468
    .local v4, s:Ljava/lang/String;
    const-string v3, ""

    .line 471
    .local v3, log:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 472
    .local v0, curTime:J
    const-string v5, "Fix Cnt: %d, Cur Time: %tT, Time Span: %d sec\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v8}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 475
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Status: %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->status:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 482
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    :cond_90
    iget v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_306

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Time To First Fix (TTFF): %d ms\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    :goto_b8
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    :cond_d9
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_32b

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Fix UTC: %tr\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getTime()J

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

    .line 509
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    :cond_131
    :goto_131
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_362

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nLatitude, Longitude, Alt,   Bear, Spd., Accr\n%.6f, %.6f, %.1f, %.2f, %.2f, %.2f\n"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getAltitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getBearing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getSpeed()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v9}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getAccuracy()F

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

    .line 536
    :goto_1a5
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_21a

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->mLocation:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;

    invoke-virtual {v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    :cond_21a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nNum of SVs: %d\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->svCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PRN,  SNR,  ELEV,  AZIM\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    const/4 v2, 0x0

    .local v2, i:I
    :goto_251
    iget v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->svCount:I

    if-ge v2, v5, :cond_37e

    .line 548
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->prns:[I

    array-length v5, v5

    if-le v5, v2, :cond_302

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->snrs:[F

    array-length v5, v5

    if-le v5, v2, :cond_302

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->elevations:[F

    array-length v5, v5

    if-le v5, v2, :cond_302

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->azimuths:[F

    array-length v5, v5

    if-le v5, v2, :cond_302

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d, %05.1f, %05.1f, %05.1f\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->prns:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->snrs:[F

    aget v9, v9, v2

    const/high16 v10, 0x4120

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->elevations:[F

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->azimuths:[F

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

    .line 553
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_302

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->prns:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->snrs:[F

    aget v6, v6, v2

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->elevations:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->azimuths:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    :cond_302
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_251

    .line 498
    .end local v2           #i:I
    :cond_306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Time To First Fix (TTFF): N/A\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->ttff:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b8

    .line 513
    :cond_32b
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

    .line 515
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_131

    .line 530
    :cond_362
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

    goto/16 :goto_1a5

    .line 560
    .restart local v2       #i:I
    :cond_37e
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z

    move-result v5

    if-eqz v5, :cond_39c

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->fileSave(Ljava/lang/String;)V

    .line 565
    :cond_39c
    return-object v4
.end method
