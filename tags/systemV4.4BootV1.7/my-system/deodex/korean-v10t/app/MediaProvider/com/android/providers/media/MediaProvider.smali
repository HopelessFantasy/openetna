.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$Worker;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART_THUMB_URI:Landroid/net/Uri; = null

.field private static final ALBUMART_URI:Landroid/net/Uri; = null

.field static final ALBUM_THUMB_FOLDER:Ljava/lang/String; = "albumthumbs"

.field private static final AUDIO_ALBUMART:I = 0x77

.field private static final AUDIO_ALBUMART_ID:I = 0x78

.field private static final AUDIO_ALBUMS:I = 0x74

.field private static final AUDIO_ALBUMS_ID:I = 0x75

.field private static final AUDIO_ARTISTS:I = 0x72

.field private static final AUDIO_ARTISTS_ID:I = 0x73

.field private static final AUDIO_ARTISTS_ID_ALBUMS:I = 0x76

.field private static final AUDIO_GENRES:I = 0x6a

.field private static final AUDIO_GENRES_ID:I = 0x6b

.field private static final AUDIO_GENRES_ID_MEMBERS:I = 0x6c

.field private static final AUDIO_GENRES_ID_MEMBERS_ID:I = 0x6d

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field private static final AUDIO_MEDIA_ID_GENRES:I = 0x66

.field private static final AUDIO_MEDIA_ID_GENRES_ID:I = 0x67

.field private static final AUDIO_MEDIA_ID_PLAYLISTS:I = 0x68

.field private static final AUDIO_MEDIA_ID_PLAYLISTS_ID:I = 0x69

.field private static final AUDIO_PLAYLISTS:I = 0x6e

.field private static final AUDIO_PLAYLISTS_ID:I = 0x6f

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x70

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x71

.field private static final AUDIO_SEARCH_BASIC:I = 0x191

.field private static final AUDIO_SEARCH_FANCY:I = 0x192

.field private static final AUDIO_SEARCH_LEGACY:I = 0x190

.field private static final DATABASE_VERSION:I = 0x4c

.field private static final DRM_AUDIO_MEDIA:I = 0x79

.field private static final DRM_IMAGES_MEDIA:I = 0x5

.field private static final DRM_VIDEO_MEDIA:I = 0xca

.field private static final EXTERNAL_DATABASE_TABLES:[Ljava/lang/String; = null

.field static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAILS:I = 0x3

.field private static final IMAGES_THUMBNAILS_ID:I = 0x4

.field private static final INTERNAL_DATABASE_NAME:Ljava/lang/String; = "internal.db"

.field static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field private static final LOCAL_LOGV:Z = true

.field private static final MAX_EXTERNAL_DATABASES:I = 0x3

.field private static final MEDIA_SCANNER:I = 0x1f4

.field private static final MEDIA_URI:Landroid/net/Uri; = null

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static TAG:Ljava/lang/String; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VOLUMES:I = 0x12c

.field private static final VOLUMES_ID:I = 0x12d

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;


# instance fields
.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field private mTempDatabasePath:Ljava/lang/String;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mThumbWorker:Lcom/android/providers/media/MediaProvider$Worker;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v3, "media"

    .line 69
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 70
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://media/external/audio/albumart_thumb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_THUMB_URI:Landroid/net/Uri;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 1525
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/media/MediaProvider$1;)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 1801
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 2362
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 2431
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 2434
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 2439
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "images"

    aput-object v1, v0, v2

    const-string v1, "thumbnails"

    aput-object v1, v0, v4

    const-string v1, "audio_meta"

    aput-object v1, v0, v5

    const-string v1, "artists"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "albums"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "audio_genres"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_genres_map"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "audio_playlists"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "audio_playlists_map"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->EXTERNAL_DATABASE_TABLES:[Ljava/lang/String;

    .line 2454
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/media"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2455
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmimages/media"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2456
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/media/#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2457
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmimages/media/#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2458
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/thumbnails"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2459
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/images/thumbnails/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2461
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2462
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmaudio/media"

    const/16 v2, 0x79

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2463
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2464
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmaudio/media/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2465
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/genres"

    const/16 v2, 0x66

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2466
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/genres/#"

    const/16 v2, 0x67

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2467
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/playlists"

    const/16 v2, 0x68

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2468
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/media/#/playlists/#"

    const/16 v2, 0x69

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2469
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres"

    const/16 v2, 0x6a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2470
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#"

    const/16 v2, 0x6b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2471
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#/members"

    const/16 v2, 0x6c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2472
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/genres/#/members/#"

    const/16 v2, 0x6d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2473
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists"

    const/16 v2, 0x6e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2474
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#"

    const/16 v2, 0x6f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2475
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#/members"

    const/16 v2, 0x70

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2476
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/playlists/#/members/#"

    const/16 v2, 0x71

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2477
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists"

    const/16 v2, 0x72

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2478
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists/#"

    const/16 v2, 0x73

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2479
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/artists/#/albums"

    const/16 v2, 0x76

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2480
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albums"

    const/16 v2, 0x74

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2481
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albums/#"

    const/16 v2, 0x75

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2482
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albumart"

    const/16 v2, 0x77

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2483
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/albumart/#"

    const/16 v2, 0x78

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2485
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/media"

    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2486
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmvideo/media"

    const/16 v2, 0xca

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2487
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/video/media/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2488
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/drmvideo/media/#"

    const/16 v2, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2490
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/media_scanner"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2492
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*"

    const/16 v2, 0x12d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2493
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2498
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search_suggest_query"

    const/16 v2, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2500
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search_suggest_query/*"

    const/16 v2, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2504
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/search_suggest_query"

    const/16 v2, 0x191

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2506
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/search_suggest_query/*"

    const/16 v2, 0x191

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2510
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/fancy"

    const/16 v2, 0x192

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2511
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v1, "*/audio/search/fancy/*"

    const/16 v2, 0x192

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2512
    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 83
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "0 AS suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "text1 AS suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 128
    iput v3, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 130
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1875
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumb(Lcom/android/providers/media/MediaProvider$ThumbData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .registers 21
    .parameter "volume"

    .prologue
    .line 2258
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_18

    .line 2259
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Opening and closing databases not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2263
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2264
    move-object/from16 v10, p1

    .line 2265
    .local v10, dbName:Ljava/lang/String;
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 2266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    monitor-exit v18

    .line 2317
    :goto_4a
    return-object v2

    .line 2270
    :cond_4b
    const-string v2, "internal"

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2271
    new-instance v9, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "internal.db"

    const/4 v4, 0x1

    invoke-direct {v9, v2, v3, v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2285
    .local v9, db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :goto_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    iget-boolean v2, v9, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v2, :cond_183

    .line 2289
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "albumthumbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 2292
    .local v13, files:[Ljava/io/File;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 2293
    .local v11, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_83
    if-eqz v13, :cond_122

    array-length v2, v13

    if-ge v14, v2, :cond_122

    .line 2294
    aget-object v2, v13, v14

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2293
    add-int/lit8 v14, v14, 0x1

    goto :goto_83

    .line 2272
    .end local v9           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v11           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #files:[Ljava/io/File;
    .end local v14           #i:I
    :cond_94
    const-string v2, "external"

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 2273
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 2274
    .local v16, path:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v17

    .line 2275
    .local v17, volumeID:I
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2279
    new-instance v9, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v9, v2, v3, v4}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2280
    .restart local v9       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    goto/16 :goto_62

    .line 2281
    .end local v9           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #volumeID:I
    :cond_103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no volume named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2314
    :catchall_11f
    move-exception v2

    monitor-exit v18
    :try_end_121
    .catchall {:try_start_21 .. :try_end_121} :catchall_11f

    throw v2

    .line 2297
    .restart local v9       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v11       #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #files:[Ljava/io/File;
    .restart local v14       #i:I
    :cond_122
    :try_start_122
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "album_art"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_134
    .catchall {:try_start_122 .. :try_end_134} :catchall_11f

    move-result-object v8

    .line 2300
    .local v8, cursor:Landroid/database/Cursor;
    :goto_135
    if-eqz v8, :cond_14d

    :try_start_137
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 2301
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_145
    .catchall {:try_start_137 .. :try_end_145} :catchall_146

    goto :goto_135

    .line 2304
    :catchall_146
    move-exception v2

    if-eqz v8, :cond_14c

    :try_start_149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_14c
    throw v2

    :cond_14d
    if-eqz v8, :cond_152

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2307
    :cond_152
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2308
    .local v15, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_156
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 2309
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2310
    .local v12, filename:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting obsolete album art "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_156

    .line 2314
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #files:[Ljava/io/File;
    .end local v14           #i:I
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_183
    monitor-exit v18
    :try_end_184
    .catchall {:try_start_149 .. :try_end_184} :catchall_11f

    .line 2316
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attached volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_4a
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "data"
    .parameter "values"

    .prologue
    .line 837
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 838
    .local v1, parentFile:Ljava/io/File;
    if-nez v1, :cond_12

    .line 839
    new-instance v1, Ljava/io/File;

    .end local v1           #parentFile:Ljava/io/File;
    const-string v3, "/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v1       #parentFile:Ljava/io/File;
    :cond_12
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, name:Ljava/lang/String;
    const-string v3, "bucket_id"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v3, "bucket_display_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "data"
    .parameter "values"

    .prologue
    .line 861
    if-nez p0, :cond_19

    const-string v2, ""

    move-object v1, v2

    .line 862
    .local v1, s:Ljava/lang/String;
    :goto_5
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 863
    .local v0, idx:I
    if-ltz v0, :cond_13

    .line 864
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 866
    :cond_13
    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-void

    .line 861
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_5
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .registers 9
    .parameter "uri"

    .prologue
    .line 2328
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 2329
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Opening and closing databases not allowed."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2333
    :cond_18
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2334
    .local v3, volume:Ljava/lang/String;
    const-string v4, "internal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2335
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Deleting the internal volume is not allowed"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2337
    :cond_33
    const-string v4, "external"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2338
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no volume named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2342
    :cond_54
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v4

    .line 2343
    :try_start_57
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 2344
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_63

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_af

    .line 2360
    :goto_62
    return-void

    .line 2348
    :cond_63
    :try_start_63
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v2, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_af
    .catch Landroid/database/SQLException; {:try_start_63 .. :try_end_77} :catch_a5

    .line 2354
    .end local v2           #file:Ljava/io/File;
    :goto_77
    :try_start_77
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V

    .line 2356
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_af

    .line 2358
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2359
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detached volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 2350
    :catch_a5
    move-exception v5

    move-object v1, v5

    .line 2351
    .local v1, e:Landroid/database/SQLException;
    :try_start_a7
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Can\'t touch database file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 2356
    .end local v0           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_af
    move-exception v5

    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_af

    throw v5
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 24
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "mode"

    .prologue
    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, ""

    move-object v13, v2

    .line 1108
    .local v13, mSearchString:Ljava/lang/String;
    :goto_f
    const-string v2, "  "

    const-string v3, " "

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1110
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_66

    const-string v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 1112
    .local v14, searchWords:[Ljava/lang/String;
    :goto_2c
    array-length v2, v14

    new-array v6, v2, [Ljava/lang/String;

    .line 1113
    .local v6, wildcardWords:[Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v10

    .line 1114
    .local v10, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 1115
    array-length v12, v14

    .line 1116
    .local v12, len:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_39
    if-ge v11, v12, :cond_8b

    .line 1119
    aget-object v2, v14, v11

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    aget-object v2, v14, v11

    const-string v3, "an"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    aget-object v2, v14, v11

    const-string v3, "the"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_59
    const-string v2, "%"

    :goto_5b
    aput-object v2, v6, v11

    .line 1116
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 1107
    .end local v6           #wildcardWords:[Ljava/lang/String;
    .end local v10           #col:Ljava/text/Collator;
    .end local v11           #i:I
    .end local v12           #len:I
    .end local v13           #mSearchString:Ljava/lang/String;
    .end local v14           #searchWords:[Ljava/lang/String;
    :cond_60
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_f

    .line 1110
    .restart local v13       #mSearchString:Ljava/lang/String;
    :cond_66
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v14, v2

    goto :goto_2c

    .line 1119
    .restart local v6       #wildcardWords:[Ljava/lang/String;
    .restart local v10       #col:Ljava/text/Collator;
    .restart local v11       #i:I
    .restart local v12       #len:I
    .restart local v14       #searchWords:[Ljava/lang/String;
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v14, v11

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 1125
    :cond_8b
    const-string v5, ""

    .line 1126
    .local v5, where:Ljava/lang/String;
    const/4 v11, 0x0

    :goto_8e
    array-length v2, v14

    if-ge v11, v2, :cond_ac

    .line 1127
    if-nez v11, :cond_98

    .line 1128
    const-string v5, "match LIKE ?"

    .line 1126
    :goto_95
    add-int/lit8 v11, v11, 0x1

    goto :goto_8e

    .line 1130
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND match LIKE ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_95

    .line 1134
    :cond_ac
    const-string v2, "search"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1136
    const/16 v2, 0x192

    move/from16 v0, p8

    move v1, v2

    if-ne v0, v1, :cond_c9

    .line 1137
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 1143
    .local v4, cols:[Ljava/lang/String;
    :goto_bd
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1138
    .end local v4           #cols:[Ljava/lang/String;
    :cond_c9
    const/16 v2, 0x191

    move/from16 v0, p8

    move v1, v2

    if-ne v0, v1, :cond_d3

    .line 1139
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .restart local v4       #cols:[Ljava/lang/String;
    goto :goto_bd

    .line 1141
    .end local v4           #cols:[Ljava/lang/String;
    :cond_d3
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .restart local v4       #cols:[Ljava/lang/String;
    goto :goto_bd
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    const-string v3, "_data"

    .line 1207
    const-string v2, "_data"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1209
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/media/MediaProvider;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1211
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :goto_1c
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1217
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1213
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_3b
    move-object v1, p2

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_1c

    .line 1219
    :cond_3d
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .registers 10
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1498
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 1516
    :goto_e
    return v5

    .line 1504
    :cond_f
    const/16 v5, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1505
    .local v4, secondSlash:I
    if-ge v4, v6, :cond_19

    move v5, v7

    goto :goto_e

    .line 1506
    :cond_19
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2a

    move v5, v7

    .line 1509
    goto :goto_e

    .line 1510
    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1512
    :try_start_31
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_36

    move-result v5

    goto :goto_e

    .line 1513
    :catch_36
    move-exception v3

    .line 1514
    .local v3, ioe:Ljava/io/IOException;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "File creation failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 1516
    goto :goto_e
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "internal"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    const-string v3, "/"

    .line 1485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_14

    .line 1488
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Writing to internal storage is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1492
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 15
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1917
    const/4 v1, 0x0

    .line 1920
    .local v1, compressed:[B
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v3, f:Ljava/io/File;
    const/high16 v10, 0x1000

    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1924
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v7, Landroid/media/MediaScanner;

    invoke-direct {v7, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1925
    .local v7, scanner:Landroid/media/MediaScanner;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object v1

    .line 1926
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1929
    if-nez v1, :cond_62

    if-eqz p1, :cond_62

    .line 1930
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1931
    .local v5, lastSlash:I
    if-lez v5, :cond_62

    .line 1932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AlbumArt.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, artPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_62

    .line 1935
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v1, v10, [B
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_54} :catch_6c

    .line 1936
    const/4 v8, 0x0

    .line 1938
    .local v8, stream:Ljava/io/FileInputStream;
    :try_start_55
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_63

    .line 1939
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_5a
    invoke-virtual {v9, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_75
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_78

    .line 1943
    if-eqz v9, :cond_62

    .line 1944
    :try_start_5f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1953
    .end local v0           #artPath:Ljava/lang/String;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #lastSlash:I
    .end local v6           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v7           #scanner:Landroid/media/MediaScanner;
    .end local v9           #stream:Ljava/io/FileInputStream;
    :cond_62
    :goto_62
    return-object v1

    .line 1940
    .restart local v0       #artPath:Ljava/lang/String;
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #lastSlash:I
    .restart local v6       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v7       #scanner:Landroid/media/MediaScanner;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_63
    move-exception v10

    move-object v2, v10

    .line 1941
    .local v2, ex:Ljava/io/IOException;
    :goto_65
    const/4 v1, 0x0

    .line 1943
    if-eqz v8, :cond_62

    .line 1944
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_62

    .line 1950
    .end local v0           #artPath:Ljava/lang/String;
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #lastSlash:I
    .end local v6           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v7           #scanner:Landroid/media/MediaScanner;
    .end local v8           #stream:Ljava/io/FileInputStream;
    :catch_6c
    move-exception v10

    goto :goto_62

    .line 1943
    .restart local v0       #artPath:Ljava/lang/String;
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #lastSlash:I
    .restart local v6       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v7       #scanner:Landroid/media/MediaScanner;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catchall_6e
    move-exception v10

    :goto_6f
    if-eqz v8, :cond_74

    .line 1944
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_74
    throw v10
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_75} :catch_6c

    .line 1943
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catchall_75
    move-exception v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_6f

    .line 1940
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_78
    move-exception v10

    move-object v2, v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_65
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .registers 8
    .parameter "uri"

    .prologue
    .line 2228
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v3

    .line 2229
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4f

    .line 2230
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2238
    .local v0, dbKey:Ljava/lang/String;
    const-string v4, "external"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2239
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2240
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 2241
    .local v2, volumeId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2243
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #volumeId:I
    :cond_44
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v3

    move-object v3, p0

    .line 2246
    .end local v0           #dbKey:Ljava/lang/String;
    :goto_4e
    return-object v3

    .line 2245
    .restart local p0
    :cond_4f
    monitor-exit v3

    .line 2246
    const/4 v3, 0x0

    goto :goto_4e

    .line 2245
    .end local p0
    :catchall_52
    move-exception v4

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v4
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .registers 38
    .parameter "db"
    .parameter "table"
    .parameter "keyField"
    .parameter "nameField"
    .parameter "rawName"
    .parameter "cacheName"
    .parameter "path"
    .parameter "albumHash"
    .parameter "artist"
    .parameter
    .parameter "srcuri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 2094
    .local p10, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    .line 2095
    :cond_8
    const-wide/16 v5, -0x1

    .line 2174
    :goto_a
    return-wide v5

    .line 2097
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2099
    .local v21, k:Ljava/lang/String;
    if-nez v21, :cond_14

    .line 2100
    const-wide/16 v5, -0x1

    goto :goto_a

    .line 2103
    :cond_14
    const-string v5, "albums"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 2104
    .local v19, isAlbum:Z
    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 2112
    .local v20, isUnknown:Z
    if-eqz v19, :cond_58

    .line 2113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2114
    if-eqz v20, :cond_58

    .line 2115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2119
    :cond_58
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v21, v9, v5

    .line 2120
    .local v9, selargs:[Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2123
    .local v17, c:Landroid/database/Cursor;
    :try_start_80
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    packed-switch v5, :pswitch_data_202

    .line 2163
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple entries in table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_80 .. :try_end_af} :catchall_152

    .line 2164
    const-wide/16 v13, -0x1

    .line 2168
    .local v13, rowId:J
    :cond_b1
    :goto_b1
    if-eqz v17, :cond_b6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2171
    :cond_b6
    if-eqz p10, :cond_c6

    if-nez v20, :cond_c6

    .line 2172
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p10

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    move-wide v5, v13

    .line 2174
    goto/16 :goto_a

    .line 2126
    .end local v13           #rowId:J
    :pswitch_c9
    :try_start_c9
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2127
    .local v23, otherValues:Landroid/content/ContentValues;
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string v5, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2130
    .restart local v13       #rowId:J
    if-eqz p7, :cond_fd

    if-eqz v19, :cond_fd

    if-nez v20, :cond_fd

    .line 2132
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p7

    invoke-direct/range {v10 .. v15}, Lcom/android/providers/media/MediaProvider;->makeThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)V

    .line 2134
    :cond_fd
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_b1

    .line 2135
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 2136
    .local v25, volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 2137
    .local v24, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_150
    .catchall {:try_start_c9 .. :try_end_150} :catchall_152

    goto/16 :goto_b1

    .line 2168
    .end local v13           #rowId:J
    .end local v23           #otherValues:Landroid/content/ContentValues;
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #volume:Ljava/lang/String;
    :catchall_152
    move-exception v5

    if-eqz v17, :cond_158

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_158
    throw v5

    .line 2143
    :pswitch_159
    :try_start_159
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2144
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2148
    .restart local v13       #rowId:J
    const/4 v5, 0x2

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2149
    .local v18, currentFancyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2150
    .local v16, bestName:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 2152
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2153
    .local v22, newValues:Landroid/content/ContentValues;
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-int v6, v13

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2155
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 2156
    .restart local v25       #volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 2157
    .restart local v24       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1ff
    .catchall {:try_start_159 .. :try_end_1ff} :catchall_152

    goto/16 :goto_b1

    .line 2123
    nop

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_159
    .end packed-switch
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .registers 12
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const-string v6, "audio_id="

    const-string v5, "_id="

    const-string v2, "audio_genres"

    .line 1530
    const/4 v0, 0x0

    .line 1531
    .local v0, where:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_2aa

    .line 1623
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1533
    :sswitch_29
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    :goto_4a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a6

    .line 1629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a2

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 1637
    :goto_75
    return-void

    .line 1538
    .restart local p0
    :sswitch_76
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_4a

    .line 1542
    :sswitch_7b
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1544
    goto :goto_4a

    .line 1547
    .restart local p0
    :sswitch_9d
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1549
    goto :goto_4a

    .line 1552
    .restart local p0
    :sswitch_bf
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    goto/16 :goto_4a

    .line 1558
    .restart local p0
    :sswitch_f6
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    goto/16 :goto_4a

    .line 1563
    .restart local p0
    :sswitch_119
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND playlists_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    goto/16 :goto_4a

    .line 1569
    .restart local p0
    :sswitch_150
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_4a

    .line 1573
    :sswitch_156
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    goto/16 :goto_4a

    .line 1578
    .restart local p0
    :sswitch_179
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1580
    goto/16 :goto_4a

    .line 1583
    .restart local p0
    :sswitch_19c
    const-string v1, "audio_genres"

    iput-object v2, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND audio_id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1586
    goto/16 :goto_4a

    .line 1589
    .restart local p0
    :sswitch_1d3
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_4a

    .line 1593
    :sswitch_1d9
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    goto/16 :goto_4a

    .line 1598
    .restart local p0
    :sswitch_1fc
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    goto/16 :goto_4a

    .line 1603
    .restart local p0
    :sswitch_21f
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1606
    goto/16 :goto_4a

    .line 1609
    .restart local p0
    :sswitch_256
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1611
    goto/16 :goto_4a

    .line 1614
    .restart local p0
    :sswitch_279
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_4a

    .line 1618
    :sswitch_27f
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1620
    goto/16 :goto_4a

    .line 1632
    :cond_2a2
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_75

    .line 1635
    :cond_2a6
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_75

    .line 1531
    :sswitch_data_2aa
    .sparse-switch
        0x2 -> :sswitch_29
        0x64 -> :sswitch_76
        0x65 -> :sswitch_7b
        0x66 -> :sswitch_9d
        0x67 -> :sswitch_bf
        0x68 -> :sswitch_f6
        0x69 -> :sswitch_119
        0x6a -> :sswitch_150
        0x6b -> :sswitch_156
        0x6c -> :sswitch_179
        0x6d -> :sswitch_19c
        0x6e -> :sswitch_1d3
        0x6f -> :sswitch_1d9
        0x70 -> :sswitch_1fc
        0x71 -> :sswitch_21f
        0x78 -> :sswitch_256
        0xc8 -> :sswitch_279
        0xc9 -> :sswitch_27f
    .end sparse-switch
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 48
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 1263
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v37

    .line 1266
    .local v37, match:I
    const/16 v5, 0x1f4

    move/from16 v0, v37

    move v1, v5

    if-ne v0, v1, :cond_23

    .line 1267
    const-string v5, "volume"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 1268
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v5

    .line 1479
    .end local p0
    :goto_22
    return-object v5

    .line 1271
    .restart local p0
    :cond_23
    const/16 v38, 0x0

    .line 1272
    .local v38, newUri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v34

    .line 1273
    .local v34, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v34, :cond_4e

    const/16 v5, 0x12c

    move/from16 v0, v37

    move v1, v5

    if-eq v0, v1, :cond_4e

    .line 1274
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1277
    :cond_4e
    const/16 v5, 0x12c

    move/from16 v0, v37

    move v1, v5

    if-ne v0, v1, :cond_7d

    const/4 v5, 0x0

    move-object v6, v5

    .line 1279
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_57
    if-nez p2, :cond_5e

    .line 1280
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct/range {p2 .. p2}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    .restart local p2
    :cond_5e
    sparse-switch v37, :sswitch_data_4ea

    .line 1476
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1277
    :cond_7d
    invoke-virtual/range {v34 .. v34}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v6, v5

    goto :goto_57

    .line 1285
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_83
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v7, ".jpg"

    const-string v8, "DCIM/Camera"

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v44

    .line 1287
    .local v44, values:Landroid/content/ContentValues;
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1288
    const-string v5, "_data"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1289
    .local v33, data:Ljava/lang/String;
    const-string v5, "_display_name"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c6

    .line 1290
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1292
    :cond_c6
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1293
    const-string v5, "images"

    const-string v7, "name"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1295
    .local v40, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .end local v33           #data:Ljava/lang/String;
    .end local v44           #values:Landroid/content/ContentValues;
    :cond_f6
    :goto_f6
    move-object/from16 v5, v38

    .line 1479
    goto/16 :goto_22

    .line 1303
    .end local v40           #rowId:J
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    :sswitch_fa
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v7, ".jpg"

    const-string v8, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v44

    .line 1304
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "thumbnails"

    const-string v7, "name"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1305
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1306
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto :goto_f6

    .line 1318
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    :sswitch_138
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1322
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "artist"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    .line 1323
    .local v42, so:Ljava/lang/Object;
    if-nez v42, :cond_283

    const-string v5, ""

    move-object v10, v5

    .line 1324
    .local v10, s:Ljava/lang/String;
    :goto_14f
    const-string v5, "artist"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object v15, v0

    .line 1327
    .local v15, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v5, "_data"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1328
    .local v12, path:Ljava/lang/String;
    monitor-enter v15

    .line 1329
    :try_start_166
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    .line 1330
    .local v43, temp:Ljava/lang/Long;
    if-nez v43, :cond_28a

    .line 1331
    const-string v7, "artists"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object v11, v10

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v30

    .line 1336
    .local v30, artistRowId:J
    :goto_17f
    monitor-exit v15
    :try_end_180
    .catchall {:try_start_166 .. :try_end_180} :catchall_290

    .line 1337
    move-object/from16 v25, v10

    .line 1340
    .local v25, artist:Ljava/lang/String;
    const-string v5, "album"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    .line 1341
    if-nez v42, :cond_293

    const-string v5, ""

    move-object v10, v5

    .line 1342
    :goto_190
    const-string v5, "album"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v26, v0

    .line 1345
    .local v26, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v26

    .line 1346
    const/4 v5, 0x0

    const/16 v7, 0x2f

    :try_start_1a2
    invoke-virtual {v12, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v12, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v24

    .line 1347
    .local v24, albumhash:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1348
    .local v22, cacheName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #temp:Ljava/lang/Long;
    check-cast v43, Ljava/lang/Long;

    .line 1349
    .restart local v43       #temp:Ljava/lang/Long;
    if-nez v43, :cond_29a

    .line 1350
    const-string v18, "albums"

    const-string v19, "album_key"

    const-string v20, "album"

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v21, v10

    move-object/from16 v23, v12

    move-object/from16 v27, p1

    invoke-direct/range {v16 .. v27}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v28

    .line 1355
    .local v28, albumRowId:J
    :goto_1e2
    monitor-exit v26
    :try_end_1e3
    .catchall {:try_start_1a2 .. :try_end_1e3} :catchall_2a0

    .line 1357
    const-string v5, "artist_id"

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v5, "album_id"

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v5, "title"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1360
    .local v42, so:Ljava/lang/String;
    if-nez v42, :cond_2a3

    const-string v5, ""

    move-object v10, v5

    .line 1361
    :goto_213
    const-string v5, "title_key"

    invoke-static {v10}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v5, "title"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1365
    const-string v5, "title"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v5, "_data"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1368
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1370
    const-string v5, "audio_meta"

    const-string v7, "duration"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1371
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1323
    .end local v10           #s:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v24           #albumhash:I
    .end local v25           #artist:Ljava/lang/String;
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v28           #albumRowId:J
    .end local v30           #artistRowId:J
    .end local v40           #rowId:J
    .end local v43           #temp:Ljava/lang/Long;
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .local v42, so:Ljava/lang/Object;
    .restart local p0
    :cond_283
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto/16 :goto_14f

    .line 1334
    .restart local v10       #s:Ljava/lang/String;
    .restart local v12       #path:Ljava/lang/String;
    .restart local v15       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v43       #temp:Ljava/lang/Long;
    :cond_28a
    :try_start_28a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .restart local v30       #artistRowId:J
    goto/16 :goto_17f

    .line 1336
    .end local v30           #artistRowId:J
    .end local v43           #temp:Ljava/lang/Long;
    :catchall_290
    move-exception v5

    monitor-exit v15
    :try_end_292
    .catchall {:try_start_28a .. :try_end_292} :catchall_290

    throw v5

    .line 1341
    .restart local v25       #artist:Ljava/lang/String;
    .restart local v30       #artistRowId:J
    .restart local v43       #temp:Ljava/lang/Long;
    :cond_293
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto/16 :goto_190

    .line 1353
    .restart local v22       #cacheName:Ljava/lang/String;
    .restart local v24       #albumhash:I
    .restart local v26       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_29a
    :try_start_29a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .restart local v28       #albumRowId:J
    goto/16 :goto_1e2

    .line 1355
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v24           #albumhash:I
    .end local v28           #albumRowId:J
    .end local v43           #temp:Ljava/lang/Long;
    :catchall_2a0
    move-exception v5

    monitor-exit v26
    :try_end_2a2
    .catchall {:try_start_29a .. :try_end_2a2} :catchall_2a0

    throw v5

    .line 1360
    .restart local v22       #cacheName:Ljava/lang/String;
    .restart local v24       #albumhash:I
    .restart local v28       #albumRowId:J
    .local v42, so:Ljava/lang/String;
    .restart local v43       #temp:Ljava/lang/Long;
    :cond_2a3
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto/16 :goto_213

    .line 1378
    .end local v10           #s:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v24           #albumhash:I
    .end local v25           #artist:Ljava/lang/String;
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v28           #albumRowId:J
    .end local v30           #artistRowId:J
    .end local v42           #so:Ljava/lang/String;
    .end local v43           #temp:Ljava/lang/Long;
    .end local v44           #values:Landroid/content/ContentValues;
    :sswitch_2aa
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1379
    .local v32, audioId:Ljava/lang/Long;
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1380
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "audio_id"

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    const-string v5, "audio_playlists_map"

    const-string v7, "genre_id"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1382
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1383
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1389
    .end local v32           #audioId:Ljava/lang/Long;
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local p0
    :sswitch_2ed
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1390
    .restart local v32       #audioId:Ljava/lang/Long;
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1391
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "audio_id"

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1392
    const-string v5, "audio_playlists_map"

    const-string v7, "playlist_id"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1394
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1395
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1401
    .end local v32           #audioId:Ljava/lang/Long;
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local p0
    :sswitch_330
    const-string v5, "audio_genres"

    const-string v7, "audio_id"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1402
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1403
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1409
    .end local v40           #rowId:J
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    :sswitch_35b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 1410
    .local v36, genreId:Ljava/lang/Long;
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1411
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "genre_id"

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1412
    const-string v5, "audio_genres_map"

    const-string v7, "genre_id"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1413
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1414
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1420
    .end local v36           #genreId:Ljava/lang/Long;
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local p0
    :sswitch_39e
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1421
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1422
    const-string v5, "audio_playlists"

    const-string v7, "name"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1423
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1424
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1431
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    :sswitch_3e6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 1432
    .local v39, playlistId:Ljava/lang/Long;
    new-instance v44, Landroid/content/ContentValues;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1433
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "playlist_id"

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1434
    const-string v5, "audio_playlists_map"

    const-string v7, "playlist_id"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1436
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1437
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1443
    .end local v39           #playlistId:Ljava/lang/Long;
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local p0
    :sswitch_429
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    const-string v7, ".3gp"

    const-string v8, "video"

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v44

    .line 1444
    .restart local v44       #values:Landroid/content/ContentValues;
    const-string v5, "_data"

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1445
    .restart local v33       #data:Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1446
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1447
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v44

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1448
    const-string v5, "video"

    const-string v7, "artist"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1449
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1450
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1456
    .end local v33           #data:Ljava/lang/String;
    .end local v40           #rowId:J
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    :sswitch_493
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move v5, v0

    if-eqz v5, :cond_4a2

    .line 1457
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "no internal album art allowed"

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1459
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4a2
    const/16 v44, 0x0

    .line 1461
    .restart local v44       #values:Landroid/content/ContentValues;
    const/4 v5, 0x0

    :try_start_4a5
    const-string v7, ""

    const-string v8, "albumthumbs"

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_4b3
    .catch Ljava/lang/IllegalStateException; {:try_start_4a5 .. :try_end_4b3} :catch_4d1

    move-result-object v44

    .line 1466
    :goto_4b4
    const-string v5, "album_art"

    const-string v7, "_data"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v40

    .line 1467
    .restart local v40       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v40, v7

    if-lez v5, :cond_f6

    .line 1468
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_f6

    .line 1462
    .end local v40           #rowId:J
    :catch_4d1
    move-exception v5

    move-object/from16 v35, v5

    .line 1464
    .local v35, ex:Ljava/lang/IllegalStateException;
    move-object/from16 v44, p2

    goto :goto_4b4

    .line 1473
    .end local v35           #ex:Ljava/lang/IllegalStateException;
    .end local v44           #values:Landroid/content/ContentValues;
    :sswitch_4d7
    const-string v5, "name"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_22

    .line 1283
    nop

    :sswitch_data_4ea
    .sparse-switch
        0x1 -> :sswitch_83
        0x3 -> :sswitch_fa
        0x64 -> :sswitch_138
        0x66 -> :sswitch_2aa
        0x68 -> :sswitch_2ed
        0x6a -> :sswitch_330
        0x6c -> :sswitch_35b
        0x6e -> :sswitch_39e
        0x6f -> :sswitch_3e6
        0x70 -> :sswitch_3e6
        0x77 -> :sswitch_493
        0xc8 -> :sswitch_429
        0x12c -> :sswitch_4d7
    .end sparse-switch
.end method

.method private makeThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)V
    .registers 10
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 1884
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v2

    .line 1885
    :try_start_3
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1888
    monitor-exit v2

    .line 1912
    :goto_c
    return-void

    .line 1891
    :cond_d
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1892
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_34

    .line 1894
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 1895
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1896
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 1897
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 1898
    iput-object p5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 1905
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1906
    :try_start_24
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_37

    .line 1910
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1911
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 1892
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3

    .line 1907
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3
.end method

.method private makeThumb(Lcom/android/providers/media/MediaProvider$ThumbData;)V
    .registers 11
    .parameter "d"

    .prologue
    const/16 v8, 0x140

    const/4 v7, 0x1

    .line 2019
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 2021
    .local v1, compressed:[B
    if-nez v1, :cond_10

    .line 2070
    :cond_f
    :goto_f
    return-void

    .line 2025
    :cond_10
    const/4 v0, 0x0

    .line 2026
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 2030
    .local v2, need_to_recompress:Z
    :try_start_12
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2031
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2032
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2033
    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2037
    :goto_22
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v5, v8, :cond_2a

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v8, :cond_60

    .line 2038
    :cond_2a
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2039
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2040
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3c} :catch_3d

    goto :goto_22

    .line 2057
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_3d
    move-exception v5

    .line 2060
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_42

    if-eqz v0, :cond_f

    .line 2064
    :cond_42
    iget-object v5, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v6, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    iget-object v8, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 2066
    .local v4, out:Landroid/net/Uri;
    if-eqz v4, :cond_f

    .line 2067
    invoke-direct {p0, v2, v4, v1, v0}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_f

    .line 2043
    .end local v4           #out:Landroid/net/Uri;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_60
    :try_start_60
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v5, v7, :cond_66

    .line 2046
    const/4 v2, 0x0

    goto :goto_3e

    .line 2049
    :cond_66
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2050
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2051
    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2053
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 2054
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_81} :catch_3d

    move-result-object v0

    goto :goto_3e
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 750
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 751
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 752
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 756
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from audio_meta where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 16
    .parameter "db"
    .parameter "tableName"

    .prologue
    const-string v0, "_id"

    const-string v0, "_data"

    .line 772
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 774
    const/4 v0, 0x2

    :try_start_8
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 775
    .local v2, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_5e

    move-result-object v8

    .line 777
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 778
    .local v11, idColumnIndex:I
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 779
    .local v10, dataColumnIndex:I
    :goto_2b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 780
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 781
    .local v9, data:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v13, values:Landroid/content/ContentValues;
    invoke-static {v9, v13}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 783
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 784
    .local v12, rowId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v13, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_1f .. :try_end_58} :catchall_59

    goto :goto_2b

    .line 787
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataColumnIndex:I
    .end local v11           #idColumnIndex:I
    .end local v12           #rowId:I
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .line 791
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_5e
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 787
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataColumnIndex:I
    .restart local v11       #idColumnIndex:I
    :cond_63
    :try_start_63
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 789
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_5e

    .line 791
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 793
    return-void
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .registers 10
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/16 v3, 0x4c

    const-string v5, "images"

    const-string v4, " to "

    .line 327
    if-eq p3, v3, :cond_30

    .line 328
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 331
    :cond_30
    if-le p2, p3, :cond_60

    .line 332
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 337
    :cond_60
    const/16 v0, 0x3f

    if-ge p2, v0, :cond_177

    .line 339
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading media database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    const-string v0, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v0, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    const-string v0, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    const-string v0, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v0, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v0, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string v0, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v0, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string v0, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const-string v0, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v0, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,drm_type INTEGER,drm_original_type TEXT,drm_cid TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v0, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v0, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,drm_type INTEGER,drm_original_type TEXT,drm_cid TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    const-string v0, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    const-string v0, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    const-string v0, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 AND (drm_type=0 OR drm_type is null) GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    const-string v0, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v0, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    if-nez p1, :cond_16d

    .line 489
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 502
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 524
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 539
    const-string v0, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    const-string v0, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 552
    :cond_16d
    const-string v0, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,drm_type INTEGER,drm_original_type TEXT,drm_cid TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 590
    :cond_177
    const/16 v0, 0x40

    if-ge p2, v0, :cond_180

    .line 592
    const-string v0, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    :cond_180
    const/16 v0, 0x41

    if-ge p2, v0, :cond_189

    .line 597
    const-string v0, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    :cond_189
    const/16 v0, 0x42

    if-ge p2, v0, :cond_192

    .line 601
    const-string v0, "images"

    invoke-static {p0, v5}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 604
    :cond_192
    const/16 v0, 0x43

    if-ge p2, v0, :cond_1a0

    .line 606
    const-string v0, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    const-string v0, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 610
    :cond_1a0
    const/16 v0, 0x44

    if-ge p2, v0, :cond_1b3

    .line 612
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 614
    const-string v0, "video"

    invoke-static {p0, v0}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 617
    :cond_1b3
    const/16 v0, 0x45

    if-ge p2, v0, :cond_1bc

    .line 618
    const-string v0, "images"

    invoke-static {p0, v5}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 621
    :cond_1bc
    const/16 v0, 0x46

    if-ge p2, v0, :cond_1c5

    .line 623
    const-string v0, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    :cond_1c5
    const/16 v0, 0x47

    if-ge p2, v0, :cond_1ce

    .line 633
    const-string v0, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    :cond_1ce
    const/16 v0, 0x48

    if-ge p2, v0, :cond_1e9

    .line 642
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 644
    const-string v0, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 652
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 655
    :cond_1e9
    const/16 v0, 0x49

    if-ge p2, v0, :cond_206

    .line 659
    const-string v0, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 661
    const-string v0, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    const-string v0, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    const-string v0, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 667
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 671
    :cond_206
    const/16 v0, 0x4a

    if-ge p2, v0, :cond_214

    .line 676
    const-string v0, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string v0, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    :cond_214
    const/16 v0, 0x4b

    if-ge p2, v0, :cond_222

    .line 728
    const-string v0, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 729
    const-string v0, "DELETE FROM albums"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    :cond_222
    if-ge p2, v3, :cond_233

    .line 735
    const-string v0, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    const-string v0, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string v0, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    :cond_233
    return-void
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 18
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 805
    const/4 v8, 0x3

    :try_start_4
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "_data"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "_display_name"

    aput-object v10, v8, v9

    .line 806
    .local v8, columns:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_7d

    move-result-object v8

    .line 808
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_28
    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 809
    .local v12, idColumnIndex:I
    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 810
    .local v10, dataColumnIndex:I
    const-string v9, "_display_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 811
    .local v11, displayNameIndex:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v13, values:Landroid/content/ContentValues;
    :cond_3f
    :goto_3f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 813
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 814
    .local v9, displayName:Ljava/lang/String;
    if-nez v9, :cond_3f

    .line 815
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 816
    .local v9, data:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 817
    invoke-static {v9, v13}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 818
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 819
    .local v9, rowId:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #rowId:I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v9

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_28 .. :try_end_77} :catchall_78

    goto :goto_3f

    .line 823
    .end local v10           #dataColumnIndex:I
    .end local v11           #displayNameIndex:I
    .end local v12           #idColumnIndex:I
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_78
    move-exception p1

    .end local p1
    :try_start_79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 827
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_7d
    move-exception p1

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 823
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataColumnIndex:I
    .restart local v11       #displayNameIndex:I
    .restart local v12       #idColumnIndex:I
    .restart local v13       #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_82
    :try_start_82
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_7d

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 829
    return-void
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .registers 12
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    const-string v6, "error creating file"

    .line 1993
    const/4 v2, 0x0

    .line 1995
    .local v2, success:Z
    :try_start_4
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1997
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_27

    .line 2000
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 2001
    const/4 v2, 0x1

    .line 2006
    :goto_16
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_30
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_3a

    .line 2012
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_19
    if-nez v2, :cond_26

    .line 2014
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2016
    :cond_26
    return-void

    .line 2003
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_27
    :try_start_27
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2e} :catch_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_3a

    move-result v2

    goto :goto_16

    .line 2007
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 2008
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2009
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 2010
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1224
    sget-object v6, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1225
    .local v4, match:I
    const/16 v6, 0x12c

    if-ne v4, v6, :cond_f

    .line 1226
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    .line 1247
    :goto_e
    return v6

    .line 1228
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 1229
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_2e

    .line 1230
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1233
    :cond_2e
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1234
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1235
    const/4 v5, 0x0

    .line 1237
    .local v5, numInserted:I
    :try_start_36
    array-length v3, p2

    .line 1238
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_38
    if-ge v2, v3, :cond_42

    .line 1239
    aget-object v6, p2, v2

    invoke-direct {p0, p1, v6}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1241
    :cond_42
    move v5, v3

    .line 1242
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_57

    .line 1244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1246
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v6, v5

    .line 1247
    goto :goto_e

    .line 1244
    .end local v2           #i:I
    .end local v3           #len:I
    :catchall_57
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v5, 0x0

    .line 1642
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1645
    .local v3, match:I
    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_15

    .line 1646
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v4, :cond_11

    .line 1647
    const/4 v4, 0x0

    .line 1681
    :goto_10
    return v4

    .line 1649
    :cond_11
    iput-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 1650
    const/4 v4, 0x1

    goto :goto_10

    .line 1653
    :cond_15
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_70

    .line 1654
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 1655
    .local v1, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v1, :cond_38

    .line 1656
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1659
    :cond_38
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1661
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v4

    .line 1662
    :try_start_3f
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 1663
    packed-switch v3, :pswitch_data_76

    .line 1670
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1674
    .local v0, count:I
    :goto_53
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1675
    monitor-exit v4

    .end local v1           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_60
    move v4, v0

    .line 1681
    goto :goto_10

    .line 1666
    .end local v0           #count:I
    .restart local v1       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_62
    const-string v5, "audio_meta"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1668
    .restart local v0       #count:I
    goto :goto_53

    .line 1675
    .end local v0           #count:I
    :catchall_6d
    move-exception v5

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_6d

    throw v5

    .line 1677
    .end local v1           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_70
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    .line 1678
    const/4 v0, 0x1

    .restart local v0       #count:I
    goto :goto_60

    .line 1663
    nop

    :pswitch_data_76
    .packed-switch 0x64
        :pswitch_62
        :pswitch_62
    .end packed-switch
.end method

.method getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;
    .registers 19
    .parameter "db"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 1958
    const/4 v10, 0x0

    .line 1961
    .local v10, out:Landroid/net/Uri;
    if-eqz p4, :cond_2f

    .line 1962
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1964
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1965
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1966
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1967
    .local v6, albumart_path:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1968
    move-object/from16 v10, p4

    .line 1971
    .end local v6           #albumart_path:Ljava/lang/String;
    :cond_2b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1986
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2e
    :goto_2e
    return-object v10

    .line 1973
    :cond_2f
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1974
    .local v9, initialValues:Landroid/content/ContentValues;
    const-string v0, "album_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1976
    const/4 v0, 0x0

    :try_start_3e
    const-string v1, ""

    const-string v2, "albumthumbs"

    invoke-direct {p0, v0, v9, v1, v2}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 1977
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "album_art"

    const-string v1, "_data"

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1978
    .local v11, rowId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_2e

    .line 1979
    sget-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_59} :catch_5b

    move-result-object v10

    goto :goto_2e

    .line 1981
    .end local v11           #rowId:J
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_5b
    move-exception v0

    move-object v8, v0

    .line 1982
    .local v8, ex:Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "error creating album thumb file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1149
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_4a

    .line 1194
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :sswitch_13
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1156
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 1157
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1158
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1159
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    move-object v0, v7

    .line 1192
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mimeType:Ljava/lang/String;
    :goto_30
    return-object v0

    .line 1167
    :sswitch_31
    const-string v0, "vnd.android.cursor.dir/image"

    goto :goto_30

    .line 1169
    :sswitch_34
    const-string v0, "image/jpeg"

    goto :goto_30

    .line 1175
    :sswitch_37
    const-string v0, "vnd.android.cursor.dir/audio"

    goto :goto_30

    .line 1179
    :sswitch_3a
    const-string v0, "vnd.android.cursor.dir/genre"

    goto :goto_30

    .line 1182
    :sswitch_3d
    const-string v0, "vnd.android.cursor.item/genre"

    goto :goto_30

    .line 1185
    :sswitch_40
    const-string v0, "vnd.android.cursor.dir/playlist"

    goto :goto_30

    .line 1188
    :sswitch_43
    const-string v0, "vnd.android.cursor.item/playlist"

    goto :goto_30

    .line 1192
    :sswitch_46
    const-string v0, "vnd.android.cursor.dir/video"

    goto :goto_30

    .line 1149
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_13
        0x3 -> :sswitch_31
        0x4 -> :sswitch_34
        0x5 -> :sswitch_31
        0x64 -> :sswitch_37
        0x65 -> :sswitch_13
        0x66 -> :sswitch_3a
        0x67 -> :sswitch_3d
        0x68 -> :sswitch_40
        0x69 -> :sswitch_43
        0x6a -> :sswitch_3a
        0x6b -> :sswitch_3d
        0x6c -> :sswitch_37
        0x6d -> :sswitch_13
        0x6e -> :sswitch_40
        0x6f -> :sswitch_43
        0x70 -> :sswitch_37
        0x71 -> :sswitch_13
        0x79 -> :sswitch_37
        0xc8 -> :sswitch_46
        0xc9 -> :sswitch_13
        0xca -> :sswitch_46
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 1253
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1254
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_12

    .line 1255
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1258
    :cond_12
    return-object v0
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "one"
    .parameter "two"

    .prologue
    const/16 v4, 0x2c

    .line 2197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_6c

    .line 2198
    move-object v1, p1

    .line 2209
    .local v1, name:Ljava/lang/String;
    :goto_d
    const-string v2, ", the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, ",the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, ", an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, ",an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, ", a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, ",a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2212
    :cond_3d
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2213
    .local v0, fix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2217
    .end local v0           #fix:Ljava/lang/String;
    :cond_6b
    return-object v1

    .line 2201
    .end local v1           #name:Ljava/lang/String;
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7c

    .line 2202
    move-object v1, p1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_d

    .line 2204
    .end local v1           #name:Ljava/lang/String;
    :cond_7c
    move-object v1, p2

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_d
.end method

.method public onCreate()Z
    .registers 12

    .prologue
    const/4 v8, 0x5

    const-string v10, "artist_key"

    const-string v9, "album_key"

    const-string v7, "album"

    const-string v6, "artist"

    .line 254
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "audio.album_id AS _id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v4, "album"

    invoke-virtual {v3, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "album_key"

    const-string v4, "album_key"

    invoke-virtual {v3, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "minyear"

    const-string v5, "MIN(year) AS minyear"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "maxyear"

    const-string v5, "MAX(year) AS maxyear"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v4, "artist"

    invoke-virtual {v3, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "artist_id"

    const-string v5, "artist"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "artist_key"

    const-string v4, "artist_key"

    invoke-virtual {v3, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "numsongs"

    const-string v5, "count(*) AS numsongs"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v4, "album_art"

    const-string v5, "album_art._data AS album_art"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    aget-object v4, v4, v8

    const-string v5, "%1"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030002

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 273
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 274
    const-string v3, "internal"

    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, state:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, mediaDir:Ljava/io/File;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 290
    :cond_d3
    const-string v3, "external"

    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 293
    :cond_d8
    new-instance v3, Lcom/android/providers/media/MediaProvider$Worker;

    const-string v4, "album thumbs"

    invoke-direct {v3, p0, v4}, Lcom/android/providers/media/MediaProvider$Worker;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorker:Lcom/android/providers/media/MediaProvider$Worker;

    .line 294
    new-instance v3, Lcom/android/providers/media/MediaProvider$2;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mThumbWorker:Lcom/android/providers/media/MediaProvider$Worker;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 312
    const/4 v3, 0x1

    return v3
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1808
    const/4 v12, 0x0

    .line 1810
    .local v12, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v12

    .line 1836
    return-object v12

    .line 1811
    :catch_6
    move-exception v11

    .line 1812
    .local v11, ex:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_74

    .line 1814
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v10

    .line 1815
    .local v10, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v10, :cond_18

    .line 1816
    throw v11

    .line 1818
    :cond_18
    invoke-virtual {v10}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1819
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1820
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1821
    .local v8, albumid:I
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1823
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1827
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1828
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_71

    .line 1829
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1830
    .local v4, audiopath:Ljava/lang/String;
    int-to-long v5, v8

    move-object v2, p0

    move-object v3, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->makeThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)V

    .line 1832
    .end local v4           #audiopath:Ljava/lang/String;
    :cond_71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1834
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #albumid:I
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_74
    throw v11
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 30
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 872
    sget-object v3, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 875
    .local v11, table:I
    const/16 v3, 0x1f4

    if-ne v11, v3, :cond_21

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_16

    .line 877
    const/4 v3, 0x0

    .line 1100
    :goto_15
    return-object v3

    .line 880
    :cond_16
    new-instance v3, Lcom/android/providers/media/MediaScannerCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/providers/media/MediaScannerCursor;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 884
    :cond_21
    const/16 v17, 0x0

    .line 885
    .local v17, groupBy:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v22

    .line 886
    .local v22, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v22, :cond_2b

    .line 887
    const/4 v3, 0x0

    goto :goto_15

    .line 889
    :cond_2b
    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 890
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 892
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sparse-switch v11, :sswitch_data_488

    .line 1092
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL: "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 894
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :sswitch_54
    const-string v3, "images"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 895
    const-string v3, "distinct"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 896
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 900
    :cond_68
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "IMAGE_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v3, "(drm_type=0 OR drm_type is null)"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1095
    :goto_74
    const/16 v18, 0x0

    move-object v12, v5

    move-object v13, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1097
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_96

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_96
    move-object/from16 v3, v21

    .line 1100
    goto/16 :goto_15

    .line 905
    .end local v21           #c:Landroid/database/Cursor;
    :sswitch_9a
    const-string v3, "images"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 906
    const-string v3, "distinct"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 907
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 911
    :cond_ae
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "DRM_IMAGE_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 915
    :sswitch_b6
    const-string v3, "images"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 916
    const-string v3, "distinct"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ca

    .line 917
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 921
    :cond_ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 925
    :sswitch_ec
    const-string v3, "thumbnails"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_74

    .line 929
    :sswitch_f2
    const-string v3, "thumbnails"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 934
    :sswitch_11a
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "AUDIO_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v3, "audio "

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 936
    const-string v3, "(drm_type=0 OR drm_type is null)"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 940
    :sswitch_12d
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "DRM_AUDIO_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v3, "audio "

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 945
    :sswitch_13b
    const-string v3, "audio"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 950
    :sswitch_163
    const-string v3, "audio_genres"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 957
    :sswitch_191
    const-string v3, "audio_genres"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 962
    :sswitch_1b9
    const-string v3, "audio_playlists"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 969
    :sswitch_1e7
    const-string v3, "audio_playlists"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 974
    :sswitch_20f
    const-string v3, "audio_genres"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 978
    :sswitch_216
    const-string v3, "audio_genres"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 983
    :sswitch_23e
    const-string v3, "audio"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN (SELECT audio_id FROM audio_genres_map WHERE genre_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 990
    :sswitch_26c
    const-string v3, "audio"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 995
    :sswitch_294
    const-string v3, "audio_playlists"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 999
    :sswitch_29b
    const-string v3, "audio_playlists"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1004
    :sswitch_2c3
    if-eqz p2, :cond_2e1

    .line 1005
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2c7
    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    move/from16 v0, v23

    move v1, v3

    if-ge v0, v1, :cond_2e1

    .line 1006
    aget-object v3, p2, v23

    const-string v6, "_id"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2de

    .line 1007
    const-string v3, "audio_playlists_map._id AS _id"

    aput-object v3, p2, v23

    .line 1005
    :cond_2de
    add-int/lit8 v23, v23, 0x1

    goto :goto_2c7

    .line 1011
    .end local v23           #i:I
    :cond_2e1
    const-string v3, "audio_playlists_map, audio"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1018
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "new!! AUDIO_PLAYLISTS_ID_MEMBERS"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio._id = audio_id AND (audio.drm_type=0 OR audio.drm_type is null) AND playlist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1026
    :sswitch_310
    const-string v3, "audio"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1031
    :sswitch_338
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "VIDEO_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v3, "video"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1033
    const-string v3, "(drm_type=0 OR drm_type is null)"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1037
    :sswitch_34b
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "DRM_VIDEO_MEDIA query"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v3, "video"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 1042
    :sswitch_359
    const-string v3, "video"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1047
    :sswitch_381
    const-string v3, "artist_info"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 1051
    :sswitch_388
    const-string v3, "artist_info"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1056
    :sswitch_3b0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1057
    .local v20, aid:Ljava/lang/String;
    const-string v3, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_music=1 AND (drm_type=0 OR drm_type is null) AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1062
    const-string v17, "audio.album_id"

    .line 1063
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "numsongs_by_artist"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count(CASE WHEN artist_id=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND (drm_type=0 OR drm_type is null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "numsongs_by_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_74

    .line 1070
    .end local v20           #aid:Ljava/lang/String;
    :sswitch_417
    const-string v3, "album_info"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_74

    .line 1074
    :sswitch_41e
    const-string v3, "album_info"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1079
    :sswitch_446
    const-string v3, "album_art"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 1084
    :sswitch_46e
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Legacy media search Uri used. Please update your code."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_475
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 1088
    invoke-direct/range {v3 .. v11}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_15

    .line 892
    nop

    :sswitch_data_488
    .sparse-switch
        0x1 -> :sswitch_54
        0x2 -> :sswitch_b6
        0x3 -> :sswitch_ec
        0x4 -> :sswitch_f2
        0x5 -> :sswitch_9a
        0x64 -> :sswitch_11a
        0x65 -> :sswitch_13b
        0x66 -> :sswitch_163
        0x67 -> :sswitch_191
        0x68 -> :sswitch_1b9
        0x69 -> :sswitch_1e7
        0x6a -> :sswitch_20f
        0x6b -> :sswitch_216
        0x6c -> :sswitch_23e
        0x6d -> :sswitch_26c
        0x6e -> :sswitch_294
        0x6f -> :sswitch_29b
        0x70 -> :sswitch_2c3
        0x71 -> :sswitch_310
        0x72 -> :sswitch_381
        0x73 -> :sswitch_388
        0x74 -> :sswitch_417
        0x75 -> :sswitch_41e
        0x76 -> :sswitch_3b0
        0x78 -> :sswitch_446
        0x79 -> :sswitch_12d
        0xc8 -> :sswitch_338
        0xc9 -> :sswitch_359
        0xca -> :sswitch_34b
        0x190 -> :sswitch_46e
        0x191 -> :sswitch_475
        0x192 -> :sswitch_475
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 45
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 1688
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v35

    .line 1690
    .local v35, match:I
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v34

    .line 1691
    .local v34, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v34, :cond_2b

    .line 1692
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1695
    :cond_2b
    invoke-virtual/range {v34 .. v34}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1697
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v39, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v39

    .line 1698
    :try_start_32
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v3, p3

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 1700
    sparse-switch v35, :sswitch_data_1ea

    .line 1790
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 1794
    .local v32, count:I
    :goto_56
    monitor-exit v39
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_186

    .line 1795
    if-lez v32, :cond_69

    .line 1796
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1798
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_69
    return v32

    .line 1704
    .end local v32           #count:I
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_6a
    :try_start_6a
    new-instance v38, Landroid/content/ContentValues;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1707
    .local v38, values:Landroid/content/ContentValues;
    const-string v5, "artist"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1708
    .local v10, artist:Ljava/lang/String;
    if-eqz v10, :cond_b8

    .line 1709
    const-string v5, "artist"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1711
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object v15, v0

    .line 1712
    .local v15, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v15
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_186

    .line 1713
    :try_start_8c
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Long;

    .line 1714
    .local v37, temp:Ljava/lang/Long;
    if-nez v37, :cond_17d

    .line 1715
    const-string v7, "artists"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object v11, v10

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v30

    .line 1720
    .local v30, artistRowId:J
    :goto_a6
    monitor-exit v15
    :try_end_a7
    .catchall {:try_start_8c .. :try_end_a7} :catchall_183

    .line 1721
    :try_start_a7
    const-string v5, "artist_id"

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v30           #artistRowId:J
    .end local v37           #temp:Ljava/lang/Long;
    :cond_b8
    const-string v5, "album"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1726
    .local v36, so:Ljava/lang/String;
    if-eqz v36, :cond_131

    .line 1727
    const-string v5, "_data"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1728
    .local v23, path:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1729
    .local v24, albumHash:I
    if-nez v23, :cond_189

    .line 1731
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "Update without specified path."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :goto_d7
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1736
    .local v21, s:Ljava/lang/String;
    const-string v5, "album"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1738
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v26, v0

    .line 1739
    .local v26, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v26
    :try_end_ea
    .catchall {:try_start_a7 .. :try_end_ea} :catchall_186

    .line 1740
    :try_start_ea
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1741
    .local v22, cacheName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Long;

    .line 1742
    .restart local v37       #temp:Ljava/lang/Long;
    if-nez v37, :cond_1a1

    .line 1743
    const-string v18, "albums"

    const-string v19, "album_key"

    const-string v20, "album"

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v25, v10

    move-object/from16 v27, p1

    invoke-direct/range {v16 .. v27}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v28

    .line 1748
    .local v28, albumRowId:J
    :goto_11f
    monitor-exit v26
    :try_end_120
    .catchall {:try_start_ea .. :try_end_120} :catchall_1a7

    .line 1749
    :try_start_120
    const-string v5, "album_id"

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    .end local v21           #s:Ljava/lang/String;
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #albumHash:I
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v28           #albumRowId:J
    .end local v37           #temp:Ljava/lang/Long;
    :cond_131
    const-string v5, "title_key"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1755
    const-string v5, "title"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1756
    if-eqz v36, :cond_16a

    .line 1757
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1758
    .restart local v21       #s:Ljava/lang/String;
    const-string v5, "title_key"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v5, "title"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1762
    const-string v5, "title"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    .end local v21           #s:Ljava/lang/String;
    :cond_16a
    const-string v5, "audio_meta"

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v38

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_120 .. :try_end_17a} :catchall_186

    move-result v32

    .line 1768
    .restart local v32       #count:I
    goto/16 :goto_56

    .line 1718
    .end local v32           #count:I
    .end local v36           #so:Ljava/lang/String;
    .restart local v15       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v37       #temp:Ljava/lang/Long;
    :cond_17d
    :try_start_17d
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .restart local v30       #artistRowId:J
    goto/16 :goto_a6

    .line 1720
    .end local v30           #artistRowId:J
    .end local v37           #temp:Ljava/lang/Long;
    :catchall_183
    move-exception v5

    monitor-exit v15
    :try_end_185
    .catchall {:try_start_17d .. :try_end_185} :catchall_183

    :try_start_185
    throw v5

    .line 1794
    .end local v10           #artist:Ljava/lang/String;
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v38           #values:Landroid/content/ContentValues;
    :catchall_186
    move-exception v5

    monitor-exit v39
    :try_end_188
    .catchall {:try_start_185 .. :try_end_188} :catchall_186

    throw v5

    .line 1733
    .restart local v10       #artist:Ljava/lang/String;
    .restart local v23       #path:Ljava/lang/String;
    .restart local v24       #albumHash:I
    .restart local v36       #so:Ljava/lang/String;
    .restart local v38       #values:Landroid/content/ContentValues;
    :cond_189
    const/4 v5, 0x0

    const/16 v7, 0x2f

    :try_start_18c
    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, v23

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_19e
    .catchall {:try_start_18c .. :try_end_19e} :catchall_186

    move-result v24

    goto/16 :goto_d7

    .line 1746
    .restart local v21       #s:Ljava/lang/String;
    .restart local v22       #cacheName:Ljava/lang/String;
    .restart local v26       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v37       #temp:Ljava/lang/Long;
    :cond_1a1
    :try_start_1a1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .restart local v28       #albumRowId:J
    goto/16 :goto_11f

    .line 1748
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v28           #albumRowId:J
    .end local v37           #temp:Ljava/lang/Long;
    :catchall_1a7
    move-exception v5

    monitor-exit v26
    :try_end_1a9
    .catchall {:try_start_1a1 .. :try_end_1a9} :catchall_1a7

    :try_start_1a9
    throw v5

    .line 1774
    .end local v10           #artist:Ljava/lang/String;
    .end local v21           #s:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #albumHash:I
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #so:Ljava/lang/String;
    .end local v38           #values:Landroid/content/ContentValues;
    :sswitch_1aa
    new-instance v38, Landroid/content/ContentValues;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1778
    .restart local v38       #values:Landroid/content/ContentValues;
    const-string v5, "bucket_id"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1779
    const-string v5, "bucket_display_name"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1781
    const-string v5, "_data"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1782
    .local v33, data:Ljava/lang/String;
    if-eqz v33, :cond_1d5

    .line 1783
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1785
    :cond_1d5
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v38

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1a9 .. :try_end_1e7} :catchall_186

    move-result v32

    .line 1788
    .restart local v32       #count:I
    goto/16 :goto_56

    .line 1700
    :sswitch_data_1ea
    .sparse-switch
        0x1 -> :sswitch_1aa
        0x2 -> :sswitch_1aa
        0x64 -> :sswitch_6a
        0x65 -> :sswitch_6a
        0xc8 -> :sswitch_1aa
        0xc9 -> :sswitch_1aa
    .end sparse-switch
.end method
