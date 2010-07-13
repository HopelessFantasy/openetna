.class Lcom/android/server/PackageManagerService$PackageSignatures;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSignatures"
.end annotation


# instance fields
.field private mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5067
    return-void
.end method

.method constructor <init>([Landroid/content/pm/Signature;)V
    .registers 2
    .parameter "sigs"

    .prologue
    .line 5062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5063
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 5064
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5059
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5059
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method private assignSignatures([Landroid/content/pm/Signature;)V
    .registers 5
    .parameter "sigs"

    .prologue
    .line 5289
    if-nez p1, :cond_6

    .line 5290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 5297
    :cond_5
    return-void

    .line 5293
    :cond_6
    array-length v1, p1

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 5294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 5295
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 5294
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method mergeSignatures([Landroid/content/pm/Signature;Z)Z
    .registers 15
    .parameter "sigs"
    .parameter "update"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5230
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_d

    .line 5231
    if-eqz p2, :cond_b

    .line 5232
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    :cond_b
    move v8, v11

    .line 5285
    :goto_c
    return v8

    .line 5236
    :cond_d
    if-nez p1, :cond_11

    move v8, v10

    .line 5237
    goto :goto_c

    .line 5240
    :cond_11
    const/4 v0, 0x0

    .line 5241
    .local v0, added:[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .line 5242
    .local v1, addedCount:I
    const/4 v3, 0x0

    .line 5243
    .local v3, haveMatch:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    array-length v8, p1

    if-ge v4, v8, :cond_3e

    .line 5244
    aget-object v6, p1, v4

    .line 5245
    .local v6, sig:Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 5246
    .local v2, found:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1c
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v5, v8, :cond_2d

    .line 5247
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v5

    invoke-virtual {v8, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 5248
    const/4 v2, 0x1

    .line 5249
    const/4 v3, 0x1

    .line 5254
    :cond_2d
    if-nez v2, :cond_38

    .line 5255
    if-nez v0, :cond_34

    .line 5256
    array-length v8, p1

    new-array v0, v8, [Landroid/content/pm/Signature;

    .line 5258
    :cond_34
    aput-object v6, v0, v4

    .line 5259
    add-int/lit8 v1, v1, 0x1

    .line 5243
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 5246
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 5263
    .end local v2           #found:Z
    .end local v5           #j:I
    .end local v6           #sig:Landroid/content/pm/Signature;
    :cond_3e
    if-nez v3, :cond_42

    move v8, v10

    .line 5265
    goto :goto_c

    .line 5267
    :cond_42
    if-nez v0, :cond_46

    move v8, v11

    .line 5269
    goto :goto_c

    .line 5273
    :cond_46
    if-eqz p2, :cond_6c

    .line 5274
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    add-int/2addr v8, v1

    new-array v7, v8, [Landroid/content/pm/Signature;

    .line 5275
    .local v7, total:[Landroid/content/pm/Signature;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v9, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    invoke-static {v8, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5276
    iget-object v8, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v5, v8

    .line 5277
    .restart local v5       #j:I
    const/4 v4, 0x0

    :goto_5a
    array-length v8, v0

    if-ge v4, v8, :cond_6a

    .line 5278
    aget-object v8, v0, v4

    if-eqz v8, :cond_67

    .line 5279
    aget-object v8, v0, v4

    aput-object v8, v7, v5

    .line 5280
    add-int/lit8 v5, v5, 0x1

    .line 5277
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 5283
    :cond_6a
    iput-object v7, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .end local v5           #j:I
    .end local v7           #total:[Landroid/content/pm/Signature;
    :cond_6c
    move v8, v11

    .line 5285
    goto :goto_c
.end method

.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 23
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 5102
    .local p2, pastSignatures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/16 v17, 0x0

    const-string v18, "count"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5103
    .local v6, countStr:Ljava/lang/String;
    if-nez v6, :cond_2f

    .line 5104
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <signatures> has no count at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    .line 5107
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5109
    :cond_2f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5110
    .local v5, count:I
    move v0, v5

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 5111
    const/4 v13, 0x0

    .line 5113
    .local v13, pos:I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 5116
    .end local v6           #countStr:Ljava/lang/String;
    .local v12, outerDepth:I
    :cond_43
    :goto_43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1e7

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_60

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v12

    if-le v0, v1, :cond_1e7

    .line 5118
    :cond_60
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_43

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_43

    .line 5123
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 5124
    .local v15, tagName:Ljava/lang/String;
    const-string v17, "cert"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c9

    .line 5125
    if-ge v13, v5, :cond_19e

    .line 5126
    const/16 v17, 0x0

    const-string v18, "index"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5127
    .local v9, index:Ljava/lang/String;
    if-eqz v9, :cond_180

    .line 5129
    :try_start_91
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5130
    .local v8, idx:I
    const/16 v17, 0x0

    const-string v18, "key"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5131
    .local v10, key:Ljava/lang/String;
    if-nez v10, :cond_155

    .line 5132
    if-ltz v8, :cond_12a

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_12a

    .line 5133
    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/Signature;

    .line 5134
    .local v14, sig:Landroid/content/pm/Signature;
    if-eqz v14, :cond_d3

    .line 5135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/Signature;

    aput-object v6, v17, v13
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_cc} :catch_fd

    .line 5136
    add-int/lit8 v13, v13, 0x1

    .line 5180
    .end local v8           #idx:I
    .end local v9           #index:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :goto_ce
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_43

    .line 5138
    .restart local v8       #idx:I
    .restart local v9       #index:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v14       #sig:Landroid/content/pm/Signature;
    :cond_d3
    const/16 v17, 0x5

    :try_start_d5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not defined at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_fc} :catch_fd

    goto :goto_ce

    .line 5158
    .end local v8           #idx:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :catch_fd
    move-exception v17

    move-object/from16 v7, v17

    .line 5159
    .local v7, e:Ljava/lang/NumberFormatException;
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not a number at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto :goto_ce

    .line 5144
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #idx:I
    .restart local v10       #key:Ljava/lang/String;
    :cond_12a
    const/16 v17, 0x5

    :try_start_12c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is out of bounds at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_ce

    .line 5150
    :cond_155
    :goto_155
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-gt v0, v1, :cond_168

    .line 5151
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    .line 5153
    :cond_168
    new-instance v14, Landroid/content/pm/Signature;

    invoke-direct {v14, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 5154
    .restart local v14       #sig:Landroid/content/pm/Signature;
    move-object/from16 v0, p2

    move v1, v8

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    aput-object v14, v17, v13
    :try_end_17c
    .catch Ljava/lang/NumberFormatException; {:try_start_12c .. :try_end_17c} :catch_fd

    .line 5156
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_ce

    .line 5165
    .end local v8           #idx:I
    .end local v10           #key:Ljava/lang/String;
    .end local v14           #sig:Landroid/content/pm/Signature;
    :cond_180
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: <cert> has no index at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_ce

    .line 5170
    .end local v9           #index:Ljava/lang/String;
    :cond_19e
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_ce

    .line 5176
    :cond_1c9
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown element under <cert>: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->access$2300(ILjava/lang/String;)V

    goto/16 :goto_ce

    .line 5183
    .end local v15           #tagName:Ljava/lang/String;
    :cond_1e7
    if-ge v13, v5, :cond_205

    .line 5187
    new-array v11, v13, [Landroid/content/pm/Signature;

    .line 5188
    .local v11, newSigs:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v11

    move/from16 v3, v19

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5189
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 5191
    .end local v11           #newSigs:[Landroid/content/pm/Signature;
    :cond_205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5301
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5302
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "PackageSignatures{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5303
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5304
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5305
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3f

    .line 5306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 5307
    if-lez v1, :cond_2d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5308
    :cond_2d
    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5306
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 5312
    .end local v1           #i:I
    :cond_3f
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5313
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method updateSignatures([Landroid/content/pm/Signature;Z)Z
    .registers 9
    .parameter "sigs"
    .parameter "update"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5200
    iget-object v3, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_d

    .line 5201
    if-eqz p2, :cond_b

    .line 5202
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    :cond_b
    move v3, v5

    .line 5221
    :goto_c
    return v3

    .line 5206
    :cond_d
    if-nez p1, :cond_11

    move v3, v4

    .line 5207
    goto :goto_c

    .line 5210
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v3, p1

    if-ge v0, v3, :cond_34

    .line 5211
    aget-object v2, p1, v0

    .line 5212
    .local v2, sig:Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    iget-object v3, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_31

    .line 5213
    iget-object v3, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5214
    if-eqz p2, :cond_2c

    .line 5215
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    :cond_2c
    move v3, v5

    .line 5217
    goto :goto_c

    .line 5212
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 5210
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .end local v1           #j:I
    .end local v2           #sig:Landroid/content/pm/Signature;
    :cond_34
    move v3, v4

    .line 5221
    goto :goto_c
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 15
    .parameter "serializer"
    .parameter "tagName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, pastSignatures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v8, 0x0

    const-string v10, "index"

    const-string v9, "cert"

    .line 5071
    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_a

    .line 5098
    :goto_9
    return-void

    .line 5074
    :cond_a
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5075
    const-string v6, "count"

    iget-object v7, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5077
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-ge v0, v6, :cond_70

    .line 5078
    const-string v6, "cert"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5079
    iget-object v6, p0, Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v6, v0

    .line 5080
    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    .line 5081
    .local v5, sigHash:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5083
    .local v2, numPast:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_31
    if-ge v1, v2, :cond_4e

    .line 5084
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .line 5085
    .local v3, pastSig:Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v6

    if-ne v6, v5, :cond_6d

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 5086
    const-string v6, "index"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5090
    .end local v3           #pastSig:Landroid/content/pm/Signature;
    :cond_4e
    if-lt v1, v2, :cond_65

    .line 5091
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5092
    const-string v6, "index"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5093
    const-string v6, "key"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5095
    :cond_65
    const-string v6, "cert"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5077
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 5083
    .restart local v3       #pastSig:Landroid/content/pm/Signature;
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 5097
    .end local v1           #j:I
    .end local v2           #numPast:I
    .end local v3           #pastSig:Landroid/content/pm/Signature;
    .end local v4           #sig:Landroid/content/pm/Signature;
    .end local v5           #sigHash:I
    :cond_70
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9
.end method
