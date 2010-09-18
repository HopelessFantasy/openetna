.class public Lcom/lge/homecube/AllAppsProvider;
.super Landroid/content/ContentProvider;
.source "AllAppsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/AllAppsProvider$SqlArguments;,
        Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.lge.homecube"

.field private static final DATABASE_NAME:Ljava/lang/String; = "homecube_AllApps.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AllAppsProvider"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_ALLAPPS:Ljava/lang/String; = "favorites"

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 468
    sput v0, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    .line 469
    sput v0, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    .line 471
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsProvider;->sPaint:Landroid/graphics/Paint;

    .line 472
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsProvider;->sBounds:Landroid/graphics/Rect;

    .line 473
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsProvider;->sOldBounds:Landroid/graphics/Rect;

    .line 474
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsProvider;->sCanvas:Landroid/graphics/Canvas;

    .line 477
    sget-object v0, Lcom/lge/homecube/AllAppsProvider;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 479
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 436
    return-void
.end method

.method static addIconDataInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "context"
    .parameter "item"
    .parameter "values"

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 484
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v2, p1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, p0}, Lcom/lge/homecube/AllAppsProvider;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homecube/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/lge/homecube/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p2, v0}, Lcom/lge/homecube/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 489
    const/4 v0, 0x0

    .line 490
    return-void
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 493
    sget v1, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 495
    .local p1, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .end local p1           #resources:Landroid/content/res/Resources;
    float-to-int p1, p1

    sput p1, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    sput p1, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    .line 498
    :cond_14
    sget v5, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    .line 499
    .local v5, width:I
    sget v1, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    .line 501
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 502
    .local v3, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 504
    .local v2, iconHeight:I
    instance-of p1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz p1, :cond_2e

    .line 505
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 506
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 507
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 511
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2e
    if-lez v5, :cond_c4

    if-lez v1, :cond_c4

    .line 512
    if-lt v5, v3, :cond_36

    if-ge v1, v2, :cond_8b

    .line 513
    :cond_36
    int-to-float p1, v3

    int-to-float v4, v2

    div-float/2addr p1, v4

    .line 515
    .local p1, ratio:F
    if-le v3, v2, :cond_81

    .line 516
    int-to-float v1, v5

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v1           #height:I
    .local p1, height:I
    move v1, p1

    .end local p1           #height:I
    .restart local v1       #height:I
    move v3, v5

    .line 521
    .end local v2           #iconHeight:I
    .end local v5           #width:I
    .local v3, width:I
    :goto_41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_88

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 523
    .local p1, c:Landroid/graphics/Bitmap$Config;
    :goto_4a
    sget v2, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    sget v4, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 524
    .local v2, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/AllAppsProvider;->sCanvas:Landroid/graphics/Canvas;

    .line 525
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 531
    sget-object v4, Lcom/lge/homecube/AllAppsProvider;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 532
    sget v4, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 533
    .local v4, x:I
    sget v5, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 534
    .local v5, y:I
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    sget-object p1, Lcom/lge/homecube/AllAppsProvider;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 537
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v2}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v3

    .line 553
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    .local v1, width:I
    :goto_80
    return-object p0

    .line 517
    .local v1, height:I
    .local v2, iconHeight:I
    .local v3, iconWidth:I
    .local v5, width:I
    .local p1, ratio:F
    :cond_81
    if-le v2, v3, :cond_c7

    .line 518
    int-to-float v2, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .end local v5           #width:I
    .local p1, width:I
    move v3, p1

    .end local p1           #width:I
    .local v3, width:I
    goto :goto_41

    .line 521
    .end local v2           #iconHeight:I
    :cond_88
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_4a

    .line 539
    .restart local v2       #iconHeight:I
    .local v3, iconWidth:I
    .restart local v5       #width:I
    :cond_8b
    if-ge v3, v5, :cond_c4

    if-ge v2, v1, :cond_c4

    .line 540
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 541
    .local p1, c:Landroid/graphics/Bitmap$Config;
    sget v4, Lcom/lge/homecube/AllAppsProvider;->sIconWidth:I

    sget v6, Lcom/lge/homecube/AllAppsProvider;->sIconHeight:I

    invoke-static {v4, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 542
    .local v4, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/AllAppsProvider;->sCanvas:Landroid/graphics/Canvas;

    .line 543
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 544
    sget-object v6, Lcom/lge/homecube/AllAppsProvider;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 545
    sub-int v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    .line 546
    .local v6, x:I
    sub-int v7, v1, v2

    div-int/lit8 v7, v7, 0x2

    .line 547
    .local v7, y:I
    add-int/2addr v3, v6

    add-int/2addr v2, v7

    invoke-virtual {p0, v6, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 548
    .end local v2           #iconHeight:I
    .end local v3           #iconWidth:I
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    sget-object p1, Lcom/lge/homecube/AllAppsProvider;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 550
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v4}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_80

    .end local v4           #thumb:Landroid/graphics/Bitmap;
    .end local v6           #x:I
    .end local v7           #y:I
    .end local p1           #height:I
    .local v1, height:I
    .restart local v2       #iconHeight:I
    .restart local v3       #iconWidth:I
    .restart local v5       #width:I
    :cond_c4
    move p1, v1

    .end local v1           #height:I
    .restart local p1       #height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_80

    .local v1, height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_c7
    move v3, v5

    .end local v5           #width:I
    .local v3, width:I
    goto/16 :goto_41
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;
    .registers 6
    .parameter "manager"
    .parameter "intent"

    .prologue
    .line 558
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 560
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_9

    .line 561
    const/4 v3, 0x0

    .line 573
    :goto_8
    return-object v3

    .line 564
    :cond_9
    new-instance v1, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v1}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 565
    .local v1, info:Lcom/lge/homecube/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 566
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 568
    :cond_22
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 570
    :cond_28
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_30

    .line 571
    const-string v3, ""

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    :cond_30
    move-object v3, v1

    .line 573
    goto :goto_8
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 180
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 182
    :cond_10
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 184
    :cond_1c
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 139
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 141
    .local v0, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    iget-object v4, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 142
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    :try_start_e
    array-length v3, p2

    .line 145
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_29

    .line 146
    iget-object v4, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    const/4 v4, 0x0

    .line 150
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    :goto_25
    return v4

    .line 145
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 148
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 150
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 154
    array-length v4, p2

    goto :goto_25

    .line 150
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_34
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 159
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    .local v0, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    iget-object v3, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 162
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, count:I
    if-lez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 165
    :cond_1a
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 100
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    .local v0, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    iget-object v1, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_23
    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 125
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 127
    .local v0, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    iget-object v4, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 128
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 129
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    move-object v4, v6

    .line 134
    :goto_19
    return-object v4

    .line 131
    :cond_1a
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 134
    goto :goto_19
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 91
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/homecube/AllAppsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 92
    const-string v0, "AllAppsProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 112
    new-instance v8, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .local v8, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 114
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 117
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/homecube/AllAppsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 120
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 170
    new-instance v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/lge/homecube/AllAppsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    .local v0, args:Lcom/lge/homecube/AllAppsProvider$SqlArguments;
    iget-object v3, p0, Lcom/lge/homecube/AllAppsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 173
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/lge/homecube/AllAppsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, count:I
    if-lez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/lge/homecube/AllAppsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 176
    :cond_1a
    return v1
.end method
