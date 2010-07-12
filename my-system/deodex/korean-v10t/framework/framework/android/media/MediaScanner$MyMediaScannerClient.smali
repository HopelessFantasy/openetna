.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mDrmAlbum:Ljava/lang/String;

.field private mDrmArtist:Ljava/lang/String;

.field private mDrmCID:Ljava/lang/String;

.field private mDrmComposer:Ljava/lang/String;

.field private mDrmContentType:I

.field private mDrmExtension:Ljava/lang/String;

.field private mDrmGenre:Ljava/lang/String;

.field private mDrmMimeType:Ljava/lang/String;

.field private mDrmTitle:Ljava/lang/String;

.field private mDrmTrack:I

.field private mDrmType:I

.field private mDrmYear:I

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 981
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 982
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 983
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int v2, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    move v2, v4

    goto :goto_1c
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    .registers 37
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v16

    .line 800
    .local v16, isAudio:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v18

    .line 801
    .local v18, isVideo:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v17

    .line 803
    .local v17, isImage:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    move v5, v0

    if-lez v5, :cond_2c

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_278

    .line 806
    const/16 v17, 0x1

    .line 816
    :cond_2c
    :goto_2c
    if-eqz v18, :cond_2af

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v26

    .line 826
    .local v26, tableUri:Landroid/net/Uri;
    :goto_37
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_59

    .line 830
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 833
    :cond_59
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v29

    .line 834
    .local v29, values:Landroid/content/ContentValues;
    const-string v5, "title"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 835
    .local v27, title:Ljava/lang/String;
    if-eqz v27, :cond_72

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 836
    :cond_72
    const-string v5, "_data"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 838
    const/16 v5, 0x2f

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 839
    .local v20, lastSlash:I
    if-ltz v20, :cond_99

    .line 840
    add-int/lit8 v20, v20, 0x1

    .line 841
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_99

    .line 842
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 846
    :cond_99
    const/16 v5, 0x2e

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 847
    .local v19, lastDot:I
    if-lez v19, :cond_ae

    .line 848
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 850
    :cond_ae
    const-string v5, "title"

    move-object/from16 v0, v29

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .end local v19           #lastDot:I
    .end local v20           #lastSlash:I
    :cond_b8
    const-string v5, "album"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 853
    .local v11, album:Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 854
    const-string v5, "_data"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 856
    const/16 v5, 0x2f

    invoke-virtual {v11, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 857
    .restart local v20       #lastSlash:I
    if-ltz v20, :cond_100

    .line 858
    const/16 v22, 0x0

    .line 860
    .local v22, previousSlash:I
    :goto_dc
    const/16 v5, 0x2f

    add-int/lit8 v6, v22, 0x1

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 861
    .local v15, idx:I
    if-ltz v15, :cond_eb

    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_2cb

    .line 866
    :cond_eb
    if-eqz v22, :cond_100

    .line 867
    add-int/lit8 v5, v22, 0x1

    move-object v0, v11

    move v1, v5

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 868
    const-string v5, "album"

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .end local v15           #idx:I
    .end local v20           #lastSlash:I
    .end local v22           #previousSlash:I
    :cond_100
    if-eqz v16, :cond_2cf

    .line 873
    const-string v5, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 874
    const-string v5, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 875
    const-string v5, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 876
    const-string v5, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 877
    const-string v5, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 890
    :cond_143
    :goto_143
    const/16 v23, 0x0

    .line 891
    .local v23, result:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v24, v0

    .line 892
    .local v24, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v24, v5

    if-nez v5, :cond_30b

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 895
    if-eqz v23, :cond_16f

    .line 896
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 897
    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 904
    :cond_16f
    :goto_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v5

    if-eqz v5, :cond_22c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_22c

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v14, v0

    .line 906
    .local v14, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 907
    .local v28, uri:Landroid/net/Uri;
    if-nez v28, :cond_209

    .line 908
    const/4 v12, 0x0

    .line 911
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v14, v9, v10

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 915
    if-eqz v12, :cond_1c3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_32a

    .line 917
    :cond_1c3
    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->clear()V

    .line 918
    const-string v5, "name"

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    .line 925
    :goto_1e9
    if-eqz v28, :cond_204

    .line 926
    const-string v5, "members"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, v5

    move-object v1, v14

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_204
    .catchall {:try_start_198 .. :try_end_204} :catchall_341

    .line 931
    :cond_204
    if-eqz v12, :cond_209

    .line 932
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 937
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_209
    if-eqz v28, :cond_22c

    .line 939
    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->clear()V

    .line 940
    const-string v5, "audio_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 945
    .end local v14           #genre:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_22c
    if-eqz p3, :cond_348

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_348

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_260

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 948
    :cond_260
    const-string v5, "notification_sound"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$1602(Landroid/media/MediaScanner;Z)Z

    :cond_275
    :goto_275
    move-object/from16 v5, v23

    .line 977
    .end local v11           #album:Ljava/lang/String;
    .end local v23           #result:Landroid/net/Uri;
    .end local v24           #rowId:J
    .end local v26           #tableUri:Landroid/net/Uri;
    .end local v27           #title:Ljava/lang/String;
    .end local v29           #values:Landroid/content/ContentValues;
    :goto_277
    return-object v5

    .line 807
    :cond_278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_284

    .line 808
    const/16 v16, 0x1

    goto/16 :goto_2c

    .line 809
    :cond_284
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_290

    .line 810
    const/16 v18, 0x1

    goto/16 :goto_2c

    .line 812
    :cond_290
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endFile():not support DRM content"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 818
    :cond_2af
    if-eqz v17, :cond_2bc

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v26

    .restart local v26       #tableUri:Landroid/net/Uri;
    goto/16 :goto_37

    .line 820
    .end local v26           #tableUri:Landroid/net/Uri;
    :cond_2bc
    if-eqz v16, :cond_2c9

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v26

    .restart local v26       #tableUri:Landroid/net/Uri;
    goto/16 :goto_37

    .line 824
    .end local v26           #tableUri:Landroid/net/Uri;
    :cond_2c9
    const/4 v5, 0x0

    goto :goto_277

    .line 864
    .restart local v11       #album:Ljava/lang/String;
    .restart local v15       #idx:I
    .restart local v20       #lastSlash:I
    .restart local v22       #previousSlash:I
    .restart local v26       #tableUri:Landroid/net/Uri;
    .restart local v27       #title:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_2cb
    move/from16 v22, v15

    .line 865
    goto/16 :goto_dc

    .line 878
    .end local v15           #idx:I
    .end local v20           #lastSlash:I
    .end local v22           #previousSlash:I
    :cond_2cf
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v5, v0

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_143

    .line 879
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/ExifInterface;->loadExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 881
    .local v13, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_143

    .line 882
    invoke-static {v13}, Landroid/media/ExifInterface;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v21

    .line 883
    .local v21, latlng:[F
    if-eqz v21, :cond_143

    .line 884
    const-string v5, "latitude"

    const/4 v6, 0x0

    aget v6, v21, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 885
    const-string v5, "longitude"

    const/4 v6, 0x1

    aget v6, v21, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v29

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_143

    .line 901
    .end local v13           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #latlng:[F
    .restart local v23       #result:Landroid/net/Uri;
    .restart local v24       #rowId:J
    :cond_30b
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_16f

    .line 922
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #genre:Ljava/lang/String;
    .restart local v28       #uri:Landroid/net/Uri;
    :cond_32a
    :try_start_32a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_33e
    .catchall {:try_start_32a .. :try_end_33e} :catchall_341

    move-result-object v28

    goto/16 :goto_1e9

    .line 931
    :catchall_341
    move-exception v5

    if-eqz v12, :cond_347

    .line 932
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_347
    throw v5

    .line 951
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #genre:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_348
    if-eqz p2, :cond_275

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_275

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 956
    :cond_37c
    invoke-static {}, Landroid/media/MediaScanner;->access$2000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BYT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3aa

    .line 958
    const-string v5, "Bouygues Indian"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 960
    const-string v5, "ringtone"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_275

    .line 966
    :cond_3aa
    const-string v5, "Calling Trip"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_275

    .line 968
    const-string v5, "ringtone"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_275
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 663
    .local v1, length:I
    if-ne p2, v1, :cond_c

    move v4, p3

    .line 676
    :goto_b
    return v4

    .line 665
    :cond_c
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 667
    .local v0, ch:C
    if-lt v0, v6, :cond_16

    if-le v0, v7, :cond_19

    :cond_16
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, p3

    goto :goto_b

    .line 669
    .end local p2
    .restart local v3       #start:I
    :cond_19
    sub-int v2, v0, v6

    .line 670
    .local v2, result:I
    :goto_1b
    if-ge v3, v1, :cond_31

    .line 671
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 672
    if-lt v0, v6, :cond_27

    if-le v0, v7, :cond_29

    :cond_27
    move v4, v2

    goto :goto_b

    .line 673
    :cond_29
    mul-int/lit8 v4, v2, 0xa

    sub-int v5, v0, v6

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1b

    :cond_31
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move v4, v2

    .line 676
    goto :goto_b
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 8
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 989
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 994
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 997
    :cond_29
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .registers 9

    .prologue
    const-string v2, "mime_type"

    const-string v7, "duration"

    const-string v6, "artist"

    const-string v5, "album"

    const-string v4, "<unknown>"

    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v0, map:Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    .line 740
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    if-lez v1, :cond_b5

    .line 742
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    sparse-switch v1, :sswitch_data_13c

    .line 757
    :goto_20
    const-string v1, "mime_type"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "drm_original_type"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v1, "drm_cid"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmCID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :goto_35
    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const-string v1, "drm_type"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_71

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c6

    .line 774
    :cond_71
    const-string v1, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_be

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_be

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_81
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c2

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_94
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "duration"

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    :cond_a2
    :goto_a2
    return-object v0

    .line 747
    :sswitch_a3
    const-string v1, "application/vnd.oma.drm.message"

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMimeType:Ljava/lang/String;

    goto/16 :goto_20

    .line 751
    :sswitch_a9
    const-string v1, "application/vnd.oma.drm.content"

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMimeType:Ljava/lang/String;

    goto/16 :goto_20

    .line 755
    :sswitch_af
    const-string v1, "application/vnd.oma.drm.dcf"

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMimeType:Ljava/lang/String;

    goto/16 :goto_20

    .line 763
    :cond_b5
    const-string v1, "mime_type"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 774
    :cond_be
    const-string v1, "<unknown>"

    move-object v1, v4

    goto :goto_81

    .line 775
    :cond_c2
    const-string v1, "<unknown>"

    move-object v1, v4

    goto :goto_94

    .line 778
    :cond_c6
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_a2

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a2

    .line 781
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_e0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a2

    .line 782
    :cond_e0
    const-string v1, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_134

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_134

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_f0
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_138

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_138

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_103
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v1, "composer"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v1, :cond_11c

    .line 786
    const-string v1, "year"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    :cond_11c
    const-string v1, "track"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v1, "duration"

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_a2

    .line 782
    :cond_134
    const-string v1, "<unknown>"

    move-object v1, v4

    goto :goto_f0

    .line 783
    :cond_138
    const-string v1, "<unknown>"

    move-object v1, v4

    goto :goto_103

    .line 742
    :sswitch_data_13c
    .sparse-switch
        0x31 -> :sswitch_a3
        0x51 -> :sswitch_a3
        0x300 -> :sswitch_a9
        0x301 -> :sswitch_a3
        0x302 -> :sswitch_a9
        0x1000 -> :sswitch_af
        0x3000 -> :sswitch_af
    .end sparse-switch
.end method

.method private updateDrmMetaInfo(ZZZZZ)I
    .registers 35
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1006
    const/16 v27, 0x0

    .line 1008
    .local v27, updateVector:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_269

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 1009
    .local v16, isAudio:Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_26e

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 1011
    .local v18, isVideo:Z
    :goto_26
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDrmMetaInfo(): start[A]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[V]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    if-eqz v18, :cond_273

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    .line 1016
    .local v22, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v27

    .line 1030
    :goto_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7e

    .line 1032
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1035
    :cond_7e
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v28

    .line 1036
    .local v28, values:Landroid/content/ContentValues;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v14, genreValues:Landroid/content/ContentValues;
    if-eqz v16, :cond_d1

    .line 1040
    const-string v5, "MediaScanner"

    const-string v6, "updateDrmMetaInfo(): put audio info"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v5, "is_ringtone"

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1042
    const-string v5, "is_notification"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1043
    const-string v5, "is_alarm"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1044
    const-string v5, "is_music"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1045
    const-string v5, "is_podcast"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1049
    :cond_d1
    const/4 v15, 0x0

    .line 1050
    .local v15, i:I
    const/16 v23, 0x0

    .line 1051
    .local v23, temp:I
    const/16 v24, 0x0

    .line 1052
    .local v24, tempFilePath:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1053
    .local v25, tempModifiedDate:I
    const/16 v21, 0x0

    .line 1054
    .local v21, result:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 1055
    .local v13, genreUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 1058
    .local v17, isEmptyTitle:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v5

    if-eqz v5, :cond_176

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_176

    .line 1060
    const-string v5, "MediaScanner"

    const-string v6, "updateDrmMetaInfo Genre!! Start!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    move-object v12, v0

    .line 1062
    .local v12, genre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #genreUri:Landroid/net/Uri;
    check-cast v13, Landroid/net/Uri;

    .line 1063
    .restart local v13       #genreUri:Landroid/net/Uri;
    if-nez v13, :cond_176

    .line 1065
    const/4 v11, 0x0

    .line 1069
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1070
    if-eqz v11, :cond_138

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_292

    .line 1073
    :cond_138
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 1074
    const-string v5, "name"

    invoke-virtual {v14, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6, v14}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 1083
    :goto_156
    if-eqz v13, :cond_171

    .line 1085
    const-string v5, "MediaScanner"

    const-string v6, "updateDrmMetaInfo Genre!! Get Genre uri!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string v5, "members"

    invoke-static {v13, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_171
    .catchall {:try_start_10d .. :try_end_171} :catchall_2a9

    .line 1093
    :cond_171
    if-eqz v11, :cond_176

    .line 1095
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1101
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #genre:Ljava/lang/String;
    :cond_176
    const/4 v15, 0x0

    .end local p1
    :goto_177
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v15, v5, :cond_2b0

    .line 1103
    move-object/from16 v0, v27

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #tempFilePath:Ljava/lang/String;
    check-cast v24, Ljava/lang/String;

    .line 1105
    .restart local v24       #tempFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 1108
    const-string v5, "_data"

    move-object/from16 v0, v28

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v5, "date_modified"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    const-string v5, "title"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1112
    .local v26, title:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d8

    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_220

    .line 1114
    :cond_1d8
    const-string v5, "_data"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1116
    const/16 v5, 0x2f

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 1117
    .local v20, lastSlash:I
    if-ltz v20, :cond_1ff

    .line 1119
    add-int/lit8 v20, v20, 0x1

    .line 1120
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_1ff

    .line 1122
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 1126
    :cond_1ff
    const/16 v5, 0x2e

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 1127
    .local v19, lastDot:I
    if-lez v19, :cond_214

    .line 1129
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1131
    :cond_214
    const-string v5, "title"

    move-object/from16 v0, v28

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/16 v17, 0x1

    .line 1136
    .end local v19           #lastDot:I
    .end local v20           #lastSlash:I
    :cond_220
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v5, v0

    move-object/from16 v0, v22

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1140
    if-eqz v13, :cond_265

    .line 1143
    const-string v5, "MediaScanner"

    const-string v6, "updateDrmMetaInfo Genre!! Add Genre map!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 1145
    const-string v5, "audio_id"

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v5

    invoke-interface {v5, v13, v14}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1101
    :cond_265
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_177

    .line 1008
    .end local v13           #genreUri:Landroid/net/Uri;
    .end local v14           #genreValues:Landroid/content/ContentValues;
    .end local v15           #i:I
    .end local v16           #isAudio:Z
    .end local v17           #isEmptyTitle:Z
    .end local v18           #isVideo:Z
    .end local v21           #result:Landroid/net/Uri;
    .end local v22           #tableUri:Landroid/net/Uri;
    .end local v23           #temp:I
    .end local v24           #tempFilePath:Ljava/lang/String;
    .end local v25           #tempModifiedDate:I
    .end local v26           #title:Ljava/lang/String;
    .end local v28           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_269
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_14

    .line 1009
    .restart local v16       #isAudio:Z
    :cond_26e
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_26

    .line 1018
    .restart local v18       #isVideo:Z
    :cond_273
    if-eqz v16, :cond_289

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    .line 1021
    .restart local v22       #tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/util/Vector;

    move-result-object v27

    goto/16 :goto_62

    .line 1026
    .end local v22           #tableUri:Landroid/net/Uri;
    :cond_289
    const-string v5, "MediaScanner"

    const-string v6, "updateDrmMetaInfo!! All vector\'s sizes are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v5, 0x0

    .line 1150
    .end local p1
    :goto_291
    return v5

    .line 1080
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #genre:Ljava/lang/String;
    .restart local v13       #genreUri:Landroid/net/Uri;
    .restart local v14       #genreValues:Landroid/content/ContentValues;
    .restart local v15       #i:I
    .restart local v17       #isEmptyTitle:Z
    .restart local v21       #result:Landroid/net/Uri;
    .restart local v22       #tableUri:Landroid/net/Uri;
    .restart local v23       #temp:I
    .restart local v24       #tempFilePath:Ljava/lang/String;
    .restart local v25       #tempModifiedDate:I
    .restart local v28       #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_292
    :try_start_292
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v5, v0

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2a6
    .catchall {:try_start_292 .. :try_end_2a6} :catchall_2a9

    move-result-object v13

    goto/16 :goto_156

    .line 1093
    :catchall_2a9
    move-exception v5

    if-eqz v11, :cond_2af

    .line 1095
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1093
    :cond_2af
    throw v5

    .line 1150
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #genre:Ljava/lang/String;
    .end local p1
    :cond_2b0
    const/4 v5, 0x1

    goto :goto_291
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;
    .registers 28
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 438
    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 439
    .local v17, lastSlash:I
    if-ltz v17, :cond_94

    add-int/lit8 v6, v17, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_94

    .line 441
    add-int/lit8 v6, v17, 0x1

    const-string v7, "._"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 442
    const/4 v6, 0x0

    .line 570
    :goto_26
    return-object v6

    .line 447
    :cond_27
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".jpg"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 448
    const/4 v6, 0x1

    add-int/lit8 v7, v17, 0x1

    const-string v8, "AlbumArt_{"

    const/4 v9, 0x0

    const/16 v10, 0xa

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    add-int/lit8 v7, v17, 0x1

    const-string v8, "AlbumArt."

    const/4 v9, 0x0

    const/16 v10, 0x9

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 450
    :cond_5a
    const/4 v6, 0x0

    goto :goto_26

    .line 452
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v17

    const/4 v7, 0x1

    sub-int v18, v6, v7

    .line 453
    .local v18, length:I
    const/16 v6, 0x11

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7c

    const/4 v6, 0x1

    add-int/lit8 v7, v17, 0x1

    const-string v8, "AlbumArtSmall"

    const/4 v9, 0x0

    const/16 v10, 0xd

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_92

    :cond_7c
    const/16 v6, 0xa

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_94

    const/4 v6, 0x1

    add-int/lit8 v7, v17, 0x1

    const-string v8, "Folder"

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 455
    :cond_92
    const/4 v6, 0x0

    goto :goto_26

    .line 460
    .end local v18           #length:I
    :cond_94
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    const-string v8, ".dm"

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_106

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".dcf"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_106

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".odf"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_106

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".o4a"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_106

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".o4v"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_106

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    const-string v8, ".cfm"

    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_235

    .line 472
    :cond_106
    :try_start_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v20

    .line 474
    .local v20, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v20, :cond_122

    .line 476
    const-string v6, "MediaScanner"

    const-string v7, "createContentSession() : Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 481
    :cond_122
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v12

    .line 482
    .local v12, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v12, :cond_136

    .line 484
    const-string v6, "MediaScanner"

    const-string v7, "getSelectedContent(true) : Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 488
    :cond_136
    invoke-virtual {v12}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    .line 489
    invoke-virtual {v12}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    .line 490
    const/4 v6, 0x2

    invoke-virtual {v12, v6}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    .line 491
    const/4 v6, 0x3

    invoke-virtual {v12, v6}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmCID:Ljava/lang/String;

    .line 492
    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_160
    .catch Ljava/lang/SecurityException; {:try_start_106 .. :try_end_160} :catch_227
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_106 .. :try_end_160} :catch_22e

    move-result-object p2

    .line 514
    .end local v12           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_161
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 516
    if-eqz p2, :cond_17f

    .line 517
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    if-eqz v6, :cond_17f

    .line 519
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 522
    :cond_17f
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_1a6

    .line 526
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v19

    .line 527
    .local v19, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v19, :cond_1a6

    .line 528
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 529
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 533
    .end local v19           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_1a6
    move-object/from16 v16, p1

    .line 534
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 535
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 537
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 538
    .local v5, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-nez v5, :cond_1e7

    .line 539
    new-instance v5, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 540
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_1e7
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 545
    iget-wide v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v13, p3, v6

    .line 546
    .local v13, delta:J
    const-wide/16 v6, 0x1

    cmp-long v6, v13, v6

    if-gtz v6, :cond_1fa

    const-wide/16 v6, -0x1

    cmp-long v6, v13, v6

    if-gez v6, :cond_202

    .line 547
    :cond_1fa
    move-wide/from16 v0, p3

    move-object v2, v5

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 548
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 551
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_24f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move v6, v0

    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_24f

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v6, v0

    invoke-static {v6}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 495
    .end local v5           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v13           #delta:J
    .end local v16           #key:Ljava/lang/String;
    :catch_227
    move-exception v6

    move-object v15, v6

    .line 497
    .local v15, e:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_161

    .line 499
    .end local v15           #e:Ljava/lang/SecurityException;
    :catch_22e
    move-exception v6

    move-object v15, v6

    .line 501
    .local v15, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v15}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_161

    .line 508
    .end local v15           #e:Landroid/lge/lgdrm/DrmException;
    :cond_235
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    .line 509
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    .line 510
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    .line 511
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmCID:Ljava/lang/String;

    goto/16 :goto_161

    .line 558
    .restart local v5       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v13       #delta:J
    .restart local v16       #key:Ljava/lang/String;
    :cond_24f
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 559
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 560
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 561
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 562
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 563
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 564
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 565
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 566
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 567
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 568
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-object v6, v5

    .line 570
    goto/16 :goto_26
.end method

.method public doScanDrmFileAndUpdateMetaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .parameter "path"
    .parameter "cid"
    .parameter "mimeType"

    .prologue
    .line 1155
    const/4 v13, 0x0

    .line 1156
    .local v13, result:I
    new-instance v12, Ljava/io/File;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 1159
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 1160
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmCID:Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1167
    :try_start_2d
    const-string v4, "/ringtones/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_91

    const/4 v4, 0x1

    move v5, v4

    .line 1168
    .local v5, ringtones:Z
    :goto_3a
    const-string v4, "/notifications/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_94

    const/4 v4, 0x1

    move v6, v4

    .line 1169
    .local v6, notifications:Z
    :goto_47
    const-string v4, "/alarms/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_97

    const/4 v4, 0x1

    move v7, v4

    .line 1170
    .local v7, alarms:Z
    :goto_54
    const-string v4, "/podcasts/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9a

    const/4 v4, 0x1

    move v9, v4

    .line 1171
    .local v9, podcasts:Z
    :goto_61
    const-string v4, "/music/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_74

    if-nez v5, :cond_9d

    if-nez v6, :cond_9d

    if-nez v7, :cond_9d

    if-nez v9, :cond_9d

    :cond_74
    const/4 v4, 0x1

    move v8, v4

    .line 1173
    .local v8, music:Z
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    invoke-static {v4}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v14

    .line 1174
    .local v14, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v14, :cond_a0

    .line 1176
    const-string v4, "MediaScanner"

    const-string v5, "createContentSession() : Fail"

    .end local v5           #ringtones:Z
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v4, 0x0

    .line 1231
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_90
    return v4

    .line 1167
    :cond_91
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3a

    .line 1168
    .restart local v5       #ringtones:Z
    :cond_94
    const/4 v4, 0x0

    move v6, v4

    goto :goto_47

    .line 1169
    .restart local v6       #notifications:Z
    :cond_97
    const/4 v4, 0x0

    move v7, v4

    goto :goto_54

    .line 1170
    .restart local v7       #alarms:Z
    :cond_9a
    const/4 v4, 0x0

    move v9, v4

    goto :goto_61

    .line 1171
    .restart local v9       #podcasts:Z
    :cond_9d
    const/4 v4, 0x0

    move v8, v4

    goto :goto_76

    .line 1181
    .restart local v8       #music:Z
    .restart local v14       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_a0
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v10

    .line 1182
    .local v10, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v10, :cond_b0

    .line 1184
    const-string v4, "MediaScanner"

    const-string v5, "getSelectedContent(true) : Fail"

    .end local v5           #ringtones:Z
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v4, 0x0

    goto :goto_90

    .line 1188
    .restart local v5       #ringtones:Z
    :cond_b0
    invoke-virtual {v10}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmType:I

    .line 1189
    invoke-virtual {v10}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentType:I

    .line 1190
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_172

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "mp3"

    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "mp4"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "3gp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "3gpp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "3gpp2"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "ogg"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "mid"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "m4a"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    move-object v4, v0

    const-string v10, "wma"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 1204
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :goto_157
    move-object/from16 v4, p0

    .line 1213
    invoke-direct/range {v4 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->updateDrmMetaInfo(ZZZZZ)I

    move-result v13

    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_15d
    move v4, v13

    .line 1231
    goto/16 :goto_90

    .line 1210
    .restart local v5       #ringtones:Z
    .restart local v6       #notifications:Z
    .restart local v7       #alarms:Z
    .restart local v8       #music:Z
    .restart local v9       #podcasts:Z
    .restart local v14       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_160
    const-string v4, "MediaScanner"

    const-string v10, "doScanDrmFileAndUpdateMetaInfo() IMAGE"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_167} :catch_168
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2d .. :try_end_167} :catch_17a

    goto :goto_157

    .line 1221
    .end local v5           #ringtones:Z
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_168
    move-exception v4

    move-object v11, v4

    .line 1223
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15d

    .line 1217
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v5       #ringtones:Z
    .restart local v6       #notifications:Z
    .restart local v7       #alarms:Z
    .restart local v8       #music:Z
    .restart local v9       #podcasts:Z
    .restart local v10       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v14       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_172
    :try_start_172
    const-string v4, "MediaScanner"

    const-string v5, "doScanDrmFileAndUpdateMetaInfo() mDrmExtension is null"

    .end local v5           #ringtones:Z
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_179} :catch_168
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_172 .. :try_end_179} :catch_17a

    goto :goto_15d

    .line 1225
    .end local v6           #notifications:Z
    .end local v7           #alarms:Z
    .end local v8           #music:Z
    .end local v9           #podcasts:Z
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_17a
    move-exception v4

    move-object v11, v4

    .line 1227
    .local v11, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v11}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_15d
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .registers 18
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 582
    const/4 v9, 0x0

    .line 585
    .local v9, result:Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 587
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v1, :cond_142

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_d

    if-eqz p7, :cond_142

    .line 588
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b0

    const/4 v0, 0x1

    move v2, v0

    .line 590
    .local v2, ringtones:Z
    :goto_1b
    const-string v0, "/notifications/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b4

    const/4 v0, 0x1

    move v3, v0

    .line 591
    .local v3, notifications:Z
    :goto_25
    const-string v0, "/alarms/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b8

    const/4 v0, 0x1

    move v4, v0

    .line 592
    .local v4, alarms:Z
    :goto_2f
    const-string v0, "/podcasts/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_bc

    const/4 v0, 0x1

    move v6, v0

    .line 593
    .local v6, podcasts:Z
    :goto_39
    const-string v0, "/music/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_49

    if-nez v2, :cond_c0

    if-nez v3, :cond_c0

    if-nez v4, :cond_c0

    if-nez v6, :cond_c0

    :cond_49
    const/4 v0, 0x1

    move v5, v0

    .line 595
    .local v5, music:Z
    :goto_4b
    const-string v0, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rescan!! path = "

    .end local v8           #lowpath:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    if-nez v0, :cond_cc

    .line 598
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x15

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x17

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x18

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v7, 0x7

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0xb

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/4 v7, 0x6

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x19

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x1a

    if-eq v0, v7, :cond_a5

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x1b

    if-ne v0, v7, :cond_c3

    .line 620
    :cond_a5
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_aa
    :goto_aa
    move-object v0, p0

    .line 647
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v9

    .line 658
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :goto_af
    return-object v9

    .line 589
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v8       #lowpath:Ljava/lang/String;
    :cond_b0
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1b

    .line 590
    .restart local v2       #ringtones:Z
    :cond_b4
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_25

    .line 591
    .restart local v3       #notifications:Z
    :cond_b8
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_2f

    .line 592
    .restart local v4       #alarms:Z
    :cond_bc
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_39

    .line 593
    .restart local v6       #podcasts:Z
    :cond_c0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4b

    .line 621
    .end local v8           #lowpath:Ljava/lang/String;
    .restart local v5       #music:Z
    :cond_c3
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto :goto_aa

    .line 627
    :cond_cc
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "mp3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "mp4"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "3gp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "3gpp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "3gpp2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "ogg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "mid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "m4a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmExtension:Ljava/lang/String;

    const-string v7, "wma"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 639
    :cond_126
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12b} :catch_12d

    goto/16 :goto_aa

    .line 653
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :catch_12d
    move-exception v0

    move-object v7, v0

    .line 654
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_af

    .line 641
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v2       #ringtones:Z
    .restart local v3       #notifications:Z
    .restart local v4       #alarms:Z
    .restart local v5       #music:Z
    .restart local v6       #podcasts:Z
    :cond_138
    :try_start_138
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto/16 :goto_aa

    .line 651
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :cond_142
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO rescan!! path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_15a} :catch_12d

    goto/16 :goto_af
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 680
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 684
    :cond_12
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 724
    :cond_14
    :goto_14
    return-void

    .line 685
    :cond_15
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 686
    :cond_25
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_14

    .line 687
    :cond_2c
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 688
    :cond_3c
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_14

    .line 689
    :cond_43
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 690
    :cond_53
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_14

    .line 691
    :cond_5a
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 692
    :cond_6a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_14

    .line 693
    :cond_71
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 695
    :cond_81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a4

    .line 696
    const/4 v1, -0x1

    .line 697
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 698
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_a8

    .line 699
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 703
    :cond_95
    :goto_95
    if-ltz v1, :cond_a4

    invoke-static {}, Landroid/media/MediaScanner;->access$700()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_a4

    .line 704
    invoke-static {}, Landroid/media/MediaScanner;->access$700()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 707
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_a4
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_14

    .line 700
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_a8
    const/16 v3, 0x30

    if-lt v0, v3, :cond_95

    const/16 v3, 0x39

    if-gt v0, v3, :cond_95

    .line 701
    invoke-direct {p0, p2, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_95

    .line 708
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_b5
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    const-string v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 709
    :cond_c5
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_14

    .line 710
    :cond_cd
    const-string v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 713
    :cond_dd
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 714
    .local v2, num:I
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_14

    .line 715
    .end local v2           #num:I
    :cond_ec
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_104

    const-string v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_104

    const-string v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 719
    :cond_104
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 720
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_14

    .line 721
    .end local v2           #num:I
    :cond_113
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 722
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_14
.end method

.method public scanFile(Ljava/lang/String;JJ)V
    .registers 14
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 574
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 575
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 578
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 579
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 727
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 728
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 729
    return-void
.end method
