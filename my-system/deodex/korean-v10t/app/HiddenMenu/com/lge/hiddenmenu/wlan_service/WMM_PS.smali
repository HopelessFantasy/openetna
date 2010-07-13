.class public Lcom/lge/hiddenmenu/wlan_service/WMM_PS;
.super Landroid/app/Activity;
.source "WMM_PS.java"


# static fields
.field private static final DIALOG_APSD_AUTO_CONFIGURATION:I = 0x9

.field private static final DIALOG_APSD_CONFIGURATION:I = 0x6

.field private static final DIALOG_BE_BK_VI_VO_CONFIGURATION:I = 0x8

.field private static final DIALOG_MAX_SERVICE_CONFIGURATION:I = 0x7

.field private static final DIALOG_PS_CONFIGURATION:I = 0x1

.field private static final DIALOG_ROAMMING_CONFIGURATION:I = 0xa

.field private static final DIALOG_ROAMMING_DELTA_CONFIGURATION:I = 0xb

.field private static final DIALOG_WMM_CONFIGURATION:I = 0x5

.field private static final PS_CONFIGURATION:I = 0x2

.field private static final ROAMMING_CONFIGURATION:I = 0x4

.field private static final WMM_CONFIGURATION:I = 0x3


# instance fields
.field public items:[Ljava/lang/String;

.field public list:[Ljava/lang/String;

.field public qos_info:[I

.field public temp_button:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    .line 56
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    .line 57
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->items:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 59
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    aput-object v4, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 61
    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 62
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    aput v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 64
    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->items:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 65
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->items:[Ljava/lang/String;

    aput-object v4, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 67
    :cond_3b
    iput v2, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->temp_button:I

    .line 68
    return-void
.end method


# virtual methods
.method public clarify_true_false(I)Z
    .registers 3
    .parameter "qos"

    .prologue
    const/4 v0, 0x1

    .line 619
    if-ne p1, v0, :cond_4

    .line 623
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public config_create()V
    .registers 16

    .prologue
    const/16 v14, 0xf

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 516
    new-array v1, v14, [Ljava/lang/String;

    .line 517
    .local v1, con:[Ljava/lang/String;
    const-string v5, ""

    .line 518
    .local v5, long_str:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v11, "/data/misc/wifi/config"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v8, outFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 522
    .local v9, outputFile:Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_85

    .end local v9           #outputFile:Ljava/io/FileOutputStream;
    .local v10, outputFile:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 532
    .end local v10           #outputFile:Ljava/io/FileOutputStream;
    .restart local v9       #outputFile:Ljava/io/FileOutputStream;
    :goto_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 534
    .local v7, outChannel:Ljava/nio/channels/FileChannel;
    const-string v11, "btc_mode=1"

    aput-object v11, v1, v13

    .line 535
    const-string v11, "country=AU"

    aput-object v11, v1, v12

    .line 536
    const/4 v11, 0x2

    const-string v12, "vlan_mode=0"

    aput-object v12, v1, v11

    .line 537
    const/4 v11, 0x3

    const-string v12, "mpc=1"

    aput-object v12, v1, v11

    .line 538
    const/4 v11, 0x4

    const-string v12, "wme=1"

    aput-object v12, v1, v11

    .line 539
    const/4 v11, 0x5

    const-string v12, "wme_apsd=0"

    aput-object v12, v1, v11

    .line 540
    const/4 v11, 0x6

    const-string v12, "wme_qosinfo=0x00"

    aput-object v12, v1, v11

    .line 541
    const/4 v11, 0x7

    const-string v12, "wme_auto_trigger=1"

    aput-object v12, v1, v11

    .line 542
    const/16 v11, 0x8

    const-string v12, "wme_apsd_trigger=80"

    aput-object v12, v1, v11

    .line 543
    const/16 v11, 0x9

    const-string v12, "roam_off=0"

    aput-object v12, v1, v11

    .line 544
    const/16 v11, 0xa

    const-string v12, "roam_scan_period=10"

    aput-object v12, v1, v11

    .line 545
    const/16 v11, 0xb

    const-string v12, "roam_delta=1"

    aput-object v12, v1, v11

    .line 546
    const/16 v11, 0xc

    const-string v12, "roam_trigger=70"

    aput-object v12, v1, v11

    .line 547
    const/16 v11, 0xd

    const-string v12, "PM=1"

    aput-object v12, v1, v11

    .line 548
    const/16 v11, 0xe

    const-string v12, "assoc_listen=1"

    aput-object v12, v1, v11

    .line 550
    aget-object v11, v1, v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 552
    .local v6, maxLength:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_71
    array-length v11, v1

    if-ge v4, v11, :cond_93

    .line 553
    aget-object v11, v1, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_82

    .line 554
    aget-object v11, v1, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 552
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 523
    .end local v4           #i:I
    .end local v6           #maxLength:I
    .end local v7           #outChannel:Ljava/nio/channels/FileChannel;
    :catch_85
    move-exception v11

    move-object v2, v11

    .line 524
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v11}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 526
    :try_start_8c
    #Replaced unresolvable odex instruction with a throw
    throw v9
    #invoke-virtual-quick {v9}, vtable@0xb
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_ea

    .line 529
    :goto_8f
    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_16

    .line 557
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #i:I
    .restart local v6       #maxLength:I
    .restart local v7       #outChannel:Ljava/nio/channels/FileChannel;
    :cond_93
    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 560
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    :goto_9c
    if-ge v4, v14, :cond_c7

    .line 562
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 566
    :cond_c7
    :try_start_c7
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_e3
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ce} :catch_d4

    .line 570
    if-eqz v9, :cond_d3

    .line 572
    :try_start_d0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_ec

    .line 577
    :cond_d3
    :goto_d3
    return-void

    .line 567
    :catch_d4
    move-exception v11

    move-object v3, v11

    .line 568
    .local v3, e2:Ljava/io/IOException;
    :try_start_d6
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v11}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_e3

    .line 570
    if-eqz v9, :cond_d3

    .line 572
    :try_start_dd
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_d3

    .line 573
    :catch_e1
    move-exception v11

    goto :goto_d3

    .line 570
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_e3
    move-exception v11

    if-eqz v9, :cond_e9

    .line 572
    :try_start_e6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ee

    .line 574
    :cond_e9
    :goto_e9
    throw v11

    .line 527
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    .end local v6           #maxLength:I
    .end local v7           #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_ea
    move-exception v11

    goto :goto_8f

    .line 573
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    .restart local v6       #maxLength:I
    .restart local v7       #outChannel:Ljava/nio/channels/FileChannel;
    :catch_ec
    move-exception v11

    goto :goto_d3

    :catch_ee
    move-exception v12

    goto :goto_e9
.end method

.method public config_parsing()V
    .registers 13

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 586
    .local v2, count:I
    new-instance v6, Ljava/io/File;

    const-string v9, "/data/misc/wifi/config"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v6, infile:Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_a
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_18

    .line 589
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v5

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 592
    :cond_18
    :try_start_18
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_85
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_6f

    .line 596
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_60

    .line 597
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 598
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v10, v8, v10

    aput-object v10, v9, v2

    .line 599
    const-string v9, "config_parsing (dongp.kim)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "list="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_27 .. :try_end_56} :catchall_93
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_56} :catch_59

    .line 600
    add-int/lit8 v2, v2, 0x1

    .line 601
    goto :goto_27

    .line 602
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #values:[Ljava/lang/String;
    :catch_59
    move-exception v9

    move-object v3, v9

    .line 603
    .local v3, e:Ljava/io/IOException;
    :try_start_5b
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_93
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_96

    .line 609
    .end local v3           #e:Ljava/io/IOException;
    :cond_60
    if-eqz v1, :cond_65

    .line 610
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    :cond_65
    move-object v0, v1

    .line 615
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_66
    :goto_66
    return-void

    .line 611
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_67
    move-exception v4

    .line 612
    .local v4, ex:Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    .line 614
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_66

    .line 605
    .end local v4           #ex:Ljava/io/IOException;
    :catch_6f
    move-exception v9

    move-object v3, v9

    .line 606
    .restart local v3       #e:Ljava/io/IOException;
    :goto_71
    :try_start_71
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "IOEception Error"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_85

    .line 609
    if-eqz v0, :cond_66

    .line 610
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_66

    .line 611
    :catch_7e
    move-exception v4

    .line 612
    .restart local v4       #ex:Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_66

    .line 608
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_85
    move-exception v9

    .line 609
    :goto_86
    if-eqz v0, :cond_8b

    .line 610
    :try_start_88
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 613
    :cond_8b
    :goto_8b
    throw v9

    .line 611
    :catch_8c
    move-exception v4

    .line 612
    .restart local v4       #ex:Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v10}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_8b

    .line 608
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_93
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_86

    .line 605
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #e:Ljava/io/IOException;
    :catch_96
    move-exception v9

    move-object v3, v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_71
.end method

.method public config_update()V
    .registers 15

    .prologue
    .line 633
    const/16 v10, 0xf

    new-array v1, v10, [Ljava/lang/String;

    .line 634
    .local v1, con:[Ljava/lang/String;
    const-string v4, ""

    .line 635
    .local v4, long_str:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/misc/wifi/config"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v7, outFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 639
    .local v8, outputFile:Ljava/io/FileOutputStream;
    :try_start_e
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_296

    .end local v8           #outputFile:Ljava/io/FileOutputStream;
    .local v9, outputFile:Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 645
    .end local v9           #outputFile:Ljava/io/FileOutputStream;
    .restart local v8       #outputFile:Ljava/io/FileOutputStream;
    :goto_14
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 647
    .local v6, outChannel:Ljava/nio/channels/FileChannel;
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "btc_mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 648
    const-string v10, "config_update"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[0]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "country="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 650
    const-string v10, "config_update (dongp.kim)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[1]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vlan_mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 652
    const-string v10, "config_update (dongp.kim)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[2]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mpc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 654
    const-string v10, "config_update (dongp.kim)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[3]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wme="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 656
    const-string v10, "config_update (dongp.kim)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[4]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wme_apsd="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 658
    const-string v10, "config_update (dongp.kim)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list[5]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wme_qosinfo=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 660
    const/4 v10, 0x7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wme_auto_trigger="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0xd

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 661
    const/16 v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wme_apsd_trigger="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0xe

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 662
    const/16 v10, 0x9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "roam_off="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 663
    const/16 v10, 0xa

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "roam_scan_period="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0x8

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 664
    const/16 v10, 0xb

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "roam_delta="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0x9

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 665
    const/16 v10, 0xc

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "roam_trigger="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 666
    const/16 v10, 0xd

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PM="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0xb

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 667
    const/16 v10, 0xe

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "assoc_listen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v13, 0xc

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 669
    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 671
    .local v5, maxLength:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_282
    array-length v10, v1

    if-ge v3, v10, :cond_2a3

    .line 672
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_293

    .line 673
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 671
    :cond_293
    add-int/lit8 v3, v3, 0x1

    goto :goto_282

    .line 640
    .end local v3           #i:I
    .end local v5           #maxLength:I
    .end local v6           #outChannel:Ljava/nio/channels/FileChannel;
    :catch_296
    move-exception v10

    move-object v2, v10

    .line 641
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 642
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_14

    .line 676
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #i:I
    .restart local v5       #maxLength:I
    .restart local v6       #outChannel:Ljava/nio/channels/FileChannel;
    :cond_2a3
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 679
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    :goto_2ac
    const/16 v10, 0xf

    if-ge v3, v10, :cond_2d9

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 682
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ac

    .line 685
    :cond_2d9
    :try_start_2d9
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e0
    .catchall {:try_start_2d9 .. :try_end_2e0} :catchall_2f1
    .catch Ljava/io/IOException; {:try_start_2d9 .. :try_end_2e0} :catch_2e4

    .line 691
    :try_start_2e0
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_2e3} :catch_2f6

    .line 694
    :goto_2e3
    return-void

    .line 687
    :catch_2e4
    move-exception v10

    move-object v2, v10

    .line 688
    .local v2, e:Ljava/io/IOException;
    :try_start_2e6
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2eb
    .catchall {:try_start_2e6 .. :try_end_2eb} :catchall_2f1

    .line 691
    :try_start_2eb
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ee
    .catch Ljava/io/IOException; {:try_start_2eb .. :try_end_2ee} :catch_2ef

    goto :goto_2e3

    .line 692
    :catch_2ef
    move-exception v10

    goto :goto_2e3

    .line 690
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2f1
    move-exception v10

    .line 691
    :try_start_2f2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f5
    .catch Ljava/io/IOException; {:try_start_2f2 .. :try_end_2f5} :catch_2f8

    .line 692
    :goto_2f5
    throw v10

    :catch_2f6
    move-exception v10

    goto :goto_2e3

    :catch_2f8
    move-exception v11

    goto :goto_2f5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 460
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->setContentView(I)V

    .line 463
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 464
    .local v0, file_open:Landroid/widget/Button;
    new-instance v5, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    const v5, 0x7f07000b

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 486
    .local v4, textEntry:Landroid/widget/Button;
    new-instance v5, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$40;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$40;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 493
    .local v3, selectButton:Landroid/widget/Button;
    new-instance v5, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$41;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$41;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 501
    .local v2, radioButton:Landroid/widget/Button;
    new-instance v5, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$42;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$42;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 508
    .local v1, file_save:Landroid/widget/Button;
    new-instance v5, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$43;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$43;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 30
    .parameter "id"

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_52c

    .line 448
    const/16 v22, 0x0

    :goto_5
    return-object v22

    .line 72
    :pswitch_6
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f08019d

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f060045

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$3;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$2;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$1;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto :goto_5

    .line 99
    :pswitch_59
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801a9

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f060046

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$6;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$5;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$4;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 128
    :pswitch_ad
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801aa

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f060047

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$8;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$7;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 151
    :pswitch_101
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801ab

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f060048

    const/16 v24, 0x0

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$12;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$12;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$11;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$10;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 178
    :pswitch_149
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801ac

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f060049

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->clarify_true_false(I)Z

    move-result v26

    aput-boolean v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->clarify_true_false(I)Z

    move-result v26

    aput-boolean v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->clarify_true_false(I)Z

    move-result v26

    aput-boolean v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->clarify_true_false(I)Z

    move-result v26

    aput-boolean v26, v24, v25

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$13;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$13;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 224
    :pswitch_1ef
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801ad

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f06004a

    const/16 v24, 0x0

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$18;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$17;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$17;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$16;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$16;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 247
    :pswitch_237
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801ae

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f06004b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$21;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$21;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$20;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$20;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$19;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$19;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 273
    :pswitch_28b
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801af

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f06004c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x9

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    sub-int v24, v24, v25

    new-instance v25, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$24;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$24;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v25}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$23;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$22;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 300
    :pswitch_2e3
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 301
    .local v8, factory_ps:Landroid/view/LayoutInflater;
    const v22, 0x7f030004

    const/16 v23, 0x0

    move-object v0, v8

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 303
    .local v18, textEntryView_ps:Landroid/view/View;
    const v22, 0x7f070010

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 304
    .local v13, ps_conf:Landroid/widget/Button;
    const v22, 0x7f070012

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 305
    .local v11, listenInterval:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    aget-object v22, v22, v23

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$25;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$25;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801a3

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$26;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$26;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 333
    .end local v8           #factory_ps:Landroid/view/LayoutInflater;
    .end local v11           #listenInterval:Landroid/widget/EditText;
    .end local v13           #ps_conf:Landroid/widget/Button;
    .end local v18           #textEntryView_ps:Landroid/view/View;
    :pswitch_36d
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 334
    .local v10, factory_wmm:Landroid/view/LayoutInflater;
    const v22, 0x7f030040

    const/16 v23, 0x0

    move-object v0, v10

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 336
    .local v20, textEntryView_wmm:Landroid/view/View;
    const v22, 0x7f07010a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 337
    .local v21, wmm_mode:Landroid/widget/Button;
    const v22, 0x7f07010b

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 338
    .local v5, apsd_mode:Landroid/widget/Button;
    const v22, 0x7f07010c

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 339
    .local v12, max_service:Landroid/widget/Button;
    const v22, 0x7f07010d

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 340
    .local v7, be_bk_vi_vo:Landroid/widget/Button;
    const v22, 0x7f07010e

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 341
    .local v4, apsd_auto:Landroid/widget/Button;
    const v22, 0x7f07010f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 343
    .local v6, apsd_trigger_period:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0xd

    aget-object v22, v22, v23

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$28;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$28;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$29;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$29;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$30;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$30;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$31;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$31;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$32;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$32;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801a4

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$34;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$34;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$33;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$33;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 402
    .end local v4           #apsd_auto:Landroid/widget/Button;
    .end local v5           #apsd_mode:Landroid/widget/Button;
    .end local v6           #apsd_trigger_period:Landroid/widget/EditText;
    .end local v7           #be_bk_vi_vo:Landroid/widget/Button;
    .end local v10           #factory_wmm:Landroid/view/LayoutInflater;
    .end local v12           #max_service:Landroid/widget/Button;
    .end local v20           #textEntryView_wmm:Landroid/view/View;
    .end local v21           #wmm_mode:Landroid/widget/Button;
    :pswitch_464
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 403
    .local v9, factory_roamming:Landroid/view/LayoutInflater;
    const v22, 0x7f03002d

    const/16 v23, 0x0

    move-object v0, v9

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 405
    .local v19, textEntryView_roamming:Landroid/view/View;
    const v22, 0x7f0700c4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 406
    .local v14, roamming_conf:Landroid/widget/Button;
    const v22, 0x7f0700c5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 407
    .local v16, roamming_period:Landroid/widget/EditText;
    const v22, 0x7f0700c6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 408
    .local v17, roamming_trigger:Landroid/widget/EditText;
    const v22, 0x7f0700c7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 410
    .local v15, roamming_delta:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget-object v22, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    aget-object v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$35;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$35;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance v22, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$36;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$36;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0801b0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b4

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$38;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$38;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0801b5

    new-instance v24, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$37;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$37;-><init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    goto/16 :goto_5

    .line 70
    :pswitch_data_52c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2e3
        :pswitch_36d
        :pswitch_464
        :pswitch_59
        :pswitch_ad
        :pswitch_101
        :pswitch_149
        :pswitch_1ef
        :pswitch_237
        :pswitch_28b
    .end packed-switch
.end method
