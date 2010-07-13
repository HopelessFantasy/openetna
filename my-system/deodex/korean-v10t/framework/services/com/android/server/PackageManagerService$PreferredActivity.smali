.class Lcom/android/server/PackageManagerService$PreferredActivity;
.super Landroid/content/IntentFilter;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferredActivity"
.end annotation


# instance fields
.field final mActivity:Landroid/content/ComponentName;

.field final mMatch:I

.field mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 13
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 5328
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 5329
    const/high16 v6, 0xfff

    and-int/2addr v6, p2

    iput v6, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    .line 5330
    iput-object p4, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    .line 5331
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    .line 5332
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 5333
    if-eqz p3, :cond_52

    .line 5334
    array-length v0, p3

    .line 5335
    .local v0, N:I
    new-array v5, v0, [Ljava/lang/String;

    .line 5336
    .local v5, myPackages:[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    .line 5337
    .local v3, myClasses:[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 5338
    .local v4, myComponents:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_4b

    .line 5339
    aget-object v1, p3, v2

    .line 5340
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_2a

    .line 5341
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 5342
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 5343
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    .line 5358
    .end local v0           #N:I
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :goto_29
    return-void

    .line 5346
    .restart local v0       #N:I
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #i:I
    .restart local v3       #myClasses:[Ljava/lang/String;
    .restart local v4       #myComponents:[Ljava/lang/String;
    .restart local v5       #myPackages:[Ljava/lang/String;
    :cond_2a
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 5347
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 5348
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 5338
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 5350
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_4b
    iput-object v5, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 5351
    iput-object v3, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 5352
    iput-object v4, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    goto :goto_29

    .line 5354
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #myClasses:[Ljava/lang/String;
    .end local v4           #myComponents:[Ljava/lang/String;
    .end local v5           #myPackages:[Ljava/lang/String;
    :cond_52
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 5355
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 5356
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    goto :goto_29
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 20
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5361
    invoke-direct/range {p0 .. p0}, Landroid/content/IntentFilter;-><init>()V

    .line 5362
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    .line 5363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    .line 5364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object v15, v0

    if-nez v15, :cond_47

    .line 5365
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad activity name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 5367
    :cond_47
    const/4 v15, 0x0

    const-string v16, "match"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5368
    .local v4, matchStr:Ljava/lang/String;
    if-eqz v4, :cond_e0

    const/16 v15, 0x10

    invoke-static {v4, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    :goto_5b
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    .line 5369
    const/4 v15, 0x0

    const-string v16, "set"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5370
    .local v11, setCountStr:Ljava/lang/String;
    if-eqz v11, :cond_e3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v10, v15

    .line 5372
    .local v10, setCount:I
    :goto_73
    if-lez v10, :cond_e6

    new-array v15, v10, [Ljava/lang/String;

    move-object v7, v15

    .line 5373
    .local v7, myPackages:[Ljava/lang/String;
    :goto_78
    if-lez v10, :cond_e9

    new-array v15, v10, [Ljava/lang/String;

    move-object v5, v15

    .line 5374
    .local v5, myClasses:[Ljava/lang/String;
    :goto_7d
    if-lez v10, :cond_ec

    new-array v15, v10, [Ljava/lang/String;

    move-object v6, v15

    .line 5376
    .local v6, myComponents:[Ljava/lang/String;
    :goto_82
    const/4 v12, 0x0

    .line 5378
    .local v12, setPos:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 5381
    .local v9, outerDepth:I
    :cond_87
    :goto_87
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, type:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_18c

    const/4 v15, 0x3

    if-ne v14, v15, :cond_97

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_18c

    .line 5383
    :cond_97
    const/4 v15, 0x3

    if-eq v14, v15, :cond_87

    const/4 v15, 0x4

    if-eq v14, v15, :cond_87

    .line 5388
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5391
    .local v13, tagName:Ljava/lang/String;
    const-string v15, "set"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15f

    .line 5392
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5393
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_ef

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_dc

    .line 5395
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No name in set tag in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 5417
    :cond_dc
    :goto_dc
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_87

    .line 5368
    .end local v5           #myClasses:[Ljava/lang/String;
    .end local v6           #myComponents:[Ljava/lang/String;
    .end local v7           #myPackages:[Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #outerDepth:I
    .end local v10           #setCount:I
    .end local v11           #setCountStr:Ljava/lang/String;
    .end local v12           #setPos:I
    .end local v13           #tagName:Ljava/lang/String;
    .end local v14           #type:I
    :cond_e0
    const/4 v15, 0x0

    goto/16 :goto_5b

    .line 5370
    .restart local v11       #setCountStr:Ljava/lang/String;
    :cond_e3
    const/4 v15, 0x0

    move v10, v15

    goto :goto_73

    .line 5372
    .restart local v10       #setCount:I
    :cond_e6
    const/4 v15, 0x0

    move-object v7, v15

    goto :goto_78

    .line 5373
    .restart local v7       #myPackages:[Ljava/lang/String;
    :cond_e9
    const/4 v15, 0x0

    move-object v5, v15

    goto :goto_7d

    .line 5374
    .restart local v5       #myClasses:[Ljava/lang/String;
    :cond_ec
    const/4 v15, 0x0

    move-object v6, v15

    goto :goto_82

    .line 5398
    .restart local v6       #myComponents:[Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #outerDepth:I
    .restart local v12       #setPos:I
    .restart local v13       #tagName:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_ef
    if-lt v12, v10, :cond_117

    .line 5399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_dc

    .line 5400
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many set tags in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    goto :goto_dc

    .line 5404
    :cond_117
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 5405
    .local v3, cn:Landroid/content/ComponentName;
    if-nez v3, :cond_14d

    .line 5406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_dc

    .line 5407
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad set name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    goto :goto_dc

    .line 5411
    :cond_14d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v12

    .line 5412
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v12

    .line 5413
    aput-object v8, v6, v12

    .line 5414
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_dc

    .line 5418
    .end local v3           #cn:Landroid/content/ComponentName;
    .end local v8           #name:Ljava/lang/String;
    :cond_15f
    const-string v15, "filter"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16c

    .line 5420
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService$PreferredActivity;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_87

    .line 5424
    :cond_16c
    const/4 v15, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown element under <preferred-activities>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 5427
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_87

    .line 5431
    .end local v13           #tagName:Ljava/lang/String;
    :cond_18c
    if-eq v12, v10, :cond_1c7

    .line 5432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_1c7

    .line 5433
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enough set tags (expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " but found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    .line 5438
    :cond_1c7
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    .line 5439
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    .line 5440
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    .line 5441
    return-void
.end method


# virtual methods
.method sameSet(Ljava/util/List;I)Z
    .registers 14
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .line 5459
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    if-nez v8, :cond_7

    move v8, v10

    .line 5478
    :goto_6
    return v8

    .line 5460
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5461
    .local v0, NQ:I
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    array-length v1, v8

    .line 5462
    .local v1, NS:I
    const/4 v6, 0x0

    .line 5463
    .local v6, numMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v0, :cond_47

    .line 5464
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 5465
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v8, p2, :cond_1f

    .line 5463
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 5466
    :cond_1f
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5467
    .local v2, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 5468
    .local v3, good:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_23
    if-ge v5, v1, :cond_40

    .line 5469
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    iget-object v8, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v5

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 5471
    add-int/lit8 v6, v6, 0x1

    .line 5472
    const/4 v3, 0x1

    .line 5476
    :cond_40
    if-nez v3, :cond_1c

    move v8, v10

    goto :goto_6

    .line 5468
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 5478
    .end local v2           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #good:Z
    .end local v5           #j:I
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :cond_47
    if-ne v6, v1, :cond_4b

    const/4 v8, 0x1

    goto :goto_6

    :cond_4b
    move v8, v10

    goto :goto_6
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v7, "name"

    const-string v6, "filter"

    const-string v5, "set"

    .line 5444
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetClasses:[Ljava/lang/String;

    array-length v2, v2

    move v0, v2

    .line 5445
    .local v0, NS:I
    :goto_f
    const-string v2, "name"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mShortActivity:Ljava/lang/String;

    invoke-interface {p1, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5446
    const-string v2, "match"

    iget v3, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5447
    const-string v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5448
    const/4 v1, 0x0

    .local v1, s:I
    :goto_2b
    if-ge v1, v0, :cond_46

    .line 5449
    const-string v2, "set"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5450
    const-string v2, "name"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5451
    const-string v2, "set"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5448
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 5444
    .end local v0           #NS:I
    .end local v1           #s:I
    :cond_43
    const/4 v2, 0x0

    move v0, v2

    goto :goto_f

    .line 5453
    .restart local v0       #NS:I
    .restart local v1       #s:I
    :cond_46
    const-string v2, "filter"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5454
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 5455
    const-string v2, "filter"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5456
    return-void
.end method
