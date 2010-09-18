.class public final Landroid/lge/lgdrm/DrmContentSession;
.super Ljava/lang/Object;
.source "DrmContentSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntSes"


# instance fields
.field private contentList:[Landroid/lge/lgdrm/DrmContent;

.field private context:Landroid/content/Context;

.field private defaultContent:Landroid/lge/lgdrm/DrmContent;

.field private nativeSession:I

.field private nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

.field private selectedContent:Landroid/lge/lgdrm/DrmContent;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method

.method protected constructor <init>(Landroid/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .registers 3
    .parameter "content"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    .line 566
    iput-object p2, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    .line 567
    return-void
.end method

.method private activateContent(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "resultReceiver"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1459
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .local v0, browserComponentName:Landroid/content/ComponentName;
    invoke-virtual {p0, v7}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v2

    .line 1462
    .local v2, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v2, :cond_13

    move v4, v6

    .line 1504
    :goto_12
    return v4

    .line 1467
    :cond_13
    if-nez p1, :cond_17

    move v4, v6

    .line 1469
    goto :goto_12

    .line 1473
    :cond_17
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_22

    move v4, v6

    .line 1476
    goto :goto_12

    .line 1480
    :cond_22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1483
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1486
    const-string v4, "android.lge.lgdrm.extra.FILE_NAME"

    iget-object v5, v2, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    if-eqz p2, :cond_49

    .line 1491
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, component:[Ljava/lang/String;
    if-nez v1, :cond_44

    move v4, v6

    .line 1494
    goto :goto_12

    .line 1497
    :cond_44
    const-string v4, "android.lge.lgdrm.extra.RECEIVER_NAME"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    .end local v1           #component:[Ljava/lang/String;
    :cond_49
    iget-object v4, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 1504
    goto :goto_12
.end method

.method private native nativeActivateContent(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeConsumeRight(Ljava/lang/String;IIIJJ)I
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeDrmOpen(Ljava/lang/String;II[B)I
.end method

.method private native nativeGetContentBasicInfo(Landroid/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeGetContentList(Ljava/lang/String;)[Landroid/lge/lgdrm/DrmContent;
.end method

.method private native nativeGetDecryptionInfo(ILjava/lang/String;II)[B
.end method

.method private native nativeGetDrmTime()J
.end method

.method private native nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetRightInfo(Landroid/lge/lgdrm/DrmRight;Ljava/lang/String;III)I
.end method

.method private native nativeIsSettingsAvailable(Ljava/lang/String;II)I
.end method

.method private native nativeJudgeRight(Ljava/lang/String;III)I
.end method

.method public static openDrmStream(Ljava/lang/String;[B)Landroid/lge/lgdrm/DrmStream;
    .registers 5
    .parameter "filename"
    .parameter "decInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1278
    if-nez p0, :cond_b

    .line 1280
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1282
    :cond_b
    if-nez p1, :cond_15

    .line 1284
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter decInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1287
    :cond_15
    invoke-static {p0, v1, v1, p1}, Landroid/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v0

    .line 1288
    .local v0, nativeHandle:I
    if-nez v0, :cond_1d

    .line 1290
    const/4 v1, 0x0

    .line 1293
    :goto_1c
    return-object v1

    :cond_1d
    new-instance v1, Landroid/lge/lgdrm/DrmStream;

    invoke-direct {v1, v0}, Landroid/lge/lgdrm/DrmStream;-><init>(I)V

    goto :goto_1c
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 1525
    iput p1, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1528
    new-instance v0, Landroid/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Landroid/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 1529
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 1531
    const/4 v0, -0x1

    .line 1538
    :goto_e
    return v0

    .line 1533
    :cond_f
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 1534
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Landroid/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 1535
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 1536
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    .line 1538
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private startDldClient(Landroid/lge/lgdrm/DrmContent;)I
    .registers 11
    .parameter "content"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1554
    iget v3, p1, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    move v1, v6

    .line 1556
    .local v1, downloadAgent:I
    :goto_a
    new-instance v2, Landroid/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    iget v4, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Landroid/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 1557
    .local v2, session:Landroid/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_23

    .line 1559
    iget v3, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v3, v6}, Landroid/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1560
    iput v5, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1561
    iput-object v7, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    move v3, v8

    .line 1585
    :goto_1f
    return v3

    .line 1554
    .end local v1           #downloadAgent:I
    .end local v2           #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_20
    const/4 v3, 0x4

    move v1, v3

    goto :goto_a

    .line 1568
    .restart local v1       #downloadAgent:I
    .restart local v2       #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_23
    new-instance v0, Landroid/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Landroid/lge/lgdrm/DrmDldClient;-><init>(Landroid/lge/lgdrm/DrmObjectSession;Landroid/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 1569
    .local v0, dldClient:Landroid/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_39

    .line 1572
    iget v3, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v3, v6}, Landroid/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1573
    iput v5, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1574
    iput-object v7, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    move v3, v8

    .line 1575
    goto :goto_1f

    .line 1579
    :cond_39
    iput v5, p0, Landroid/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1580
    iput-object v7, p0, Landroid/lge/lgdrm/DrmContentSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 1583
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmDldClient;->start()V

    move v3, v5

    .line 1585
    goto :goto_1f
.end method


# virtual methods
.method public consumeRight(JJ)I
    .registers 15
    .parameter "startTime"
    .parameter "usedTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    .line 1109
    cmp-long v0, p1, v1

    if-ltz v0, :cond_b

    cmp-long v0, p3, v1

    if-gez v0, :cond_d

    :cond_b
    move v0, v3

    .line 1132
    :goto_c
    return v0

    .line 1114
    :cond_d
    cmp-long v0, p1, v1

    if-nez v0, :cond_17

    cmp-long v0, p3, v1

    if-nez v0, :cond_17

    move v0, v3

    .line 1117
    goto :goto_c

    .line 1120
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v9

    .line 1121
    .local v9, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v9, :cond_20

    move v0, v3

    .line 1123
    goto :goto_c

    .line 1126
    :cond_20
    iget v0, v9, Landroid/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2d

    .line 1129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_2d
    iget-object v1, v9, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, v9, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v3, v9, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    iget v4, v9, Landroid/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/lge/lgdrm/DrmContentSession;->nativeConsumeRight(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_c
.end method

.method public destroySession()V
    .registers 1

    .prologue
    .line 589
    return-void
.end method

.method public getContent(Ljava/lang/String;)Landroid/lge/lgdrm/DrmContent;
    .registers 7
    .parameter "cid"

    .prologue
    const/4 v4, 0x0

    .line 605
    if-nez p1, :cond_b

    .line 607
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter cid is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_b
    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v2, :cond_11

    move-object v2, v4

    .line 640
    :goto_10
    return-object v2

    .line 614
    :cond_11
    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget v2, v2, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    move-object v2, v4

    .line 616
    goto :goto_10

    .line 619
    :cond_1a
    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget-object v2, v2, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 620
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    move-object v2, v4

    .line 622
    goto :goto_10

    .line 629
    :cond_27
    new-instance v0, Landroid/lge/lgdrm/DrmContent;

    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget-object v2, v2, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget v3, v3, Landroid/lge/lgdrm/DrmContent;->contentType:I

    invoke-direct {v0, v2, v1, v3}, Landroid/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 630
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_38

    move-object v2, v4

    .line 632
    goto :goto_10

    .line 635
    :cond_38
    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget-object v2, v2, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Landroid/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_44

    move-object v2, v4

    .line 637
    goto :goto_10

    :cond_44
    move-object v2, v0

    .line 640
    goto :goto_10
.end method

.method public getContentList()[Landroid/lge/lgdrm/DrmContent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 652
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v1, :cond_8

    move-object v1, v4

    .line 702
    :goto_7
    return-object v1

    .line 658
    :cond_8
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    if-eqz v1, :cond_1f

    .line 660
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    array-length v1, v1

    new-array v0, v1, [Landroid/lge/lgdrm/DrmContent;

    .line 661
    .local v0, list:[Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_15

    move-object v1, v4

    .line 664
    goto :goto_7

    .line 668
    :cond_15
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    iget-object v2, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 669
    goto :goto_7

    .line 672
    .end local v0           #list:[Landroid/lge/lgdrm/DrmContent;
    :cond_1f
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget v1, v1, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_33

    .line 674
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/lge/lgdrm/DrmContent;

    .line 675
    .restart local v0       #list:[Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2d

    move-object v1, v4

    .line 678
    goto :goto_7

    .line 680
    :cond_2d
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    aput-object v1, v0, v3

    move-object v1, v0

    .line 682
    goto :goto_7

    .line 685
    .end local v0           #list:[Landroid/lge/lgdrm/DrmContent;
    :cond_33
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    iget-object v1, v1, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetContentList(Ljava/lang/String;)[Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 686
    .restart local v0       #list:[Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3f

    move-object v1, v4

    .line 688
    goto :goto_7

    .line 691
    :cond_3f
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    aput-object v1, v0, v3

    .line 693
    array-length v1, v0

    new-array v1, v1, [Landroid/lge/lgdrm/DrmContent;

    iput-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    .line 694
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    if-nez v1, :cond_4e

    move-object v1, v4

    .line 696
    goto :goto_7

    .line 700
    :cond_4e
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->contentList:[Landroid/lge/lgdrm/DrmContent;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 702
    goto :goto_7
.end method

.method public getDecryptionInfo()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1311
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1313
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1316
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1317
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_17

    .line 1319
    const/4 v1, 0x0

    .line 1328
    :goto_16
    return-object v1

    .line 1322
    :cond_17
    iget v1, v0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_24

    .line 1325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1328
    :cond_24
    iget v1, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    iget-object v2, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetDecryptionInfo(ILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_16
.end method

.method public getDrmTime()J
    .registers 3

    .prologue
    .line 912
    invoke-direct {p0}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetDrmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRightList(I)[Landroid/lge/lgdrm/DrmRight;
    .registers 4
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x80

    if-le p1, v0, :cond_f

    .line 804
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rights selection is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;
    .registers 4
    .parameter "defaults"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, temp:Landroid/lge/lgdrm/DrmContent;
    if-eqz p1, :cond_6

    .line 760
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    .line 774
    :goto_5
    return-object v0

    .line 764
    :cond_6
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->selectedContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v1, :cond_d

    .line 766
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    goto :goto_5

    .line 770
    :cond_d
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->selectedContent:Landroid/lge/lgdrm/DrmContent;

    goto :goto_5
.end method

.method public getSelectedRight(Z)Landroid/lge/lgdrm/DrmRight;
    .registers 10
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 879
    .local v6, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v6, :cond_a

    move-object v0, v7

    .line 902
    :goto_9
    return-object v0

    .line 884
    :cond_a
    iget v0, v6, Landroid/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_17

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_17
    new-instance v1, Landroid/lge/lgdrm/DrmRight;

    invoke-direct {v1, v6}, Landroid/lge/lgdrm/DrmRight;-><init>(Landroid/lge/lgdrm/DrmContent;)V

    .line 891
    .local v1, right:Landroid/lge/lgdrm/DrmRight;
    if-nez v1, :cond_20

    move-object v0, v7

    .line 893
    goto :goto_9

    .line 896
    :cond_20
    iget-object v2, v6, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v6, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v4, v6, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v6, Landroid/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/lge/lgdrm/DrmContentSession;->nativeGetRightInfo(Landroid/lge/lgdrm/DrmRight;Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, v7

    .line 899
    goto :goto_9

    :cond_31
    move-object v0, v1

    .line 902
    goto :goto_9
.end method

.method public isActionSupported(I)Z
    .registers 8
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1155
    const/4 v1, -0x1

    .line 1158
    .local v1, retVal:I
    if-lt p1, v5, :cond_9

    const/16 v2, 0x8

    if-le p1, v2, :cond_11

    .line 1160
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid action"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1163
    :cond_11
    invoke-virtual {p0, v4}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1164
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_19

    move v2, v4

    .line 1218
    :goto_18
    return v2

    .line 1169
    :cond_19
    packed-switch p1, :pswitch_data_6a

    .line 1213
    :cond_1c
    :goto_1c
    const/4 v2, -0x1

    if-ne v1, v2, :cond_67

    move v2, v4

    .line 1215
    goto :goto_18

    .line 1172
    :pswitch_21
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1c

    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1c

    .line 1175
    const/4 v1, 0x0

    goto :goto_1c

    .line 1182
    :pswitch_2f
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_1c

    .line 1184
    iget-object v2, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v2, v3, p1}, Landroid/lge/lgdrm/DrmContentSession;->nativeIsSettingsAvailable(Ljava/lang/String;II)I

    move-result v1

    goto :goto_1c

    .line 1189
    :pswitch_3f
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v5, :cond_4d

    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4d

    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1c

    .line 1193
    :cond_4d
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v5, :cond_5f

    .line 1195
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    const/16 v3, 0x300

    if-eq v2, v3, :cond_5d

    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    const/16 v3, 0x301

    if-ne v2, v3, :cond_1c

    .line 1198
    :cond_5d
    const/4 v1, 0x0

    goto :goto_1c

    .line 1203
    :cond_5f
    const/4 v1, 0x0

    goto :goto_1c

    :pswitch_61
    move v2, v4

    .line 1208
    goto :goto_18

    :pswitch_63
    move v2, v4

    .line 1209
    goto :goto_18

    :pswitch_65
    move v2, v4

    .line 1210
    goto :goto_18

    :cond_67
    move v2, v5

    .line 1218
    goto :goto_18

    .line 1169
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_61
        :pswitch_63
        :pswitch_3f
        :pswitch_65
    .end packed-switch
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->selectedContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v0, :cond_a

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public judgeRight(IZ)I
    .registers 9
    .parameter "permission"
    .parameter "checkPreviewURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1043
    const/4 v1, 0x0

    .line 1046
    .local v1, preview:I
    if-lt p1, v5, :cond_8

    const/16 v3, 0x80

    if-le p1, v3, :cond_10

    .line 1048
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1051
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1052
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_19

    .line 1054
    const/4 v3, -0x1

    .line 1072
    :goto_18
    return v3

    .line 1057
    :cond_19
    if-eqz p2, :cond_22

    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22

    move v3, v5

    .line 1060
    goto :goto_18

    .line 1063
    :cond_22
    if-nez p2, :cond_28

    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    if-ne v3, v5, :cond_29

    .line 1065
    :cond_28
    const/4 v1, 0x1

    .line 1068
    :cond_29
    iput p1, v0, Landroid/lge/lgdrm/DrmContent;->permisson:I

    .line 1069
    iget-object v3, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1, p1}, Landroid/lge/lgdrm/DrmContentSession;->nativeJudgeRight(Ljava/lang/String;III)I

    move-result v2

    .line 1070
    .local v2, retVal:I
    iput v2, v0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    move v3, v2

    .line 1072
    goto :goto_18
.end method

.method public obtainNewRight(ILandroid/content/ComponentName;)I
    .registers 9
    .parameter "type"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1353
    const/4 v2, 0x0

    .line 1357
    .local v2, retVal:I
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Landroid/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1359
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Rights renewal is not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1361
    :cond_11
    if-nez p2, :cond_1b

    .line 1363
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Parameter resultReceiver is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1365
    :cond_1b
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v3, :cond_27

    .line 1367
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1370
    :cond_27
    invoke-virtual {p0, v5}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1371
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2f

    move v3, v5

    .line 1404
    :goto_2e
    return v3

    .line 1376
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, intentReceiver:Ljava/lang/String;
    if-nez v1, :cond_52

    move v3, v5

    .line 1379
    goto :goto_2e

    .line 1382
    :cond_52
    const/4 v3, 0x1

    if-ne p1, v3, :cond_61

    .line 1384
    iget-object v3, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1}, Landroid/lge/lgdrm/DrmContentSession;->nativeActivateContent(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1399
    :cond_5d
    :goto_5d
    if-gtz v2, :cond_79

    move v3, v5

    .line 1401
    goto :goto_2e

    .line 1386
    :cond_61
    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    .line 1388
    iget-object v3, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, p1, v3, v4, v1}, Landroid/lge/lgdrm/DrmContentSession;->nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1389
    if-lez v2, :cond_5d

    .line 1392
    const/4 v3, -0x1

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmContentSession;->startDldClient(Landroid/lge/lgdrm/DrmContent;)I

    move-result v4

    if-ne v3, v4, :cond_5d

    .line 1394
    const/4 v2, -0x1

    goto :goto_5d

    :cond_79
    move v3, v2

    .line 1404
    goto :goto_2e
.end method

.method public openDrmStream()Landroid/lge/lgdrm/DrmStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1236
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1238
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1242
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_18

    move-object v2, v5

    .line 1259
    :goto_17
    return-object v2

    .line 1247
    :cond_18
    iget v2, v0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_25

    .line 1250
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Select Right first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1253
    :cond_25
    iget-object v2, v0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {v2, v3, v4, v5}, Landroid/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v1

    .line 1254
    .local v1, nativeHandle:I
    if-nez v1, :cond_33

    move-object v2, v5

    .line 1256
    goto :goto_17

    .line 1259
    :cond_33
    new-instance v2, Landroid/lge/lgdrm/DrmStream;

    invoke-direct {v2, v1}, Landroid/lge/lgdrm/DrmStream;-><init>(I)V

    goto :goto_17
.end method

.method public selectContent(Landroid/lge/lgdrm/DrmContent;)I
    .registers 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 725
    if-nez p1, :cond_a

    .line 727
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter content is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_a
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    if-nez v0, :cond_10

    .line 732
    const/4 v0, -0x1

    .line 742
    :goto_f
    return v0

    .line 735
    :cond_10
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentSession;->defaultContent:Landroid/lge/lgdrm/DrmContent;

    invoke-virtual {v0, p1}, Landroid/lge/lgdrm/DrmContent;->isSibling(Landroid/lge/lgdrm/DrmContent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid content to this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_20
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContentSession;->selectedContent:Landroid/lge/lgdrm/DrmContent;

    .line 742
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public selectRight(Landroid/lge/lgdrm/DrmRight;)I
    .registers 5
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 833
    if-nez p1, :cond_a

    .line 835
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter right is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 839
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_13

    .line 841
    const/4 v1, -0x1

    return v1

    .line 844
    :cond_13
    invoke-virtual {p1, v0}, Landroid/lge/lgdrm/DrmRight;->isMatched(Landroid/lge/lgdrm/DrmContent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 846
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid right to this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights selection is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public syncDrmTime(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 934
    if-nez p1, :cond_b

    .line 936
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_b
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 940
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 943
    :cond_17
    invoke-virtual {p0, v2}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 944
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1e

    .line 946
    return v2

    .line 949
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Time sync is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public uploadRight(Landroid/content/ComponentName;)I
    .registers 5
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1426
    if-nez p1, :cond_b

    .line 1428
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_b
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 1432
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1435
    :cond_17
    invoke-virtual {p0, v2}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1436
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1e

    .line 1438
    return v2

    .line 1441
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights upload is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
