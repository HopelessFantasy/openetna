.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$UpdateThread;,
        Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;,
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotification;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private newChars:Landroid/database/CharArrayBuffer;

.field private oldChars:Landroid/database/CharArrayBuffer;

.field private pendingUpdate:Z

.field private updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/DownloadService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadService;->deleteDownload(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/downloads/DownloadService;->insertDownload(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/DownloadService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/providers/downloads/DownloadService;IJ)J
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->nextAction(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$UpdateThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadService$UpdateThread;)Lcom/android/providers/downloads/DownloadService$UpdateThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->pendingUpdate:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/downloads/DownloadService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->pendingUpdate:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/providers/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/DownloadService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/DownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->mediaScannerConnected()Z

    move-result v0

    return v0
.end method

.method private deleteDownload(I)V
    .registers 5
    .parameter "arrayPos"

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 815
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_21

    .line 816
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 820
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v2, v0, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 822
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 823
    return-void

    .line 817
    :cond_21
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 818
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_12
.end method

.method private insertDownload(Landroid/database/Cursor;IZZJ)V
    .registers 48
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "networkRoaming"
    .parameter "now"

    .prologue
    .line 552
    const-string v6, "status"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 553
    .local v38, statusColumn:I
    const-string v6, "numfailed"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 554
    .local v34, failedColumn:I
    const-string v6, "method"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 556
    .local v36, retryRedirect:I
    new-instance v5, Lcom/android/providers/downloads/DownloadInfo;

    const-string v6, "_id"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "uri"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "no_integrity"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_52c

    const/4 v8, 0x1

    :goto_58
    const-string v9, "hint"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_data"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mimetype"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "destination"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "visibility"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "control"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const v17, 0xfffffff

    and-int v17, v17, v36

    shr-int/lit8 v18, v36, 0x1c

    const-string v19, "lastmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-string v21, "notificationpackage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "notificationclass"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "notificationextras"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "cookiedata"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "useragent"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string v26, "referer"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const-string v28, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const-string v29, "etag"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v30, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_52f

    const/16 v30, 0x1

    :goto_19f
    const-string v31, "external_control"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_533

    const/16 v31, 0x1

    :goto_1bb
    const-string v32, "cid"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v5 .. v32}, Lcom/android/providers/downloads/DownloadInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZLjava/lang/String;)V

    .line 586
    .local v5, info:Lcom/android/providers/downloads/DownloadInfo;
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_471

    .line 587
    const-string v6, "DownloadManager"

    const-string v7, "Service adding new entry"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID      : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI     : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    if-eqz v8, :cond_537

    const-string v8, "yes"

    :goto_208
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NO_INTEG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HINT    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->hint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FILENAME: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIMETYPE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DESTINAT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VISIBILI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->visibility:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONTROL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->control:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATUS  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAILED_C: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RETRY_AF: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->retryAfter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REDIRECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->redirectCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LAST_MOD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v5, Lcom/android/providers/downloads/DownloadInfo;->lastMod:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PACKAGE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CLASS   : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "COOKIES : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    if-eqz v8, :cond_53b

    const-string v8, "yes"

    :goto_392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AGENT   : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->userAgent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REFERER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    if-eqz v8, :cond_53f

    const-string v8, "yes"

    :goto_3ca
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TOTAL   : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->totalBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->currentBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ETAG    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCANNED : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/providers/downloads/DownloadInfo;->mediaScanned:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXTERNAL_CONTROL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/providers/downloads/DownloadInfo;->externalControl:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->cid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 619
    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    if-nez v6, :cond_543

    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-eqz v6, :cond_48a

    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_543

    :cond_48a
    iget-object v6, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    if-eqz v6, :cond_543

    const-string v6, "application/vnd.oma.drm.message"

    iget-object v7, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_543

    const-string v6, "application/vnd.oma.drm.content"

    iget-object v7, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_543

    const-string v6, "application/vnd.oma.drm.dcf"

    iget-object v7, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_543

    .line 634
    new-instance v35, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v35, mimetypeIntent:Landroid/content/Intent;
    const-string v6, "file"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    move-object v0, v6

    move-object/from16 v1, v35

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v37

    .line 648
    .local v37, ri:Landroid/content/pm/ResolveInfo;
    if-nez v37, :cond_543

    .line 650
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no application to handle MIME type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v6, 0x196

    iput v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 654
    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget v7, v5, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v39

    .line 655
    .local v39, uri:Landroid/net/Uri;
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v40, values:Landroid/content/ContentValues;
    const-string v6, "status"

    const/16 v7, 0x196

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 658
    move-object v0, v5

    move-object/from16 v1, v39

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested(Landroid/net/Uri;Landroid/content/Context;)V

    .line 700
    .end local v35           #mimetypeIntent:Landroid/content/Intent;
    .end local v37           #ri:Landroid/content/pm/ResolveInfo;
    .end local v39           #uri:Landroid/net/Uri;
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_52b
    :goto_52b
    return-void

    .line 556
    .end local v5           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_52c
    const/4 v8, 0x0

    goto/16 :goto_58

    :cond_52f
    const/16 v30, 0x0

    goto/16 :goto_19f

    :cond_533
    const/16 v31, 0x0

    goto/16 :goto_1bb

    .line 589
    .restart local v5       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_537
    const-string v8, "no"

    goto/16 :goto_208

    .line 604
    :cond_53b
    const-string v8, "no"

    goto/16 :goto_392

    .line 606
    :cond_53f
    const-string v8, "no"

    goto/16 :goto_3ca

    .line 663
    :cond_543
    move-object v0, v5

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->canUseNetwork(ZZ)Z

    move-result v6

    if-eqz v6, :cond_5cd

    .line 664
    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToStart(J)Z

    move-result v6

    if-eqz v6, :cond_52b

    .line 665
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v6, :cond_575

    .line 666
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service spawning thread to handle new download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_575
    iget-boolean v6, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    if-eqz v6, :cond_581

    .line 670
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Multiple threads on same download on insert"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 672
    :cond_581
    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v7, 0xc0

    if-eq v6, v7, :cond_5b7

    .line 673
    const/16 v6, 0xc0

    iput v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 674
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .restart local v40       #values:Landroid/content/ContentValues;
    const-string v6, "status"

    iget v7, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget v8, v5, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v40

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_5b7
    iget-boolean v6, v5, Lcom/android/providers/downloads/DownloadInfo;->externalControl:Z

    if-nez v6, :cond_52b

    .line 683
    new-instance v33, Lcom/android/providers/downloads/DownloadThread;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/DownloadInfo;)V

    .line 684
    .local v33, downloader:Lcom/android/providers/downloads/DownloadThread;
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 685
    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/downloads/DownloadThread;->start()V

    goto/16 :goto_52b

    .line 690
    .end local v33           #downloader:Lcom/android/providers/downloads/DownloadThread;
    :cond_5cd
    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    if-eqz v6, :cond_5dd

    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v7, 0xbe

    if-eq v6, v7, :cond_5dd

    iget v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_52b

    .line 693
    :cond_5dd
    const/16 v6, 0xc1

    iput v6, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 694
    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget v7, v5, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v39

    .line 695
    .restart local v39       #uri:Landroid/net/Uri;
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .restart local v40       #values:Landroid/content/ContentValues;
    const-string v6, "status"

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_52b
.end method

.method private mediaScannerConnected()Z
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private nextAction(IJ)J
    .registers 11
    .parameter "arrayPos"
    .parameter "now"

    .prologue
    const-wide/16 v5, 0x0

    .line 833
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 834
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget v3, v0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v3}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 835
    const-wide/16 v3, -0x1

    .line 847
    :goto_14
    return-wide v3

    .line 837
    :cond_15
    iget v3, v0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_1d

    move-wide v3, v5

    .line 838
    goto :goto_14

    .line 840
    :cond_1d
    iget v3, v0, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    if-nez v3, :cond_23

    move-wide v3, v5

    .line 841
    goto :goto_14

    .line 843
    :cond_23
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->restartTime()J

    move-result-wide v1

    .line 844
    .local v1, when:J
    cmp-long v3, v1, p2

    if-gtz v3, :cond_2d

    move-wide v3, v5

    .line 845
    goto :goto_14

    .line 847
    :cond_2d
    sub-long v3, v1, p2

    goto :goto_14
.end method

.method private removeSpuriousFiles()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 479
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 480
    .local v9, files:[Ljava/io/File;
    if-nez v9, :cond_d

    .line 514
    :cond_c
    return-void

    .line 485
    :cond_d
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 486
    .local v7, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_13
    array-length v0, v9

    if-ge v10, v0, :cond_3f

    .line 487
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lost+found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 486
    :cond_24
    :goto_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 490
    :cond_27
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 493
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 496
    :cond_3f
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 498
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6a

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 501
    :cond_5a
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 504
    :cond_67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_6a
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 507
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 508
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 509
    .local v8, filename:Ljava/lang/String;
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_96

    .line 510
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting spurious file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_6e
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .registers 11
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    const/4 v7, 0x1

    const-string v3, "DownloadManager"

    .line 885
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfo;

    .line 886
    .local v1, info:Lcom/android/providers/downloads/DownloadInfo;
    monitor-enter p0

    .line 887
    :try_start_c
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_83

    if-eqz v3, :cond_80

    .line 889
    :try_start_10
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_2e

    .line 890
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanning file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_2e
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    iget-object v4, v1, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/media/IMediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-eqz p1, :cond_61

    .line 894
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "scanned"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_10 .. :try_end_61} :catchall_83
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_61} :catch_64

    .line 901
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_61
    :try_start_61
    monitor-exit p0

    move v3, v7

    .line 909
    :goto_63
    return v3

    .line 902
    :catch_64
    move-exception v3

    move-object v0, v3

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to scan file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_80
    monitor-exit p0

    .line 909
    const/4 v3, 0x0

    goto :goto_63

    .line 908
    :catchall_83
    move-exception v3

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_61 .. :try_end_85} :catchall_83

    throw v3
.end method

.method private shouldScanFile(I)Z
    .registers 4
    .parameter "arrayPos"

    .prologue
    .line 862
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 863
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget-boolean v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mediaScanned:Z

    if-nez v1, :cond_1a

    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-nez v1, :cond_1a

    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v1}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "old"
    .parameter "cursor"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 784
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 785
    .local v1, index:I
    if-nez p1, :cond_c

    .line 786
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 807
    :goto_b
    return-object v5

    .line 788
    :cond_c
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_19

    .line 789
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    .line 791
    :cond_19
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 792
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 793
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_2d

    .line 794
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 796
    :cond_2d
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_3e

    .line 797
    :cond_37
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/providers/downloads/DownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    .line 799
    :cond_3e
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 800
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->newChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 801
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 802
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_4c
    if-ltz v0, :cond_5d

    .line 803
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_5a

    .line 804
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    .line 802
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_5d
    move-object v5, p1

    .line 807
    goto :goto_b
.end method

.method private trimDatabase()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const-string v9, "_id"

    .line 520
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v9, v2, v3

    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 524
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_23

    .line 526
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_22
    return-void

    .line 529
    :cond_23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    sub-int v8, v0, v1

    .line 531
    .local v8, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 532
    .local v6, columnId:I
    :goto_37
    if-lez v8, :cond_50

    .line 533
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 536
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_54

    .line 542
    .end local v6           #columnId:I
    .end local v8           #numDelete:I
    :cond_50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 539
    .restart local v6       #columnId:I
    .restart local v8       #numDelete:I
    :cond_54
    add-int/lit8 v8, v8, -0x1

    goto :goto_37
.end method

.method private updateDownload(Landroid/database/Cursor;IZZJ)V
    .registers 23
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "networkRoaming"
    .parameter "now"

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/downloads/DownloadInfo;

    .line 709
    .local v6, info:Lcom/android/providers/downloads/DownloadInfo;
    const-string v12, "status"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 710
    .local v10, statusColumn:I
    const-string v12, "numfailed"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 711
    .local v5, failedColumn:I
    const-string v12, "_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->id:I

    .line 712
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    const-string v13, "uri"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    .line 713
    const-string v12, "no_integrity"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20c

    const/4 v12, 0x1

    :goto_56
    iput-boolean v12, v6, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    .line 715
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->hint:Ljava/lang/String;

    const-string v13, "hint"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->hint:Ljava/lang/String;

    .line 716
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    const-string v13, "_data"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    .line 717
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    const-string v13, "mimetype"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    .line 718
    const-string v12, "destination"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    .line 719
    const-string v12, "visibility"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 720
    .local v8, newVisibility:I
    iget v12, v6, Lcom/android/providers/downloads/DownloadInfo;->visibility:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c6

    const/4 v12, 0x1

    if-eq v8, v12, :cond_c6

    iget v12, v6, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v12}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v13, v6, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 725
    :cond_c6
    iput v8, v6, Lcom/android/providers/downloads/DownloadInfo;->visibility:I

    .line 726
    monitor-enter v6

    .line 727
    :try_start_c9
    const-string v12, "control"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->control:I

    .line 728
    monitor-exit v6
    :try_end_dc
    .catchall {:try_start_c9 .. :try_end_dc} :catchall_20f

    .line 729
    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 730
    .local v7, newStatus:I
    iget v12, v6, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v12}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v12

    if-nez v12, :cond_fd

    invoke-static {v7}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v13, v6, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 733
    :cond_fd
    iput v7, v6, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 734
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    .line 735
    const-string v12, "method"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 737
    .local v9, retryRedirect:I
    const v12, 0xfffffff

    and-int/2addr v12, v9

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->retryAfter:I

    .line 738
    shr-int/lit8 v12, v9, 0x1c

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->redirectCount:I

    .line 739
    const-string v12, "lastmod"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/providers/downloads/DownloadInfo;->lastMod:J

    .line 740
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    const-string v13, "notificationpackage"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    .line 741
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    const-string v13, "notificationclass"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    .line 742
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    const-string v13, "cookiedata"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    .line 743
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->userAgent:Ljava/lang/String;

    const-string v13, "useragent"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->userAgent:Ljava/lang/String;

    .line 744
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    const-string v13, "referer"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    .line 745
    const-string v12, "total_bytes"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->totalBytes:I

    .line 746
    const-string v12, "current_bytes"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->currentBytes:I

    .line 747
    iget-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    const-string v13, "etag"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    .line 748
    const-string v12, "scanned"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_212

    const/4 v12, 0x1

    :goto_1cc
    iput-boolean v12, v6, Lcom/android/providers/downloads/DownloadInfo;->mediaScanned:Z

    .line 751
    move-object v0, v6

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->canUseNetwork(ZZ)Z

    move-result v12

    if-eqz v12, :cond_24d

    .line 752
    move-object v0, v6

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToRestart(J)Z

    move-result v12

    if-eqz v12, :cond_24d

    .line 753
    sget-boolean v12, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v12, :cond_200

    .line 754
    const-string v12, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service spawning thread to handle updated download "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_200
    iget-boolean v12, v6, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    if-eqz v12, :cond_214

    .line 758
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Multiple threads on same download on update"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 713
    .end local v7           #newStatus:I
    .end local v8           #newVisibility:I
    .end local v9           #retryRedirect:I
    :cond_20c
    const/4 v12, 0x0

    goto/16 :goto_56

    .line 728
    .restart local v8       #newVisibility:I
    :catchall_20f
    move-exception v12

    :try_start_210
    monitor-exit v6
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_20f

    throw v12

    .line 748
    .restart local v7       #newStatus:I
    .restart local v9       #retryRedirect:I
    :cond_212
    const/4 v12, 0x0

    goto :goto_1cc

    .line 760
    :cond_214
    const/16 v12, 0xc0

    iput v12, v6, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 761
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "status"

    iget v13, v6, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget v14, v6, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v14, v14

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    iget-boolean v12, v6, Lcom/android/providers/downloads/DownloadInfo;->externalControl:Z

    if-nez v12, :cond_24d

    .line 769
    new-instance v4, Lcom/android/providers/downloads/DownloadThread;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/DownloadInfo;)V

    .line 770
    .local v4, downloader:Lcom/android/providers/downloads/DownloadThread;
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 771
    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadThread;->start()V

    .line 777
    .end local v4           #downloader:Lcom/android/providers/downloads/DownloadThread;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_24d
    return-void
.end method

.method private updateFromProvider()V
    .registers 2

    .prologue
    .line 252
    monitor-enter p0

    .line 253
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->pendingUpdate:Z

    .line 254
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    if-nez v0, :cond_14

    .line 255
    new-instance v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 256
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->updateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->start()V

    .line 258
    :cond_14
    monitor-exit p0

    .line 259
    return-void

    .line 258
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private visibleNotification(I)Z
    .registers 4
    .parameter "arrayPos"

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 855
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "i"

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 202
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_e

    .line 203
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_e
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 209
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    .line 214
    new-instance v0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    .line 216
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    .line 217
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 218
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification()V

    .line 220
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->trimDatabase()V

    .line 221
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->removeSpuriousFiles()V

    .line 222
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 223
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_14

    .line 243
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_14
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 246
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 230
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_e

    .line 231
    const-string v0, "DownloadManager"

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_e
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 235
    return-void
.end method
