.class public Lcom/android/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicUtils$FastBitmapDrawable;,
        Lcom/android/music/MusicUtils$ServiceBinder;,
        Lcom/android/music/MusicUtils$Defs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static mCachedArt:[B

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEmptyList:[I

.field private static final sExternalMediaUri:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static sService:Lcom/android/music/IMediaPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    sput-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 253
    new-array v0, v3, [I

    sput-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[I

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 631
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 632
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 742
    const/4 v0, -0x2

    sput v0, Lcom/android/music/MusicUtils;->sArtId:I

    .line 744
    sput-object v4, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 745
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 746
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 747
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 749
    const/4 v0, -0x1

    sput v0, Lcom/android/music/MusicUtils;->sArtCacheId:I

    .line 755
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 756
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 758
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 759
    sget-object v0, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 996
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .registers 9
    .parameter "context"
    .parameter "list"

    .prologue
    .line 470
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_5

    .line 480
    :goto_4
    return-void

    .line 474
    :cond_5
    :try_start_5
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/android/music/IMediaPlaybackService;->enqueue([II)V

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_4

    .line 478
    .end local v0           #message:Ljava/lang/String;
    :catch_2b
    move-exception v1

    goto :goto_4
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJ)V
    .registers 12
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 483
    if-nez p1, :cond_a

    .line 486
    const-string p0, "MusicBase"

    .end local p0
    const-string p1, "ListSelection null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local p2
    :goto_9
    return-void

    .line 488
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_a
    array-length v6, p1

    .line 489
    .local v6, size:I
    new-array v7, v6, [Landroid/content/ContentValues;

    .line 490
    .local v7, values:[Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v1

    .line 496
    .local v2, cols:[Ljava/lang/String;
    const-string v1, "external"

    invoke-static {v1, p2, p3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 497
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 498
    .end local p2
    .local p3, cur:Landroid/database/Cursor;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 499
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 500
    .local p2, base:I
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 502
    const/4 p3, 0x0

    .end local v2           #cols:[Ljava/lang/String;
    .local p3, i:I
    :goto_32
    if-ge p3, v6, :cond_58

    .line 503
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v7, p3

    .line 504
    aget-object v2, v7, p3

    const-string v3, "play_order"

    add-int v4, p2, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    aget-object v2, v7, p3

    const-string v3, "audio_id"

    aget v4, p1, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    add-int/lit8 p3, p3, 0x1

    goto :goto_32

    .line 507
    :cond_58
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1
    const p2, 0x7f080004

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2           #base:I
    .end local p3           #i:I
    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #resolver:Landroid/content/ContentResolver;
    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    aput-object v1, p3, v0

    invoke-virtual {p1, p2, v6, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 510
    .local p1, message:Ljava/lang/String;
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v3, Lcom/android/music/MediaPlaybackService;

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    new-instance v0, Lcom/android/music/MusicUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 157
    .local v0, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    sget-object v1, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static clearAlbumArtCache()V
    .registers 2

    .prologue
    .line 775
    sget-object v0, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 776
    :try_start_3
    sget-object v1, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 777
    monitor-exit v0

    .line 778
    return-void

    .line 777
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    .line 397
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 398
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public static clearQueue()V
    .registers 3

    .prologue
    .line 714
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 717
    :goto_9
    return-void

    .line 715
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static deleteTracks(Landroid/content/Context;[I)V
    .registers 9
    .parameter "context"
    .parameter "list"

    .prologue
    .line 404
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 406
    .local v2, cols:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v6, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    array-length v1, p1

    if-ge v0, v1, :cond_32

    .line 409
    aget v1, p1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    array-length v1, p1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2f

    .line 411
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 414
    :cond_32
    const-string v0, ")"

    .end local v0           #i:I
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 418
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_be

    .line 423
    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    .end local v2           #cols:[Ljava/lang/String;
    :goto_49
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_70

    .line 426
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 427
    .local v0, id:I
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/android/music/IMediaPlaybackService;->removeTrack(I)I

    .line 429
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #id:I
    move-result v0

    .line 430
    .local v0, artIndex:I
    sget-object v2, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_61} :catch_6f

    .line 431
    :try_start_61
    sget-object v3, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #artIndex:I
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_b8

    .line 433
    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_49

    .line 435
    :catch_6f
    move-exception v0

    .line 439
    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 443
    :goto_81
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 444
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, f:Ljava/io/File;
    :try_start_91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #f:Ljava/io/File;
    if-nez v0, :cond_af

    .line 450
    const-string v0, "MusicUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_af
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b2
    .catch Ljava/lang/SecurityException; {:try_start_91 .. :try_end_b2} :catch_b3

    goto :goto_81

    .line 453
    :catch_b3
    move-exception v0

    .line 454
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_81

    .line 432
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v0
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bb} :catch_6f

    .line 457
    :cond_bb
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_be
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    array-length v2, p1

    .end local v1           #c:Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length p1, p1

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 463
    .local p1, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .end local p1           #message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const-string p1, "content://media"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 467
    return-void
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .registers 12
    .parameter "a"

    .prologue
    const v10, 0x7f0a0029

    const/4 v9, 0x0

    .line 563
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, status:Ljava/lang/String;
    const v3, 0x7f07002d

    .line 565
    .local v3, title:I
    const v1, 0x7f07002e

    .line 567
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 569
    :cond_1e
    const v3, 0x7f07002b

    .line 570
    const v1, 0x7f07002c

    .line 587
    :goto_24
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 588
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 589
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_30

    .line 590
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :cond_30
    const v6, 0x7f0a0028

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 593
    if-eqz v5, :cond_3c

    .line 594
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_3c
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 597
    if-eqz v5, :cond_4a

    .line 598
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :cond_4a
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 601
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 602
    return-void

    .line 571
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_54
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 572
    const v3, 0x7f070029

    .line 573
    const v1, 0x7f07002a

    goto :goto_24

    .line 574
    :cond_63
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 579
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 580
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/ScanningProgress;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 582
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    .line 584
    .end local v0           #intent:Landroid/content/Intent;
    :cond_80
    const-string v6, "MusicUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sd card: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private static ensureFileExists(Ljava/lang/String;)Z
    .registers 10
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 973
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 974
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 991
    :goto_e
    return v5

    .line 979
    :cond_f
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 980
    .local v4, secondSlash:I
    if-ge v4, v6, :cond_19

    move v5, v8

    goto :goto_e

    .line 981
    :cond_19
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 983
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2a

    move v5, v8

    .line 984
    goto :goto_e

    .line 985
    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 987
    :try_start_31
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_36

    move-result v5

    goto :goto_e

    .line 988
    :catch_36
    move-exception v3

    .line 989
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "MusicUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File creation failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 991
    goto :goto_e
.end method

.method public static getAllSongs(Landroid/content/Context;)[I
    .registers 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 327
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music=1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3f

    move-result v0

    if-nez v0, :cond_22

    .line 343
    :cond_1b
    if-eqz v6, :cond_20

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    move-object v0, v4

    :goto_21
    return-object v0

    .line 334
    :cond_22
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 335
    .local v8, len:I
    new-array v9, v8, [I

    .line 336
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_29
    if-ge v7, v8, :cond_38

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 338
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_3f

    .line 336
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 343
    :cond_38
    if-eqz v6, :cond_3d

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    move-object v0, v9

    goto :goto_21

    .line 343
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :catchall_3f
    move-exception v0

    if-eqz v6, :cond_45

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method public static getArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"
    .parameter "album_id"

    .prologue
    .line 869
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getArtwork(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"
    .parameter "album_id"
    .parameter "allowDefault"

    .prologue
    .line 877
    if-gez p1, :cond_15

    .line 880
    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    .end local p1
    move-result-object p1

    .line 881
    .local p1, bm:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_c

    move-object p0, p1

    .line 968
    .end local p0
    .end local p1           #bm:Landroid/graphics/Bitmap;
    .end local p2
    :cond_b
    :goto_b
    return-object p0

    .line 884
    .restart local p0
    .restart local p1       #bm:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_c
    if-eqz p2, :cond_13

    .line 885
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_b

    .line 887
    :cond_13
    const/4 p0, 0x0

    goto :goto_b

    .line 891
    .local p1, album_id:I
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 892
    .local v2, res:Landroid/content/ContentResolver;
    sget-object v0, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 893
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_f7

    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, in:Ljava/io/InputStream;
    :try_start_23
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 897
    const/4 v1, 0x0

    sget-object v3, Lcom/android/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .end local v1           #uri:Landroid/net/Uri;
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_36

    move-result-object p0

    .line 960
    .end local p0
    if-eqz v0, :cond_b

    .line 961
    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_b

    .line 963
    :catch_34
    move-exception p1

    goto :goto_b

    .line 898
    .restart local p0
    :catch_36
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    move-object v0, v5

    .line 901
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    :try_start_3b
    invoke-static {p0, v0, p1}, Lcom/android/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    move-result-object v0

    .line 902
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_ee

    .line 903
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_67

    .line 904
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 905
    if-nez v0, :cond_67

    .line 906
    if-eqz p2, :cond_5e

    .line 907
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_dc

    move-result-object p0

    .line 960
    .end local p0
    if-eqz v1, :cond_b

    .line 961
    :try_start_58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_b

    .line 963
    :catch_5c
    move-exception p1

    goto :goto_b

    .line 909
    .restart local p0
    :cond_5e
    const/4 p0, 0x0

    .line 960
    .end local p0
    if-eqz v1, :cond_b

    .line 961
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_b

    .line 963
    :catch_65
    move-exception p1

    goto :goto_b

    .restart local p0
    :cond_67
    move-object p0, v0

    .line 918
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    :try_start_68
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/albumthumbs/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 920
    .local p2, file:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/music/MusicUtils;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_8e
    .catchall {:try_start_68 .. :try_end_8e} :catchall_dc

    move-result v0

    if-eqz v0, :cond_c9

    .line 922
    :try_start_91
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 923
    .local v0, outstream:Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 924
    .local v3, success:Z
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 925
    if-eqz v3, :cond_100

    .line 926
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #outstream:Ljava/io/OutputStream;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 927
    .local v0, values:Landroid/content/ContentValues;
    const-string v4, "album_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1           #album_id:I
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    const-string p1, "_data"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object p1, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 930
    .local p1, newuri:Landroid/net/Uri;
    if-nez p1, :cond_100

    .line 939
    const/4 p1, 0x0

    .line 942
    .end local v0           #values:Landroid/content/ContentValues;
    .end local v3           #success:Z
    .local p1, success:Z
    :goto_bf
    if-nez p1, :cond_c9

    .line 943
    new-instance p1, Ljava/io/File;

    .end local p1           #success:Z
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    .local p1, f:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_c9
    .catchall {:try_start_91 .. :try_end_c9} :catchall_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_c9} :catch_d3
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_c9} :catch_e5

    .line 960
    .end local p1           #f:Ljava/io/File;
    .end local p2           #file:Ljava/lang/String;
    :cond_c9
    :goto_c9
    if-eqz v1, :cond_b

    .line 961
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_d0

    goto/16 :goto_b

    .line 963
    :catch_d0
    move-exception p1

    goto/16 :goto_b

    .line 946
    .restart local p2       #file:Ljava/lang/String;
    :catch_d3
    move-exception p1

    .line 947
    .local p1, e:Ljava/io/FileNotFoundException;
    :try_start_d4
    const-string p2, "MusicUtils"

    .end local p2           #file:Ljava/lang/String;
    const-string v0, "error creating file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_dc

    goto :goto_c9

    .line 959
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .end local p1           #e:Ljava/io/FileNotFoundException;
    :catchall_dc
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .line 960
    .end local v1           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    :goto_df
    if-eqz p0, :cond_e4

    .line 961
    :try_start_e1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fa

    .line 964
    .end local p0           #in:Ljava/io/InputStream;
    :cond_e4
    :goto_e4
    throw p1

    .line 948
    .restart local v1       #in:Ljava/io/InputStream;
    .local p0, bm:Landroid/graphics/Bitmap;
    .restart local p2       #file:Ljava/lang/String;
    :catch_e5
    move-exception p1

    .line 949
    .local p1, e:Ljava/io/IOException;
    :try_start_e6
    const-string p2, "MusicUtils"

    .end local p2           #file:Ljava/lang/String;
    const-string v0, "error creating file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 952
    .local v0, bm:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    .local p1, album_id:I
    .local p2, allowDefault:Z
    :cond_ee
    if-eqz p2, :cond_f5

    .line 953
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_f3
    .catchall {:try_start_e6 .. :try_end_f3} :catchall_dc

    move-result-object p0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    goto :goto_c9

    .line 955
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    :cond_f5
    const/4 p0, 0x0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    goto :goto_c9

    .line 968
    .local v1, uri:Landroid/net/Uri;
    .local p0, context:Landroid/content/Context;
    :cond_f7
    const/4 p0, 0x0

    goto/16 :goto_b

    .line 963
    .end local v1           #uri:Landroid/net/Uri;
    .end local p1           #album_id:I
    .end local p2           #allowDefault:Z
    .local p0, in:Ljava/io/InputStream;
    :catch_fa
    move-exception p0

    goto :goto_e4

    .line 959
    .local v0, in:Ljava/io/InputStream;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #album_id:I
    .restart local p2       #allowDefault:Z
    :catchall_fc
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    goto :goto_df

    .end local p1           #album_id:I
    .local v1, in:Ljava/io/InputStream;
    .restart local v3       #success:Z
    .local p0, bm:Landroid/graphics/Bitmap;
    .local p2, file:Ljava/lang/String;
    :cond_100
    move p1, v3

    .end local v3           #success:Z
    .local p1, success:Z
    goto :goto_bf
.end method

.method private static getArtworkFromFile(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "uri"
    .parameter "albumid"

    .prologue
    .line 998
    const/4 v7, 0x0

    .line 999
    .local v7, bm:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1000
    .local v6, art:[B
    const/4 v1, 0x0

    .line 1002
    .local v1, path:Ljava/lang/String;
    sget v0, Lcom/android/music/MusicUtils;->sArtId:I

    if-ne v0, p2, :cond_c1

    .line 1004
    sget-object v0, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 1005
    sget-object p0, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .end local p0
    move-object v0, v7

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    move-object v2, p0

    move-object p0, v6

    .line 1133
    .end local v6           #art:[B
    .local p0, art:[B
    :goto_10
    return-object v2

    .line 1007
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v6       #art:[B
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    :cond_11
    sget-object v0, Lcom/android/music/MusicUtils;->mCachedArt:[B

    .end local v6           #art:[B
    .local v0, art:[B
    move-object v8, v1

    .end local v1           #path:Ljava/lang/String;
    .local v8, path:Ljava/lang/String;
    move-object v6, v0

    .line 1066
    .end local v0           #art:[B
    .restart local v6       #art:[B
    :cond_15
    :goto_15
    if-nez v6, :cond_1d2

    if-eqz v8, :cond_1d2

    .line 1067
    sget-object v0, Lcom/android/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 1069
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1072
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_1cf

    .line 1073
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1074
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 1075
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .end local v8           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    :goto_45
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    .line 1080
    .end local v0           #path:Ljava/lang/String;
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v1       #path:Ljava/lang/String;
    :goto_49
    const/16 p0, 0x2f

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 1081
    .local p0, lastSlash:I
    if-lez p0, :cond_1c9

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p0           #lastSlash:I
    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "AlbumArt.jpg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1083
    .local p0, artPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    .end local p0           #artPath:Ljava/lang/String;
    if-eqz p0, :cond_1c9

    .line 1085
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 1086
    .end local v6           #art:[B
    .local p0, art:[B
    const/4 v2, 0x0

    .line 1088
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_7e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_17d

    .line 1089
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_83
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_1b1
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_1b5

    .line 1094
    if-eqz v3, :cond_8b

    .line 1095
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_1ac

    .line 1106
    .end local v0           #file:Ljava/io/File;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :cond_8b
    :goto_8b
    if-eqz p0, :cond_1c6

    .line 1109
    :try_start_8d
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1110
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1111
    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1112
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1116
    :goto_9d
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_a9

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x140

    if-le v2, v3, :cond_193

    .line 1117
    :cond_a9
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1118
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1119
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_bb} :catch_bc

    goto :goto_9d

    .line 1130
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_bc
    move-exception v0

    move-object v0, v7

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_be
    move-object v2, v0

    .line 1133
    goto/16 :goto_10

    .line 1010
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v6       #art:[B
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    :cond_c1
    if-nez p1, :cond_1dc

    .line 1012
    :try_start_c3
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 1013
    .local v0, curalbum:I
    if-eq v0, p2, :cond_cd

    if-gez p2, :cond_1d9

    .line 1014
    :cond_cd
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .end local v0           #curalbum:I
    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_d2} :catch_148
    .catch Ljava/lang/NullPointerException; {:try_start_c3 .. :try_end_d2} :catch_151

    move-result-object v0

    .line 1015
    .end local v1           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_d9

    .line 1016
    :try_start_d5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_d8} :catch_1c4
    .catch Ljava/lang/NullPointerException; {:try_start_d5 .. :try_end_d8} :catch_1c2

    move-result-object p1

    :cond_d9
    :goto_d9
    move-object v8, v0

    .line 1025
    .end local v0           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    :goto_da
    if-nez p1, :cond_124

    .line 1026
    if-ltz p2, :cond_124

    .line 1027
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album"

    aput-object v3, v2, v0

    const-string v3, "album_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1031
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_124

    .line 1032
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1033
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    .end local p1
    move-result p1

    .line 1034
    .local p1, trackid:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 1036
    .local p1, uri:Landroid/net/Uri;
    const-string v1, "<unknown>"

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1037
    const/4 p2, -0x1

    .line 1040
    :cond_121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1044
    .end local v0           #c:Landroid/database/Cursor;
    :cond_124
    if-eqz p1, :cond_15

    .line 1045
    new-instance v2, Landroid/media/MediaScanner;

    invoke-direct {v2, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1046
    .local v2, scanner:Landroid/media/MediaScanner;
    const/4 v0, 0x0

    .line 1048
    .local v0, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_12c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_135
    .catchall {:try_start_12c .. :try_end_135} :catchall_174
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_135} :catch_15e
    .catch Ljava/lang/SecurityException; {:try_start_12c .. :try_end_135} :catch_169

    move-result-object v1

    .line 1049
    .end local v0           #pfd:Landroid/os/ParcelFileDescriptor;
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1d6

    .line 1050
    :try_start_138
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1051
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v2, v0}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_1b8
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13f} :catch_1bf
    .catch Ljava/lang/SecurityException; {:try_start_138 .. :try_end_13f} :catch_1bc

    move-result-object v0

    .line 1057
    .end local v6           #art:[B
    .local v0, art:[B
    :goto_140
    if-eqz v1, :cond_145

    .line 1058
    :try_start_142
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_15a

    :cond_145
    move-object v6, v0

    .line 1061
    .end local v0           #art:[B
    .restart local v6       #art:[B
    goto/16 :goto_15

    .line 1019
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .end local v8           #path:Ljava/lang/String;
    .local v1, path:Ljava/lang/String;
    :catch_148
    move-exception p0

    move-object v0, v1

    .line 1020
    .end local v1           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    .local p0, ex:Landroid/os/RemoteException;
    :goto_14a
    const/4 p0, 0x0

    move-object v1, v0

    .end local v0           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    move-object v2, p0

    move-object v0, v7

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    move-object p0, v6

    .end local v6           #art:[B
    .local p0, art:[B
    goto/16 :goto_10

    .line 1021
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v6       #art:[B
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    :catch_151
    move-exception p0

    move-object v0, v1

    .line 1022
    .end local v1           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    .local p0, ex:Ljava/lang/NullPointerException;
    :goto_153
    const/4 p0, 0x0

    move-object v1, v0

    .end local v0           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    move-object v2, p0

    move-object v0, v7

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    move-object p0, v6

    .end local v6           #art:[B
    .local p0, art:[B
    goto/16 :goto_10

    .line 1060
    .local v0, art:[B
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #path:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :catch_15a
    move-exception v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    move-object v6, v0

    .line 1062
    .end local v0           #art:[B
    .restart local v6       #art:[B
    goto/16 :goto_15

    .line 1053
    .local v0, pfd:Landroid/os/ParcelFileDescriptor;
    :catch_15e
    move-exception v1

    .line 1057
    :goto_15f
    if-eqz v0, :cond_15

    .line 1058
    :try_start_161
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_166

    goto/16 :goto_15

    .line 1060
    :catch_166
    move-exception v0

    goto/16 :goto_15

    .line 1054
    :catch_169
    move-exception v1

    .line 1057
    :goto_16a
    if-eqz v0, :cond_15

    .line 1058
    :try_start_16c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_171

    goto/16 :goto_15

    .line 1060
    :catch_171
    move-exception v0

    goto/16 :goto_15

    .line 1056
    :catchall_174
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 1057
    .end local v0           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local p1           #uri:Landroid/net/Uri;
    .local p0, pfd:Landroid/os/ParcelFileDescriptor;
    :goto_177
    if-eqz p0, :cond_17c

    .line 1058
    :try_start_179
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_1aa

    .line 1061
    .end local p0           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_17c
    :goto_17c
    throw p1

    .line 1090
    .end local v6           #art:[B
    .end local v8           #path:Ljava/lang/String;
    .local v0, file:Ljava/io/File;
    .local v1, path:Ljava/lang/String;
    .local v2, stream:Ljava/io/FileInputStream;
    .local p0, art:[B
    .restart local p1       #uri:Landroid/net/Uri;
    :catch_17d
    move-exception p0

    move-object v0, v2

    .line 1091
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v0, stream:Ljava/io/FileInputStream;
    .local p0, ex:Ljava/io/IOException;
    :goto_17f
    const/4 p0, 0x0

    .line 1094
    .local p0, art:[B
    if-eqz v0, :cond_8b

    .line 1095
    :try_start_182
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_187

    goto/16 :goto_8b

    .line 1097
    :catch_187
    move-exception v0

    goto/16 :goto_8b

    .line 1093
    .local v0, file:Ljava/io/File;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catchall_18a
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .line 1094
    .end local v2           #stream:Ljava/io/FileInputStream;
    .end local p1           #uri:Landroid/net/Uri;
    .local p0, stream:Ljava/io/FileInputStream;
    :goto_18d
    if-eqz p0, :cond_192

    .line 1095
    :try_start_18f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_1af

    .line 1098
    .end local p0           #stream:Ljava/io/FileInputStream;
    :cond_192
    :goto_192
    throw p1

    .line 1123
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    .local p0, art:[B
    .restart local p1       #uri:Landroid/net/Uri;
    :cond_193
    const/4 v2, 0x0

    :try_start_194
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1124
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_19b} :catch_bc

    move-result-object v0

    .line 1125
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1a1

    .line 1126
    :try_start_19f
    sput p2, Lcom/android/music/MusicUtils;->sArtId:I

    .line 1128
    :cond_1a1
    sput-object p0, Lcom/android/music/MusicUtils;->mCachedArt:[B

    .line 1129
    sput-object v0, Lcom/android/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a5} :catch_1a7

    goto/16 :goto_be

    .line 1130
    :catch_1a7
    move-exception v2

    goto/16 :goto_be

    .line 1060
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #path:Ljava/lang/String;
    .end local p1           #uri:Landroid/net/Uri;
    .local v2, scanner:Landroid/media/MediaScanner;
    .restart local v6       #art:[B
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #path:Ljava/lang/String;
    .local p0, pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1aa
    move-exception p0

    goto :goto_17c

    .line 1097
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .end local v6           #art:[B
    .end local v8           #path:Ljava/lang/String;
    .local v0, file:Ljava/io/File;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .local p0, art:[B
    .restart local p1       #uri:Landroid/net/Uri;
    :catch_1ac
    move-exception v0

    goto/16 :goto_8b

    .end local v3           #stream:Ljava/io/FileInputStream;
    .end local p1           #uri:Landroid/net/Uri;
    .local p0, stream:Ljava/io/FileInputStream;
    :catch_1af
    move-exception p0

    goto :goto_192

    .line 1093
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .local p0, art:[B
    .restart local p1       #uri:Landroid/net/Uri;
    :catchall_1b1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .local p0, stream:Ljava/io/FileInputStream;
    goto :goto_18d

    .line 1090
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .local p0, art:[B
    :catch_1b5
    move-exception p0

    move-object v0, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, stream:Ljava/io/FileInputStream;
    goto :goto_17f

    .line 1056
    .end local v0           #stream:Ljava/io/FileInputStream;
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    .restart local v6       #art:[B
    .restart local v8       #path:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :catchall_1b8
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .local p0, pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_177

    .line 1054
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    .local p0, context:Landroid/content/Context;
    :catch_1bc
    move-exception v0

    move-object v0, v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .local v0, pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_16a

    .line 1053
    .end local v0           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1bf
    move-exception v0

    move-object v0, v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v0       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_15f

    .line 1021
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .end local v8           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    :catch_1c2
    move-exception p0

    goto :goto_153

    .line 1019
    :catch_1c4
    move-exception p0

    goto :goto_14a

    .end local v0           #path:Ljava/lang/String;
    .end local v6           #art:[B
    .local v1, path:Ljava/lang/String;
    .local p0, art:[B
    :cond_1c6
    move-object v0, v7

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    goto/16 :goto_be

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p0           #art:[B
    .restart local v6       #art:[B
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    :cond_1c9
    move-object p0, v6

    .end local v6           #art:[B
    .restart local p0       #art:[B
    goto/16 :goto_8b

    .end local v1           #path:Ljava/lang/String;
    .restart local v6       #art:[B
    .restart local v8       #path:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    :cond_1cc
    move-object v0, v8

    .end local v8           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    goto/16 :goto_45

    .end local v0           #path:Ljava/lang/String;
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v8       #path:Ljava/lang/String;
    :cond_1cf
    move-object v1, v8

    .end local v8           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    goto/16 :goto_49

    .end local v1           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_1d2
    move-object v1, v8

    .end local v8           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    move-object p0, v6

    .end local v6           #art:[B
    .local p0, art:[B
    goto/16 :goto_8b

    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    .restart local v6       #art:[B
    .restart local v8       #path:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_1d6
    move-object v0, v6

    .end local v6           #art:[B
    .local v0, art:[B
    goto/16 :goto_140

    .end local v2           #scanner:Landroid/media/MediaScanner;
    .end local v8           #path:Ljava/lang/String;
    .local v0, curalbum:I
    .local v1, path:Ljava/lang/String;
    .restart local v6       #art:[B
    :cond_1d9
    move-object v0, v1

    .end local v1           #path:Ljava/lang/String;
    .local v0, path:Ljava/lang/String;
    goto/16 :goto_d9

    .end local v0           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_1dc
    move-object v8, v1

    .end local v1           #path:Ljava/lang/String;
    .restart local v8       #path:Ljava/lang/String;
    goto/16 :goto_da
.end method

.method private static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v11, 0x0

    .line 814
    add-int/lit8 p2, p2, -0x1

    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 816
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v9, p1

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 817
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_78

    .line 818
    const/4 v1, 0x0

    .line 820
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_11
    const-string v8, "r"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 821
    const/4 v5, 0x1

    .line 826
    .local v5, sampleSize:I
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 829
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v8, 0x1

    .line 830
    .local v3, nextWidth:I
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v8, 0x1

    .line 831
    .local v2, nextHeight:I
    :goto_33
    if-le v3, p2, :cond_3e

    if-le v2, p3, :cond_3e

    .line 832
    shl-int/lit8 v5, v5, 0x1

    .line 833
    shr-int/lit8 v3, v3, 0x1

    .line 834
    shr-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 837
    :cond_3e
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 838
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 839
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 842
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6b

    .line 844
    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v8, p2, :cond_60

    sget-object v8, Lcom/android/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v8, p3, :cond_6b

    .line 845
    :cond_60
    const/4 v8, 0x1

    invoke-static {v0, p2, p3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 847
    .local v6, tmp:Landroid/graphics/Bitmap;
    if-eq v6, v0, :cond_6a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6a
    .catchall {:try_start_11 .. :try_end_6a} :catchall_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_6a} :catch_72

    .line 848
    :cond_6a
    move-object v0, v6

    .line 856
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_6b
    if-eqz v1, :cond_70

    .line 857
    :try_start_6d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_81

    :cond_70
    :goto_70
    move-object v8, v0

    .line 862
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :goto_71
    return-object v8

    .line 853
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_72
    move-exception v8

    .line 856
    if-eqz v1, :cond_78

    .line 857
    :try_start_75
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_83

    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_78
    :goto_78
    move-object v8, v11

    .line 862
    goto :goto_71

    .line 855
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_7a
    move-exception v8

    .line 856
    if-eqz v1, :cond_80

    .line 857
    :try_start_7d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_85

    .line 859
    :cond_80
    :goto_80
    throw v8

    .line 858
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #nextHeight:I
    .restart local v3       #nextWidth:I
    .restart local v5       #sampleSize:I
    :catch_81
    move-exception v8

    goto :goto_70

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :catch_83
    move-exception v8

    goto :goto_78

    :catch_85
    move-exception v9

    goto :goto_80
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 783
    :try_start_4
    sget-object v7, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 784
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_49

    .line 785
    if-nez v2, :cond_48

    .line 786
    move-object v2, p2

    .line 787
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 788
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 789
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 790
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/android/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 791
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_48

    .line 792
    new-instance v2, Lcom/android/music/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/android/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 793
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 795
    :try_start_30
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 796
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_4c

    .line 797
    sget-object v8, Lcom/android/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :goto_47
    monitor-exit v7
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_4e

    .line 804
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_48
    return-object v2

    .line 784
    :catchall_49
    move-exception v7

    :try_start_4a
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v7

    .line 799
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_4c
    move-object v2, v5

    goto :goto_47

    .line 801
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_4e
    move-exception v8

    :try_start_4f
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v8
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "path"

    .prologue
    .line 620
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAlbumId()I
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_c

    .line 201
    :try_start_4
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 205
    :goto_a
    return v0

    .line 202
    :catch_b
    move-exception v0

    .line 205
    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getCurrentArtistId()I
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_c

    .line 211
    :try_start_4
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getArtistId()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 215
    :goto_a
    return v0

    .line 212
    :catch_b
    move-exception v0

    .line 215
    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getCurrentAudioId()I
    .registers 1

    .prologue
    .line 219
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_c

    .line 221
    :try_start_4
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 225
    :goto_a
    return v0

    .line 222
    :catch_b
    move-exception v0

    .line 225
    :cond_c
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static getCurrentShuffleMode()I
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, mode:I
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_b

    .line 232
    :try_start_5
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v0

    .line 236
    :cond_b
    :goto_b
    return v0

    .line 233
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 1137
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1138
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1144
    const-string v1, "com.android.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1146
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .registers 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 292
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 293
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 298
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_42

    .line 299
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 300
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 303
    .end local v7           #list:[I
    :goto_41
    return-object v0

    :cond_42
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[I

    goto :goto_41
.end method

.method public static getSongListForArtist(Landroid/content/Context;I)[I
    .registers 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 276
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 277
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album_key,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_42

    .line 284
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 285
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 288
    .end local v7           #list:[I
    :goto_41
    return-object v0

    :cond_42
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[I

    goto :goto_41
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .registers 7
    .parameter "cursor"

    .prologue
    .line 256
    if-nez p0, :cond_5

    .line 257
    sget-object v5, Lcom/android/music/MusicUtils;->sEmptyList:[I

    .line 272
    :goto_4
    return-object v5

    .line 259
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 260
    .local v3, len:I
    new-array v4, v3, [I

    .line 261
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    const/4 v0, -0x1

    .line 264
    .local v0, colidx:I
    :try_start_f
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_14} :catch_24

    move-result v0

    .line 268
    :goto_15
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_2d

    .line 269
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v4, v2

    .line 270
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 265
    .end local v2           #i:I
    :catch_24
    move-exception v5

    move-object v1, v5

    .line 266
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #i:I
    :cond_2d
    move-object v5, v4

    .line 272
    goto :goto_4
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[I
    .registers 11
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 307
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 308
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_22

    .line 312
    invoke-static {v6}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 313
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 316
    .end local v7           #list:[I
    :goto_21
    return-object v0

    :cond_22
    sget-object v0, Lcom/android/music/MusicUtils;->sEmptyList:[I

    goto :goto_21
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .registers 4
    .parameter "a"

    .prologue
    const/16 v2, 0x8

    .line 605
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 607
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :cond_e
    const v1, 0x7f0a0028

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1a

    .line 611
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_1a
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_27

    .line 615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_27
    return-void
.end method

.method public static initAlbumArtCache()V
    .registers 3

    .prologue
    .line 764
    :try_start_0
    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 765
    .local v1, id:I
    sget v2, Lcom/android/music/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_f

    .line 766
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 767
    sput v1, Lcom/android/music/MusicUtils;->sArtCacheId:I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 772
    .end local v1           #id:I
    :cond_f
    :goto_f
    return-void

    .line 769
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 770
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 530
    const/4 v7, 0x0

    .line 531
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 533
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2a

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 536
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 538
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_2d
    return v7
.end method

.method public static isMusicLoaded()Z
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 244
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_12

    .line 246
    :try_start_5
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_11

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 250
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 246
    goto :goto_e

    .line 247
    :catch_11
    move-exception v0

    :cond_12
    move v0, v1

    .line 250
    goto :goto_e
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p3, :cond_40

    .line 97
    if-ne p2, v4, :cond_1e

    .line 98
    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 100
    :cond_1e
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 103
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 106
    .end local v0           #f:Ljava/lang/String;
    :cond_40
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 109
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 110
    const v3, 0x7f070062

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_18

    .line 129
    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 131
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_4a

    .line 133
    const v3, 0x7f080002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 135
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 136
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 137
    const v3, 0x7f070062

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .end local v0           #f:Ljava/lang/String;
    :cond_4a
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 141
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 142
    sget-object v3, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_13
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .registers 13
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "name"

    .line 360
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    const-string v1, "name"

    aput-object v5, v2, v10

    .line 364
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1d

    .line 366
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    :cond_1c
    :goto_1c
    return-void

    .line 368
    :cond_1d
    const-string v3, "name != \'\'"

    .line 369
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v8, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 373
    const/16 v1, 0xc

    const v4, 0x7f07003b

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 374
    const/4 v1, 0x4

    const v4, 0x7f07003c

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 375
    if-eqz v6, :cond_69

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_69

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 378
    :goto_45
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_69

    .line 379
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const/4 v1, 0x3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v10, v1, v9, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_45

    .line 389
    .end local v7           #intent:Landroid/content/Intent;
    :cond_69
    if-eqz v6, :cond_1c

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1c
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 635
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 642
    sget-object v1, Lcom/android/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 643
    .local v1, timeArgs:[Ljava/lang/Object;
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 644
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 645
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 646
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 647
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 649
    sget-object v2, Lcom/android/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 657
    invoke-static {p0, p1, v0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 658
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 662
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 670
    invoke-static {p1}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 671
    .local v0, list:[I
    invoke-static {p0, v0, p2, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[IIZ)V

    .line 672
    return-void
.end method

.method public static playAll(Landroid/content/Context;[II)V
    .registers 4
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[IIZ)V

    .line 666
    return-void
.end method

.method private static playAll(Landroid/content/Context;[IIZ)V
    .registers 16
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x400

    const-string v9, "com.android.music.PLAYBACK_VIEWER"

    .line 675
    array-length v5, p1

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_2d

    .line 676
    :cond_e
    const-string v5, "MusicUtils"

    const-string v6, "attempt to play empty song list"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const v5, 0x7f07003e

    new-array v6, v11, [Ljava/lang/Object;

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, message:Ljava/lang/String;
    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 710
    .end local v3           #message:Ljava/lang/String;
    :goto_2c
    return-void

    .line 683
    :cond_2d
    if-eqz p3, :cond_35

    .line 684
    :try_start_2f
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 686
    :cond_35
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    .line 687
    .local v0, curid:I
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 688
    .local v1, curpos:I
    if-eq p2, v7, :cond_69

    if-ne v1, p2, :cond_69

    aget v5, p1, p2

    if-ne v0, v5, :cond_69

    .line 692
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v4

    .line 693
    .local v4, playlist:[I
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 695
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_9a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_5a} :catch_8a

    .line 706
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 708
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2c

    .line 699
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #playlist:[I
    :cond_69
    if-gez p2, :cond_6c

    .line 700
    const/4 p2, 0x0

    .line 702
    :cond_6c
    :try_start_6c
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz p3, :cond_88

    move v6, v7

    :goto_71
    invoke-interface {v5, p1, v6}, Lcom/android/music/IMediaPlaybackService;->open([II)V

    .line 703
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_9a
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_79} :catch_8a

    .line 706
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 708
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2c

    .end local v2           #intent:Landroid/content/Intent;
    :cond_88
    move v6, p2

    .line 702
    goto :goto_71

    .line 704
    .end local v0           #curid:I
    .end local v1           #curpos:I
    :catch_8a
    move-exception v5

    .line 706
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 708
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2c

    .line 706
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_9a
    move-exception v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 708
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    throw v5
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 320
    invoke-static {p0, p1, p2}, Lcom/android/music/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 321
    .local v0, list:[I
    if-eqz v0, :cond_b

    .line 322
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[IIZ)V

    .line 324
    :cond_b
    return-void
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

    .line 518
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 519
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 524
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

    .line 522
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 523
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 524
    goto :goto_8
.end method

.method static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1150
    const-string v2, "com.android.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1152
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1153
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1155
    return-void
.end method

.method static setRingtone(Landroid/content/Context;J)V
    .registers 11
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1160
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1162
    .local v7, ringUri:Landroid/net/Uri;
    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1163
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v1, "is_alarm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_23} :catch_86

    .line 1172
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .end local v0           #values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 1178
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1179
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1182
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_80

    :try_start_53
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_80

    .line 1184
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1185
    const-string p2, "ringtone"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1186
    const p2, 0x7f070038

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1187
    .local p2, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_80
    .catchall {:try_start_53 .. :try_end_80} :catchall_a0

    .line 1190
    .end local p2           #message:Ljava/lang/String;
    :cond_80
    if-eqz p1, :cond_85

    .line 1191
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1194
    .end local v3           #where:Ljava/lang/String;
    .end local p1           #cursor:Landroid/database/Cursor;
    :cond_85
    :goto_85
    return-void

    .line 1166
    .restart local p0
    .local p1, id:J
    :catch_86
    move-exception p0

    .line 1168
    .local p0, ex:Ljava/lang/UnsupportedOperationException;
    const-string p0, "MusicUtils"

    .end local p0           #ex:Ljava/lang/UnsupportedOperationException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t set ringtone flag for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #id:J
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 1190
    .restart local v3       #where:Ljava/lang/String;
    .local p1, cursor:Landroid/database/Cursor;
    :catchall_a0
    move-exception p0

    if-eqz p1, :cond_a6

    .line 1191
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw p0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .registers 4
    .parameter "a"

    .prologue
    const/4 v2, 0x5

    .line 545
    invoke-static {p0}, Lcom/android/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 560
    :goto_17
    return-void

    .line 556
    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_17
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 653
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 654
    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 163
    sget-object v1, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MusicUtils$ServiceBinder;

    .line 164
    .local v0, sb:Lcom/android/music/MusicUtils$ServiceBinder;
    if-nez v0, :cond_12

    .line 165
    const-string v1, "MusicUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_11
    :goto_11
    return-void

    .line 168
    :cond_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 169
    sget-object v1, Lcom/android/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 172
    const/4 v1, 0x0

    sput-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    goto :goto_11
.end method
