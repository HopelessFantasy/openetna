.class Lcom/android/camera/ImageManager$ImageListUber;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageListUber"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

.field mSkipCounts:[I

.field mSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSort:I

.field private mSubList:[Lcom/android/camera/ImageManager$IImageList;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;[Lcom/android/camera/ImageManager$IImageList;I)V
    .registers 10
    .parameter
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 2543
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageListUber;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2523
    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 2531
    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 2533
    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 2544
    invoke-virtual {p2}, [Lcom/android/camera/ImageManager$IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/camera/ImageManager$IImageList;

    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .line 2545
    iput p3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    .line 2547
    iget-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-eqz v4, :cond_2e

    .line 2548
    move-object v0, p2

    .local v0, arr$:[Lcom/android/camera/ImageManager$IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1d
    if-ge v1, v2, :cond_2e

    aget-object v3, v0, v1

    .line 2549
    .local v3, list:Lcom/android/camera/ImageManager$IImageList;
    new-instance v4, Lcom/android/camera/ImageManager$ImageListUber$1;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/ImageManager$ImageListUber$1;-><init>(Lcom/android/camera/ImageManager$ImageListUber;Lcom/android/camera/ImageManager;)V

    iget-object v5, p0, Lcom/android/camera/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ImageManager$IImageList;->setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 2548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 2558
    .end local v0           #arr$:[Lcom/android/camera/ImageManager$IImageList;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:Lcom/android/camera/ImageManager$IImageList;
    :cond_2e
    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ImageManager$ImageListUber;)Lcom/android/camera/ImageManager$IImageList$OnChange;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V
    .registers 8
    .parameter "cb"
    .parameter "totalThumbnails"

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .local v0, arr$:[Lcom/android/camera/ImageManager$IImageList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_13

    aget-object v2, v0, v3

    .line 2562
    .local v2, i:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    .line 2563
    .local v1, count:I
    invoke-interface {v2, p1, p2}, Lcom/android/camera/ImageManager$IImageList;->checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V

    .line 2564
    sub-int/2addr p2, v1

    .line 2561
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2566
    .end local v1           #count:I
    .end local v2           #i:Lcom/android/camera/ImageManager$IImageList;
    :cond_13
    return-void
.end method

.method public commitChanges()V
    .registers 5

    .prologue
    .line 2569
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .line 2570
    .local v2, sublist:[Lcom/android/camera/ImageManager$IImageList;
    array-length v1, v2

    .line 2571
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_e

    .line 2572
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->commitChanges()V

    .line 2571
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2573
    :cond_e
    return-void
.end method

.method public deactivate()V
    .registers 5

    .prologue
    .line 2576
    iget-object v3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .line 2577
    .local v3, sublist:[Lcom/android/camera/ImageManager$IImageList;
    array-length v0, v3

    .line 2578
    .local v0, length:I
    const/4 v1, -0x1

    .line 2579
    .local v1, pos:I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_e

    .line 2580
    aget-object v2, v3, v1

    .line 2581
    .local v2, sub:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    goto :goto_4

    .line 2583
    .end local v2           #sub:Lcom/android/camera/ImageManager$IImageList;
    :cond_e
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2536
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2537
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .local v0, arr$:[Lcom/android/camera/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 2538
    .local v4, list:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2537
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2540
    .end local v4           #list:Lcom/android/camera/ImageManager$IImageList;
    :cond_17
    return-object v1
.end method

.method public getCount()I
    .registers 6

    .prologue
    .line 2586
    iget-object v3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .line 2587
    .local v3, sublist:[Lcom/android/camera/ImageManager$IImageList;
    array-length v2, v3

    .line 2588
    .local v2, length:I
    const/4 v0, 0x0

    .line 2589
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 2590
    aget-object v4, v3, v1

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 2589
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2591
    :cond_11
    return v0
.end method

.method public declared-synchronized getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .registers 32
    .parameter "index"

    .prologue
    .line 2611
    monitor-enter p0

    if-ltz p1, :cond_d

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$ImageListUber;->getCount()I

    move-result v26

    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_3b

    .line 2612
    :cond_d
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "index "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " out of range max is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$ImageListUber;->getCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_38

    .line 2611
    :catchall_38
    move-exception v26

    monitor-exit p0

    throw v26

    .line 2615
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_76

    .line 2616
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 2618
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-nez v26, :cond_89

    .line 2619
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 2623
    :cond_89
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move v0, v6

    move/from16 v1, v26

    if-ge v0, v1, :cond_a7

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v6

    .line 2623
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 2630
    :cond_a7
    const/16 v18, 0x0

    .line 2634
    .local v18, skipCount:I
    const/4 v6, 0x0

    :goto_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move v0, v6

    move/from16 v1, v26

    if-ge v0, v1, :cond_117

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 2637
    .local v23, v:J
    const-wide/32 v26, 0xffff

    and-long v26, v26, v23

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move v14, v0

    .line 2638
    .local v14, offset:I
    const/16 v26, 0x20

    shr-long v26, v23, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    .line 2640
    .local v25, which:I
    add-int v26, v18, v14

    move/from16 v0, v26

    move/from16 v1, p1

    if-le v0, v1, :cond_106

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v26, v26, v25

    sub-int v27, p1, v18

    add-int v20, v26, v27

    .line 2642
    .local v20, subindex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v26, v26, v25

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    :try_end_101
    .catchall {:try_start_3b .. :try_end_101} :catchall_38

    move-result-object v8

    .local v8, img:Lcom/android/camera/ImageManager$IImage;
    move-object/from16 v26, v8

    .line 2700
    .end local v6           #i:I
    .end local v8           #img:Lcom/android/camera/ImageManager$IImage;
    .end local v14           #offset:I
    .end local v20           #subindex:I
    .end local v23           #v:J
    :goto_104
    monitor-exit p0

    return-object v26

    .line 2646
    .restart local v6       #i:I
    .restart local v14       #offset:I
    .restart local v23       #v:J
    :cond_106
    add-int v18, v18, v14

    .line 2647
    :try_start_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v25

    add-int v27, v27, v14

    aput v27, v26, v25

    .line 2634
    add-int/lit8 v6, v6, 0x1

    goto :goto_aa

    .line 2654
    .end local v14           #offset:I
    .end local v23           #v:J
    .end local v25           #which:I
    :cond_117
    const-wide/16 v3, 0x0

    .local v3, count:J
    move/from16 v19, v18

    .line 2656
    .end local v6           #i:I
    .end local v18           #skipCount:I
    .local v19, skipCount:I
    :goto_11b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_183

    const-wide v26, 0x7fffffffffffffffL

    move-wide/from16 v10, v26

    .line 2657
    .local v10, maxTimestamp:J
    :goto_130
    const/16 v25, -0x1

    .line 2658
    .restart local v25       #which:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move v0, v6

    move/from16 v1, v26

    if-ge v0, v1, :cond_18d

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v17, v26, v6

    .line 2660
    .local v17, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v9, v26, v6

    .line 2661
    .local v9, list:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_180

    .line 2662
    move-object v0, v9

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v7

    .line 2665
    .local v7, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v7, :cond_180

    .line 2666
    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v21

    .line 2667
    .local v21, timestamp:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_188

    cmp-long v26, v21, v10

    if-gez v26, :cond_180

    .line 2668
    :goto_17c
    move-wide/from16 v10, v21

    .line 2669
    move/from16 v25, v6

    .line 2658
    .end local v7           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v21           #timestamp:J
    :cond_180
    add-int/lit8 v6, v6, 0x1

    goto :goto_133

    .line 2656
    .end local v6           #i:I
    .end local v9           #list:Lcom/android/camera/ImageManager$IImageList;
    .end local v10           #maxTimestamp:J
    .end local v17           #pos:I
    .end local v25           #which:I
    :cond_183
    const-wide/high16 v26, -0x8000

    move-wide/from16 v10, v26

    goto :goto_130

    .line 2667
    .restart local v6       #i:I
    .restart local v7       #image:Lcom/android/camera/ImageManager$IImage;
    .restart local v9       #list:Lcom/android/camera/ImageManager$IImageList;
    .restart local v10       #maxTimestamp:J
    .restart local v17       #pos:I
    .restart local v21       #timestamp:J
    .restart local v25       #which:I
    :cond_188
    cmp-long v26, v21, v10

    if-lez v26, :cond_180

    goto :goto_17c

    .line 2675
    .end local v7           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v9           #list:Lcom/android/camera/ImageManager$IImageList;
    .end local v17           #pos:I
    .end local v21           #timestamp:J
    :cond_18d
    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19b

    .line 2677
    const/16 v26, 0x0

    move/from16 v18, v19

    .end local v19           #skipCount:I
    .restart local v18       #skipCount:I
    goto/16 :goto_104

    .line 2680
    .end local v18           #skipCount:I
    .restart local v19       #skipCount:I
    :cond_19b
    const/4 v5, 0x0

    .line 2681
    .local v5, done:Z
    const-wide/16 v3, 0x1

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1f1

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    sub-int v17, v26, v27

    .line 2684
    .restart local v17       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #i:I
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 2685
    .local v15, oldEntry:J
    const/16 v26, 0x20

    shr-long v26, v15, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_1f1

    .line 2686
    const-wide/16 v26, 0x1

    add-long v12, v15, v26

    .line 2687
    .local v12, newEntry:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2688
    const/4 v5, 0x1

    .line 2691
    .end local v12           #newEntry:J
    .end local v15           #oldEntry:J
    .end local v17           #pos:I
    :cond_1f1
    if-nez v5, :cond_20b

    .line 2692
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x20

    shl-long v26, v26, v28

    or-long v12, v26, v3

    .line 2696
    .restart local v12       #newEntry:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    .end local v12           #newEntry:J
    :cond_20b
    add-int/lit8 v18, v19, 0x1

    .end local v19           #skipCount:I
    .restart local v18       #skipCount:I
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_229

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v26, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v25

    invoke-interface/range {v26 .. v27}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v26

    goto/16 :goto_104

    .line 2702
    :cond_229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v25

    add-int/lit8 v27, v27, 0x1

    aput v27, v26, v25
    :try_end_235
    .catchall {:try_start_108 .. :try_end_235} :catchall_38

    move/from16 v19, v18

    .line 2703
    .end local v18           #skipCount:I
    .restart local v19       #skipCount:I
    goto/16 :goto_11b
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 5
    .parameter "uri"

    .prologue
    .line 2709
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 2710
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 2711
    .local v1, img:Lcom/android/camera/ImageManager$IImage;
    if-eqz v1, :cond_12

    move-object v2, v1

    .line 2714
    .end local v1           #img:Lcom/android/camera/ImageManager$IImage;
    :goto_11
    return-object v2

    .line 2709
    .restart local v1       #img:Lcom/android/camera/ImageManager$IImage;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2714
    .end local v1           #img:Lcom/android/camera/ImageManager$IImage;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 2595
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    .line 2596
    .local v2, sublist:[Lcom/android/camera/ImageManager$IImageList;
    array-length v1, v2

    .line 2597
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_13

    .line 2598
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2599
    const/4 v3, 0x0

    .line 2602
    :goto_f
    return v3

    .line 2597
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2602
    :cond_13
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public modifySkipCountForDeletedImage(I)V
    .registers 11
    .parameter "index"

    .prologue
    .line 2724
    const/4 v2, 0x0

    .line 2726
    .local v2, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_31

    .line 2727
    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2729
    .local v3, v:J
    const-wide/32 v6, 0xffff

    and-long/2addr v6, v3

    long-to-int v1, v6

    .line 2730
    .local v1, offset:I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v5, v6

    .line 2732
    .local v5, which:I
    add-int v6, v2, v1

    if-le v6, p1, :cond_32

    .line 2733
    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2739
    .end local v1           #offset:I
    .end local v3           #v:J
    .end local v5           #which:I
    :cond_31
    return-void

    .line 2737
    .restart local v1       #offset:I
    .restart local v3       #v:J
    .restart local v5       #which:I
    :cond_32
    add-int/2addr v2, v1

    .line 2726
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 7
    .parameter "image"

    .prologue
    .line 2742
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    .line 2743
    .local v1, parent:Lcom/android/camera/ImageManager$IImageList;
    const/4 v2, -0x1

    .line 2744
    .local v2, pos:I
    const/4 v0, 0x0

    .line 2745
    .local v0, baseIndex:I
    :goto_6
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v4, v4

    if-ge v2, v4, :cond_24

    .line 2746
    iget-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    aget-object v3, v4, v2

    .line 2747
    .local v3, sub:Lcom/android/camera/ImageManager$IImageList;
    if-ne v3, v1, :cond_1e

    .line 2748
    invoke-interface {v3, p1}, Lcom/android/camera/ImageManager$IImageList;->removeImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2749
    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 2750
    const/4 v4, 0x1

    .line 2757
    .end local v3           #sub:Lcom/android/camera/ImageManager$IImageList;
    :goto_1d
    return v4

    .line 2755
    .restart local v3       #sub:Lcom/android/camera/ImageManager$IImageList;
    :cond_1e
    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 2756
    goto :goto_6

    .line 2757
    .end local v3           #sub:Lcom/android/camera/ImageManager$IImageList;
    :cond_24
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public removeImageAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 2761
    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$ImageListUber;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    .line 2762
    .local v0, img:Lcom/android/camera/ImageManager$IImage;
    if-eqz v0, :cond_12

    .line 2763
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    .line 2764
    .local v1, list:Lcom/android/camera/ImageManager$IImageList;
    if-eqz v1, :cond_12

    .line 2765
    invoke-interface {v1, v0}, Lcom/android/camera/ImageManager$IImageList;->removeImage(Lcom/android/camera/ImageManager$IImage;)Z

    .line 2766
    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 2769
    .end local v1           #list:Lcom/android/camera/ImageManager$IImageList;
    :cond_12
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .registers 3
    .parameter "changeCallback"

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_7

    .line 2773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 2774
    :cond_7
    return-void
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .registers 3
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 2777
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 2778
    iput-object p2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    .line 2779
    return-void
.end method
