.class Lcom/android/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 183
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 184
    iput-object p1, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 185
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 186
    return-void
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3e8

    .line 591
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 595
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const/4 v0, 0x0

    .line 603
    .local v0, allocatedAppWidgets:Z
    :try_start_1a
    iget-object v5, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 605
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_4e} :catch_55

    .line 611
    const/4 v0, 0x1

    .line 617
    .end local v1           #appWidgetId:I
    :goto_4f
    if-eqz v0, :cond_54

    .line 618
    invoke-direct {p0, v2, v3}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 621
    :cond_54
    return v0

    .line 612
    :catch_55
    move-exception v5

    move-object v4, v5

    .line 613
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 582
    const-string v0, "itemType"

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    const-string v0, "spanX"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v0, "spanY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 587
    return v2
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 15
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 558
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, className:Ljava/lang/String;
    :try_start_a
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 563
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 564
    const/high16 v5, 0x1020

    invoke-virtual {p5, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 566
    const-string v5, "intent"

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v5, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v5, "itemType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v5, "spanX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_57} :catch_59

    move v5, v7

    .line 577
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_58
    return v5

    .line 572
    :catch_59
    move-exception v5

    move-object v2, v5

    .line 573
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add favorite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 575
    goto :goto_58
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    const-string v9, "LauncherProvider"

    .line 248
    const-string v2, "LauncherProvider"

    const-string v2, "converting database from an older format, but not onUpgrade"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v6, 0x0

    .line 251
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 257
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4d

    move-result-object v7

    .line 263
    :goto_20
    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 265
    :try_start_28
    invoke-direct {p0, p1, v7}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_48

    move-result v2

    if-lez v2, :cond_45

    const/4 v2, 0x1

    move v6, v2

    .line 267
    :goto_30
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 270
    if-eqz v6, :cond_38

    .line 271
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    :cond_38
    if-eqz v6, :cond_44

    .line 277
    const-string v2, "LauncherProvider"

    const-string v2, "converted and now triggering widget upgrade"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 281
    :cond_44
    return v6

    .line 265
    :cond_45
    const/4 v2, 0x0

    move v6, v2

    goto :goto_30

    .line 267
    :catchall_48
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 258
    :catch_4d
    move-exception v2

    goto :goto_20
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 25
    .parameter "db"

    .prologue
    .line 405
    const/4 v5, 0x2

    new-array v15, v5, [I

    fill-array-data v15, :array_142

    .line 410
    .local v15, bindSources:[I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v16, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.camera"

    const-string v7, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v5, "itemType"

    invoke-static {v5, v15}, Lcom/android/launcher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, selectWhere:Ljava/lang/String;
    const/16 v17, 0x0

    .line 419
    .local v17, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 421
    .local v13, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 424
    :try_start_35
    const-string v6, "favorites"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 427
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found upgrade cursor count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v22, values:Landroid/content/ContentValues;
    :goto_6a
    if-eqz v17, :cond_12c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 431
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_79
    .catchall {:try_start_35 .. :try_end_79} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_79} :catch_10b

    move-result-wide v19

    .line 435
    .local v19, favoriteId:J
    :try_start_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v14

    .line 437
    .local v14, appWidgetId:I
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocated appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for favoriteId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 440
    const-string v5, "appWidgetId"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 447
    .local v21, updateWhere:Ljava/lang/String;
    const-string v5, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_7a .. :try_end_f8} :catchall_138
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_f8} :catch_fb
    .catch Landroid/database/SQLException; {:try_start_7a .. :try_end_f8} :catch_10b

    .line 449
    const/4 v13, 0x1

    goto/16 :goto_6a

    .line 450
    .end local v14           #appWidgetId:I
    .end local v21           #updateWhere:Ljava/lang/String;
    :catch_fb
    move-exception v5

    move-object/from16 v18, v5

    .line 451
    .local v18, ex:Ljava/lang/RuntimeException;
    :try_start_fe
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_fe .. :try_end_109} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_fe .. :try_end_109} :catch_10b

    goto/16 :goto_6a

    .line 456
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v19           #favoriteId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :catch_10b
    move-exception v5

    move-object/from16 v18, v5

    .line 457
    .local v18, ex:Landroid/database/SQLException;
    :try_start_10e
    const-string v5, "LauncherProvider"

    const-string v6, "Problem while allocating appWidgetIds for existing widgets"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_138

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    if-eqz v17, :cond_121

    .line 461
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 466
    .end local v18           #ex:Landroid/database/SQLException;
    :cond_121
    :goto_121
    if-eqz v13, :cond_12b

    .line 467
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 469
    :cond_12b
    return-void

    .line 455
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_12c
    :try_start_12c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_12c .. :try_end_12f} :catch_10b

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    if-eqz v17, :cond_121

    .line 461
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_121

    .line 459
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_138
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    if-eqz v17, :cond_141

    .line 461
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_141
    throw v5

    .line 405
    :array_142
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 31
    .parameter "db"
    .parameter "c"

    .prologue
    .line 285
    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 286
    .local v14, idIndex:I
    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 287
    .local v15, intentIndex:I
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 288
    .local v20, titleIndex:I
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 289
    .local v13, iconTypeIndex:I
    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 290
    .local v10, iconIndex:I
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 291
    .local v11, iconPackageIndex:I
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 292
    .local v12, iconResourceIndex:I
    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 293
    .local v6, containerIndex:I
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 294
    .local v16, itemTypeIndex:I
    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 295
    .local v19, screenIndex:I
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 296
    .local v4, cellXIndex:I
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 297
    .local v5, cellYIndex:I
    const-string v24, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 298
    .local v22, uriIndex:I
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 300
    .local v7, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 301
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 302
    .local v8, i:I
    :goto_97
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_184

    .line 303
    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 304
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "_id"

    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string v24, "intent"

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v24, "icon"

    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 309
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v24, "container"

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v24, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v23, v18, v8

    move v8, v9

    .line 320
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_97

    .line 322
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_184
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 323
    const/16 v21, 0x0

    .line 325
    .local v21, total:I
    :try_start_189
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 326
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_18f
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b7

    .line 327
    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a5
    .catchall {:try_start_189 .. :try_end_1a5} :catchall_1c0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1b2

    .line 328
    const/16 v24, 0x0

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    :goto_1b1
    return v24

    .line 330
    :cond_1b2
    add-int/lit8 v21, v21, 0x1

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_18f

    .line 333
    :cond_1b7
    :try_start_1b7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1c0

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v24, v21

    .line 338
    goto :goto_1b1

    .line 335
    .end local v17           #numValues:I
    :catchall_1c0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .registers 8
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 481
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 483
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 485
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 486
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 488
    iget-object v2, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 16
    .parameter "db"

    .prologue
    .line 497
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v5, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 502
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 504
    .local v10, i:I
    :try_start_19
    iget-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 505
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 506
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "favorites"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 508
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 512
    .local v8, depth:I
    :cond_32
    :goto_32
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v0, 0x3

    if-ne v13, v0, :cond_3f

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_9d

    :cond_3f
    const/4 v0, 0x1

    if-eq v13, v0, :cond_9d

    .line 514
    const/4 v0, 0x2

    if-ne v13, v0, :cond_32

    .line 518
    const/4 v6, 0x0

    .line 519
    .local v6, added:Z
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 523
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 524
    const-string v0, "container"

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v0, "screen"

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "cellX"

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "cellY"

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "favorite"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    move-object v0, p0

    move-object v1, p1

    .line 534
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v6

    .line 541
    :cond_8c
    :goto_8c
    if-eqz v6, :cond_90

    add-int/lit8 v10, v10, 0x1

    .line 543
    :cond_90
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_93} :catch_b8

    goto :goto_32

    .line 545
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_94
    move-exception v0

    move-object v9, v0

    .line 546
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_9d
    :goto_9d
    return v10

    .line 535
    .restart local v3       #a:Landroid/content/res/TypedArray;
    .restart local v6       #added:Z
    .restart local v7       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #depth:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v13       #type:I
    :cond_9e
    :try_start_9e
    const-string v0, "search"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 536
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_8c

    .line 537
    :cond_ab
    const-string v0, "clock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 538
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    :try_end_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_b6} :catch_94
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b6} :catch_b8

    move-result v6

    goto :goto_8c

    .line 547
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_b8
    move-exception v0

    move-object v9, v0

    .line 548
    .local v9, e:Ljava/io/IOException;
    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d
.end method

.method private sendAppWidgetResetNotify()V
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 201
    const-string v0, "LauncherProvider"

    const-string v1, "creating new launcher database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v0, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_1d

    .line 237
    iget-object v0, p0, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 238
    invoke-direct {p0}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 241
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 243
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 245
    :cond_26
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const-string v4, "LauncherProvider"

    .line 343
    const-string v2, "LauncherProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move v1, p2

    .line 346
    .local v1, version:I
    if-ge v1, v5, :cond_22

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 351
    :try_start_11
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_59
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_19} :catch_4a

    .line 354
    const/4 v1, 0x3

    .line 359
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    :goto_1d
    if-ne v1, v5, :cond_22

    .line 364
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 368
    :cond_22
    if-ge v1, v6, :cond_33

    .line 369
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 371
    :try_start_27
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_6d
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_2f} :catch_5e

    .line 382
    const/4 v1, 0x4

    .line 387
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 391
    :cond_33
    :goto_33
    if-eq v1, v6, :cond_49

    .line 392
    const-string v2, "LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    const-string v2, "DROP TABLE IF EXISTS gestures"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    :cond_49
    return-void

    .line 355
    :catch_4a
    move-exception v2

    move-object v0, v2

    .line 357
    .local v0, ex:Landroid/database/SQLException;
    :try_start_4c
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_59

    .line 359
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1d

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_59
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 383
    :catch_5e
    move-exception v2

    move-object v0, v2

    .line 385
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_60
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_6d

    .line 387
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_33

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_6d
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
