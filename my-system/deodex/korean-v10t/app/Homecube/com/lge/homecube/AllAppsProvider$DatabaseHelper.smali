.class Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AllAppsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/AllAppsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final ATTRIBUTE_X:Ljava/lang/String; = "x"

.field private static final ATTRIBUTE_Y:Ljava/lang/String; = "y"

.field private static final TAG_CLASS:Ljava/lang/String; = "class"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 204
    const-string v2, "homecube_AllApps.db"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 205
    iput-object p1, p0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 207
    iget-object v2, p0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 208
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 209
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mWidth:I

    .line 210
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mHeight:I

    .line 211
    return-void
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 11
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, converted:Z
    const-string v2, "content://settings/favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 248
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_13
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_38

    move-result-object v7

    .line 254
    :goto_17
    if-eqz v7, :cond_2f

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 256
    :try_start_1f
    invoke-direct {p0, p1, v7}, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_33

    move-result v2

    if-lez v2, :cond_30

    const/4 v2, 0x1

    move v6, v2

    .line 258
    :goto_27
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 261
    if-eqz v6, :cond_2f

    .line 262
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    :cond_2f
    return v6

    .line 256
    :cond_30
    const/4 v2, 0x0

    move v6, v2

    goto :goto_27

    .line 258
    :catchall_33
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 249
    :catch_38
    move-exception v2

    goto :goto_17
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 25
    .parameter "db"
    .parameter "c"

    .prologue
    .line 270
    const-string v18, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, idIndex:I
    const-string v18, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 272
    .local v15, titleIndex:I
    const-string v18, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 273
    .local v9, intentIndex:I
    const-string v18, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 274
    .local v4, containerIndex:I
    const-string v18, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 275
    .local v13, positionIndex:I
    const-string v18, "group_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 276
    .local v5, group_idIndex:I
    const-string v18, "original_position"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 277
    .local v12, origin_positionIndex:I
    const-string v18, "original_group_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 281
    .local v11, origin_group_idIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object v14, v0

    .line 282
    .local v14, rows:[Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 283
    .local v6, i:I
    :goto_5a
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_e8

    .line 284
    new-instance v17, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 285
    .local v17, values:Landroid/content/ContentValues;
    const-string v18, "_id"

    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string v18, "title"

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v18, "intent"

    move-object/from16 v0, p2

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v18, "container"

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v18, "position"

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v18, "group_id"

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v18, "original_position"

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v18, "original_group_id"

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    aput-object v17, v14, v6

    move v6, v7

    .line 297
    .end local v7           #i:I
    .restart local v6       #i:I
    goto/16 :goto_5a

    .line 299
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_e8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 300
    const/16 v16, 0x0

    .line 302
    .local v16, total:I
    :try_start_ed
    array-length v10, v14

    .line 303
    .local v10, numValues:I
    const/4 v6, 0x0

    :goto_ef
    if-ge v6, v10, :cond_114

    .line 304
    const-string v18, "favorites"

    const/16 v19, 0x0

    aget-object v20, v14, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_102
    .catchall {:try_start_ed .. :try_end_102} :catchall_11d

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_10f

    .line 305
    const/16 v18, 0x0

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    :goto_10e
    return v18

    .line 307
    :cond_10f
    add-int/lit8 v16, v16, 0x1

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_ef

    .line 310
    :cond_114
    :try_start_114
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_11d

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v18, v16

    .line 315
    goto :goto_10e

    .line 312
    .end local v10           #numValues:I
    :catchall_11d
    move-exception v18

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v18
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 25
    .parameter "db"

    .prologue
    .line 336
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v21, 0x0

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    .local v13, intent:Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v19, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 341
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 343
    .local v11, i:I
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x7f04

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 344
    .local v17, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 345
    .local v6, attrs:Landroid/util/AttributeSet;
    const-string v20, "favorites"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 347
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 351
    .local v9, depth:I
    :cond_47
    :goto_47
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, type:I
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5c

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    move v1, v9

    if-le v0, v1, :cond_156

    :cond_5c
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_156

    .line 353
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_47

    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, added:Z
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Lcom/lge/homecube/R$styleable;->AllApps:[I

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 362
    .local v4, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 364
    const/16 v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 365
    .local v16, packageName:Ljava/lang/String;
    const/16 v20, 0x0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_96} :catch_147
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_96} :catch_157

    move-result-object v7

    .line 368
    .local v7, className:Ljava/lang/String;
    :try_start_97
    new-instance v8, Landroid/content/ComponentName;

    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v8, cn:Landroid/content/ComponentName;
    const/16 v20, 0x0

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 370
    .local v12, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 371
    const/high16 v20, 0x1000

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    const-string v20, "intent"

    invoke-virtual {v13}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v20, "title"

    invoke-virtual {v12, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v20, "position"

    const/16 v21, 0x2

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v20, "group_id"

    const/16 v21, 0x3

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v20, "original_position"

    const/16 v21, 0x2

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v20, "original_group_id"

    const/16 v21, 0x3

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v20, "favorites"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_112} :catch_114
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_112} :catch_147
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_112} :catch_157

    goto/16 :goto_47

    .line 386
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v12           #info:Landroid/content/pm/ActivityInfo;
    :catch_114
    move-exception v20

    move-object/from16 v10, v20

    .line 387
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_117
    const-string v20, "AllAppsProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to add favorite: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_145
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_117 .. :try_end_145} :catch_147
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_145} :catch_157

    goto/16 :goto_47

    .line 393
    .end local v4           #a:Landroid/content/res/TypedArray;
    .end local v5           #added:Z
    .end local v6           #attrs:Landroid/util/AttributeSet;
    .end local v7           #className:Ljava/lang/String;
    .end local v9           #depth:I
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v17           #parser:Landroid/content/res/XmlResourceParser;
    .end local v18           #type:I
    :catch_147
    move-exception v20

    move-object/from16 v10, v20

    .line 394
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v20, "AllAppsProvider"

    const-string v21, "Got exception parsing favorites."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_156
    :goto_156
    return v11

    .line 396
    :catch_157
    move-exception v20

    move-object/from16 v10, v20

    .line 397
    .local v10, e:Ljava/io/IOException;
    const-string v20, "AllAppsProvider"

    const-string v21, "Got exception parsing favorites."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 216
    const-string v0, "DatabaseHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,position INTEGER,group_id INTEGER,original_position INTEGER,original_group_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 235
    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 237
    :cond_15
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 320
    const-string v0, "AllAppsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    return-void
.end method
