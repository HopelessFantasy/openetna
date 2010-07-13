.class public Lcom/lge/sns/media/linkbook/MediaFacade;
.super Lcom/lge/sns/common/BaseFacade;
.source "MediaFacade.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGE_SIZE:I = 0x14

.field private static MEDIA_THUMBNAIL_COLUMN:[Ljava/lang/String; = null

.field static final MIME_TYPES:Ljava/util/Properties; = null

.field static final ORG_CACHE_SIZE:I = 0x5

.field static final PROP_MIME_TYPES:Ljava/lang/String; = "/com/lge/sns/media/linkbook/mime_type.properties"

.field private static final TAG:Ljava/lang/String; = "MediaFacade"

.field static final THUM_CACHE_SIZE:I = 0x14

.field private static bitmapDecoder:Lcom/lge/newbay/client/IMedia$FileDecoder;

.field static decodedCache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static rawCache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field

.field static thumbnailCache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mediaCommentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFileListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFolderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field thumbnailLoading:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 81
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MIME_TYPES:Ljava/util/Properties;

    .line 83
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MIME_TYPES:Ljava/util/Properties;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MIME_TYPES:Ljava/util/Properties;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/lge/util/LRUHashMap;

    invoke-direct {v0, v3}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->rawCache:Lcom/lge/util/LRUHashMap;

    .line 91
    new-instance v0, Lcom/lge/util/LRUHashMap;

    invoke-direct {v0, v3}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->decodedCache:Lcom/lge/util/LRUHashMap;

    .line 92
    new-instance v0, Lcom/lge/util/LRUHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    .line 94
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/media/linkbook/MediaFacade$1;

    invoke-direct {v1}, Lcom/lge/sns/media/linkbook/MediaFacade$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lge/sns/CacheManager;->addCacheManagable(Lcom/lge/sns/CacheManager$CacheManagable;)V

    .line 2021
    new-instance v0, Lcom/lge/sns/media/linkbook/MediaFacade$6;

    invoke-direct {v0}, Lcom/lge/sns/media/linkbook/MediaFacade$6;-><init>()V

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->bitmapDecoder:Lcom/lge/newbay/client/IMedia$FileDecoder;

    .line 2133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_THUMBNAIL_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/lge/sns/common/BaseFacade;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    .line 472
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->synchronizeMediaFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->synchronizeMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFileRecordId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/feed/atom/Entry;Lcom/lge/newbay/client/Uris$MediaFileParam;)Lcom/lge/sns/media/MediaFile;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFileFromEntry(Lcom/lge/feed/atom/Entry;Lcom/lge/newbay/client/Uris$MediaFileParam;)Lcom/lge/sns/media/MediaFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct/range {p0 .. p9}, Lcom/lge/sns/media/linkbook/MediaFacade;->uploadMediaContent(Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getBitmapFromLink(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/media/linkbook/MediaFacade;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->createSclaedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/media/linkbook/MediaFacade;Landroid/graphics/Bitmap;)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/media/linkbook/MediaFacade;J[B)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->setThumbnail(J[B)Z

    move-result v0

    return v0
.end method

.method private addtoMediaFolders(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, mediaFolders:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Entry;

    .line 790
    .local v0, entry:Lcom/lge/feed/atom/Entry;
    invoke-direct {p0, v0, p3, p4}, Lcom/lge/sns/media/linkbook/MediaFacade;->toMediaFolder(Lcom/lge/feed/atom/Entry;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 792
    .end local v0           #entry:Lcom/lge/feed/atom/Entry;
    :cond_18
    return-void
.end method

.method private createMediaComment(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaComment;
    .registers 14
    .parameter "c"

    .prologue
    .line 1644
    new-instance v0, Lcom/lge/sns/media/MediaComment;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v0 .. v9}, Lcom/lge/sns/media/MediaComment;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private createMediaComment(Lcom/lge/newbay/client/IMedia$MediaComment;)Lcom/lge/sns/media/MediaComment;
    .registers 12
    .parameter "snsMediaComment"

    .prologue
    .line 1633
    new-instance v0, Lcom/lge/sns/media/MediaComment;

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getSnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lge/newbay/client/IMedia$MediaComment;->getPublished()Ljava/util/Date;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/lge/sns/media/MediaComment;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;
    .registers 21
    .parameter "c"

    .prologue
    .line 1388
    new-instance v2, Lcom/lge/sns/media/MediaFile;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v2 .. v16}, Lcom/lge/sns/media/MediaFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v2
.end method

.method private createMediaFile(Lcom/lge/newbay/client/IMedia$SnsMediaFile;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;
    .registers 18
    .parameter "snsMediaFile"
    .parameter "thumbnailLink"

    .prologue
    .line 1404
    new-instance v0, Lcom/lge/sns/media/MediaFile;

    const-wide/16 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getSnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getParentFolderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getMimetype()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getLink()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->getPublished()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v14}, Lcom/lge/sns/media/MediaFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method private createMediaFolder(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFolder;
    .registers 13
    .parameter "c"

    .prologue
    .line 815
    new-instance v0, Lcom/lge/sns/media/MediaFolder;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v0 .. v8}, Lcom/lge/sns/media/MediaFolder;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method private createSclaedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitmap"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const-wide/high16 v10, 0x3fe0

    .line 2104
    if-eqz p1, :cond_4d

    .line 2105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, p2, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, p3, :cond_4b

    .line 2109
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, p2, :cond_2f

    .line 2110
    int-to-double v6, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 2111
    .local v2, scale:D
    move v1, p2

    .line 2112
    .local v1, destWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v10

    double-to-int v0, v6

    .line 2119
    .local v0, destHeight:I
    :goto_27
    const/4 v4, 0x0

    .line 2121
    .local v4, scaled:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    :try_start_29
    invoke-static {p1, v1, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_41

    move-result-object v4

    :goto_2d
    move-object v6, v4

    .line 2130
    .end local v0           #destHeight:I
    .end local v1           #destWidth:I
    .end local v2           #scale:D
    .end local v4           #scaled:Landroid/graphics/Bitmap;
    :goto_2e
    return-object v6

    .line 2114
    :cond_2f
    int-to-double v6, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 2115
    .restart local v2       #scale:D
    move v0, p3

    .line 2116
    .restart local v0       #destHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v10

    double-to-int v1, v6

    .restart local v1       #destWidth:I
    goto :goto_27

    .line 2122
    .restart local v4       #scaled:Landroid/graphics/Bitmap;
    :catch_41
    move-exception v5

    .line 2123
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "MediaFacade"

    const-string v7, "Fail to scale the bitmap"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    move-object v4, p1

    goto :goto_2d

    .end local v0           #destHeight:I
    .end local v1           #destWidth:I
    .end local v2           #scale:D
    .end local v4           #scaled:Landroid/graphics/Bitmap;
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_4b
    move-object v6, p1

    .line 2128
    goto :goto_2e

    .line 2130
    :cond_4d
    const/4 v6, 0x0

    goto :goto_2e
.end method

.method private getBitmapFromLink(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "link"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 2096
    if-eqz p1, :cond_f

    .line 2097
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->bitmapDecoder:Lcom/lge/newbay/client/IMedia$FileDecoder;

    invoke-static {p1, v1}, Lcom/lge/newbay/client/impl/HttpUtil;->getHttpObject(Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2098
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->createSclaedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2100
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getBytes(Landroid/graphics/Bitmap;)[B
    .registers 5
    .parameter "bitmap"

    .prologue
    .line 2090
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2091
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2092
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static getEditMediaLink(Ljava/util/List;)Lcom/lge/feed/atom/Link;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;)",
            "Lcom/lge/feed/atom/Link;"
        }
    .end annotation

    .prologue
    .line 1862
    .local p0, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Link;

    .line 1863
    .local v1, link:Lcom/lge/feed/atom/Link;
    const-string v2, "edit-media"

    invoke-virtual {v1}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 1867
    .end local v1           #link:Lcom/lge/feed/atom/Link;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getLastModified(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    .line 747
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 748
    .local v0, date:Ljava/util/Date;
    return-object v0
.end method

.method private getMediaFileFromEntry(Lcom/lge/feed/atom/Entry;Lcom/lge/newbay/client/Uris$MediaFileParam;)Lcom/lge/sns/media/MediaFile;
    .registers 7
    .parameter "entry"
    .parameter "param"

    .prologue
    .line 1270
    const-string v3, "self-original"

    invoke-static {p1, v3}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/Entry;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v0

    .line 1271
    .local v0, link:Lcom/lge/feed/atom/Link;
    if-eqz v0, :cond_5e

    .line 1272
    new-instance v1, Lcom/lge/sns/media/MediaFile;

    invoke-direct {v1}, Lcom/lge/sns/media/MediaFile;-><init>()V

    .line 1273
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    if-nez p2, :cond_17

    .line 1274
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/newbay/client/Uris;->getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;

    move-result-object p2

    .line 1276
    :cond_17
    const-string v3, "self-small"

    invoke-static {p1, v3}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/Entry;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, subDataLink:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setSnsId(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setUserId(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setFolderId(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setFileId(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setLink(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0}, Lcom/lge/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setMimeType(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v1, v2}, Lcom/lge/sns/media/MediaFile;->setThumbnailLink(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setTitle(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/sns/media/MediaFile;->setPublished(Ljava/util/Date;)V

    move-object v3, v1

    .line 1289
    .end local v1           #mf:Lcom/lge/sns/media/MediaFile;
    .end local v2           #subDataLink:Ljava/lang/String;
    :goto_5d
    return-object v3

    :cond_5e
    const/4 v3, 0x0

    goto :goto_5d
.end method

.method private getMediaFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;
    .registers 10
    .parameter "dataLink"
    .parameter "subDataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;

    move-result-object v6

    .line 916
    .local v6, param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;

    move-result-object v0

    return-object v0
.end method

.method private getMediaFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "subDataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v3, 0x0

    .line 923
    .local v3, snsMediaFile:Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    const/4 v2, 0x0

    .line 926
    .local v2, mediaFile:Lcom/lge/sns/media/MediaFile;
    :try_start_2
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_5
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2 .. :try_end_5} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2 .. :try_end_5} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_2 .. :try_end_5} :catch_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_43

    move-result-object v1

    .line 928
    .local v1, media:Lcom/lge/newbay/client/IMedia;
    :try_start_6
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/newbay/client/IMedia;->getFileMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    :try_end_9
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_9} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_9} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_9} :catch_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_43

    move-result-object v3

    .line 950
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :cond_a
    :goto_a
    if-eqz v3, :cond_10

    .line 951
    invoke-direct {p0, v3, p5}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Lcom/lge/newbay/client/IMedia$SnsMediaFile;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;

    move-result-object v2

    .line 954
    :cond_10
    return-object v2

    .line 929
    .restart local v1       #media:Lcom/lge/newbay/client/IMedia;
    :catch_11
    move-exception v0

    .line 930
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/newbay/client/IMedia;->getFileMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    :try_end_18
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_12 .. :try_end_18} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_12 .. :try_end_18} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_12 .. :try_end_18} :catch_40
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_43

    move-result-object v3

    goto :goto_a

    .line 933
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :catch_1a
    move-exception v5

    move-object v0, v5

    .line 934
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v5, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 935
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_22
    move-exception v5

    move-object v0, v5

    .line 936
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    .line 937
    .local v4, statusCode:I
    const/16 v5, 0x130

    if-eq v4, v5, :cond_a

    .line 938
    const/16 v5, 0x191

    if-ne v4, v5, :cond_36

    .line 939
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 941
    :cond_36
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 944
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v4           #statusCode:I
    :catch_40
    move-exception v5

    move-object v0, v5

    .line 945
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 946
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_43
    move-exception v5

    move-object v0, v5

    .line 947
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v5, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getMediaFileRecordId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"

    .prologue
    const/4 v5, 0x0

    .line 1364
    const-wide/16 v7, 0x0

    .line 1366
    .local v7, id:J
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? AND file_id = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1373
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_37

    .line 1375
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1376
    const-string v0, "MediaFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_38

    move-result-wide v7

    .line 1380
    :cond_34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_37
    return-wide v7

    .line 1380
    :catchall_38
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMediaFolderRecordId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 713
    const-wide/16 v7, 0x0

    .line 715
    .local v7, id:J
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v9

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 724
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_31

    .line 726
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 727
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_32

    move-result-wide v7

    .line 730
    :cond_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_31
    return-wide v7

    .line 730
    :catchall_32
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getRelatedLinks(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1871
    .local p0, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Link;

    .line 1873
    .local v1, link:Lcom/lge/feed/atom/Link;
    const-string v3, "related"

    invoke-virtual {v1}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1874
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1877
    .end local v1           #link:Lcom/lge/feed/atom/Link;
    :cond_25
    return-object v2
.end method

.method private static getSize(Ljava/lang/String;)I
    .registers 5
    .parameter "rangeString"

    .prologue
    .line 1850
    const-string v3, "[\\s-/]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1851
    .local v2, tokens:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1852
    .local v0, from:I
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1853
    .local v1, to:I
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private getThumbnail(J)[B
    .registers 10
    .parameter "mediaFileId"

    .prologue
    const/4 v3, 0x0

    .line 2136
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2137
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_THUMBNAIL_COLUMN:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2138
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_27

    .line 2140
    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2141
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_29

    move-result-object v0

    .line 2144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2147
    :goto_23
    return-object v0

    .line 2144
    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_27
    move-object v0, v3

    .line 2147
    goto :goto_23

    .line 2144
    :catchall_29
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getThumbnailCacheKey(Lcom/lge/sns/media/MediaFile;)Ljava/lang/String;
    .registers 5
    .parameter "mf"

    .prologue
    const-string v2, "/"

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isMultiPart(Lcom/lge/feed/atom/Entry;)Z
    .registers 6
    .parameter "entry"

    .prologue
    .line 1882
    invoke-virtual {p0}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v2

    .line 1883
    .local v2, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz v2, :cond_24

    .line 1884
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Link;

    .line 1885
    .local v1, link:Lcom/lge/feed/atom/Link;
    const-string v3, "related"

    invoke-virtual {v1}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1886
    const/4 v3, 0x1

    .line 1890
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #link:Lcom/lge/feed/atom/Link;
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private notifyMediaCommentAdded(Lcom/lge/sns/media/MediaComment;)V
    .registers 6
    .parameter "mediaComment"

    .prologue
    .line 443
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 444
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 445
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 447
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;->mediaCommentAdded(Lcom/lge/sns/media/MediaComment;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 448
    :catch_21
    move-exception v3

    goto :goto_11

    .line 453
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 454
    return-void

    .line 453
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaCommentRemoved(Lcom/lge/sns/media/MediaComment;)V
    .registers 6
    .parameter "mediaComment"

    .prologue
    .line 457
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 458
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 459
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 461
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;->mediaCommentRemoved(Lcom/lge/sns/media/MediaComment;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 462
    :catch_21
    move-exception v3

    goto :goto_11

    .line 467
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 468
    return-void

    .line 467
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 6
    .parameter "mediaFile"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 402
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 403
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 405
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;->mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 406
    :catch_21
    move-exception v3

    goto :goto_11

    .line 411
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 412
    return-void

    .line 411
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 6
    .parameter "mediaFile"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 416
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 417
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 419
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;->mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 420
    :catch_21
    move-exception v3

    goto :goto_11

    .line 425
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 426
    return-void

    .line 425
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 6
    .parameter "mediaFile"

    .prologue
    .line 387
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 388
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 389
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 391
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;->mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 392
    :catch_21
    move-exception v3

    goto :goto_11

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 398
    return-void

    .line 397
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V
    .registers 6
    .parameter "mediaFolder"

    .prologue
    .line 331
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 332
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 333
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 335
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;->mediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 336
    :catch_21
    move-exception v3

    goto :goto_11

    .line 341
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 342
    return-void

    .line 341
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
    .registers 6
    .parameter "mediaFolder"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 346
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 347
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 349
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;->mediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 350
    :catch_21
    move-exception v3

    goto :goto_11

    .line 355
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 356
    return-void

    .line 355
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
    .registers 6
    .parameter "mediaFolder"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 318
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 319
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 321
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;->mediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 322
    :catch_21
    move-exception v3

    goto :goto_11

    .line 327
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 328
    return-void

    .line 327
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyMediaThumnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 6
    .parameter "mediaFile"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 374
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 375
    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 377
    .local v1, listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;->mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 378
    :catch_21
    move-exception v3

    goto :goto_11

    .line 383
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 384
    return-void

    .line 383
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private static parseFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "href"

    .prologue
    .line 1845
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1846
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseFolderId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 807
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 808
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, path:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 810
    .local v0, index:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setLastModified(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "delta"

    .prologue
    .line 738
    invoke-virtual {p4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v1

    move-object v0, v1

    .line 739
    .local v0, date:Ljava/util/Date;
    :goto_b
    if-nez v0, :cond_12

    .line 740
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 742
    .restart local v0       #date:Ljava/util/Date;
    :cond_12
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 744
    return-void

    .line 738
    .end local v0           #date:Ljava/util/Date;
    :cond_16
    invoke-virtual {p4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getTimeModeTo()Ljava/util/Date;

    move-result-object v1

    move-object v0, v1

    goto :goto_b
.end method

.method private setMediaCommentValues(Lcom/lge/sns/media/MediaComment;)Landroid/content/ContentValues;
    .registers 6
    .parameter "mediaComment"

    .prologue
    const-string v3, "published"

    .line 1655
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1656
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    const-string v1, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string v1, "comment_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v1, "comment"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getPublished()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 1664
    const-string v1, "published"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaComment;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1669
    :goto_54
    return-object v0

    .line 1666
    :cond_55
    const-string v1, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_54
.end method

.method private setMediaFileValues(Lcom/lge/sns/media/MediaFile;)Landroid/content/ContentValues;
    .registers 6
    .parameter "mediaFile"

    .prologue
    const-string v3, "published"

    .line 1420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1422
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v1, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v1, "folder_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v1, "file_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v1, "mime_type"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string v1, "thumbnail_link"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v1, "link"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 1435
    const-string v1, "published"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1440
    :goto_81
    return-object v0

    .line 1437
    :cond_82
    const-string v1, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_81
.end method

.method private setMediaFolderValues(Lcom/lge/sns/media/MediaFolder;)Landroid/content/ContentValues;
    .registers 6
    .parameter "mediaFolder"

    .prologue
    const-string v3, "published"

    .line 826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "folder_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "folder_name"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getPublished()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 834
    const-string v1, "published"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    :goto_42
    return-object v0

    .line 836
    :cond_43
    const-string v1, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_42
.end method

.method private setThumbnail(J[B)Z
    .registers 9
    .parameter "mediaFileId"
    .parameter "thumbnail"

    .prologue
    const/4 v4, 0x0

    .line 2151
    sget-object v3, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2152
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2153
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "thumbnail"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2154
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_24

    .line 2155
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFile(J)Lcom/lge/sns/media/MediaFile;

    move-result-object v0

    .line 2156
    .local v0, mf:Lcom/lge/sns/media/MediaFile;
    invoke-direct {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaThumnailUpdated(Lcom/lge/sns/media/MediaFile;)V

    .line 2157
    const/4 v3, 0x1

    .line 2159
    .end local v0           #mf:Lcom/lge/sns/media/MediaFile;
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private synchronizeMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v22, 0x0

    .line 195
    .local v22, xmlReader:Lorg/xml/sax/XMLReader;
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_8b

    move-result-object v22

    .line 212
    new-instance v17, Lcom/lge/sns/media/MediaSynchronizeHandler;

    invoke-direct/range {v17 .. v17}, Lcom/lge/sns/media/MediaSynchronizeHandler;-><init>()V

    .line 213
    .local v17, mSynchronizeHandler:Lcom/lge/sns/media/MediaSynchronizeHandler;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 215
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v16, localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v20, serverUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 219
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "file_id"

    aput-object v7, v5, v6

    const-string v6, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_88

    move-result-object v11

    .line 227
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_cc

    .line 229
    :goto_4d
    :try_start_4d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_4d .. :try_end_82} :catchall_83

    goto :goto_4d

    .line 233
    :catchall_83
    move-exception v4

    :try_start_84
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 236
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_88
    move-exception v4

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_88

    throw v4

    .line 196
    .end local v16           #localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v17           #mSynchronizeHandler:Lcom/lge/sns/media/MediaSynchronizeHandler;
    .end local v20           #serverUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_8b
    move-exception v4

    move-object v12, v4

    .line 197
    .local v12, e:Ljava/lang/Exception;
    const-string v4, "MediaFacade"

    const-string v5, "getXMLReader() - Exception"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :try_start_94
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_9f
    .catch Lorg/xml/sax/SAXException; {:try_start_94 .. :try_end_9f} :catch_a1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_94 .. :try_end_9f} :catch_ab
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_94 .. :try_end_9f} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9f} :catch_bf

    move-result-object v22

    .line 300
    .end local v12           #e:Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    return-void

    .line 200
    .restart local v12       #e:Ljava/lang/Exception;
    :catch_a1
    move-exception v4

    move-object v13, v4

    .line 201
    .local v13, e1:Lorg/xml/sax/SAXException;
    const-string v4, "MediaFacade"

    const-string v5, "getXMLReader() - SAXException"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 202
    .end local v13           #e1:Lorg/xml/sax/SAXException;
    :catch_ab
    move-exception v4

    move-object v13, v4

    .line 203
    .local v13, e1:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "MediaFacade"

    const-string v5, "getXMLReader() - ParserConfigurationException"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 204
    .end local v13           #e1:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_b5
    move-exception v4

    move-object v13, v4

    .line 205
    .local v13, e1:Ljavax/xml/parsers/FactoryConfigurationError;
    const-string v4, "MediaFacade"

    const-string v5, "getXMLReader() - FactoryConfigurationError"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 206
    .end local v13           #e1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_bf
    move-exception v4

    move-object v13, v4

    .line 207
    .local v13, e1:Ljava/lang/Exception;
    const-string v4, "MediaFacade"

    const-string v5, "getXMLReader() - Exception"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 233
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e1:Ljava/lang/Exception;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v16       #localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v17       #mSynchronizeHandler:Lcom/lge/sns/media/MediaSynchronizeHandler;
    .restart local v20       #serverUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c9
    :try_start_c9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_88

    .line 238
    const/16 v21, 0x0

    .line 240
    .local v21, xml:Ljava/lang/String;
    :try_start_cf
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_d2
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_cf .. :try_end_d2} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_cf .. :try_end_d2} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_cf .. :try_end_d2} :catch_180
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_1c9

    move-result-object v3

    .line 243
    .local v3, media:Lcom/lge/newbay/client/IMedia;
    const/4 v7, 0x1

    const/16 v8, 0x14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_dc
    invoke-interface/range {v3 .. v8}, Lcom/lge/newbay/client/IMedia;->getFolderContentsAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_df
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_dc .. :try_end_df} :catch_10d
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_dc .. :try_end_df} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_dc .. :try_end_df} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_dc .. :try_end_df} :catch_180
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_1c9

    move-result-object v21

    .line 249
    :goto_e0
    if-eqz v21, :cond_14e

    .line 251
    :try_start_e2
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f5} :catch_11f
    .catch Lorg/xml/sax/SAXException; {:try_start_e2 .. :try_end_f5} :catch_131
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_e2 .. :try_end_f5} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_e2 .. :try_end_f5} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_e2 .. :try_end_f5} :catch_180
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f5} :catch_1c9

    .line 260
    :try_start_f5
    invoke-virtual/range {v17 .. v17}, Lcom/lge/sns/media/MediaSynchronizeHandler;->getUriMap()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/lge/sns/media/MediaSynchronizeHandler;->getNextLink()Ljava/lang/String;

    move-result-object v19

    .line 263
    .local v19, nextLink:Ljava/lang/String;
    if-eqz v19, :cond_14b

    .line 264
    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IMedia;->getFolderContentsAsXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_e0

    .line 244
    .end local v19           #nextLink:Ljava/lang/String;
    :catch_10d
    move-exception v12

    .line 245
    .local v12, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    const/4 v7, 0x1

    const/16 v8, 0x14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/lge/newbay/client/IMedia;->getFolderContentsAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v21

    goto :goto_e0

    .line 252
    .end local v12           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_11f
    move-exception v4

    move-object v12, v4

    .line 253
    .local v12, e:Ljava/io/IOException;
    const-string v4, "MediaFacade"

    const-string v5, "parse() - IOException"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    throw v12
    :try_end_129
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_f5 .. :try_end_129} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f5 .. :try_end_129} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_f5 .. :try_end_129} :catch_180
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_129} :catch_1c9

    .line 286
    .end local v3           #media:Lcom/lge/newbay/client/IMedia;
    .end local v12           #e:Ljava/io/IOException;
    :catch_129
    move-exception v4

    move-object v12, v4

    .line 287
    .local v12, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v4, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v4, v12}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 255
    .end local v12           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .restart local v3       #media:Lcom/lge/newbay/client/IMedia;
    :catch_131
    move-exception v4

    move-object v12, v4

    .line 256
    .local v12, e:Lorg/xml/sax/SAXException;
    :try_start_133
    const-string v4, "MediaFacade"

    const-string v5, "parse() - SAXException"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    throw v12
    :try_end_13b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_133 .. :try_end_13b} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_133 .. :try_end_13b} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_133 .. :try_end_13b} :catch_180
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13b} :catch_1c9

    .line 288
    .end local v3           #media:Lcom/lge/newbay/client/IMedia;
    .end local v12           #e:Lorg/xml/sax/SAXException;
    :catch_13b
    move-exception v4

    move-object v12, v4

    .line 289
    .local v12, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_1d1

    .line 290
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4

    .line 266
    .end local v12           #e:Lorg/apache/http/client/HttpResponseException;
    .restart local v3       #media:Lcom/lge/newbay/client/IMedia;
    .restart local v19       #nextLink:Ljava/lang/String;
    :cond_14b
    const/16 v21, 0x0

    goto :goto_e0

    .line 270
    .end local v19           #nextLink:Ljava/lang/String;
    :cond_14e
    :try_start_14e
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v3           #media:Lcom/lge/newbay/client/IMedia;
    .local v14, i$:Ljava/util/Iterator;
    :cond_156
    :goto_156
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_183

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 271
    .local v15, key:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_156

    .line 272
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaFile(J)I
    :try_end_17f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_14e .. :try_end_17f} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_14e .. :try_end_17f} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_14e .. :try_end_17f} :catch_180
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_17f} :catch_1c9

    goto :goto_156

    .line 295
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #key:Ljava/lang/String;
    :catch_180
    move-exception v4

    move-object v12, v4

    .line 296
    .local v12, e:Lcom/lge/sns/SnsException;
    throw v12

    .line 276
    .end local v12           #e:Lcom/lge/sns/SnsException;
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_183
    :try_start_183
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18b
    :goto_18b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 277
    .restart local v15       #key:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18b

    .line 278
    const-string v4, "/"

    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, Uris:[Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 280
    .local v9, thumbnailLink:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v8, v10, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFileFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;

    move-result-object v18

    .line 281
    .local v18, mediaFile:Lcom/lge/sns/media/MediaFile;
    if-eqz v18, :cond_18b

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->addMediaFile(Lcom/lge/sns/media/MediaFile;)Landroid/net/Uri;
    :try_end_1c8
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_183 .. :try_end_1c8} :catch_129
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_183 .. :try_end_1c8} :catch_13b
    .catch Lcom/lge/sns/SnsException; {:try_start_183 .. :try_end_1c8} :catch_180
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_1c8} :catch_1c9

    goto :goto_18b

    .line 297
    .end local v9           #thumbnailLink:Ljava/lang/String;
    .end local v10           #Uris:[Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :catch_1c9
    move-exception v4

    move-object v12, v4

    .line 298
    .local v12, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v4, v12}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 291
    .local v12, e:Lorg/apache/http/client/HttpResponseException;
    :cond_1d1
    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x130

    if-eq v4, v5, :cond_a0

    .line 293
    new-instance v4, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private synchronizeMediaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v9, localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v12, serverUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFoldersFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 162
    .local v11, mediaFolderList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/sns/media/MediaFolder;

    .line 163
    .local v10, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v10}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 166
    .end local v10           #mediaFolder:Lcom/lge/sns/media/MediaFolder;
    :cond_26
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "folder_id"

    aput-object v4, v2, v3

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6b

    .line 174
    :goto_4b
    :try_start_4b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 175
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_63

    goto :goto_4b

    .line 178
    :catchall_63
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_6b
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_73
    :goto_73
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 183
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 184
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaFolder(J)I

    .line 185
    invoke-virtual {p0, p1, p2, v8}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteAllMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 188
    .end local v8           #key:Ljava/lang/String;
    :cond_96
    return-void
.end method

.method private toMediaFolder(Lcom/lge/feed/atom/Entry;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;
    .registers 6
    .parameter "entry"
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 795
    new-instance v0, Lcom/lge/sns/media/MediaFolder;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaFolder;-><init>()V

    .line 797
    .local v0, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v0, p2}, Lcom/lge/sns/media/MediaFolder;->setSnsId(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p3}, Lcom/lge/sns/media/MediaFolder;->setUserId(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->parseFolderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/MediaFolder;->setFolderId(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/MediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/MediaFolder;->setPublished(Ljava/util/Date;)V

    .line 802
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/MediaFolder;->setUpdated(Ljava/util/Date;)V

    .line 803
    return-object v0
.end method

.method private uploadMediaContent(Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 23
    .parameter "media"
    .parameter "entry"
    .parameter "link"
    .parameter "fileUid"
    .parameter "in"
    .parameter "contentLength"
    .parameter "contentType"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1803
    invoke-static {p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->isMultiPart(Lcom/lge/feed/atom/Entry;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1804
    invoke-virtual {p2}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getRelatedLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1805
    .local v6, relatedLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz p9, :cond_1c

    .line 1806
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p9

    move-object/from16 v1, p4

    move v2, v3

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaUploadStarted(Ljava/lang/String;I)V

    :cond_1c
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 1808
    invoke-direct/range {v3 .. v9}, Lcom/lge/sns/media/linkbook/MediaFacade;->uploadMultiPart(Lcom/lge/newbay/client/IMedia;Ljava/lang/String;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)V

    .line 1818
    .end local v6           #relatedLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_29
    :goto_29
    if-eqz p9, :cond_32

    .line 1819
    move-object/from16 v0, p9

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaPartUploadFinished(Ljava/lang/String;)V

    .line 1821
    :cond_32
    return-object p4

    .line 1810
    :cond_33
    if-eqz p9, :cond_3e

    .line 1811
    const/4 v3, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, p4

    move v2, v3

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaUploadStarted(Ljava/lang/String;I)V

    :cond_3e
    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    .line 1813
    invoke-static/range {v7 .. v12}, Lcom/lge/sns/media/linkbook/MediaFacade;->uploadSinglePart(Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Link;Ljava/io/InputStream;JLjava/lang/String;)V

    .line 1814
    if-eqz p9, :cond_29

    .line 1815
    const/4 v3, 0x0

    move-object/from16 v0, p9

    move-object/from16 v1, p4

    move v2, v3

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaPartUploaded(Ljava/lang/String;I)V

    goto :goto_29
.end method

.method private uploadMultiPart(Lcom/lge/newbay/client/IMedia;Ljava/lang/String;Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)V
    .registers 16
    .parameter "media"
    .parameter "fileUid"
    .parameter
    .parameter "in"
    .parameter "contentType"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/newbay/client/IMedia;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1826
    .local p3, relatedLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    const/4 v5, 0x0

    .line 1827
    .local v5, part:[B
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 1828
    .local v6, numberOfParts:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v6, :cond_39

    .line 1829
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/feed/atom/Link;

    .line 1830
    .local v7, partLink:Lcom/lge/feed/atom/Link;
    invoke-virtual {v7}, Lcom/lge/feed/atom/Link;->getUnknownAttrs()Ljava/util/Map;

    move-result-object v0

    const-string v1, "range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1831
    .local v3, rangeString:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getSize(Ljava/lang/String;)I

    move-result v8

    .line 1832
    .local v8, sizeOfPart:I
    if-eqz v5, :cond_23

    array-length v0, v5

    if-eq v0, v8, :cond_25

    .line 1833
    :cond_23
    new-array v5, v8, [B

    .line 1835
    :cond_25
    invoke-virtual {p4, v5}, Ljava/io/InputStream;->read([B)I

    .line 1836
    invoke-virtual {v7}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p5

    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->uploadFilePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 1837
    if-eqz p6, :cond_36

    .line 1838
    invoke-interface {p6, p2, v4}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaPartUploaded(Ljava/lang/String;I)V

    .line 1828
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1841
    .end local v3           #rangeString:Ljava/lang/String;
    .end local v7           #partLink:Lcom/lge/feed/atom/Link;
    .end local v8           #sizeOfPart:I
    :cond_39
    invoke-interface {p1, p2, v6}, Lcom/lge/newbay/client/IMedia;->finalizePartsUpload(Ljava/lang/String;I)V

    .line 1842
    return-void
.end method

.method private static uploadSinglePart(Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Link;Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 12
    .parameter "media"
    .parameter "link"
    .parameter "in"
    .parameter "contentLength"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1858
    invoke-virtual {p1}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-wide v3, p3

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->uploadEntireFileByUri(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    .line 1859
    return-void
.end method


# virtual methods
.method public addMediaComment(Lcom/lge/sns/media/MediaComment;)Landroid/net/Uri;
    .registers 6
    .parameter "mediaComment"

    .prologue
    .line 1479
    if-nez p1, :cond_4

    .line 1480
    const/4 v1, 0x0

    .line 1490
    :goto_3
    return-object v1

    .line 1483
    :cond_4
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaCommentValues(Lcom/lge/sns/media/MediaComment;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1485
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1e

    .line 1486
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/media/MediaComment;->setId(J)V

    .line 1487
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaCommentAdded(Lcom/lge/sns/media/MediaComment;)V

    :cond_1e
    move-object v1, v0

    .line 1490
    goto :goto_3
.end method

.method public addMediaFile(Lcom/lge/sns/media/MediaFile;)Landroid/net/Uri;
    .registers 6
    .parameter "mediaFile"

    .prologue
    .line 958
    if-nez p1, :cond_4

    .line 959
    const/4 v1, 0x0

    .line 969
    :goto_3
    return-object v1

    .line 962
    :cond_4
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaFileValues(Lcom/lge/sns/media/MediaFile;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 964
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1e

    .line 965
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/media/MediaFile;->setId(J)V

    .line 966
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFileAdded(Lcom/lge/sns/media/MediaFile;)V

    :cond_1e
    move-object v1, v0

    .line 969
    goto :goto_3
.end method

.method public addMediaFolder(Lcom/lge/sns/media/MediaFolder;)Landroid/net/Uri;
    .registers 6
    .parameter "mediaFolder"

    .prologue
    .line 533
    if-nez p1, :cond_4

    .line 534
    const/4 v2, 0x0

    .line 549
    :goto_3
    return-object v2

    .line 537
    :cond_4
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaFolderValues(Lcom/lge/sns/media/MediaFolder;)Landroid/content/ContentValues;

    move-result-object v1

    .line 538
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_f

    .line 539
    const-string v2, "updated"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 542
    :cond_f
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 544
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_25

    .line 545
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/lge/sns/media/MediaFolder;->setId(J)V

    .line 546
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V

    :cond_25
    move-object v2, v0

    .line 549
    goto :goto_3
.end method

.method public deleteAllMediaComment(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMediaFile(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMediaFileByUser(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? AND user_id = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMediaFolder(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllMediaFolderByUser(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? AND user_id = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteMediaComment(J)I
    .registers 6
    .parameter "mediaCommentId"

    .prologue
    .line 1494
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 1495
    const/4 v1, 0x0

    .line 1500
    :goto_7
    return v1

    .line 1498
    :cond_8
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1500
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaComment(Landroid/net/Uri;)I

    move-result v1

    goto :goto_7
.end method

.method public deleteMediaComment(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1504
    if-nez p1, :cond_4

    .line 1520
    :goto_3
    return v2

    .line 1508
    :cond_4
    monitor-enter p0

    .line 1509
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaComment(Landroid/net/Uri;)Lcom/lge/sns/media/MediaComment;

    move-result-object v1

    .line 1510
    .local v1, mediaComment:Lcom/lge/sns/media/MediaComment;
    if-eqz v1, :cond_1d

    .line 1511
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1513
    .local v0, count:I
    if-eqz v0, :cond_1a

    .line 1514
    invoke-direct {p0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaCommentRemoved(Lcom/lge/sns/media/MediaComment;)V

    .line 1517
    :cond_1a
    monitor-exit p0

    move v2, v0

    goto :goto_3

    .line 1520
    .end local v0           #count:I
    :cond_1d
    monitor-exit p0

    goto :goto_3

    .line 1521
    .end local v1           #mediaComment:Lcom/lge/sns/media/MediaComment;
    :catchall_1f
    move-exception v2

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public deleteMediaFile(J)I
    .registers 6
    .parameter "mediaFileId"

    .prologue
    .line 985
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 986
    const/4 v1, 0x0

    .line 991
    :goto_7
    return v1

    .line 989
    :cond_8
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 991
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaFile(Landroid/net/Uri;)I

    move-result v1

    goto :goto_7
.end method

.method public deleteMediaFile(Landroid/net/Uri;)I
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 995
    if-nez p1, :cond_5

    .line 1010
    :cond_4
    :goto_4
    return v2

    .line 999
    :cond_5
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;

    move-result-object v1

    .line 1000
    .local v1, mediaFile:Lcom/lge/sns/media/MediaFile;
    if-eqz v1, :cond_4

    .line 1001
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1003
    .local v0, count:I
    if-eqz v0, :cond_18

    .line 1004
    invoke-direct {p0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V

    :cond_18
    move v2, v0

    .line 1007
    goto :goto_4
.end method

.method public deleteMediaFolder(J)I
    .registers 6
    .parameter "mediaFolderId"

    .prologue
    .line 571
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 572
    const/4 v1, 0x0

    .line 577
    :goto_7
    return v1

    .line 575
    :cond_8
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 577
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaFolder(Landroid/net/Uri;)I

    move-result v1

    goto :goto_7
.end method

.method public deleteMediaFolder(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 581
    if-nez p1, :cond_4

    .line 597
    :goto_3
    return v2

    .line 585
    :cond_4
    monitor-enter p0

    .line 586
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolder(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v1

    .line 587
    .local v1, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    if-eqz v1, :cond_1d

    .line 588
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, count:I
    if-eqz v0, :cond_1a

    .line 591
    invoke-direct {p0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V

    .line 594
    :cond_1a
    monitor-exit p0

    move v2, v0

    goto :goto_3

    .line 597
    .end local v0           #count:I
    :cond_1d
    monitor-exit p0

    goto :goto_3

    .line 598
    .end local v1           #mediaFolder:Lcom/lge/sns/media/MediaFolder;
    :catchall_1f
    move-exception v2

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "fileName"

    .prologue
    .line 1673
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1674
    .local v1, index:I
    if-ltz v1, :cond_19

    .line 1675
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, ext:Ljava/lang/String;
    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MIME_TYPES:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1678
    .end local v0           #ext:Ljava/lang/String;
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "published DESC LIMIT "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1136
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4b

    .line 1138
    :goto_35
    :try_start_35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1139
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;

    move-result-object v8

    .line 1140
    .local v8, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_35

    .line 1143
    .end local v8           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :catchall_43
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1147
    :cond_4b
    return-object v7
.end method

.method public getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "count"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1121
    monitor-enter p0

    .line 1122
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/lge/sns/media/linkbook/MediaFacade;->registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 1123
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1124
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "published DESC LIMIT "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1168
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 1170
    :goto_38
    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1171
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;

    move-result-object v8

    .line 1172
    .local v8, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_46

    goto :goto_38

    .line 1175
    .end local v8           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :catchall_46
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_4e
    return-object v7
.end method

.method public getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "count"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_1
    invoke-virtual {p0, p5}, Lcom/lge/sns/media/linkbook/MediaFacade;->registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 1153
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/linkbook/MediaFacade;->getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1154
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMediaComment(J)Lcom/lge/sns/media/MediaComment;
    .registers 7
    .parameter "mediaCommentId"

    .prologue
    .line 1446
    const-string v1, "MediaFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a MediaComment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1450
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaComment(Landroid/net/Uri;)Lcom/lge/sns/media/MediaComment;

    move-result-object v1

    return-object v1
.end method

.method public getMediaComment(Landroid/net/Uri;)Lcom/lge/sns/media/MediaComment;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "MediaFacade"

    .line 1455
    const/4 v6, 0x0

    .line 1457
    .local v6, comment:Lcom/lge/sns/media/MediaComment;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaCommentColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1459
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_20

    .line 1461
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1462
    invoke-direct {p0, v7}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaComment(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaComment;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a

    move-result-object v6

    .line 1465
    :cond_1d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1469
    :cond_20
    if-nez v6, :cond_2f

    .line 1470
    const-string v0, "MediaFacade"

    const-string v0, "No MediaComment found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :goto_29
    return-object v6

    .line 1465
    :catchall_2a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1472
    :cond_2f
    const-string v0, "MediaFacade"

    const-string v0, "Done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getMediaCommentFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaComment;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "remoteUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1598
    const/4 v2, 0x0

    .line 1601
    .local v2, snsMediaComment:Lcom/lge/newbay/client/IMedia$MediaComment;
    :try_start_1
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_4
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1 .. :try_end_4} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1 .. :try_end_4} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_4} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_42

    move-result-object v1

    .line 1603
    .local v1, media:Lcom/lge/newbay/client/IMedia;
    :try_start_5
    invoke-interface {v1, p3}, Lcom/lge/newbay/client/IMedia;->getComment(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;
    :try_end_8
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_5 .. :try_end_8} :catch_10
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_5 .. :try_end_8} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_8} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_5 .. :try_end_8} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_42

    move-result-object v2

    .line 1625
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :cond_9
    :goto_9
    if-eqz v2, :cond_4a

    .line 1626
    invoke-direct {p0, v2}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaComment(Lcom/lge/newbay/client/IMedia$MediaComment;)Lcom/lge/sns/media/MediaComment;

    move-result-object v4

    .line 1628
    :goto_f
    return-object v4

    .line 1604
    .restart local v1       #media:Lcom/lge/newbay/client/IMedia;
    :catch_10
    move-exception v0

    .line 1605
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1606
    invoke-interface {v1, p3}, Lcom/lge/newbay/client/IMedia;->getComment(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;
    :try_end_17
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_11 .. :try_end_17} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_11 .. :try_end_17} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_11 .. :try_end_17} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_42

    move-result-object v2

    goto :goto_9

    .line 1608
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :catch_19
    move-exception v4

    move-object v0, v4

    .line 1609
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v4, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v4, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1610
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_21
    move-exception v4

    move-object v0, v4

    .line 1611
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    .line 1612
    .local v3, statusCode:I
    const/16 v4, 0x130

    if-eq v3, v4, :cond_9

    .line 1613
    const/16 v4, 0x191

    if-ne v3, v4, :cond_35

    .line 1614
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4

    .line 1616
    :cond_35
    new-instance v4, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1619
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v3           #statusCode:I
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 1620
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 1621
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 1622
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v4, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1628
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4a
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1557
    const/4 v9, 0x0

    .line 1558
    .local v9, localList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaComment;>;"
    const/4 v10, 0x0

    .line 1561
    .local v10, serverList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    :try_start_2
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_5
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2 .. :try_end_5} :catch_42
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2 .. :try_end_5} :catch_4a
    .catch Lcom/lge/sns/SnsException; {:try_start_2 .. :try_end_5} :catch_68
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6b

    move-result-object v0

    .line 1564
    .local v0, mediaComment:Lcom/lge/newbay/client/IMedia;
    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    :try_start_e
    invoke-interface/range {v0 .. v6}, Lcom/lge/newbay/client/IMedia;->getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_11
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_e .. :try_end_11} :catch_31
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_e .. :try_end_11} :catch_42
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_e .. :try_end_11} :catch_4a
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_11} :catch_68
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_6b

    move-result-object v10

    .line 1586
    .end local v0           #mediaComment:Lcom/lge/newbay/client/IMedia;
    :cond_12
    :goto_12
    if-eqz v10, :cond_73

    .line 1587
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #localList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaComment;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .restart local v9       #localList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaComment;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/newbay/client/IMedia$MediaComment;

    .line 1589
    .local v0, mediaComment:Lcom/lge/newbay/client/IMedia$MediaComment;
    invoke-direct {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaComment(Lcom/lge/newbay/client/IMedia$MediaComment;)Lcom/lge/sns/media/MediaComment;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1565
    .end local v8           #i$:Ljava/util/Iterator;
    .local v0, mediaComment:Lcom/lge/newbay/client/IMedia;
    :catch_31
    move-exception v7

    .line 1566
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_32
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1567
    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/lge/newbay/client/IMedia;->getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_40
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_32 .. :try_end_40} :catch_42
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_32 .. :try_end_40} :catch_4a
    .catch Lcom/lge/sns/SnsException; {:try_start_32 .. :try_end_40} :catch_68
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_6b

    move-result-object v10

    goto :goto_12

    .line 1569
    .end local v0           #mediaComment:Lcom/lge/newbay/client/IMedia;
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_42
    move-exception v1

    move-object v7, v1

    .line 1570
    .local v7, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v1, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v1, v7}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1571
    .end local v7           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_4a
    move-exception v1

    move-object v7, v1

    .line 1572
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v11

    .line 1573
    .local v11, statusCode:I
    const/16 v1, 0x130

    if-eq v11, v1, :cond_12

    .line 1574
    const/16 v1, 0x191

    if-ne v11, v1, :cond_5e

    .line 1575
    new-instance v1, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v1}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v1

    .line 1577
    :cond_5e
    new-instance v1, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1580
    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v11           #statusCode:I
    :catch_68
    move-exception v1

    move-object v7, v1

    .line 1581
    .local v7, e:Lcom/lge/sns/SnsException;
    throw v7

    .line 1582
    .end local v7           #e:Lcom/lge/sns/SnsException;
    :catch_6b
    move-exception v1

    move-object v7, v1

    .line 1583
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v1, v7}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1593
    .end local v7           #e:Ljava/lang/Exception;
    :cond_73
    return-object v9
.end method

.method public getMediaFile(J)Lcom/lge/sns/media/MediaFile;
    .registers 7
    .parameter "mediaFileId"

    .prologue
    .line 844
    const-string v1, "MediaFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a Media File for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 848
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;

    move-result-object v1

    return-object v1
.end method

.method public getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "MediaFacade"

    .line 853
    const/4 v7, 0x0

    .line 855
    .local v7, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 857
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_20

    .line 859
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 860
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a

    move-result-object v7

    .line 863
    :cond_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 867
    :cond_20
    if-nez v7, :cond_2f

    .line 868
    const-string v0, "MediaFacade"

    const-string v0, "No Media File found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_29
    return-object v7

    .line 863
    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 870
    :cond_2f
    const-string v0, "MediaFacade"

    const-string v0, "Done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getMediaFile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;
    .registers 14
    .parameter "dataLink"
    .parameter "subDataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v7, 0x0

    .line 880
    .local v7, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;

    move-result-object v8

    .line 882
    .local v8, param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? AND file_id = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getSnsId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getUserId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v8}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v8}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_42

    .line 893
    :try_start_35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 894
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_56

    move-result-object v7

    .line 897
    :cond_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 901
    :cond_42
    if-nez v7, :cond_55

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;

    move-result-object v7

    .line 903
    if-eqz v7, :cond_55

    .line 904
    invoke-virtual {p0, v7}, Lcom/lge/sns/media/linkbook/MediaFacade;->addMediaFile(Lcom/lge/sns/media/MediaFile;)Landroid/net/Uri;

    move-result-object v9

    .line 905
    .local v9, uri:Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/lge/sns/media/MediaFile;->setId(J)V

    .line 909
    .end local v9           #uri:Landroid/net/Uri;
    :cond_55
    return-object v7

    .line 897
    :catchall_56
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaFileCountByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1110
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMediaFileCountByUser(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1100
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "sns_id = ? AND user_id = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMediaFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1052
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_36

    .line 1054
    :goto_20
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1055
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;

    move-result-object v8

    .line 1056
    .local v8, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 1059
    .end local v8           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1063
    :cond_36
    return-object v7
.end method

.method public getMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 1038
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1039
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1085
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_39

    .line 1087
    :goto_23
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1088
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFile(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFile;

    move-result-object v8

    .line 1089
    .local v8, mediaFile:Lcom/lge/sns/media/MediaFile;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_31

    goto :goto_23

    .line 1092
    .end local v8           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :catchall_31
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_39
    return-object v7
.end method

.method public getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    monitor-enter p0

    .line 1069
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/lge/sns/media/linkbook/MediaFacade;->registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 1070
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1071
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMediaFolder(J)Lcom/lge/sns/media/MediaFolder;
    .registers 7
    .parameter "mediaFolderId"

    .prologue
    .line 477
    const-string v1, "MediaFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a Media Folder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 481
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolder(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v1

    return-object v1
.end method

.method public getMediaFolder(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFolder;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "MediaFacade"

    .line 486
    const/4 v7, 0x0

    .line 488
    .local v7, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFolderColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_20

    .line 492
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 493
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFolder(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFolder;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a

    move-result-object v7

    .line 496
    :cond_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_20
    if-nez v7, :cond_2f

    .line 501
    const-string v0, "MediaFacade"

    const-string v0, "No Media Folder found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_29
    return-object v7

    .line 496
    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 503
    :cond_2f
    const-string v0, "MediaFacade"

    const-string v0, "Done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getMediaFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    .line 510
    const/4 v7, 0x0

    .line 512
    .local v7, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFolderColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    .line 520
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 521
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFolder(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFolder;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    move-result-object v7

    .line 524
    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_2c
    return-object v7

    .line 524
    :catchall_2d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    const/4 v8, 0x0

    .line 673
    .local v8, mediaFolder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/media/provider/MediaContent$MediaFolderColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "published DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 679
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_37

    .line 681
    :goto_21
    :try_start_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 682
    invoke-direct {p0, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->createMediaFolder(Landroid/database/Cursor;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v8

    .line 683
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2f

    goto :goto_21

    .line 686
    :catchall_2f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_37
    return-object v7
.end method

.method public getMediaFolderList(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->registerMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V

    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 665
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 631
    const-wide/16 v8, 0x0

    .line 633
    .local v8, updated:J
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "updated"

    aput-object v3, v2, v10

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    const/4 v10, 0x2

    aput-object p3, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 642
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_31

    .line 644
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 645
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3e

    move-result-wide v8

    .line 648
    :cond_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_31
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_43

    .line 653
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .local v7, date:Ljava/util/Date;
    move-object v0, v7

    .line 657
    .end local v7           #date:Ljava/util/Date;
    :goto_3d
    return-object v0

    .line 648
    :catchall_3e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_43
    move-object v0, v5

    .line 657
    goto :goto_3d
.end method

.method public getMediaFoldersFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 753
    :try_start_0
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;

    move-result-object v0

    .line 754
    .local v0, media:Lcom/lge/newbay/client/IMedia;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_9} :catch_49
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_0 .. :try_end_9} :catch_51
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_9} :catch_59
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_9} :catch_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_6c

    .line 757
    .local v9, mediaFolders:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_f
    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->getRootFolder(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_12
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_f .. :try_end_12} :catch_38
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_f .. :try_end_12} :catch_49
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f .. :try_end_12} :catch_59
    .catch Lcom/lge/sns/SnsException; {:try_start_f .. :try_end_12} :catch_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_6c

    move-result-object v7

    .line 762
    .local v7, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_13
    if-eqz v7, :cond_74

    .line 763
    :try_start_15
    invoke-virtual {v7}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v8

    .line 764
    .local v8, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v8, :cond_22

    .line 765
    invoke-virtual {v8}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v9, v1, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->addtoMediaFolders(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_22
    invoke-virtual {v8}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v1

    const-string v2, "next"

    invoke-static {v1, v2}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v10

    .line 768
    .local v10, next:Lcom/lge/feed/atom/Link;
    if-eqz v10, :cond_47

    .line 769
    invoke-virtual {v10}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/newbay/client/IMedia;->getRootFolder(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v7

    goto :goto_13

    .line 758
    .end local v7           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .end local v8           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :catch_38
    move-exception v6

    .line 759
    .local v6, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->getRootFolder(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_45
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_15 .. :try_end_45} :catch_49
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_15 .. :try_end_45} :catch_51
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_15 .. :try_end_45} :catch_59
    .catch Lcom/lge/sns/SnsException; {:try_start_15 .. :try_end_45} :catch_69
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_45} :catch_6c

    move-result-object v7

    .restart local v7       #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    goto :goto_13

    .line 771
    .end local v6           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v8       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v10       #next:Lcom/lge/feed/atom/Link;
    :cond_47
    const/4 v7, 0x0

    goto :goto_13

    .line 775
    .end local v0           #media:Lcom/lge/newbay/client/IMedia;
    .end local v7           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .end local v8           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v9           #mediaFolders:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :catch_49
    move-exception v1

    move-object v6, v1

    .line 776
    .local v6, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v1, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v1, v6}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 777
    .end local v6           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_51
    move-exception v1

    move-object v6, v1

    .line 778
    .local v6, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    new-instance v1, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v1}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v1

    .line 779
    .end local v6           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_59
    move-exception v1

    move-object v6, v1

    .line 780
    .local v6, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v1, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 781
    .end local v6           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_69
    move-exception v1

    move-object v6, v1

    .line 782
    .local v6, e:Lcom/lge/sns/SnsException;
    throw v6

    .line 783
    .end local v6           #e:Lcom/lge/sns/SnsException;
    :catch_6c
    move-exception v1

    move-object v6, v1

    .line 784
    .local v6, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v1, v6}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 774
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #media:Lcom/lge/newbay/client/IMedia;
    .restart local v7       #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .restart local v9       #mediaFolders:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    :cond_74
    return-object v9
.end method

.method public getOrignalMedia(Lcom/lge/sns/media/MediaFile;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;
    .registers 6
    .parameter "mf"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1933
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;
    .registers 15
    .parameter "snsId"
    .parameter "url"
    .parameter "mimeType"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, decoded:Ljava/lang/Object;
    sget-object v7, Lcom/lge/sns/media/linkbook/MediaFacade;->decodedCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v7, p2}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1940
    .local v1, decodedRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/lang/Object;>;"
    if-eqz v1, :cond_f

    .line 1941
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1944
    .end local v0           #decoded:Ljava/lang/Object;
    :cond_f
    if-nez v0, :cond_8a

    .line 1945
    sget-object v7, Lcom/lge/sns/media/linkbook/MediaFacade;->rawCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v7, p2}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 1946
    .local v6, rawRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[B>;"
    if-eqz v6, :cond_88

    .line 1947
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1948
    .local v5, raw:[B
    if-eqz v5, :cond_88

    .line 1949
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p4, v7}, Lcom/lge/sns/media/IMediaFacade$MediaDecoder;->decodeStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #decoded:Ljava/lang/Object;
    move-object v7, v0

    .line 1952
    .end local v0           #decoded:Ljava/lang/Object;
    .end local v5           #raw:[B
    :goto_2d
    if-nez v7, :cond_3d

    .line 1954
    new-instance v3, Lcom/lge/sns/media/linkbook/MediaFacade$5;

    invoke-direct {v3, p0, p4}, Lcom/lge/sns/media/linkbook/MediaFacade$5;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)V

    .line 1961
    .local v3, fd:Lcom/lge/newbay/client/IMedia$FileDecoder;
    :try_start_34
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_37
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_34 .. :try_end_37} :catch_53
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_34 .. :try_end_37} :catch_5b
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_34 .. :try_end_37} :catch_63
    .catch Lcom/lge/sns/SnsException; {:try_start_34 .. :try_end_37} :catch_73
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_34 .. :try_end_37} :catch_7e

    move-result-object v4

    .line 1963
    .local v4, media:Lcom/lge/newbay/client/IMedia;
    :try_start_38
    invoke-interface {v4, p2, p3, v3}, Lcom/lge/newbay/client/IMedia;->getFile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;
    :try_end_3b
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_38 .. :try_end_3b} :catch_4a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_38 .. :try_end_3b} :catch_53
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_38 .. :try_end_3b} :catch_63
    .catch Lcom/lge/sns/SnsException; {:try_start_38 .. :try_end_3b} :catch_73
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_3b} :catch_7e

    move-result-object v0

    .restart local v0       #decoded:Ljava/lang/Object;
    :goto_3c
    move-object v7, v0

    .line 1984
    .end local v0           #decoded:Ljava/lang/Object;
    .end local v3           #fd:Lcom/lge/newbay/client/IMedia$FileDecoder;
    .end local v4           #media:Lcom/lge/newbay/client/IMedia;
    :cond_3d
    :goto_3d
    if-eqz v7, :cond_49

    .line 1985
    sget-object v8, Lcom/lge/sns/media/linkbook/MediaFacade;->decodedCache:Lcom/lge/util/LRUHashMap;

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, p2, v9}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    .end local v6           #rawRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[B>;"
    :cond_49
    :goto_49
    return-object v7

    .line 1964
    .restart local v3       #fd:Lcom/lge/newbay/client/IMedia$FileDecoder;
    .restart local v4       #media:Lcom/lge/newbay/client/IMedia;
    .restart local v6       #rawRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[B>;"
    :catch_4a
    move-exception v2

    .line 1965
    .local v2, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_4b
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1966
    invoke-interface {v4, p2, p3, v3}, Lcom/lge/newbay/client/IMedia;->getFile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;
    :try_end_51
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4b .. :try_end_51} :catch_53
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4b .. :try_end_51} :catch_5b
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4b .. :try_end_51} :catch_63
    .catch Lcom/lge/sns/SnsException; {:try_start_4b .. :try_end_51} :catch_73
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4b .. :try_end_51} :catch_7e

    move-result-object v0

    .restart local v0       #decoded:Ljava/lang/Object;
    goto :goto_3c

    .line 1968
    .end local v0           #decoded:Ljava/lang/Object;
    .end local v2           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v4           #media:Lcom/lge/newbay/client/IMedia;
    :catch_53
    move-exception v7

    move-object v2, v7

    .line 1969
    .local v2, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v7, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v7, v2}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1970
    .end local v2           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_5b
    move-exception v7

    move-object v2, v7

    .line 1971
    .local v2, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    new-instance v7, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v7}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v7

    .line 1972
    .end local v2           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_63
    move-exception v7

    move-object v2, v7

    .line 1973
    .local v2, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v7, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v8

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1974
    .end local v2           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_73
    move-exception v7

    move-object v2, v7

    .line 1975
    .local v2, e:Lcom/lge/sns/SnsException;
    throw v2

    .line 1976
    .end local v2           #e:Lcom/lge/sns/SnsException;
    :catch_76
    move-exception v7

    move-object v2, v7

    .line 1977
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v7, v2}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1978
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7e
    move-exception v8

    move-object v2, v8

    .line 1980
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/sns/CacheManager;->clearCache()V

    goto :goto_3d

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #fd:Lcom/lge/newbay/client/IMedia$FileDecoder;
    :cond_88
    move-object v7, v0

    goto :goto_2d

    .end local v6           #rawRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[B>;"
    :cond_8a
    move-object v7, v0

    goto :goto_49
.end method

.method public getOrignalMedia(Lcom/lge/sns/media/MediaFile;)[B
    .registers 5
    .parameter "mf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1893
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .parameter "snsId"
    .parameter "url"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1897
    const/4 v2, 0x0

    .line 1899
    .local v2, photo:[B
    sget-object v4, Lcom/lge/sns/media/linkbook/MediaFacade;->rawCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v4, p2}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 1900
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[B>;"
    if-eqz v3, :cond_11

    .line 1901
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #photo:[B
    check-cast v2, [B

    .line 1903
    .restart local v2       #photo:[B
    :cond_11
    if-nez v2, :cond_25

    .line 1905
    :try_start_13
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_16
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_13 .. :try_end_16} :catch_2f
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_13 .. :try_end_16} :catch_37
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_13 .. :try_end_16} :catch_3f
    .catch Lcom/lge/sns/SnsException; {:try_start_13 .. :try_end_16} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_52
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_5a

    move-result-object v1

    .line 1907
    .local v1, media:Lcom/lge/newbay/client/IMedia;
    :try_start_17
    invoke-interface {v1, p2, p3}, Lcom/lge/newbay/client/IMedia;->getFile(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1a
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_17 .. :try_end_1a} :catch_26
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_17 .. :try_end_1a} :catch_2f
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_17 .. :try_end_1a} :catch_3f
    .catch Lcom/lge/sns/SnsException; {:try_start_17 .. :try_end_1a} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_52
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1a} :catch_5a

    move-result-object v2

    .line 1912
    :goto_1b
    :try_start_1b
    sget-object v4, Lcom/lge/sns/media/linkbook/MediaFacade;->rawCache:Lcom/lge/util/LRUHashMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v5}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :cond_25
    :goto_25
    return-object v2

    .line 1908
    .restart local v1       #media:Lcom/lge/newbay/client/IMedia;
    :catch_26
    move-exception v0

    .line 1909
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1910
    invoke-interface {v1, p2, p3}, Lcom/lge/newbay/client/IMedia;->getFile(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2d
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1b .. :try_end_2d} :catch_2f
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_1b .. :try_end_2d} :catch_37
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1b .. :try_end_2d} :catch_3f
    .catch Lcom/lge/sns/SnsException; {:try_start_1b .. :try_end_2d} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_52
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_2d} :catch_5a

    move-result-object v2

    goto :goto_1b

    .line 1913
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #media:Lcom/lge/newbay/client/IMedia;
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 1914
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v4, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v4, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1915
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 1916
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4

    .line 1917
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 1918
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v4, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1919
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_4f
    move-exception v4

    move-object v0, v4

    .line 1920
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 1921
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_52
    move-exception v4

    move-object v0, v4

    .line 1922
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v4, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1923
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 1925
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/CacheManager;->clearCache()V

    goto :goto_25
.end method

.method public getThumbnail(Lcom/lge/sns/media/MediaFile;)[B
    .registers 11
    .parameter "mf"

    .prologue
    .line 1992
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/lge/sns/media/linkbook/MediaFacade;->getThumbnail(J)[B

    move-result-object v5

    .line 1993
    .local v5, thumbnail:[B
    if-nez v5, :cond_46

    .line 1994
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getThumbnailCacheKey(Lcom/lge/sns/media/MediaFile;)Ljava/lang/String;

    move-result-object v2

    .line 1995
    .local v2, key:Ljava/lang/String;
    sget-object v6, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v6, v2}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 1996
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 1998
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_21

    .line 1999
    :try_start_19
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 2001
    :cond_21
    if-nez v1, :cond_2f

    .line 2002
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x52

    const/16 v8, 0x52

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/sns/media/linkbook/MediaFacade;->getBitmapFromLink(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2004
    :cond_2f
    if-eqz v1, :cond_46

    .line 2005
    sget-object v6, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v7}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-direct {p0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 2007
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->setThumbnail(J[B)Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_46} :catch_47

    .line 2014
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_46
    :goto_46
    return-object v5

    .line 2009
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_47
    move-exception v6

    move-object v4, v6

    .line 2010
    .local v4, t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/sns/CacheManager;->clearCache()V

    goto :goto_46
.end method

.method public getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "mf"

    .prologue
    .line 2034
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->getThumbnailCacheKey(Lcom/lge/sns/media/MediaFile;)Ljava/lang/String;

    move-result-object v3

    .line 2035
    .local v3, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2037
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v7, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v7, v3}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 2038
    .local v5, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_15

    .line 2039
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 2041
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_15
    if-nez v0, :cond_31

    .line 2043
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/lge/sns/media/linkbook/MediaFacade;->getThumbnail(J)[B

    move-result-object v4

    .line 2044
    .local v4, raw:[B
    if-eqz v4, :cond_3c

    .line 2046
    const/4 v7, 0x0

    :try_start_22
    array-length v8, v4

    invoke-static {v4, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2047
    sget-object v7, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3, v8}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_31} :catch_32

    .line 2086
    .end local v4           #raw:[B
    :cond_31
    :goto_31
    return-object v0

    .line 2048
    .restart local v4       #raw:[B
    :catch_32
    move-exception v7

    move-object v6, v7

    .line 2049
    .local v6, t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/sns/CacheManager;->clearCache()V

    goto :goto_31

    .line 2053
    .end local v6           #t:Ljava/lang/Throwable;
    :cond_3c
    iget-object v7, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    monitor-enter v7

    .line 2054
    :try_start_3f
    iget-object v8, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 2055
    iget-object v8, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2056
    const-string v8, "MediaFacade"

    invoke-static {v8}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v2

    .line 2057
    .local v2, jobManager:Lcom/lge/sns/BackgroundJobManager;
    new-instance v1, Lcom/lge/sns/media/linkbook/MediaFacade$7;

    invoke-direct {v1, p0, p1, v3}, Lcom/lge/sns/media/linkbook/MediaFacade$7;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/sns/media/MediaFile;Ljava/lang/String;)V

    .line 2081
    .local v1, job:Ljava/lang/Runnable;
    invoke-virtual {v2, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 2083
    .end local v1           #job:Ljava/lang/Runnable;
    .end local v2           #jobManager:Lcom/lge/sns/BackgroundJobManager;
    :cond_62
    monitor-exit v7

    goto :goto_31

    :catchall_64
    move-exception v8

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_64

    throw v8
.end method

.method public registerMediaCommentUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 430
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 431
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_13
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 360
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 361
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_13
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public registerMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 304
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 305
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_13
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeMediaCommentUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade;->mediaFolderListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public sendMediaComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1532
    :try_start_0
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_43

    move-result-object v0

    .local v0, media:Lcom/lge/newbay/client/IMedia;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1534
    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_9 .. :try_end_c} :catch_d
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_9 .. :try_end_c} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_9 .. :try_end_c} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_c} :catch_40
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_43

    .line 1552
    :goto_c
    return-void

    .line 1535
    :catch_d
    move-exception v6

    .line 1536
    .local v6, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1537
    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IMedia;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_e .. :try_end_19} :catch_1a
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_e .. :try_end_19} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_19} :catch_40
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_43

    goto :goto_c

    .line 1539
    .end local v0           #media:Lcom/lge/newbay/client/IMedia;
    .end local v6           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_1a
    move-exception v1

    move-object v6, v1

    .line 1540
    .local v6, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v1, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v1, v6}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1541
    .end local v6           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_22
    move-exception v1

    move-object v6, v1

    .line 1542
    .local v6, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_32

    .line 1543
    new-instance v1, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v1}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v1

    .line 1545
    :cond_32
    new-instance v1, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1547
    .end local v6           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_40
    move-exception v1

    move-object v6, v1

    .line 1548
    .local v6, e:Lcom/lge/sns/SnsException;
    throw v6

    .line 1549
    .end local v6           #e:Lcom/lge/sns/SnsException;
    :catch_43
    move-exception v1

    move-object v6, v1

    .line 1550
    .local v6, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v1, v6}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "updated"

    .prologue
    .line 617
    if-eqz p4, :cond_2b

    .line 618
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 620
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sns_id = ? AND user_id = ? AND folder_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_2b
    return-void
.end method

.method public updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    .registers 28
    .parameter "snsId"
    .parameter "userId"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1294
    const/16 v21, 0x0

    .line 1295
    .local v21, mediaFolderList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1296
    .local v15, folderIdSetForUpdate:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1298
    .local v14, folderIdSetForSync:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFoldersFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 1300
    if-eqz v21, :cond_1f

    .line 1301
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 1302
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteAllMediaFolderByUser(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteAllMediaFileByUser(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_1f
    :goto_1f
    return-void

    .line 1305
    :cond_20
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/sns/media/MediaFolder;

    .line 1306
    .local v12, folder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v12}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1308
    invoke-virtual {v12}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolderRecordId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v22

    .line 1309
    .local v22, recordId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v22, v5

    if-nez v5, :cond_53

    .line 1310
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->addMediaFolder(Lcom/lge/sns/media/MediaFolder;)Landroid/net/Uri;

    goto :goto_24

    .line 1313
    :cond_53
    invoke-virtual {v12}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    move-object v0, v12

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/media/MediaFolder;->setId(J)V

    .line 1316
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->updateMediaFolder(Lcom/lge/sns/media/MediaFolder;)I

    goto :goto_24

    .line 1320
    .end local v12           #folder:Lcom/lge/sns/media/MediaFolder;
    .end local v22           #recordId:J
    :cond_67
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1322
    .local v19, localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter p0

    .line 1323
    :try_start_6d
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "folder_id"

    aput-object v9, v7, v8

    const-string v8, "sns_id = ? AND user_id = ? "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_b3

    move-result-object v11

    .line 1329
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_b9

    .line 1331
    :goto_92
    :try_start_92
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1332
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_ae

    goto :goto_92

    .line 1335
    :catchall_ae
    move-exception v5

    :try_start_af
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1338
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_b3
    move-exception v5

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_b3

    throw v5

    .line 1335
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_b6
    :try_start_b6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1338
    :cond_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_b3

    .line 1340
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c2
    :goto_c2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1341
    .local v18, key:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 1342
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteMediaFolder(J)I

    .line 1343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/media/linkbook/MediaFacade;->deleteAllMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 1347
    .end local v18           #key:Ljava/lang/String;
    :cond_f7
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_fb
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_114

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1348
    .local v13, folderId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/sns/media/linkbook/MediaFacade;->updateMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V

    goto :goto_fb

    .line 1351
    .end local v13           #folderId:Ljava/lang/String;
    :cond_114
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1352
    invoke-static/range {p1 .. p1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v20

    .line 1353
    .local v20, mJobManager:Lcom/lge/sns/BackgroundJobManager;
    new-instance v17, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1354
    .local v17, job:Lcom/lge/sns/media/linkbook/MediaFacade$MediaSynchronizeJob;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->contains(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1355
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V

    goto/16 :goto_1f
.end method

.method public updateMediaFile(Lcom/lge/sns/media/MediaFile;)I
    .registers 8
    .parameter "mediaFile"

    .prologue
    const/4 v5, 0x0

    .line 973
    if-nez p1, :cond_5

    .line 974
    const/4 v2, 0x0

    .line 981
    :goto_4
    return v2

    .line 976
    :cond_5
    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 977
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaFileValues(Lcom/lge/sns/media/MediaFile;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 978
    .local v0, count:I
    if-eqz v0, :cond_20

    .line 979
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V

    :cond_20
    move v2, v0

    .line 981
    goto :goto_4
.end method

.method public updateMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    .registers 23
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1184
    const/16 v16, 0x0

    .line 1185
    .local v16, feedContainer:Lcom/lge/newbay/client/AtomFeedContainer;
    const/4 v13, 0x0

    .line 1186
    .local v13, delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    invoke-direct/range {p0 .. p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->getLastModified(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 1189
    .local v11, updateDate:Ljava/util/Date;
    :try_start_7
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;

    move-result-object v5

    .line 1191
    .local v5, media:Lcom/lge/newbay/client/IMedia;
    new-instance v12, Lcom/lge/sns/media/linkbook/MediaFacade$2;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/media/linkbook/MediaFacade$2;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;)V
    :try_end_13
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_7 .. :try_end_13} :catch_50
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_7 .. :try_end_13} :catch_58
    .catch Lcom/lge/sns/SnsException; {:try_start_7 .. :try_end_13} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_81

    .line 1230
    .local v12, callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    const/4 v9, 0x1

    const/16 v10, 0x14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_1c
    invoke-interface/range {v5 .. v12}, Lcom/lge/newbay/client/IMedia;->getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_1f
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_1c .. :try_end_1f} :catch_3b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1c .. :try_end_1f} :catch_50
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1c .. :try_end_1f} :catch_58
    .catch Lcom/lge/sns/SnsException; {:try_start_1c .. :try_end_1f} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_81

    move-result-object v16

    .line 1236
    :goto_20
    if-eqz v16, :cond_89

    .line 1237
    :try_start_22
    invoke-virtual/range {v16 .. v16}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v15

    .line 1238
    .local v15, feed:Lcom/lge/feed/atom/AtomFeed;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v13

    .line 1239
    const-string v6, "next"

    invoke-static {v15, v6}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v17

    .line 1241
    .local v17, next:Lcom/lge/feed/atom/Link;
    if-eqz v17, :cond_4d

    .line 1242
    invoke-virtual/range {v17 .. v17}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v11, v12}, Lcom/lge/newbay/client/IMedia;->getFolderContents(Ljava/lang/String;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v16

    goto :goto_20

    .line 1231
    .end local v15           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v17           #next:Lcom/lge/feed/atom/Link;
    :catch_3b
    move-exception v14

    .line 1232
    .local v14, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    const/4 v9, 0x1

    const/16 v10, 0x14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v5 .. v12}, Lcom/lge/newbay/client/IMedia;->getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_4b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_22 .. :try_end_4b} :catch_50
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_22 .. :try_end_4b} :catch_58
    .catch Lcom/lge/sns/SnsException; {:try_start_22 .. :try_end_4b} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4b} :catch_81

    move-result-object v16

    goto :goto_20

    .line 1244
    .end local v14           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v15       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v17       #next:Lcom/lge/feed/atom/Link;
    :cond_4d
    const/16 v16, 0x0

    goto :goto_20

    .line 1247
    .end local v5           #media:Lcom/lge/newbay/client/IMedia;
    .end local v12           #callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    .end local v15           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v17           #next:Lcom/lge/feed/atom/Link;
    :catch_50
    move-exception v6

    move-object v14, v6

    .line 1248
    .local v14, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v6, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v6, v14}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1249
    .end local v14           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_58
    move-exception v6

    move-object v14, v6

    .line 1250
    .local v14, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v14}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_68

    .line 1251
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 1252
    :cond_68
    invoke-virtual {v14}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x130

    if-eq v6, v7, :cond_89

    .line 1254
    new-instance v6, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v14}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    invoke-virtual {v14}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1256
    .end local v14           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_7e
    move-exception v6

    move-object v14, v6

    .line 1257
    .local v14, e:Lcom/lge/sns/SnsException;
    throw v14

    .line 1258
    .end local v14           #e:Lcom/lge/sns/SnsException;
    :catch_81
    move-exception v6

    move-object v14, v6

    .line 1259
    .local v14, e:Ljava/lang/Exception;
    new-instance v6, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v6, v14}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1262
    .end local v14           #e:Ljava/lang/Exception;
    :cond_89
    if-eqz v13, :cond_97

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/media/linkbook/MediaFacade;->setLastModified(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 1266
    :cond_97
    invoke-direct/range {p0 .. p3}, Lcom/lge/sns/media/linkbook/MediaFacade;->synchronizeMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method public updateMediaFolder(Lcom/lge/sns/media/MediaFolder;)I
    .registers 8
    .parameter "mediaFolder"

    .prologue
    .line 553
    if-nez p1, :cond_4

    .line 554
    const/4 v2, 0x0

    .line 566
    :goto_3
    return v2

    .line 557
    :cond_4
    monitor-enter p0

    .line 558
    :try_start_5
    sget-object v2, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 560
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/sns/media/linkbook/MediaFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->setMediaFolderValues(Lcom/lge/sns/media/MediaFolder;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 562
    .local v0, count:I
    if-eqz v0, :cond_22

    .line 563
    invoke-direct {p0, p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->notifyMediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V

    .line 566
    :cond_22
    monitor-exit p0

    move v2, v0

    goto :goto_3

    .line 567
    .end local v0           #count:I
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public updateMediaFolderList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 696
    const/4 v2, 0x0

    .line 698
    .local v2, mediaFolderList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFoldersFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 700
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFolder;

    .line 701
    .local v0, folder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMediaFolderRecordId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 702
    .local v3, recordId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_27

    .line 703
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->addMediaFolder(Lcom/lge/sns/media/MediaFolder;)Landroid/net/Uri;

    goto :goto_9

    .line 706
    :cond_27
    invoke-virtual {v0, v3, v4}, Lcom/lge/sns/media/MediaFolder;->setId(J)V

    .line 707
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->updateMediaFolder(Lcom/lge/sns/media/MediaFolder;)I

    goto :goto_9

    .line 710
    .end local v0           #folder:Lcom/lge/sns/media/MediaFolder;
    .end local v3           #recordId:J
    :cond_2e
    return-void
.end method

.method public uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 26
    .parameter "snsId"
    .parameter "userId"
    .parameter "fis"
    .parameter "contentLength"
    .parameter "contentType"
    .parameter "title"
    .parameter "description"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1684
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x7fc0

    const/high16 v14, 0x7fc0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v0 .. v15}, Lcom/lge/sns/media/linkbook/MediaFacade;->uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 42
    .parameter "snsId"
    .parameter "userId"
    .parameter "in"
    .parameter "contentLength"
    .parameter "contentType"
    .parameter "title"
    .parameter "description"
    .parameter "sharedOption"
    .parameter "tags"
    .parameter "ftags"
    .parameter "ptags"
    .parameter "locationLat"
    .parameter "locationLon"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1694
    :try_start_0
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_54
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_0 .. :try_end_3} :catch_5c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_64
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_77

    move-result-object v6

    .line 1697
    .local v6, media:Lcom/lge/newbay/client/IMedia;
    :try_start_4
    move-object v0, v6

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/newbay/client/IMedia;->createResource(JLjava/lang/String;)Lcom/lge/feed/atom/Entry;
    :try_end_c
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4 .. :try_end_c} :catch_46
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_c} :catch_54
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_c} :catch_64
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_77

    move-result-object v25

    .line 1703
    .local v25, entry:Lcom/lge/feed/atom/Entry;
    :goto_d
    move-object/from16 v7, v25

    .line 1704
    .local v7, e:Lcom/lge/feed/atom/Entry;
    :try_start_f
    invoke-virtual/range {v25 .. v25}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->getEditMediaLink(Ljava/util/List;)Lcom/lge/feed/atom/Link;

    move-result-object v8

    .line 1705
    .local v8, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v8}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->parseFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1706
    .local v9, fileUid:Ljava/lang/String;
    new-instance v4, Lcom/lge/sns/media/linkbook/MediaFacade$3;

    move-object/from16 v5, p0

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    move/from16 v23, p13

    move/from16 v24, p14

    invoke-direct/range {v4 .. v24}, Lcom/lge/sns/media/linkbook/MediaFacade$3;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)V

    .line 1726
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1727
    return-object v9

    .line 1698
    .end local v4           #t:Ljava/lang/Thread;
    .end local v7           #e:Lcom/lge/feed/atom/Entry;
    .end local v8           #link:Lcom/lge/feed/atom/Link;
    .end local v9           #fileUid:Ljava/lang/String;
    .end local v25           #entry:Lcom/lge/feed/atom/Entry;
    :catch_46
    move-exception v7

    .line 1699
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1700
    move-object v0, v6

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/newbay/client/IMedia;->createResource(JLjava/lang/String;)Lcom/lge/feed/atom/Entry;
    :try_end_52
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_f .. :try_end_52} :catch_54
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_f .. :try_end_52} :catch_5c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f .. :try_end_52} :catch_64
    .catch Lcom/lge/sns/SnsException; {:try_start_f .. :try_end_52} :catch_74
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_52} :catch_77

    move-result-object v25

    .restart local v25       #entry:Lcom/lge/feed/atom/Entry;
    goto :goto_d

    .line 1728
    .end local v6           #media:Lcom/lge/newbay/client/IMedia;
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v25           #entry:Lcom/lge/feed/atom/Entry;
    :catch_54
    move-exception v5

    move-object v7, v5

    .line 1729
    .local v7, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v5, v7}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1730
    .end local v7           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_5c
    move-exception v5

    move-object v7, v5

    .line 1731
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1732
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_64
    move-exception v5

    move-object v7, v5

    .line 1733
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1734
    :catch_74
    move-exception v5

    move-object v7, v5

    .line 1735
    .local v7, e:Lcom/lge/sns/SnsException;
    throw v7

    .line 1736
    .end local v7           #e:Lcom/lge/sns/SnsException;
    :catch_77
    move-exception v5

    move-object v7, v5

    .line 1737
    .local v7, e:Ljava/lang/Exception;
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v5, v7}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 28
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fis"
    .parameter "contentLength"
    .parameter "contentType"
    .parameter "title"
    .parameter "description"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1744
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x7fc0

    const/high16 v15, 0x7fc0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v0 .. v16}, Lcom/lge/sns/media/linkbook/MediaFacade;->uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .registers 44
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "in"
    .parameter "contentLength"
    .parameter "contentType"
    .parameter "title"
    .parameter "description"
    .parameter "sharedOption"
    .parameter "tags"
    .parameter "ftags"
    .parameter "ptags"
    .parameter "locationLat"
    .parameter "locationLon"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1754
    :try_start_0
    invoke-static {}, Lcom/lge/sns/media/linkbook/MediaFacade;->getMedia()Lcom/lge/newbay/client/IMedia;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_56
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_0 .. :try_end_3} :catch_5e
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_66
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_79

    move-result-object v6

    .line 1757
    .local v6, media:Lcom/lge/newbay/client/IMedia;
    :try_start_4
    move-object v0, v6

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/newbay/client/IMedia;->createResource(JLjava/lang/String;)Lcom/lge/feed/atom/Entry;
    :try_end_c
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4 .. :try_end_c} :catch_48
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_c} :catch_56
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_c} :catch_66
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_c} :catch_76
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_79

    move-result-object v26

    .line 1763
    .local v26, entry:Lcom/lge/feed/atom/Entry;
    :goto_d
    move-object/from16 v7, v26

    .line 1764
    .local v7, e:Lcom/lge/feed/atom/Entry;
    :try_start_f
    invoke-virtual/range {v26 .. v26}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->getEditMediaLink(Ljava/util/List;)Lcom/lge/feed/atom/Link;

    move-result-object v8

    .line 1765
    .local v8, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v8}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/sns/media/linkbook/MediaFacade;->parseFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1766
    .local v9, fileUid:Ljava/lang/String;
    new-instance v4, Lcom/lge/sns/media/linkbook/MediaFacade$4;

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p16

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    move-object/from16 v23, p13

    move/from16 v24, p14

    move/from16 v25, p15

    invoke-direct/range {v4 .. v25}, Lcom/lge/sns/media/linkbook/MediaFacade$4;-><init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)V

    .line 1786
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1787
    return-object v9

    .line 1758
    .end local v4           #t:Ljava/lang/Thread;
    .end local v7           #e:Lcom/lge/feed/atom/Entry;
    .end local v8           #link:Lcom/lge/feed/atom/Link;
    .end local v9           #fileUid:Ljava/lang/String;
    .end local v26           #entry:Lcom/lge/feed/atom/Entry;
    :catch_48
    move-exception v7

    .line 1759
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/media/linkbook/MediaFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1760
    move-object v0, v6

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/newbay/client/IMedia;->createResource(JLjava/lang/String;)Lcom/lge/feed/atom/Entry;
    :try_end_54
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_f .. :try_end_54} :catch_56
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_f .. :try_end_54} :catch_5e
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f .. :try_end_54} :catch_66
    .catch Lcom/lge/sns/SnsException; {:try_start_f .. :try_end_54} :catch_76
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_79

    move-result-object v26

    .restart local v26       #entry:Lcom/lge/feed/atom/Entry;
    goto :goto_d

    .line 1788
    .end local v6           #media:Lcom/lge/newbay/client/IMedia;
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v26           #entry:Lcom/lge/feed/atom/Entry;
    :catch_56
    move-exception v5

    move-object v7, v5

    .line 1789
    .local v7, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v5, v7}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1790
    .end local v7           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_5e
    move-exception v5

    move-object v7, v5

    .line 1791
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1792
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_66
    move-exception v5

    move-object v7, v5

    .line 1793
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1794
    :catch_76
    move-exception v5

    move-object v7, v5

    .line 1795
    .local v7, e:Lcom/lge/sns/SnsException;
    throw v7

    .line 1796
    .end local v7           #e:Lcom/lge/sns/SnsException;
    :catch_79
    move-exception v5

    move-object v7, v5

    .line 1797
    .local v7, e:Ljava/lang/Exception;
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v5, v7}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
