.class public Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 494
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 24
    .parameter "intent"
    .parameter "debug"
    .parameter "defaultOnly"
    .parameter "resolvedType"
    .parameter "scheme"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TF;>;",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p6, src:Ljava/util/List;,"Ljava/util/List<TF;>;"
    .local p7, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 444
    .local v8, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p6, :cond_49

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    move v10, v4

    .line 445
    .local v10, N:I
    :goto_b
    const/4 v11, 0x0

    .line 447
    .local v11, hasNonDefaults:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_d
    if-ge v12, v10, :cond_c7

    .line 448
    move-object/from16 v0, p6

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 450
    .local v3, filter:Landroid/content/IntentFilter;,"TF;"
    if-eqz p2, :cond_32

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching against filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_32
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 454
    if-eqz p2, :cond_46

    .line 455
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target already added"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_46
    :goto_46
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 444
    .end local v3           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v10           #N:I
    .end local v11           #hasNonDefaults:Z
    .end local v12           #i:I
    :cond_49
    const/4 v4, 0x0

    move v10, v4

    goto :goto_b

    .line 460
    .restart local v3       #filter:Landroid/content/IntentFilter;,"TF;"
    .restart local v10       #N:I
    .restart local v11       #hasNonDefaults:Z
    .restart local v12       #i:I
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    const-string v9, "IntentResolver"

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 462
    .local v13, match:I
    if-ltz v13, :cond_9b

    .line 463
    if-eqz p2, :cond_7e

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_7e
    if-eqz p3, :cond_88

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 466
    :cond_88
    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;

    move-result-object v14

    .line 467
    .local v14, oneResult:Ljava/lang/Object;,"TR;"
    if-eqz v14, :cond_46

    .line 468
    move-object/from16 v0, p7

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 471
    .end local v14           #oneResult:Ljava/lang/Object;,"TR;"
    :cond_99
    const/4 v11, 0x1

    goto :goto_46

    .line 474
    :cond_9b
    if-eqz p2, :cond_46

    .line 476
    packed-switch v13, :pswitch_data_d8

    .line 481
    const-string v15, "unknown reason"

    .line 483
    .local v15, reason:Ljava/lang/String;
    :goto_a2
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter did not match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 477
    .end local v15           #reason:Ljava/lang/String;
    :pswitch_bb
    const-string v15, "action"

    .restart local v15       #reason:Ljava/lang/String;
    goto :goto_a2

    .line 478
    .end local v15           #reason:Ljava/lang/String;
    :pswitch_be
    const-string v15, "category"

    .restart local v15       #reason:Ljava/lang/String;
    goto :goto_a2

    .line 479
    .end local v15           #reason:Ljava/lang/String;
    :pswitch_c1
    const-string v15, "data"

    .restart local v15       #reason:Ljava/lang/String;
    goto :goto_a2

    .line 480
    .end local v15           #reason:Ljava/lang/String;
    :pswitch_c4
    const-string v15, "type"

    .restart local v15       #reason:Ljava/lang/String;
    goto :goto_a2

    .line 488
    .end local v3           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v13           #match:I
    .end local v15           #reason:Ljava/lang/String;
    :cond_c7
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d6

    if-eqz v11, :cond_d6

    .line 489
    const-string v4, "IntentResolver"

    const-string v5, "resolveIntent failed: found match, but none with Intent.CATEGORY_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_d6
    return-void

    .line 476
    nop

    :pswitch_data_d8
    .packed-switch -0x4
        :pswitch_be
        :pswitch_bb
        :pswitch_c1
        :pswitch_c4
    .end packed-switch
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    if-nez p2, :cond_4

    .line 388
    const/4 v3, 0x0

    .line 404
    :goto_3
    return v3

    .line 391
    :cond_4
    const/4 v2, 0x0

    .line 392
    .local v2, num:I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 393
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    .local v1, name:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 396
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 397
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_23

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v1           #name:Ljava/lang/String;
    :cond_27
    move v3, v2

    .line 404
    goto :goto_3
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 12
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v8, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 302
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v2, :cond_9

    move v6, v8

    .line 346
    :goto_8
    return v6

    .line 306
    :cond_9
    const/4 v4, 0x0

    .line 307
    .local v4, num:I
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, name:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 311
    move-object v1, v3

    .line 312
    .local v1, baseName:Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 313
    .local v5, slashpos:I
    if-lez v5, :cond_5a

    .line 314
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_29
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 320
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_3d

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_3d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    if-lez v5, :cond_6e

    .line 328
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 329
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_56

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 316
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    :cond_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 336
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    :cond_6e
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 337
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_82

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v1           #baseName:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #slashpos:I
    :cond_86
    move v6, v4

    .line 346
    goto :goto_8
.end method

.method private final remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TF;>;"
    const/4 v3, 0x0

    .line 426
    if-eqz p1, :cond_20

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 428
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_17

    .line 430
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    add-int/lit8 v1, v1, -0x1

    .line 432
    add-int/lit8 v0, v0, -0x1

    .line 428
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 435
    :cond_1a
    if-lez v0, :cond_1e

    const/4 v2, 0x1

    .line 437
    .end local v0           #N:I
    .end local v1           #idx:I
    :goto_1d
    return v2

    .restart local v0       #N:I
    .restart local v1       #idx:I
    :cond_1e
    move v2, v3

    .line 435
    goto :goto_1d

    .end local v0           #N:I
    .end local v1           #idx:I
    :cond_20
    move v2, v3

    .line 437
    goto :goto_1d
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    if-nez p2, :cond_4

    .line 410
    const/4 v2, 0x0

    .line 422
    :goto_3
    return v2

    .line 413
    :cond_4
    const/4 v1, 0x0

    .line 414
    .local v1, num:I
    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 415
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, name:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 418
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 419
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v0           #name:Ljava/lang/String;
    :cond_23
    move v2, v1

    .line 422
    goto :goto_3
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v7, 0x0

    .line 350
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_9

    move v5, v7

    .line 382
    :goto_8
    return v5

    .line 355
    :cond_9
    const/4 v3, 0x0

    .line 356
    .local v3, num:I
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 360
    move-object v0, v2

    .line 361
    .local v0, baseName:Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 362
    .local v4, slashpos:I
    if-lez v4, :cond_52

    .line 363
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_29
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 369
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_3c
    if-lez v4, :cond_66

    .line 373
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 374
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 365
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 377
    :cond_66
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 378
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .end local v0           #baseName:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #slashpos:I
    :cond_7a
    move v5, v3

    .line 382
    goto :goto_8
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, numT:I
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 59
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 62
    :cond_26
    if-eqz v1, :cond_33

    .line 63
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 66
    :cond_33
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .parameter "out"
    .parameter "prefix"

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    const-string v3, " "

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, innerPrefix:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Full MIME Types:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Base MIME Types:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Wild MIME Types:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Schemes:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Non-Data Actions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "MIME Typed Actions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .parameter "out"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, filter:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .parameter "out"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, eprefix:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, fprefix:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 99
    .local v1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_56
    if-ge v5, v0, :cond_2e

    .line 101
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v4, v7}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 104
    .end local v0           #N:I
    .end local v1           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    .end local v5           #i:I
    :cond_64
    return-void
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "match"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)TR;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .registers 41
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, scheme:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v10, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1dd

    const/4 v3, 0x1

    move v5, v3

    .line 191
    .local v5, debug:Z
    :goto_13
    if-eqz v5, :cond_47

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " scheme "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " of intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_47
    const/4 v9, 0x0

    .line 196
    .local v9, firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v17, 0x0

    .line 197
    .local v17, secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v24, 0x0

    .line 198
    .local v24, thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v31, 0x0

    .line 202
    .local v31, schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz p2, :cond_102

    .line 203
    const/16 v3, 0x2f

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v36

    .line 204
    .local v36, slashpos:I
    if-lez v36, :cond_102

    .line 205
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move v1, v3

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 206
    .local v33, baseType:Ljava/lang/String;
    const-string v3, "*"

    move-object/from16 v0, v33

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_236

    .line 207
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v36, 0x2

    if-ne v3, v4, :cond_85

    add-int/lit8 v3, v36, 0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1e1

    .line 211
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 212
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_ad

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v17, Ljava/util/ArrayList;

    .line 214
    .restart local v17       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_d8

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_d8
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v24, Ljava/util/ArrayList;

    .line 225
    .restart local v24       #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_102

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v33           #baseType:Ljava/lang/String;
    .end local v36           #slashpos:I
    :cond_102
    :goto_102
    if-eqz v8, :cond_12c

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .end local v31           #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v31, Ljava/util/ArrayList;

    .line 241
    .restart local v31       #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_12c

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme list: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_12c
    if-nez p2, :cond_15f

    if-nez v8, :cond_15f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15f

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 249
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_15f

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action list: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_15f
    if-eqz v9, :cond_16c

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    .line 253
    invoke-direct/range {v3 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 256
    :cond_16c
    if-eqz v17, :cond_17e

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v5

    move/from16 v14, p3

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move-object/from16 v18, v10

    .line 257
    invoke-direct/range {v11 .. v18}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 260
    :cond_17e
    if-eqz v24, :cond_191

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v20, v5

    move/from16 v21, p3

    move-object/from16 v22, p2

    move-object/from16 v23, v8

    move-object/from16 v25, v10

    .line 261
    invoke-direct/range {v18 .. v25}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 264
    :cond_191
    if-eqz v31, :cond_1a4

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move/from16 v27, v5

    move/from16 v28, p3

    move-object/from16 v29, p2

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    .line 265
    invoke-direct/range {v25 .. v32}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 268
    :cond_1a4
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 270
    if-eqz v5, :cond_267

    .line 271
    const-string v3, "IntentResolver"

    const-string v4, "Final result list:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .end local v5           #debug:Z
    .local v34, i$:Ljava/util/Iterator;
    :goto_1b7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_267

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    .line 273
    .local v35, r:Ljava/lang/Object;,"TR;"
    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b7

    .line 188
    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v17           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v24           #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v31           #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #r:Ljava/lang/Object;,"TR;"
    :cond_1dd
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_13

    .line 217
    .restart local v5       #debug:Z
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v17       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v24       #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v31       #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v33       #baseType:Ljava/lang/String;
    .restart local v36       #slashpos:I
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 218
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_209

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v17, Ljava/util/ArrayList;

    .line 220
    .restart local v17       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_d8

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 226
    :cond_236
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_102

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 231
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_102

    const-string v3, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Typed Action list: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_102

    .line 276
    .end local v5           #debug:Z
    .end local v33           #baseType:Ljava/lang/String;
    .end local v36           #slashpos:I
    :cond_267
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;
    .registers 15
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TF;>;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TF;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v2, v0

    .line 173
    .local v2, debug:Z
    :goto_f
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 175
    .local v8, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_18
    if-ge v9, v8, :cond_2d

    .line 176
    invoke-virtual {p4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 175
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 170
    .end local v2           #debug:Z
    .end local v5           #scheme:Ljava/lang/String;
    .end local v8           #N:I
    .end local v9           #i:I
    :cond_2a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_f

    .line 179
    .restart local v2       #debug:Z
    .restart local v5       #scheme:Ljava/lang/String;
    .restart local v8       #N:I
    .restart local v9       #i:I
    :cond_2d
    invoke-virtual {p0, v7}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 180
    return-object v7
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, numT:I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 84
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 87
    :cond_21
    if-eqz v1, :cond_2e

    .line 88
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 91
    :cond_2e
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, results:Ljava/util/List;,"Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    return-void
.end method
