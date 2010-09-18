.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final BYT_RINGTONE_TITLE:Ljava/lang/String; = "Bouygues Indian"

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DRM_PROJECTION:[Ljava/lang/String; = null

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final RINGTONE_TITLE:Ljava/lang/String; = "Calling Trip"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final mOpCode:Ljava/lang/String;


# instance fields
.field private audioVector:Ljava/util/Vector;

.field private filePathVector:Ljava/util/Vector;

.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmAudioUri:Landroid/net/Uri;

.field private mDrmImagesUri:Landroid/net/Uri;

.field private mDrmVideoUri:Landroid/net/Uri;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private modifiedDateVector:Ljava/util/Vector;

.field private videoVector:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    .line 105
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 110
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 120
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 130
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 140
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 154
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->DRM_PROJECTION:[Ljava/lang/String;

    .line 175
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->mOpCode:Ljava/lang/String;

    .line 178
    const/16 v0, 0x7e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->videoVector:Ljava/util/Vector;

    .line 324
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->audioVector:Ljava/util/Vector;

    .line 325
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->filePathVector:Ljava/util/Vector;

    .line 326
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->modifiedDateVector:Ljava/util/Vector;

    .line 350
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 399
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 384
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 385
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 386
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 387
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 389
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 390
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Landroid/media/MediaScanner;->mOpCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->audioVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->videoVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->filePathVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->modifiedDateVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 22
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1598
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1599
    .local v8, entryLength:I
    :goto_4
    if-lez v8, :cond_19

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_19

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 1602
    :cond_19
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1e

    const/4 v13, 0x0

    .line 1654
    :goto_1d
    return v13

    .line 1603
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1607
    :cond_2d
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1608
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_57

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_9d

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_9d

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_9d

    :cond_57
    const/4 v13, 0x1

    move v9, v13

    .line 1611
    .local v9, fullPath:Z
    :goto_59
    if-nez v9, :cond_72

    .line 1612
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1617
    :cond_72
    const/4 v3, 0x0

    .line 1620
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 1622
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1623
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_81
    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    .line 1624
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1625
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1627
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 1628
    move-object v3, v5

    .line 1639
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #path:Ljava/lang/String;
    :cond_99
    if-nez v3, :cond_ae

    .line 1640
    const/4 v13, 0x0

    goto :goto_1d

    .line 1608
    .end local v3           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v4           #bestMatchLength:I
    .end local v9           #fullPath:Z
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9d
    const/4 v13, 0x0

    move v9, v13

    goto :goto_59

    .line 1632
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v4       #bestMatchLength:I
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v9       #fullPath:Z
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;
    :cond_a0
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1633
    .local v11, matchLength:I
    if-le v11, v4, :cond_81

    .line 1634
    move-object v3, v5

    .line 1635
    move v4, v11

    goto :goto_81

    .line 1645
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v11           #matchLength:I
    .end local v12           #path:Ljava/lang/String;
    :cond_ae
    :try_start_ae
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1646
    const-string v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1647
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_da} :catch_dd

    .line 1654
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 1649
    :catch_dd
    move-exception v13

    move-object v7, v13

    .line 1650
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1651
    const/4 v13, 0x0

    goto/16 :goto_1d
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 1386
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1387
    const/4 v1, 0x1

    .line 1390
    :goto_d
    return v1

    .line 1385
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1390
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1497
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1499
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1500
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1501
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1502
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmAudioUri:Landroid/net/Uri;

    .line 1503
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmVideoUri:Landroid/net/Uri;

    .line 1504
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getDrmContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmImagesUri:Landroid/net/Uri;

    .line 1505
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1507
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 1509
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1510
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1512
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 1513
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1515
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1516
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1519
    :cond_60
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1569
    const/4 v10, 0x0

    .line 1570
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1571
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1573
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_43

    if-lez v9, :cond_43

    .line 1574
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1575
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1576
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1577
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1578
    .local v7, backSlash2:I
    if-le v11, v6, :cond_44

    move v2, v11

    .line 1579
    .local v2, start1:I
    :goto_34
    if-le v12, v7, :cond_46

    move v4, v12

    .line 1580
    .local v4, start2:I
    :goto_37
    if-gez v2, :cond_48

    const/4 v2, 0x0

    .line 1581
    :goto_3a
    if-gez v4, :cond_4b

    const/4 v4, 0x0

    .line 1582
    :goto_3d
    sub-int v5, v8, v2

    .line 1583
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4e

    .line 1591
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_43
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_44
    move v2, v6

    .line 1578
    goto :goto_34

    .restart local v2       #start1:I
    :cond_46
    move v4, v7

    .line 1579
    goto :goto_37

    .line 1580
    .restart local v4       #start2:I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1581
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1584
    .restart local v5       #length:I
    :cond_4e
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1585
    add-int/lit8 v10, v10, 0x1

    .line 1586
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 1587
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 1589
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 16
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1439
    iget-object v8, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1441
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 1442
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1443
    .local v0, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v5, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1446
    .local v5, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1448
    .local v1, fileMissing:Z
    iget-boolean v8, v0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v8, :cond_26

    .line 1449
    invoke-direct {p0, v5, p1}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1451
    const/4 v1, 0x1

    .line 1462
    :cond_26
    :goto_26
    if-eqz v1, :cond_c

    .line 1466
    invoke-static {v5}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 1467
    .local v4, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v4, :cond_65

    move v2, v13

    .line 1469
    .local v2, fileType:I
    :goto_2f
    invoke-static {v2}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 1470
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1471
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_data"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v8, "date_modified"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    iget-wide v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9, v7, v12, v12}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c

    .line 1455
    .end local v2           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_58
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v6, testFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_26

    .line 1457
    const/4 v1, 0x1

    goto :goto_26

    .line 1467
    .end local v6           #testFile:Ljava/io/File;
    .restart local v4       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_65
    iget v8, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v2, v8

    goto :goto_2f

    .line 1475
    .restart local v2       #fileType:I
    :cond_69
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    iget-wide v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9, v12, v12}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1476
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 1482
    .end local v0           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v1           #fileMissing:Z
    .end local v2           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #path:Ljava/lang/String;
    :cond_7a
    iget-boolean v8, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v8, :cond_81

    .line 1483
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1486
    :cond_81
    iget v8, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v8, :cond_96

    iget-object v8, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v9, "external"

    invoke-static {v9}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 1487
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1490
    :cond_96
    iput-object v12, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 1491
    iput-object v12, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1492
    iput-object v12, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1493
    iput-object v12, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1494
    return-void
.end method

.method private prescan(Ljava/lang/String;)V
    .registers 19
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1237
    const/4 v14, 0x0

    .line 1238
    .local v14, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1239
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1241
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prescan!! file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    if-nez v2, :cond_a3

    .line 1244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1248
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v2, v0

    if-nez v2, :cond_ac

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1257
    :goto_40
    if-eqz p1, :cond_4f

    .line 1258
    :try_start_42
    const-string v5, "_data=?"

    .line 1259
    const/4 v2, 0x1

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object p1, v16, v2

    .end local v6           #selectionArgs:[Ljava/lang/String;
    .local v16, selectionArgs:[Ljava/lang/String;
    move-object/from16 v6, v16

    .line 1262
    .end local v16           #selectionArgs:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mDrmAudioUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_9c

    move-result-object v14

    .line 1264
    if-eqz v14, :cond_b9

    .line 1266
    :goto_62
    :try_start_62
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1267
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1268
    .local v9, rowId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1269
    .local v11, path:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1271
    .local v12, lastModified:J
    move-object v15, v11

    .line 1272
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v2, v0

    if-eqz v2, :cond_83

    .line 1273
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1275
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v7, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_62 .. :try_end_95} :catchall_96

    goto :goto_62

    .line 1279
    .end local v9           #rowId:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #lastModified:J
    .end local v15           #key:Ljava/lang/String;
    :catchall_96
    move-exception v2

    :try_start_97
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1280
    const/4 v14, 0x0

    .line 1279
    throw v2
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_9c

    .line 1378
    :catchall_9c
    move-exception v2

    if-eqz v14, :cond_a2

    .line 1379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1378
    :cond_a2
    throw v2

    .line 1246
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_2f

    .line 1251
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_40

    .line 1279
    :cond_b5
    :try_start_b5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1280
    const/4 v14, 0x0

    .line 1285
    :cond_b9
    if-eqz p1, :cond_10a

    .line 1286
    const-string v5, "_data=?"

    .line 1291
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mDrmVideoUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_9c

    move-result-object v14

    .line 1293
    if-eqz v14, :cond_110

    .line 1295
    :goto_d0
    :try_start_d0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1296
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1297
    .restart local v9       #rowId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1298
    .restart local v11       #path:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1300
    .restart local v12       #lastModified:J
    move-object v15, v11

    .line 1301
    .restart local v15       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v2, v0

    if-eqz v2, :cond_f1

    .line 1302
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1304
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v7, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catchall {:try_start_d0 .. :try_end_103} :catchall_104

    goto :goto_d0

    .line 1308
    .end local v9           #rowId:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #lastModified:J
    .end local v15           #key:Ljava/lang/String;
    :catchall_104
    move-exception v2

    :try_start_105
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1309
    const/4 v14, 0x0

    .line 1308
    throw v2

    .line 1288
    :cond_10a
    const/4 v5, 0x0

    goto :goto_bd

    .line 1308
    :cond_10c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1309
    const/4 v14, 0x0

    .line 1314
    :cond_110
    if-eqz p1, :cond_170

    .line 1315
    const-string v5, "_data=?"

    .line 1319
    :goto_114
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mDrmImagesUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12a
    .catchall {:try_start_105 .. :try_end_12a} :catchall_9c

    move-result-object v14

    .line 1323
    if-eqz v14, :cond_176

    .line 1325
    :try_start_12d
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1326
    :goto_136
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_172

    .line 1327
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1328
    .restart local v9       #rowId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1329
    .restart local v11       #path:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1331
    .restart local v12       #lastModified:J
    move-object v15, v11

    .line 1332
    .restart local v15       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v2, v0

    if-eqz v2, :cond_157

    .line 1333
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1335
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v7, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_169
    .catchall {:try_start_12d .. :try_end_169} :catchall_16a

    goto :goto_136

    .line 1339
    .end local v9           #rowId:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #lastModified:J
    .end local v15           #key:Ljava/lang/String;
    :catchall_16a
    move-exception v2

    :try_start_16b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1340
    const/4 v14, 0x0

    .line 1339
    throw v2

    .line 1317
    :cond_170
    const/4 v5, 0x0

    goto :goto_114

    .line 1339
    :cond_172
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1340
    const/4 v14, 0x0

    .line 1344
    :cond_176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move v2, v0

    if-eqz v2, :cond_1dc

    .line 1346
    if-eqz p1, :cond_1d6

    .line 1347
    const-string v5, "_data=?"

    .line 1351
    :goto_181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_191
    .catchall {:try_start_16b .. :try_end_191} :catchall_9c

    move-result-object v14

    .line 1353
    if-eqz v14, :cond_1dc

    .line 1355
    :cond_194
    :goto_194
    :try_start_194
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 1356
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1358
    .restart local v11       #path:Ljava/lang/String;
    if-eqz v11, :cond_194

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_194

    .line 1359
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1360
    .restart local v9       #rowId:J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1362
    .restart local v12       #lastModified:J
    move-object v15, v11

    .line 1363
    .restart local v15       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v2, v0

    if-eqz v2, :cond_1bd

    .line 1364
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1366
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v7, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v8, v0

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1cf
    .catchall {:try_start_194 .. :try_end_1cf} :catchall_1d0

    goto :goto_194

    .line 1371
    .end local v9           #rowId:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #lastModified:J
    .end local v15           #key:Ljava/lang/String;
    :catchall_1d0
    move-exception v2

    :try_start_1d1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1372
    const/4 v14, 0x0

    .line 1371
    throw v2

    .line 1349
    :cond_1d6
    const/4 v5, 0x0

    goto :goto_181

    .line 1371
    :cond_1d8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1db
    .catchall {:try_start_1d1 .. :try_end_1db} :catchall_9c

    .line 1372
    const/4 v14, 0x0

    .line 1378
    :cond_1dc
    if-eqz v14, :cond_1e1

    .line 1379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1382
    :cond_1e1
    return-void
.end method

.method private prescanDrmInfo(Ljava/lang/String;I)I
    .registers 15
    .parameter "cid"
    .parameter "tableType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1956
    const/4 v6, 0x0

    .line 1957
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1958
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1960
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->videoVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1961
    iget-object v0, p0, Landroid/media/MediaScanner;->audioVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1962
    iget-object v0, p0, Landroid/media/MediaScanner;->filePathVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1963
    iget-object v0, p0, Landroid/media/MediaScanner;->modifiedDateVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1965
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prescanDrmInfo!! cid =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tableType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9d

    .line 1974
    if-eqz p1, :cond_47

    .line 1976
    :try_start_3e
    const-string v3, "drm_cid=?"

    .line 1977
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .local v11, selectionArgs:[Ljava/lang/String;
    move-object v4, v11

    .line 1979
    .end local v11           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_47
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mDrmAudioUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->DRM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_7e

    move-result-object v6

    .line 1981
    if-eqz v6, :cond_105

    .line 1985
    :goto_54
    :try_start_54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1987
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1988
    .local v10, rowId:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1989
    .local v8, duration:I
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1990
    .local v9, filePath:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1992
    .local v7, dateModified:I
    if-eqz v8, :cond_85

    .line 1994
    const-string v0, "MediaScanner"

    const-string v1, "prescanDrmInfo!! duration is not zero!! audio!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_78

    goto :goto_54

    .line 2008
    .end local v7           #dateModified:I
    .end local v8           #duration:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #rowId:I
    :catchall_78
    move-exception v0

    :try_start_79
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2009
    const/4 v6, 0x0

    .line 2008
    throw v0
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7e

    .line 2062
    :catchall_7e
    move-exception v0

    if-eqz v6, :cond_84

    .line 2064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2062
    :cond_84
    throw v0

    .line 1999
    .restart local v7       #dateModified:I
    .restart local v8       #duration:I
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #rowId:I
    :cond_85
    :try_start_85
    iget-object v0, p0, Landroid/media/MediaScanner;->audioVector:Ljava/util/Vector;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2000
    iget-object v0, p0, Landroid/media/MediaScanner;->filePathVector:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2001
    iget-object v0, p0, Landroid/media/MediaScanner;->modifiedDateVector:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_85 .. :try_end_9c} :catchall_78

    goto :goto_54

    .line 2014
    .end local v7           #dateModified:I
    .end local v8           #duration:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #rowId:I
    :cond_9d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_fa

    .line 2016
    if-eqz p1, :cond_ab

    .line 2018
    :try_start_a2
    const-string v3, "drm_cid=?"

    .line 2019
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .restart local v11       #selectionArgs:[Ljava/lang/String;
    move-object v4, v11

    .line 2022
    .end local v11           #selectionArgs:[Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_ab
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mDrmVideoUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->DRM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b5
    .catchall {:try_start_a2 .. :try_end_b5} :catchall_7e

    move-result-object v6

    .line 2024
    if-eqz v6, :cond_105

    .line 2028
    :goto_b8
    :try_start_b8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 2030
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2031
    .restart local v10       #rowId:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2032
    .restart local v8       #duration:I
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2033
    .restart local v9       #filePath:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2035
    .restart local v7       #dateModified:I
    if-eqz v8, :cond_e2

    .line 2037
    const-string v0, "MediaScanner"

    const-string v1, "prescanDrmInfo!! duration is not zero!! video!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_b8 .. :try_end_db} :catchall_dc

    goto :goto_b8

    .line 2050
    .end local v7           #dateModified:I
    .end local v8           #duration:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #rowId:I
    :catchall_dc
    move-exception v0

    :try_start_dd
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2051
    const/4 v6, 0x0

    .line 2050
    throw v0
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_7e

    .line 2042
    .restart local v7       #dateModified:I
    .restart local v8       #duration:I
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #rowId:I
    :cond_e2
    :try_start_e2
    iget-object v0, p0, Landroid/media/MediaScanner;->videoVector:Ljava/util/Vector;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2043
    iget-object v0, p0, Landroid/media/MediaScanner;->filePathVector:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2044
    iget-object v0, p0, Landroid/media/MediaScanner;->modifiedDateVector:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_f9
    .catchall {:try_start_e2 .. :try_end_f9} :catchall_dc

    goto :goto_b8

    .line 2057
    .end local v7           #dateModified:I
    .end local v8           #duration:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #rowId:I
    :cond_fa
    const/4 v0, 0x0

    .line 2062
    if-eqz v6, :cond_100

    .line 2064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2078
    :cond_100
    :goto_100
    return v0

    .line 2008
    :cond_101
    :try_start_101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_7e

    .line 2009
    const/4 v6, 0x0

    .line 2062
    :cond_105
    :goto_105
    if-eqz v6, :cond_10a

    .line 2064
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2067
    :cond_10a
    iget-object v0, p0, Landroid/media/MediaScanner;->videoVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_11b

    .line 2069
    const-string v0, "MediaScanner"

    const-string v1, "Video!! cids"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v0, 0x1

    goto :goto_100

    .line 2072
    :cond_11b
    iget-object v0, p0, Landroid/media/MediaScanner;->audioVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_12c

    .line 2074
    const-string v0, "MediaScanner"

    const-string v1, "Audio!! cids"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const/4 v0, 0x1

    goto :goto_100

    .line 2077
    :cond_12c
    const-string v0, "MediaScanner"

    const-string v1, "NO!! cids"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/4 v0, 0x0

    goto :goto_100

    .line 2050
    :cond_135
    :try_start_135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_7e

    .line 2051
    const/4 v6, 0x0

    goto :goto_105
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1658
    const/4 v8, 0x0

    .line 1660
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1662
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_56
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_47

    .line 1664
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1665
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1666
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_6f

    .line 1668
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 1669
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1670
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1671
    add-int/lit8 v5, v5, 0x1

    .line 1673
    :cond_42
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_7f

    move-result-object v1

    goto :goto_22

    .line 1676
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #f:Ljava/io/File;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_47
    move-exception v0

    move-object v6, v0

    .line 1677
    .local v6, e:Ljava/io/IOException;
    :goto_49
    :try_start_49
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_56

    .line 1680
    if-eqz v8, :cond_55

    .line 1681
    :try_start_52
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_66

    .line 1686
    .end local v6           #e:Ljava/io/IOException;
    :cond_55
    :goto_55
    return-void

    .line 1679
    :catchall_56
    move-exception v0

    .line 1680
    :goto_57
    if-eqz v8, :cond_5c

    .line 1681
    :try_start_59
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 1679
    :cond_5c
    :goto_5c
    throw v0

    .line 1682
    :catch_5d
    move-exception v6

    .line 1683
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 1682
    :catch_66
    move-exception v6

    .line 1683
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    :goto_6b
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v5       #index:I
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_6f
    move-object v8, v9

    .line 1680
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_70
    if-eqz v8, :cond_55

    .line 1681
    :try_start_72
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_55

    .line 1682
    :catch_76
    move-exception v6

    .line 1683
    .restart local v6       #e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    goto :goto_6b

    .line 1679
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_7c
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_57

    .line 1676
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_7f
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_49
.end method

.method private processPlayLists()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1786
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_183

    .line 1787
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1788
    .local v12, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v12

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1791
    .local v19, path:Ljava/lang/String;
    iget-boolean v5, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_9

    .line 1792
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1793
    .local v24, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1794
    .local v16, lastSlash:I
    if-gez v16, :cond_4a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1796
    :cond_4a
    move-object v0, v12

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 1797
    .local v21, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v21, v7

    if-nez v5, :cond_111

    .line 1800
    const/16 v5, 0x2e

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1801
    .local v15, lastDot:I
    if-gez v15, :cond_103

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 1802
    .local v18, name:Ljava/lang/String;
    :goto_6b
    const-string v5, "name"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 1806
    .local v23, uri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 1807
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1820
    .end local v15           #lastDot:I
    .end local v18           #name:Ljava/lang/String;
    .local v6, membersUri:Landroid/net/Uri;
    :goto_ad
    const/4 v5, 0x0

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1821
    .local v20, playListDirectory:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1822
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_152

    const/4 v5, 0x0

    move v13, v5

    .line 1824
    .local v13, fileType:I
    :goto_c0
    const/16 v5, 0x29

    if-ne v13, v5, :cond_15a

    .line 1825
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1831
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1834
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_e6

    :try_start_e0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_fc

    .line 1835
    :cond_e6
    const-string v5, "MediaScanner"

    const-string v6, "playlist is empty - deleting"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_e0 .. :try_end_fc} :catchall_17c

    .line 1839
    :cond_fc
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 1801
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #fileType:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v15       #lastDot:I
    :cond_103
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_6b

    .line 1809
    .end local v15           #lastDot:I
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1812
    .restart local v23       #uri:Landroid/net/Uri;
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1816
    const-string v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1817
    .restart local v6       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 1822
    .restart local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v20       #playListDirectory:Ljava/lang/String;
    :cond_152
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v13, v5

    goto/16 :goto_c0

    .line 1826
    .restart local v13       #fileType:I
    :cond_15a
    const/16 v5, 0x2a

    if-ne v13, v5, :cond_16c

    .line 1827
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d0

    .line 1828
    :cond_16c
    const/16 v5, 0x2b

    if-ne v13, v5, :cond_d0

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_d0

    .line 1839
    .end local v6           #membersUri:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_17c
    move-exception v5

    if-eqz v11, :cond_182

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_182
    throw v5

    .line 1843
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v13           #fileType:I
    .end local v16           #lastSlash:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v21           #rowId:J
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_183
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 17
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1689
    const/4 v10, 0x0

    .line 1691
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1693
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_4f

    .line 1695
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1696
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1697
    .local v5, index:I
    :goto_22
    if-eqz v9, :cond_77

    .line 1699
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1700
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1701
    .local v7, equals:I
    if-lez v7, :cond_4a

    .line 1702
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1703
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1704
    add-int/lit8 v5, v5, 0x1

    .line 1707
    .end local v7           #equals:I
    :cond_4a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_84
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_87

    move-result-object v9

    goto :goto_22

    .line 1710
    .end local v5           #index:I
    .end local v8           #f:Ljava/io/File;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v0

    move-object v6, v0

    .line 1711
    .local v6, e:Ljava/io/IOException;
    :goto_51
    :try_start_51
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_5e

    .line 1714
    if-eqz v10, :cond_5d

    .line 1715
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6e

    .line 1720
    .end local v6           #e:Ljava/io/IOException;
    :cond_5d
    :goto_5d
    return-void

    .line 1713
    :catchall_5e
    move-exception v0

    .line 1714
    :goto_5f
    if-eqz v10, :cond_64

    .line 1715
    :try_start_61
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 1713
    :cond_64
    :goto_64
    throw v0

    .line 1716
    :catch_65
    move-exception v6

    .line 1717
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 1716
    :catch_6e
    move-exception v6

    .line 1717
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    :goto_73
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v5       #index:I
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_77
    move-object v10, v11

    .line 1714
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_78
    if-eqz v10, :cond_5d

    .line 1715
    :try_start_7a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_5d

    .line 1716
    :catch_7e
    move-exception v6

    .line 1717
    .restart local v6       #e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    goto :goto_73

    .line 1713
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_84
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_5f

    .line 1710
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_87
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_51
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 1762
    const/4 v2, 0x0

    .line 1764
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1766
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_53
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_15} :catch_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_42

    .line 1768
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_15
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_69
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_27} :catch_70
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_6c

    move-object v2, v3

    .line 1776
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_28
    if-eqz v2, :cond_2d

    .line 1777
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_63

    .line 1782
    .end local v1           #f:Ljava/io/File;
    :cond_2d
    :goto_2d
    return-void

    .line 1770
    :catch_2e
    move-exception v4

    move-object v0, v4

    .line 1771
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_53

    .line 1776
    if-eqz v2, :cond_2d

    .line 1777
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2d

    .line 1778
    :catch_39
    move-exception v0

    .line 1779
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    :goto_3e
    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1772
    .end local v0           #e:Ljava/io/IOException;
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 1773
    .restart local v0       #e:Ljava/io/IOException;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_53

    .line 1776
    if-eqz v2, :cond_2d

    .line 1777
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2d

    .line 1778
    :catch_4d
    move-exception v0

    .line 1779
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    goto :goto_3e

    .line 1775
    .end local v0           #e:Ljava/io/IOException;
    :catchall_53
    move-exception v4

    .line 1776
    :goto_54
    if-eqz v2, :cond_59

    .line 1777
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 1775
    :cond_59
    :goto_59
    throw v4

    .line 1778
    :catch_5a
    move-exception v0

    .line 1779
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 1778
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #f:Ljava/io/File;
    :catch_63
    move-exception v0

    .line 1779
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    goto :goto_3e

    .line 1775
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_69
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_54

    .line 1772
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6c
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_44

    .line 1770
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_70
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_30
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const-string v0, "MediaScanner"

    .line 1394
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1395
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.thumbnails"

    .line 1396
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1397
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_17

    .line 1398
    new-array v10, v1, [Ljava/lang/String;

    .line 1400
    :cond_17
    const/4 v12, 0x0

    .local v12, i:I
    :goto_18
    array-length v0, v10

    if-ge v12, v0, :cond_3a

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1402
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1400
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 1406
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1412
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    if-eqz v6, :cond_7b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1415
    :cond_6d
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1416
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1417
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1420
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_7b
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_8b} :catch_b4

    .line 1424
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_8b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_93
    .catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_93} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_93} :catch_b4

    goto :goto_7f

    .line 1425
    :catch_94
    move-exception v0

    goto :goto_7f

    .line 1429
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_96
    :try_start_96
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    if-eqz v6, :cond_b3

    .line 1431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_b3} :catch_b4

    .line 1436
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_b3
    :goto_b3
    return-void

    .line 1433
    :catch_b4
    move-exception v0

    goto :goto_b3
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 393
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 395
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2092
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2093
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1523
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1524
    .local v12, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1525
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1528
    .local v8, prescan:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_17
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v7, v14, :cond_33

    .line 1529
    aget-object v14, p1, v7

    sget-object v15, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1528
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1531
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1532
    .local v10, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1536
    .local v5, end:J
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " prescan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    scan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "postscan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "   total time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v5, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_be} :catch_bf
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_be} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_be} :catch_d3

    .line 1550
    .end local v5           #end:J
    .end local v7           #i:I
    .end local v8           #prescan:J
    .end local v10           #scan:J
    .end local v12           #start:J
    :goto_be
    return-void

    .line 1541
    :catch_bf
    move-exception v14

    move-object v4, v14

    .line 1543
    .local v4, e:Landroid/database/SQLException;
    const-string v14, "MediaScanner"

    const-string v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_be

    .line 1544
    .end local v4           #e:Landroid/database/SQLException;
    :catch_c9
    move-exception v14

    move-object v4, v14

    .line 1546
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v14, "MediaScanner"

    const-string v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_be

    .line 1547
    .end local v4           #e:Ljava/lang/UnsupportedOperationException;
    :catch_d3
    move-exception v14

    move-object v4, v14

    .line 1548
    .local v4, e:Landroid/os/RemoteException;
    const-string v14, "MediaScanner"

    const-string v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_be
.end method

.method public scanSingleDrmFileAndUpdateMetaInfo(Ljava/lang/String;)I
    .registers 15
    .parameter "path"

    .prologue
    .line 1896
    const/4 v6, 0x0

    .line 1897
    .local v6, prescanResult:I
    const/4 v8, 0x0

    .line 1898
    .local v8, tableType:I
    const/4 v7, 0x0

    .line 1899
    .local v7, session:Landroid/lge/lgdrm/DrmContentSession;
    const/4 v1, 0x0

    .line 1900
    .local v1, content:Landroid/lge/lgdrm/DrmContent;
    const/4 v0, 0x0

    .line 1901
    .local v0, cid:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1905
    .local v5, mimeType:Ljava/lang/String;
    :try_start_6
    iget-object v9, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v7

    .line 1906
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v1

    .line 1907
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1908
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_1a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_6 .. :try_end_1a} :catch_9e

    move-result-object v5

    .line 1915
    :goto_1b
    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "video"

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a5

    const/4 v9, 0x1

    move v4, v9

    .line 1916
    .local v4, isVideo:Z
    :goto_31
    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio"

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a8

    const/4 v9, 0x1

    move v3, v9

    .line 1918
    .local v3, isAudio:Z
    :goto_47
    if-eqz v4, :cond_ab

    .line 1920
    const/4 v8, 0x1

    .line 1931
    :goto_4a
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scanSingleDrmFileAndUpdateMetaInfo START!! path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mimeType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isVideo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isAudio "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :try_start_8a
    const-string v9, "external"

    invoke-direct {p0, v9}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1935
    invoke-direct {p0, v0, v8}, Landroid/media/MediaScanner;->prescanDrmInfo(Ljava/lang/String;I)I

    move-result v6

    .line 1936
    if-nez v6, :cond_b1

    .line 1939
    const-string v9, "MediaScanner"

    const-string v10, "scanSingleDrmFileAndUpdateMetaInfo!! prescan result is zero!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_9c} :catch_b8

    .line 1940
    const/4 v9, 0x0

    .line 1949
    :goto_9d
    return v9

    .line 1910
    .end local v3           #isAudio:Z
    .end local v4           #isVideo:Z
    :catch_9e
    move-exception v9

    move-object v2, v9

    .line 1912
    .local v2, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v2}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_1b

    .line 1915
    .end local v2           #e:Landroid/lge/lgdrm/DrmException;
    :cond_a5
    const/4 v9, 0x0

    move v4, v9

    goto :goto_31

    .line 1916
    .restart local v4       #isVideo:Z
    :cond_a8
    const/4 v9, 0x0

    move v3, v9

    goto :goto_47

    .line 1922
    .restart local v3       #isAudio:Z
    :cond_ab
    if-eqz v3, :cond_af

    .line 1924
    const/4 v8, 0x2

    goto :goto_4a

    .line 1928
    :cond_af
    const/4 v9, 0x0

    goto :goto_9d

    .line 1944
    :cond_b1
    :try_start_b1
    iget-object v9, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9, p1, v0, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanDrmFileAndUpdateMetaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b6} :catch_b8

    move-result v9

    goto :goto_9d

    .line 1946
    :catch_b8
    move-exception v9

    move-object v2, v9

    .line 1948
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "MediaScanner"

    const-string v10, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1949
    const/4 v9, -0x1

    goto :goto_9d
.end method

.method public scanSingleDrmFileAndUpdateMetaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path"
    .parameter "cid"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    const-string v9, "MediaScanner"

    .line 1851
    const/4 v3, 0x0

    .line 1852
    .local v3, prescanResult:I
    const/4 v4, 0x0

    .line 1854
    .local v4, tableType:I
    invoke-virtual {p4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_88

    move v2, v10

    .line 1855
    .local v2, isVideo:Z
    :goto_18
    invoke-virtual {p4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8a

    move v1, v10

    .line 1857
    .local v1, isAudio:Z
    :goto_29
    if-eqz v2, :cond_8c

    .line 1859
    const/4 v4, 0x1

    .line 1870
    :goto_2c
    const-string v5, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanSingleDrmFileAndUpdateMetaInfo START!! path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volumeName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mimeType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isVideo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isAudio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :try_start_76
    invoke-direct {p0, p3}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1874
    invoke-direct {p0, p2, v4}, Landroid/media/MediaScanner;->prescanDrmInfo(Ljava/lang/String;I)I

    move-result v3

    .line 1876
    if-nez v3, :cond_92

    .line 1879
    const-string v5, "MediaScanner"

    const-string v6, "scanSingleDrmFileAndUpdateMetaInfo!! prescan result is zero!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 1890
    :goto_87
    return v5

    .end local v1           #isAudio:Z
    .end local v2           #isVideo:Z
    :cond_88
    move v2, v7

    .line 1854
    goto :goto_18

    .restart local v2       #isVideo:Z
    :cond_8a
    move v1, v7

    .line 1855
    goto :goto_29

    .line 1861
    .restart local v1       #isAudio:Z
    :cond_8c
    if-eqz v1, :cond_90

    .line 1863
    const/4 v4, 0x2

    goto :goto_2c

    :cond_90
    move v5, v7

    .line 1867
    goto :goto_87

    .line 1884
    :cond_92
    iget-object v5, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v5, p1, p2, p4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanDrmFileAndUpdateMetaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_97} :catch_99

    move-result v5

    goto :goto_87

    .line 1887
    :catch_99
    move-exception v5

    move-object v0, v5

    .line 1889
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v9, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1890
    const/4 v5, -0x1

    goto :goto_87
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1555
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 1558
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v9, file:Ljava/io/File;
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 1563
    .end local v9           #file:Ljava/io/File;
    :goto_1c
    return-object v0

    .line 1561
    :catch_1d
    move-exception v0

    move-object v8, v0

    .line 1562
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
