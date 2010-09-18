.class public Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "OrangePhotoWidgetProvider.java"


# static fields
.field private static final ORGPHOTO_PREFER_NAME:Ljava/lang/String; = "com.lge.orangephotowidget"

.field public static final ORGSETIMAGE:Ljava/lang/String; = "orgwidgetsetimage"

.field public static final ORGWIDGETGONE:Ljava/lang/String; = "orgwidgetgone"

.field public static final ORGWIDGETVIEW:Ljava/lang/String; = "com.lge.orangephotowidget.orgwidgetview"

.field public static final SETNOIMAGE:Ljava/lang/String; = "setnoimage"

.field private static final TAG:Ljava/lang/String; = "OrangePhotoWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field public static button_visibility:Z

.field public static mbitmap:Landroid/graphics/Bitmap;

.field private static mposition:I

.field private static sInstance:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

.field public static view_visibility:Z


# instance fields
.field private checkNumber:I

.field private currentWidgetId:[I

.field private currentWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private currentcontext:Landroid/content/Context;

.field private end_position:I

.field public handler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mNoImagesView:Landroid/view/View;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private wait:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->view_visibility:Z

    .line 60
    sput-boolean v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->button_visibility:Z

    .line 61
    sput v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lge.orangephotowidget"

    const-string v2, "com.lge.orangephotowidget.OrangePhotoWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 65
    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->end_position:I

    .line 67
    const-string v0, "wait"

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->wait:Ljava/lang/CharSequence;

    .line 81
    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkNumber:I

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static computeSampleSize(III)I
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    .line 911
    div-int v2, p0, p2

    .line 912
    .local v2, candidateW:I
    div-int v1, p1, p2

    .line 913
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 915
    .local v0, candidate:I
    if-nez v0, :cond_d

    move v3, v4

    .line 931
    :goto_c
    return v3

    .line 918
    :cond_d
    if-le v0, v4, :cond_17

    .line 919
    if-le p0, p2, :cond_17

    div-int v3, p0, v0

    if-ge v3, p2, :cond_17

    .line 920
    add-int/lit8 v0, v0, -0x1

    .line 923
    :cond_17
    if-le v0, v4, :cond_21

    .line 924
    if-le p1, p2, :cond_21

    div-int v3, p1, v0

    if-ge v3, p2, :cond_21

    .line 925
    add-int/lit8 v0, v0, -0x1

    :cond_21
    move v3, v0

    .line 931
    goto :goto_c
.end method

.method static declared-synchronized getInstance()Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;
    .registers 2

    .prologue
    .line 197
    const-class v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->sInstance:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    if-nez v1, :cond_e

    .line 198
    new-instance v1, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    invoke-direct {v1}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;-><init>()V

    sput-object v1, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->sInstance:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    .line 200
    :cond_e
    sget-object v1, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->sInstance:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 9
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v5, 0x0

    .line 350
    sget v2, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    if-eqz v2, :cond_20

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lge.orangephotowidget"

    const-string v4, "com.lge.orangephotowidget.OrangePhotoDialogActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 359
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 361
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v2, 0x7f070003

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_20
    return-void
.end method

.method private loadPreferences(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .registers 6
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 641
    const-string v1, "com.lge.orangephotowidget"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "PhotoID"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 699
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 705
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 703
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 704
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 705
    goto :goto_8
.end method

.method private showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "context"
    .parameter "views"
    .parameter "resolver"

    .prologue
    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 480
    .local v18, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->check(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->loadPreferences(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v3

    sput v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 486
    sget v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->content_check(Landroid/content/ContentResolver;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_32

    .line 487
    const/4 v3, 0x1

    sput v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 491
    :cond_32
    const/4 v14, 0x0

    .local v14, i:I
    :goto_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->end_position:I

    move v3, v0

    if-ge v14, v3, :cond_4b

    .line 492
    sget v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->drm_check(Landroid/content/ContentResolver;I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 510
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/images/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 512
    .local v4, mUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 513
    .local v10, content_path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 514
    .local v11, content_size_byte:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 516
    .local v12, cusor:Landroid/database/Cursor;
    if-eqz v12, :cond_86

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 517
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 521
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 522
    const/4 v12, 0x0

    .line 550
    :cond_86
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 551
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 552
    .local v17, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 561
    .local v16, mContentResolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 563
    .local v15, input:Landroid/os/ParcelFileDescriptor;
    :try_start_a0
    const-string v3, "r"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 564
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_a0 .. :try_end_b6} :catch_e7

    .line 571
    .end local v4           #mUri:Landroid/net/Uri;
    :goto_b6
    if-eqz v15, :cond_bb

    .line 572
    :try_start_b8
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_ef

    .line 578
    :cond_bb
    :goto_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v4, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v5, v0

    const/16 v6, 0x6c

    invoke-static {v4, v5, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->computeSampleSize(III)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    invoke-static {v10, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v9

    .line 632
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #content_path:Ljava/lang/String;
    .end local v11           #content_size_byte:I
    .end local v12           #cusor:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v15           #input:Landroid/os/ParcelFileDescriptor;
    .end local v16           #mContentResolver:Landroid/content/ContentResolver;
    .end local v17           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_dc
    return-object v3

    .line 498
    .restart local v14       #i:I
    :cond_dd
    sget v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 491
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_33

    .line 565
    .restart local v10       #content_path:Ljava/lang/String;
    .restart local v11       #content_size_byte:I
    .restart local v12       #cusor:Landroid/database/Cursor;
    .restart local v15       #input:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v17       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_e7
    move-exception v3

    move-object v13, v3

    .line 567
    .local v13, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_b6

    .line 632
    .end local v10           #content_path:Ljava/lang/String;
    .end local v11           #content_size_byte:I
    .end local v12           #cusor:Landroid/database/Cursor;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v14           #i:I
    .end local v15           #input:Landroid/os/ParcelFileDescriptor;
    .end local v16           #mContentResolver:Landroid/content/ContentResolver;
    .end local v17           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_ed
    const/4 v3, 0x0

    goto :goto_dc

    .line 574
    .restart local v10       #content_path:Ljava/lang/String;
    .restart local v11       #content_size_byte:I
    .restart local v12       #cusor:Landroid/database/Cursor;
    .restart local v14       #i:I
    .restart local v15       #input:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v17       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_ef
    move-exception v3

    goto :goto_bb
.end method

.method private updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"

    .prologue
    const v5, 0x7f070004

    .line 381
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030001

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 383
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 384
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 450
    .local v0, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2f

    .line 452
    const v3, 0x7f070003

    sget-object v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 454
    const-string v3, ""

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 468
    :goto_28
    invoke-direct {p0, p1, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 469
    invoke-virtual {p2, p3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 475
    return-void

    .line 464
    :cond_2f
    const v3, 0x7f050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_28
.end method


# virtual methods
.method public check(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 10
    .parameter "resolver"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 712
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, first_uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 713
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 715
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 717
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->end_position:I

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 719
    const/4 v6, 0x0

    .line 720
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 724
    :goto_2a
    return-object v0

    :cond_2b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2a
.end method

.method public checkReload()V
    .registers 9

    .prologue
    .line 139
    iget v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkNumber:I

    .line 140
    iget v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkNumber:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_c

    .line 160
    :cond_b
    :goto_b
    return-void

    .line 141
    :cond_c
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v3, views:Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentWidgetId:[I

    array-length v0, v4

    .line 144
    .local v0, N:I
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentcontext:Landroid/content/Context;

    invoke-direct {p0, v4, v3, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 147
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_3c

    .line 149
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentcontext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentWidgetId:[I

    aget v6, v6, v1

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 152
    :cond_3c
    sget-object v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    .line 154
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$2;

    invoke-direct {v5, p0}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$2;-><init>(Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public content_check(Landroid/content/ContentResolver;I)Ljava/lang/Boolean;
    .registers 10
    .parameter "resolver"
    .parameter "mposition"

    .prologue
    const/4 v2, 0x0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, content_uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 731
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 732
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_32

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 734
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 735
    const/4 v6, 0x0

    .line 736
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 744
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_31
.end method

.method public drm_check(Landroid/content/ContentResolver;I)Ljava/lang/Boolean;
    .registers 13
    .parameter "resolver"
    .parameter "mposition"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, content_uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 751
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 754
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v7

    .line 756
    .local v7, drm:I
    if-lez v7, :cond_3d

    .line 758
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 759
    const/4 v6, 0x0

    .line 760
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 772
    .end local v7           #drm:I
    :goto_3c
    return-object v0

    .line 763
    .restart local v7       #drm:I
    :cond_3d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 764
    const/4 v6, 0x0

    .line 765
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c

    .line 772
    .end local v7           #drm:I
    :cond_46
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c
.end method

.method notifyChange(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)I
    .registers 13
    .parameter "service"
    .parameter "what"

    .prologue
    .line 779
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/lge/orangephotowidget/WidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030001

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 781
    .local v7, views:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 782
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p1}, Lcom/lge/orangephotowidget/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 783
    .local v2, mresolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/lge/orangephotowidget/WidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 784
    .local v5, res:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 786
    .local v4, re_service:I
    const-string v8, "com.lge.orangephotowidget.eject"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 789
    const v8, 0x7f070003

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 790
    const v8, 0x7f070004

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 791
    const v8, 0x7f070004

    const v9, 0x7f050001

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 794
    const-string v8, "com.lge.orangephotowidget"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/lge/orangephotowidget/WidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 795
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 796
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 799
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 800
    const/4 v8, 0x0

    sput-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 801
    const/4 v8, 0x0

    sput v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 887
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_54
    :goto_54
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 898
    return v4

    .line 805
    :cond_5a
    const-string v8, "com.lge.orangephotowidget.mounted"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 807
    invoke-virtual {p1}, Lcom/lge/orangephotowidget/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 826
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 828
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_8b

    .line 830
    const v8, 0x7f070003

    sget-object v9, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 832
    const v8, 0x7f070004

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 833
    const v8, 0x7f070003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 847
    :goto_87
    invoke-direct {p0, p1, v7}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_54

    .line 843
    :cond_8b
    const v8, 0x7f070004

    const v9, 0x7f050001

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 844
    const/4 v4, 0x1

    goto :goto_87

    .line 852
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_9a
    const-string v8, "com.lge.orangephotowidet.landscape"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_aa

    const-string v8, "com.lge.orangephotowidet.portrait"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 853
    :cond_aa
    sget-boolean v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->view_visibility:Z

    if-eqz v8, :cond_be

    .line 854
    const v8, 0x7f070002

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 855
    const v8, 0x7f070003

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 858
    :cond_be
    invoke-virtual {p1}, Lcom/lge/orangephotowidget/WidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 860
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_df

    .line 867
    :goto_c6
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_e6

    .line 869
    const v8, 0x7f070003

    sget-object v9, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 871
    const v8, 0x7f070004

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 884
    :goto_da
    invoke-direct {p0, p1, v7}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_54

    .line 864
    :cond_df
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    goto :goto_c6

    .line 882
    :cond_e6
    const v8, 0x7f070004

    const v9, 0x7f050001

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_da
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 166
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.lge.orangephotowidget"

    .line 180
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v2, service_intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.orangephotowidget"

    const-string v4, "com.lge.orangephotowidget.WidgetService"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 184
    const-string v3, "com.lge.orangephotowidget"

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    const/4 v3, 0x0

    sput-object v3, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 191
    sput v5, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mposition:I

    .line 192
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, service_intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.orangephotowidget"

    const-string v3, "com.lge.orangephotowidget.WidgetService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, action:Ljava/lang/String;
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030001

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 217
    .local v7, views:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 218
    .local v3, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 219
    .local v2, appWidgetIds:[I
    array-length v0, v2

    .line 240
    .local v0, N:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 241
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 245
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "orgwidgetgone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 247
    invoke-virtual {p0, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->check(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 249
    const v8, 0x7f070002

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 250
    const v8, 0x7f070003

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 253
    :cond_49
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 254
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->view_visibility:Z

    .line 344
    :cond_51
    :goto_51
    return-void

    .line 257
    :cond_52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "orgwidgetsetimage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 259
    invoke-virtual {p0, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->check(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 262
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 263
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6f
    if-ge v4, v0, :cond_79

    .line 266
    aget v8, v2, v4

    invoke-direct {p0, p1, v3, v8}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 269
    :cond_79
    const v8, 0x7f070002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 270
    const v8, 0x7f070004

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 271
    const v8, 0x7f070003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 273
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->view_visibility:Z

    goto :goto_51

    .line 276
    .end local v4           #i:I
    :cond_98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setnoimage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 280
    const v8, 0x7f070002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 281
    const v8, 0x7f070003

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 282
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 283
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->view_visibility:Z

    goto :goto_51

    .line 285
    :cond_bc
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.lge.orangephotowidget.orgwidgetview"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 288
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 290
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_e4

    .line 292
    const v8, 0x7f070003

    sget-object v9, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 305
    :goto_da
    invoke-direct {p0, p1, v7}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 306
    sget-object v8, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_51

    .line 302
    :cond_e4
    const v8, 0x7f070004

    const v9, 0x7f050001

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_da

    .line 342
    :cond_f2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_51
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 12
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentcontext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 92
    iput-object p3, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->currentWidgetId:[I

    .line 93
    const/4 v4, 0x0

    iput v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkNumber:I

    .line 94
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v3, views:Landroid/widget/RemoteViews;
    array-length v0, p3

    .line 98
    .local v0, N:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 102
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v3, v2}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->showUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v0, :cond_2b

    .line 107
    aget v4, p3, v1

    invoke-direct {p0, p1, p2, v4}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 125
    :cond_2b
    sget-object v4, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->mbitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3b

    .line 127
    iget-object v4, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$1;

    invoke-direct {v5, p0}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$1;-><init>(Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_3b
    return-void
.end method
