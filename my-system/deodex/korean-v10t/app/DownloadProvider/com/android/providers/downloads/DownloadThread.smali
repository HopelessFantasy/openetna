.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaderXOMADRM:Ljava/lang/String;

.field private mInfo:Lcom/android/providers/downloads/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/DownloadInfo;)V
    .registers 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 76
    return-void
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 1100
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {p1}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1103
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughIntent()V

    .line 1105
    :cond_c
    return-void
.end method

.method private notifyThroughDatabase(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    const-string v4, "numfailed"

    .line 1110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    if-eqz p7, :cond_1d

    .line 1114
    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_1d
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    if-nez p2, :cond_5c

    .line 1120
    const-string v1, "numfailed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    :goto_47
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1129
    return-void

    .line 1121
    :cond_5c
    if-eqz p5, :cond_69

    .line 1122
    const-string v1, "numfailed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_47

    .line 1124
    :cond_69
    const-string v1, "numfailed"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_47
.end method

.method private notifyThroughIntent()V
    .registers 4

    .prologue
    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1137
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested(Landroid/net/Uri;Landroid/content/Context;)V

    .line 1138
    return-void
.end method

.method private sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "mimeType"

    .prologue
    .line 1149
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1151
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1152
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 1153
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_1a

    move-result-object p1

    :cond_18
    move-object v2, p1

    .line 1157
    .end local v1           #semicolonIndex:I
    :goto_19
    return-object v2

    .line 1156
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 1157
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private userAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->userAgent:Ljava/lang/String;

    .line 83
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 85
    :cond_6
    if-nez v0, :cond_a

    .line 86
    const-string v0, "AndroidDownloadManager"

    .line 88
    :cond_a
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 89

    .prologue
    .line 95
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 97
    const/16 v6, 0x1eb

    .line 98
    .local v6, finalStatus:I
    const/16 v20, 0x0

    .line 99
    .local v20, countRetry:Z
    const/16 v21, 0x0

    .line 100
    .local v21, retryAfter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->redirectCount:I

    move/from16 v22, v0

    .line 101
    .local v22, redirectCount:I
    const/16 v25, 0x0

    .line 102
    .local v25, newUri:Ljava/lang/String;
    const/16 v23, 0x0

    .line 103
    .local v23, gotData:Z
    const/4 v11, 0x0

    .line 104
    .local v11, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, mimeType:Ljava/lang/String;
    const/16 v81, 0x0

    .line 106
    .local v81, stream:Ljava/io/FileOutputStream;
    const/16 v42, 0x0

    .line 107
    .local v42, client:Landroid/net/http/AndroidHttpClient;
    const/16 v87, 0x0

    .line 108
    .local v87, wakeLock:Landroid/os/PowerManager$WakeLock;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget v7, v7, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 118
    .local v46, contentUri:Landroid/net/Uri;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v5, v7}, Landroid/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Landroid/lge/lgdrm/DrmObjectSession;

    move-result-object v54

    .line 119
    .local v54, drmObjectSession:Landroid/lge/lgdrm/DrmObjectSession;
    const/16 v55, 0x0

    .line 120
    .local v55, drmResult:I
    const/16 v53, 0x0

    .line 121
    .local v53, drmMimeType:Z
    const/16 v83, 0x0

    .line 124
    .local v83, streamCnt:I
    const/16 v37, 0x1

    .line 125
    .local v37, bPerformanceTest_Tuning_Writing:Z
    const/16 v36, 0x1

    .line 126
    .local v36, bPerformanceTest_Tuning_UI:Z
    const/16 v33, 0x0

    .line 127
    .local v33, bPerformanceTest_Display:Z
    const/16 v34, 0x0

    .line 128
    .local v34, bPerformanceTest_NoUI:Z
    const/16 v35, 0x0

    .line 129
    .local v35, bPerformanceTest_NoWrite:Z
    const/16 v70, 0x0

    .line 130
    .local v70, nNumOfRead:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    .line 131
    .local v51, dlStartTime:J
    const-wide/16 v49, 0x0

    .line 132
    .local v49, dlEndTime:J
    if-eqz v37, :cond_12a

    const v5, 0x8000

    move/from16 v27, v5

    .line 136
    .local v27, DOWNLOAD_BUFFER_SIZE:I
    :goto_7b
    const/16 v47, 0x0

    .line 137
    .local v47, continuingDownload:Z
    const/16 v64, 0x0

    .line 138
    .local v64, headerAcceptRanges:Ljava/lang/String;
    const/4 v15, 0x0

    .line 139
    .local v15, headerContentDisposition:Ljava/lang/String;
    const/16 v65, 0x0

    .line 140
    .local v65, headerContentLength:Ljava/lang/String;
    const/16 v16, 0x0

    .line 141
    .local v16, headerContentLocation:Ljava/lang/String;
    const/16 v66, 0x0

    .line 142
    .local v66, headerETag:Ljava/lang/String;
    const/16 v67, 0x0

    .line 144
    .local v67, headerTransferEncoding:Ljava/lang/String;
    :try_start_88
    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v48, v0

    .line 147
    .local v48, data:[B
    const/16 v40, 0x0

    .line 149
    .local v40, bytesSoFar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/os/PowerManager;

    .line 150
    .local v74, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v7, "DownloadManager"

    move-object/from16 v0, v74

    move v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v87

    .line 151
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    .line 155
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz v11, :cond_14c

    .line 158
    invoke-static {v11}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_130

    .line 159
    const/16 v6, 0x1ec

    .line 160
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v13, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_88 .. :try_end_e5} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_e5} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e5} :catch_48f

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_f4

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_f4
    if-eqz v42, :cond_fb

    .line 914
    #Replaced unresolvable odex instruction with a throw
    throw v42
    #invoke-virtual-quick/range {v42 .. v42}, vtable@0xb

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_fb
    if-eqz v81, :cond_100

    .line 920
    :try_start_fd
    #Replaced unresolvable odex instruction with a throw
    throw v81
    #invoke-virtual-quick/range {v81 .. v81}, vtable@0xb
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_1ac4

    .line 928
    :cond_100
    :goto_100
    if-eqz v11, :cond_114

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_1ae6

    .line 932
    if-eqz v53, :cond_1bbf

    .line 934
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    :cond_114
    :goto_114
    move-object/from16 v18, p0

    move/from16 v19, v6

    move-object/from16 v24, v11

    move-object/from16 v26, v17

    .line 1089
    invoke-direct/range {v18 .. v26}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .local v10, gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .local v12, newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .local v9, redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .local v8, retryAfter:I
    move/from16 v7, v20

    .line 1092
    .end local v20           #countRetry:Z
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v74           #pm:Landroid/os/PowerManager;
    .local v7, countRetry:Z
    :goto_129
    return-void

    .line 132
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v15           #headerContentDisposition:Ljava/lang/String;
    .end local v16           #headerContentLocation:Ljava/lang/String;
    .end local v27           #DOWNLOAD_BUFFER_SIZE:I
    .end local v47           #continuingDownload:Z
    .end local v64           #headerAcceptRanges:Ljava/lang/String;
    .end local v65           #headerContentLength:Ljava/lang/String;
    .end local v66           #headerETag:Ljava/lang/String;
    .end local v67           #headerTransferEncoding:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_12a
    const/16 v5, 0x1000

    move/from16 v27, v5

    goto/16 :goto_7b

    .line 165
    .restart local v15       #headerContentDisposition:Ljava/lang/String;
    .restart local v16       #headerContentLocation:Ljava/lang/String;
    .restart local v27       #DOWNLOAD_BUFFER_SIZE:I
    .restart local v40       #bytesSoFar:I
    .restart local v47       #continuingDownload:Z
    .restart local v48       #data:[B
    .restart local v64       #headerAcceptRanges:Ljava/lang/String;
    .restart local v65       #headerContentLength:Ljava/lang/String;
    .restart local v66       #headerETag:Ljava/lang/String;
    .restart local v67       #headerTransferEncoding:Ljava/lang/String;
    .restart local v74       #pm:Landroid/os/PowerManager;
    :cond_130
    :try_start_130
    new-instance v59, Ljava/io/File;

    move-object/from16 v0, v59

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v59, f:Ljava/io/File;
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 167
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->length()J

    move-result-wide v61

    .line 168
    .local v61, fileLength:J
    const-wide/16 v13, 0x0

    cmp-long v5, v61, v13

    if-nez v5, :cond_2f0

    .line 170
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->delete()Z

    .line 171
    const/4 v11, 0x0

    .line 196
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    :cond_14c
    :goto_14c
    move/from16 v38, v40

    .line 199
    .local v38, bytesNotified:I
    const-wide/16 v84, 0x0

    .line 201
    .local v84, timeLastNotification:J
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v42

    .line 203
    if-eqz v81, :cond_189

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-nez v5, :cond_189

    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_189

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_189

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_181
    .catchall {:try_start_130 .. :try_end_181} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_181} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_181} :catch_48f

    move-result v5

    if-nez v5, :cond_189

    .line 214
    :try_start_184
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_583
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_399
    .catch Ljava/io/FileNotFoundException; {:try_start_184 .. :try_end_187} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_48f

    .line 215
    const/16 v81, 0x0

    .line 225
    :cond_189
    :goto_189
    :try_start_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-nez v5, :cond_1b3

    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b3

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b3

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b3

    .line 246
    :cond_1b3
    new-instance v75, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    move-object/from16 v0, v75

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 248
    .local v75, request:Lorg/apache/http/client/methods/HttpGet;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1e5

    .line 249
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initiating download for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    if-eqz v5, :cond_1fe

    .line 253
    const-string v5, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    move-object/from16 v0, v75

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    if-eqz v5, :cond_217

    .line 256
    const-string v5, "Referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    move-object/from16 v0, v75

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_217
    if-eqz v47, :cond_24a

    .line 259
    if-eqz v66, :cond_225

    .line 260
    const-string v5, "If-Match"

    move-object/from16 v0, v75

    move-object v1, v5

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_225
    const-string v5, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v75

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24a
    .catchall {:try_start_189 .. :try_end_24a} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_189 .. :try_end_24a} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_24a} :catch_48f

    .line 267
    :cond_24a
    :try_start_24a
    move-object/from16 v0, v42

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_251
    .catchall {:try_start_24a .. :try_end_251} :catchall_583
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24a .. :try_end_251} :catch_420
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_251} :catch_4f6
    .catch Ljava/io/FileNotFoundException; {:try_start_24a .. :try_end_251} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_251} :catch_48f

    move-result-object v76

    .line 299
    .local v76, response:Lorg/apache/http/HttpResponse;
    :try_start_252
    invoke-interface/range {v76 .. v76}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v79

    .line 300
    .local v79, statusCode:I
    const/16 v5, 0x1f7

    move/from16 v0, v79

    move v1, v5

    if-ne v0, v1, :cond_5e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_5e2

    .line 301
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_276

    .line 302
    const-string v5, "DownloadManager"

    const-string v7, "got HTTP response code 503"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_276
    .catchall {:try_start_252 .. :try_end_276} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_252 .. :try_end_276} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_276} :catch_48f

    .line 304
    :cond_276
    const/16 v6, 0xc1

    .line 305
    const/4 v7, 0x1

    .line 306
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    :try_start_279
    const-string v5, "Retry-After"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_281
    .catchall {:try_start_279 .. :try_end_281} :catchall_2c76
    .catch Ljava/io/FileNotFoundException; {:try_start_279 .. :try_end_281} :catch_2d0d
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_281} :catch_2cbf

    move-result-object v63

    .line 307
    .local v63, header:Lorg/apache/http/Header;
    if-eqz v63, :cond_2d70

    .line 309
    :try_start_284
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_2a4

    .line 310
    const-string v5, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retry-After :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2a4
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2ab
    .catchall {:try_start_284 .. :try_end_2ab} :catchall_2c76
    .catch Ljava/lang/NumberFormatException; {:try_start_284 .. :try_end_2ab} :catch_2d58
    .catch Ljava/io/FileNotFoundException; {:try_start_284 .. :try_end_2ab} :catch_2d0d
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_2ab} :catch_2cbf

    move-result v8

    .line 313
    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    if-gez v8, :cond_5c6

    .line 314
    const/4 v8, 0x0

    .line 328
    :goto_2af
    :try_start_2af
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2b2
    .catchall {:try_start_2af .. :try_end_2b2} :catchall_2c82
    .catch Ljava/io/FileNotFoundException; {:try_start_2af .. :try_end_2b2} :catch_2d1a
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2b2} :catch_2ccc

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .line 908
    .end local v22           #redirectCount:I
    .end local v63           #header:Lorg/apache/http/Header;
    .end local v76           #response:Lorg/apache/http/HttpResponse;
    .end local v79           #statusCode:I
    .restart local v9       #redirectCount:I
    :goto_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v13, 0x0

    iput-boolean v13, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_2c7

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_2c7
    if-eqz v42, :cond_2ce

    .line 914
    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_2ce
    if-eqz v81, :cond_2d3

    .line 920
    :try_start_2d0
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d3
    .catch Ljava/io/IOException; {:try_start_2d0 .. :try_end_2d3} :catch_1d7d

    .line 928
    :cond_2d3
    :goto_2d3
    if-eqz v11, :cond_2e7

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_1d9f

    .line 932
    if-eqz v53, :cond_1e73

    .line 934
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v84           #timeLastNotification:J
    :cond_2e7
    :goto_2e7
    move-object/from16 v5, p0

    move-object/from16 v13, v17

    .line 1089
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_129

    .line 172
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v59       #f:Ljava/io/File;
    .restart local v61       #fileLength:J
    .restart local v74       #pm:Landroid/os/PowerManager;
    :cond_2f0
    :try_start_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    if-nez v5, :cond_365

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    if-nez v5, :cond_365

    .line 175
    const-string v5, "DownloadManager"

    const-string v7, "can\'t resume interrupted non-resumable download"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->delete()Z

    .line 179
    const/16 v6, 0x19c

    .line 180
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v13, v5, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31f
    .catchall {:try_start_2f0 .. :try_end_31f} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_2f0 .. :try_end_31f} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_31f} :catch_48f

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_32e

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_32e
    if-eqz v42, :cond_335

    .line 914
    #Replaced unresolvable odex instruction with a throw
    throw v42
    #invoke-virtual-quick/range {v42 .. v42}, vtable@0xb

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_335
    if-eqz v81, :cond_33a

    .line 920
    :try_start_337
    #Replaced unresolvable odex instruction with a throw
    throw v81
    #invoke-virtual-quick/range {v81 .. v81}, vtable@0xb
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_33a} :catch_2020

    .line 928
    :cond_33a
    :goto_33a
    if-eqz v11, :cond_34e

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_2042

    .line 932
    if-eqz v53, :cond_2119

    .line 934
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    :cond_34e
    :goto_34e
    move-object/from16 v18, p0

    move/from16 v19, v6

    move-object/from16 v24, v11

    move-object/from16 v26, v17

    .line 1089
    invoke-direct/range {v18 .. v26}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 182
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_129

    .line 185
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_365
    :try_start_365
    new-instance v82, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, v82

    move-object v1, v11

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_36f
    .catchall {:try_start_365 .. :try_end_36f} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_365 .. :try_end_36f} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_36f} :catch_48f

    .line 186
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .local v82, stream:Ljava/io/FileOutputStream;
    move-wide/from16 v0, v61

    long-to-int v0, v0

    move/from16 v40, v0

    .line 187
    :try_start_374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->totalBytes:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_389

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->totalBytes:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 190
    :cond_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    move-object/from16 v66, v0
    :try_end_393
    .catchall {:try_start_374 .. :try_end_393} :catchall_2c66
    .catch Ljava/io/FileNotFoundException; {:try_start_374 .. :try_end_393} :catch_2cfc
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_393} :catch_2cae

    .line 191
    const/16 v47, 0x1

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_14c

    .line 216
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    .restart local v38       #bytesNotified:I
    .restart local v84       #timeLastNotification:J
    :catch_399
    move-exception v58

    .line 217
    .local v58, ex:Ljava/io/IOException;
    :try_start_39a
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_189

    .line 218
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when closing the file before download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b9
    .catchall {:try_start_39a .. :try_end_3b9} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_39a .. :try_end_3b9} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3b9} :catch_48f

    goto/16 :goto_189

    .line 893
    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v58           #ex:Ljava/io/IOException;
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v84           #timeLastNotification:J
    :catch_3bb
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 895
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    .local v58, ex:Ljava/io/FileNotFoundException;
    :goto_3c8
    :try_start_3c8
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileNotFoundException for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ed
    .catchall {:try_start_3c8 .. :try_end_3ed} :catchall_12a0

    .line 897
    const/16 v6, 0x1ec

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v13, 0x0

    iput-boolean v13, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_3fe

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_3fe
    if-eqz v42, :cond_405

    .line 914
    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_405
    if-eqz v81, :cond_40a

    .line 920
    :try_start_407
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_40a
    .catch Ljava/io/IOException; {:try_start_407 .. :try_end_40a} :catch_157e

    .line 928
    .end local v58           #ex:Ljava/io/FileNotFoundException;
    :cond_40a
    :goto_40a
    if-eqz v11, :cond_2e7

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_15a0

    .line 932
    if-eqz v53, :cond_1674

    .line 934
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    goto/16 :goto_2e7

    .line 268
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v74       #pm:Landroid/os/PowerManager;
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_420
    move-exception v58

    .line 269
    .local v58, ex:Ljava/lang/IllegalArgumentException;
    :try_start_421
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_462

    .line 270
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Arg exception trying to execute request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_451
    const/16 v6, 0x190

    .line 277
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 278
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 273
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_462
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Arg exception trying to execute request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48e
    .catchall {:try_start_421 .. :try_end_48e} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_421 .. :try_end_48e} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_421 .. :try_end_48e} :catch_48f

    goto :goto_451

    .line 899
    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v58           #ex:Ljava/lang/IllegalArgumentException;
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v84           #timeLastNotification:J
    :catch_48f
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 900
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    .local v58, ex:Ljava/lang/Exception;
    :goto_49c
    :try_start_49c
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_127b

    .line 901
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v58

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c3
    .catchall {:try_start_49c .. :try_end_4c3} :catchall_12a0

    .line 905
    :goto_4c3
    const/16 v6, 0x1eb

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v13, 0x0

    iput-boolean v13, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_4d4

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_4d4
    if-eqz v42, :cond_4db

    .line 914
    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_4db
    if-eqz v81, :cond_4e0

    .line 920
    :try_start_4dd
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e0
    .catch Ljava/io/IOException; {:try_start_4dd .. :try_end_4e0} :catch_1821

    .line 928
    .end local v58           #ex:Ljava/lang/Exception;
    :cond_4e0
    :goto_4e0
    if-eqz v11, :cond_2e7

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_1843

    .line 932
    if-eqz v53, :cond_1917

    .line 934
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    goto/16 :goto_2e7

    .line 279
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v74       #pm:Landroid/os/PowerManager;
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_4f6
    move-exception v58

    .line 280
    .local v58, ex:Ljava/io/IOException;
    :try_start_4f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_4ff
    .catchall {:try_start_4f7 .. :try_end_4ff} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_4f7 .. :try_end_4ff} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_4f7 .. :try_end_4ff} :catch_48f

    move-result v5

    if-nez v5, :cond_513

    .line 281
    const/16 v6, 0xc1

    move/from16 v7, v20

    .line 295
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    :goto_506
    :try_start_506
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_509
    .catchall {:try_start_506 .. :try_end_509} :catchall_2c76
    .catch Ljava/io/FileNotFoundException; {:try_start_506 .. :try_end_509} :catch_2d0d
    .catch Ljava/lang/Exception; {:try_start_506 .. :try_end_509} :catch_2cbf

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .line 296
    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2b8

    .line 282
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_513
    :try_start_513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_521

    .line 283
    const/16 v6, 0xc1

    .line 284
    const/4 v7, 0x1

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_506

    .line 286
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_521
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_556

    .line 287
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException trying to execute request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_551
    const/16 v6, 0x1ef

    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_506

    .line 290
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_556
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException trying to execute request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_582
    .catchall {:try_start_513 .. :try_end_582} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_513 .. :try_end_582} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_582} :catch_48f

    goto :goto_551

    .line 908
    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v58           #ex:Ljava/io/IOException;
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v84           #timeLastNotification:J
    :catchall_583
    move-exception v5

    move-object v14, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    :goto_58f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    const/4 v13, 0x0

    iput-boolean v13, v5, Lcom/android/providers/downloads/DownloadInfo;->hasActiveThread:Z

    .line 909
    if-eqz v87, :cond_59e

    .line 910
    invoke-virtual/range {v87 .. v87}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 911
    const/16 v87, 0x0

    .line 913
    :cond_59e
    if-eqz v42, :cond_5a5

    .line 914
    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 915
    const/16 v42, 0x0

    .line 919
    :cond_5a5
    if-eqz v81, :cond_5aa

    .line 920
    :try_start_5a7
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_5aa
    .catch Ljava/io/IOException; {:try_start_5a7 .. :try_end_5aa} :catch_12a4

    .line 928
    :cond_5aa
    :goto_5aa
    if-eqz v11, :cond_5be

    .line 930
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_12c9

    .line 932
    if-eqz v53, :cond_13bf

    .line 934
    const/4 v5, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, v54

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .end local v15           #headerContentDisposition:Ljava/lang/String;
    :cond_5be
    :goto_5be
    move-object/from16 v5, p0

    move-object/from16 v13, v17

    .line 1089
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    throw v14

    .line 316
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v15       #headerContentDisposition:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v63       #header:Lorg/apache/http/Header;
    .restart local v74       #pm:Landroid/os/PowerManager;
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v76       #response:Lorg/apache/http/HttpResponse;
    .restart local v79       #statusCode:I
    .restart local v84       #timeLastNotification:J
    :cond_5c6
    const/16 v5, 0x1e

    if-ge v8, v5, :cond_5d9

    .line 317
    const/16 v8, 0x1e

    .line 321
    :cond_5cc
    :goto_5cc
    :try_start_5cc
    sget-object v5, Lcom/android/providers/downloads/Helpers;->rnd:Ljava/util/Random;

    const/16 v9, 0x1f

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I
    :try_end_5d3
    .catchall {:try_start_5cc .. :try_end_5d3} :catchall_2c82
    .catch Ljava/lang/NumberFormatException; {:try_start_5cc .. :try_end_5d3} :catch_2d5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5cc .. :try_end_5d3} :catch_2d1a
    .catch Ljava/lang/Exception; {:try_start_5cc .. :try_end_5d3} :catch_2ccc

    move-result v5

    add-int/2addr v8, v5

    .line 322
    mul-int/lit16 v8, v8, 0x3e8

    goto/16 :goto_2af

    .line 318
    :cond_5d9
    const v5, 0x15180

    if-le v8, v5, :cond_5cc

    .line 319
    const v8, 0x15180

    goto :goto_5cc

    .line 331
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v63           #header:Lorg/apache/http/Header;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    :cond_5e2
    const/16 v5, 0x12d

    move/from16 v0, v79

    move v1, v5

    if-eq v0, v1, :cond_5fe

    const/16 v5, 0x12e

    move/from16 v0, v79

    move v1, v5

    if-eq v0, v1, :cond_5fe

    const/16 v5, 0x12f

    move/from16 v0, v79

    move v1, v5

    if-eq v0, v1, :cond_5fe

    const/16 v5, 0x133

    move/from16 v0, v79

    move v1, v5

    if-ne v0, v1, :cond_6df

    .line 335
    :cond_5fe
    :try_start_5fe
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_61d

    .line 336
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got HTTP redirect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_61d
    const/4 v5, 0x5

    move/from16 v0, v22

    move v1, v5

    if-lt v0, v1, :cond_688

    .line 339
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_668

    .line 340
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "too many redirects for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_657
    const/16 v6, 0x1f1

    .line 346
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 347
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 343
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_668
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "too many redirects for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_657

    .line 349
    :cond_688
    const-string v5, "Location"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 350
    .restart local v63       #header:Lorg/apache/http/Header;
    if-eqz v63, :cond_6df

    .line 351
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_6b3

    .line 352
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_6b3
    new-instance v5, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URI;

    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_6cf
    .catchall {:try_start_5fe .. :try_end_6cf} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_5fe .. :try_end_6cf} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_6cf} :catch_48f

    move-result-object v12

    .line 355
    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    add-int/lit8 v9, v22, 0x1

    .line 356
    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    const/16 v6, 0xc1

    .line 357
    :try_start_6d4
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6d7
    .catchall {:try_start_6d4 .. :try_end_6d7} :catchall_2c8c
    .catch Ljava/io/FileNotFoundException; {:try_start_6d4 .. :try_end_6d7} :catch_2d25
    .catch Ljava/lang/Exception; {:try_start_6d4 .. :try_end_6d7} :catch_2cd7

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 358
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 361
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v63           #header:Lorg/apache/http/Header;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_6df
    if-nez v47, :cond_6e8

    const/16 v5, 0xc8

    move/from16 v0, v79

    move v1, v5

    if-ne v0, v1, :cond_6f1

    :cond_6e8
    if-eqz v47, :cond_785

    const/16 v5, 0xce

    move/from16 v0, v79

    move v1, v5

    if-eq v0, v1, :cond_785

    .line 363
    :cond_6f1
    :try_start_6f1
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_738

    .line 364
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_721
    invoke-static/range {v79 .. v79}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_765

    .line 370
    move/from16 v6, v79

    .line 378
    :goto_729
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 379
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 366
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_738
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_721

    .line 371
    :cond_765
    const/16 v5, 0x12c

    move/from16 v0, v79

    move v1, v5

    if-lt v0, v1, :cond_776

    const/16 v5, 0x190

    move/from16 v0, v79

    move v1, v5

    if-ge v0, v1, :cond_776

    .line 372
    const/16 v6, 0x1ed

    goto :goto_729

    .line 373
    :cond_776
    if-eqz v47, :cond_782

    const/16 v5, 0xc8

    move/from16 v0, v79

    move v1, v5

    if-ne v0, v1, :cond_782

    .line 374
    const/16 v6, 0x19c

    goto :goto_729

    .line 376
    :cond_782
    const/16 v6, 0x1ee

    goto :goto_729

    .line 382
    :cond_785
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_7a8

    .line 383
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received response for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_7a8
    const/16 v45, -0x1

    .line 387
    .local v45, contentLength:I
    const/16 v69, 0x1000

    .line 389
    .local v69, nMinUpdateSize:I
    if-nez v47, :cond_ac5

    .line 390
    const-string v5, "Accept-Ranges"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 391
    .restart local v63       #header:Lorg/apache/http/Header;
    if-eqz v63, :cond_7bd

    .line 392
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v64

    .line 394
    :cond_7bd
    const-string v5, "Content-Disposition"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 395
    if-eqz v63, :cond_7cc

    .line 396
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 398
    :cond_7cc
    const-string v5, "Content-Location"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 399
    if-eqz v63, :cond_7db

    .line 400
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 402
    :cond_7db
    if-nez v17, :cond_7f3

    .line 403
    const-string v5, "Content-Type"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 404
    if-eqz v63, :cond_7f3

    .line 405
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 408
    :cond_7f3
    const-string v5, "ETag"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 409
    if-eqz v63, :cond_802

    .line 410
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v66

    .line 412
    :cond_802
    const-string v5, "Transfer-Encoding"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 413
    if-eqz v63, :cond_811

    .line 414
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v67

    .line 416
    :cond_811
    if-nez v67, :cond_96b

    .line 417
    const-string v5, "Content-Length"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 418
    if-eqz v63, :cond_822

    .line 419
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v65

    .line 429
    :cond_822
    :goto_822
    const-string v5, "X-Oma-Drm-Separate-Delivery"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v63

    .line 430
    if-eqz v63, :cond_836

    .line 431
    invoke-interface/range {v63 .. v63}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    .line 438
    :cond_836
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Accept-Ranges: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ETag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transfer-Encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X-Oma-Drm-Separate-Delivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v65, :cond_920

    .line 450
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 452
    if-eqz v36, :cond_920

    .line 453
    if-lez v45, :cond_996

    .line 454
    const/high16 v5, 0x80

    move/from16 v0, v45

    move v1, v5

    if-le v0, v1, :cond_978

    .line 455
    mul-int/lit8 v69, v69, 0x10

    .line 469
    :cond_920
    :goto_920
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] Min update size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    if-nez v5, :cond_999

    if-nez v65, :cond_999

    if-eqz v67, :cond_953

    const-string v5, "chunked"

    move-object/from16 v0, v67

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_999

    .line 478
    :cond_953
    const-string v5, "DownloadManager"

    const-string v7, "can\'t know size of download, giving up"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v6, 0x19b

    .line 481
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 482
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 423
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_96b
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_822

    .line 424
    const-string v5, "DownloadManager"

    const-string v7, "ignoring content-length because of xfer-encoding"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_822

    .line 456
    :cond_978
    const/high16 v5, 0x40

    move/from16 v0, v45

    move v1, v5

    if-le v0, v1, :cond_982

    .line 457
    mul-int/lit8 v69, v69, 0x8

    goto :goto_920

    .line 458
    :cond_982
    const/high16 v5, 0x20

    move/from16 v0, v45

    move v1, v5

    if-le v0, v1, :cond_98c

    .line 459
    mul-int/lit8 v69, v69, 0x4

    goto :goto_920

    .line 460
    :cond_98c
    const/high16 v5, 0x10

    move/from16 v0, v45

    move v1, v5

    if-le v0, v1, :cond_920

    .line 461
    mul-int/lit8 v69, v69, 0x2

    goto :goto_920

    .line 464
    :cond_996
    mul-int/lit8 v69, v69, 0x4

    goto :goto_920

    .line 485
    :cond_999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v13, v5, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-object v14, v5, Lcom/android/providers/downloads/DownloadInfo;->hint:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    move/from16 v18, v0

    if-eqz v65, :cond_9dd

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v19, v5

    :goto_9be
    invoke-static/range {v12 .. v19}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/providers/downloads/DownloadFileInfo;

    move-result-object v60

    .line 495
    .local v60, fileInfo:Lcom/android/providers/downloads/DownloadFileInfo;
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadFileInfo;->filename:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_9e1

    .line 496
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/providers/downloads/DownloadFileInfo;->status:I

    move v6, v0

    .line 497
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 498
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 485
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v60           #fileInfo:Lcom/android/providers/downloads/DownloadFileInfo;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_9dd
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_9be

    .line 500
    .restart local v60       #fileInfo:Lcom/android/providers/downloads/DownloadFileInfo;
    :cond_9e1
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadFileInfo;->filename:Ljava/lang/String;

    move-object v11, v0

    .line 501
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadFileInfo;->stream:Ljava/io/FileOutputStream;

    move-object/from16 v81, v0

    .line 505
    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a0d

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a0d

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0f

    .line 509
    :cond_a0d
    const/16 v53, 0x1

    .line 511
    :cond_a0f
    if-eqz v53, :cond_a4b

    .line 512
    if-eqz v81, :cond_a4b

    .line 513
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 514
    const/16 v81, 0x0

    .line 515
    new-instance v59, Ljava/io/File;

    move-object/from16 v0, v59

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v59       #f:Ljava/io/File;
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v18, 0x0

    cmp-long v5, v13, v18

    if-nez v5, :cond_a4b

    .line 517
    invoke-virtual/range {v59 .. v59}, Ljava/io/File;->delete()Z

    .line 518
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file=[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v59           #f:Ljava/io/File;
    :cond_a4b
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v86, values:Landroid/content/ContentValues;
    const-string v5, "_data"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    if-eqz v66, :cond_a8e

    .line 530
    const-string v5, "etag"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_a8e
    if-eqz v17, :cond_a9a

    .line 533
    const-string v5, "mimetype"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_a9a
    const-string v5, "description"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v5, "total_bytes"

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ac5
    .catchall {:try_start_6f1 .. :try_end_ac5} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_6f1 .. :try_end_ac5} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_6f1 .. :try_end_ac5} :catch_48f

    .line 550
    .end local v60           #fileInfo:Lcom/android/providers/downloads/DownloadFileInfo;
    .end local v63           #header:Lorg/apache/http/Header;
    .end local v86           #values:Landroid/content/ContentValues;
    :cond_ac5
    :try_start_ac5
    invoke-interface/range {v76 .. v76}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_acc
    .catchall {:try_start_ac5 .. :try_end_acc} :catchall_583
    .catch Ljava/io/IOException; {:try_start_ac5 .. :try_end_acc} :catch_c50
    .catch Ljava/io/FileNotFoundException; {:try_start_ac5 .. :try_end_acc} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_ac5 .. :try_end_acc} :catch_48f

    move-result-object v57

    .line 571
    .local v57, entityStream:Ljava/io/InputStream;
    if-eqz v53, :cond_afa

    .line 572
    const/4 v5, 0x0

    :try_start_ad0
    move-object/from16 v0, v54

    move-object/from16 v1, v17

    move-object v2, v11

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v55

    .line 573
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_afa

    .line 574
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2. DRM processInit result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_afa
    .catchall {:try_start_ad0 .. :try_end_afa} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_ad0 .. :try_end_afa} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_ad0 .. :try_end_afa} :catch_48f

    :cond_afa
    move/from16 v10, v23

    .line 582
    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    :cond_afc
    :goto_afc
    if-eqz v37, :cond_cdf

    .line 583
    sub-int v5, v27, v70

    :try_start_b00
    move-object/from16 v0, v57

    move-object/from16 v1, v48

    move/from16 v2, v70

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_b0a
    .catchall {:try_start_b00 .. :try_end_b0a} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_b00 .. :try_end_b0a} :catch_ce9
    .catch Ljava/io/FileNotFoundException; {:try_start_b00 .. :try_end_b0a} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_b00 .. :try_end_b0a} :catch_e1f

    move-result v39

    .line 624
    .local v39, bytesRead:I
    :goto_b0b
    const/4 v5, -0x1

    move/from16 v0, v39

    move v1, v5

    if-ne v0, v1, :cond_1012

    .line 626
    :try_start_b11
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] Now last writing... nNumOfRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move/from16 v39, v70

    move-object/from16 v82, v81

    .line 629
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :goto_b30
    if-nez v39, :cond_e2c

    move-object/from16 v81, v82

    .line 690
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :cond_b34
    :goto_b34
    add-int v40, v40, v39

    .line 691
    const/16 v39, -0x1

    .line 693
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 694
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    if-nez v65, :cond_b59

    .line 696
    const-string v5, "total_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    :cond_b59
    if-eqz v33, :cond_bf6

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v49

    .line 702
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/high16 v7, 0x4100

    mul-float/2addr v5, v7

    sub-long v13, v49, v51

    long-to-float v7, v13

    div-float v30, v5, v7

    .line 703
    .local v30, Kbps:F
    const/high16 v5, 0x4480

    div-float v31, v30, v5

    .line 704
    .local v31, Mbps:F
    const/16 v80, 0x0

    .line 706
    .local v80, str_bps:Ljava/lang/String;
    const/high16 v5, 0x4480

    cmpl-float v5, v30, v5

    if-ltz v5, :cond_f2e

    .line 707
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v80

    .line 711
    :goto_b7b
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] bytesSoFar = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] elapsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v13, v49, v51

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/high16 v5, 0x4480

    cmpl-float v5, v30, v5

    if-ltz v5, :cond_f34

    .line 714
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] Download Performance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v5, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .end local v30           #Kbps:F
    .end local v31           #Mbps:F
    .end local v80           #str_bps:Ljava/lang/String;
    :cond_bf6
    :goto_bf6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    if-eqz v65, :cond_124c

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_124c

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    if-nez v5, :cond_f97

    if-nez v66, :cond_f97

    .line 729
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_f76

    .line 730
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mismatched content length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c44
    .catchall {:try_start_b11 .. :try_end_c44} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_b11 .. :try_end_c44} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_b11 .. :try_end_c44} :catch_e1f

    .line 736
    :goto_c44
    const/16 v6, 0x19b

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 551
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v39           #bytesRead:I
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :catch_c50
    move-exception v5

    move-object/from16 v58, v5

    .line 552
    .restart local v58       #ex:Ljava/io/IOException;
    :try_start_c53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_c5b
    .catchall {:try_start_c53 .. :try_end_c5b} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_c53 .. :try_end_c5b} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_c53 .. :try_end_c5b} :catch_48f

    move-result v5

    if-nez v5, :cond_c6f

    .line 553
    const/16 v6, 0xc1

    move/from16 v7, v20

    .line 567
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    :goto_c62
    :try_start_c62
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_c65
    .catchall {:try_start_c62 .. :try_end_c65} :catchall_2c76
    .catch Ljava/io/FileNotFoundException; {:try_start_c62 .. :try_end_c65} :catch_2d0d
    .catch Ljava/lang/Exception; {:try_start_c62 .. :try_end_c65} :catch_2cbf

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .line 568
    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2b8

    .line 554
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_c6f
    :try_start_c6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_c7d

    .line 555
    const/16 v6, 0xc1

    .line 556
    const/4 v7, 0x1

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_c62

    .line 558
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_c7d
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_cb2

    .line 559
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException getting entity for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_cad
    const/16 v6, 0x1ef

    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_c62

    .line 562
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_cb2
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException getting entity for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cde
    .catchall {:try_start_c6f .. :try_end_cde} :catchall_583
    .catch Ljava/io/FileNotFoundException; {:try_start_c6f .. :try_end_cde} :catch_3bb
    .catch Ljava/lang/Exception; {:try_start_c6f .. :try_end_cde} :catch_48f

    goto :goto_cad

    .line 587
    .end local v23           #gotData:Z
    .end local v58           #ex:Ljava/io/IOException;
    .restart local v10       #gotData:Z
    .restart local v57       #entityStream:Ljava/io/InputStream;
    :cond_cdf
    :try_start_cdf
    move-object/from16 v0, v57

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_ce6
    .catchall {:try_start_cdf .. :try_end_ce6} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_cdf .. :try_end_ce6} :catch_ce9
    .catch Ljava/io/FileNotFoundException; {:try_start_cdf .. :try_end_ce6} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_cdf .. :try_end_ce6} :catch_e1f

    move-result v39

    .restart local v39       #bytesRead:I
    goto/16 :goto_b0b

    .line 589
    .end local v39           #bytesRead:I
    :catch_ce9
    move-exception v5

    move-object/from16 v58, v5

    .line 590
    .restart local v58       #ex:Ljava/io/IOException;
    :try_start_cec
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    if-nez v5, :cond_d9e

    if-nez v66, :cond_d9e

    .line 594
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_d64

    .line 595
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download IOException for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_d4e
    const-string v5, "DownloadManager"

    const-string v7, "can\'t resume interrupted download with no ETag"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d55
    .catchall {:try_start_cec .. :try_end_d55} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_cec .. :try_end_d55} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_cec .. :try_end_d55} :catch_e1f

    .line 605
    const/16 v6, 0x19c

    move/from16 v7, v20

    .line 621
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    :goto_d59
    :try_start_d59
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_d5c
    .catchall {:try_start_d59 .. :try_end_d5c} :catchall_2c96
    .catch Ljava/io/FileNotFoundException; {:try_start_d59 .. :try_end_d5c} :catch_2d30
    .catch Ljava/lang/Exception; {:try_start_d59 .. :try_end_d5c} :catch_2ce2

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .line 622
    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2b8

    .line 598
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_d64
    :try_start_d64
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download IOException for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4e

    .line 893
    .end local v58           #ex:Ljava/io/IOException;
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_d91
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_3c8

    .line 606
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v58       #ex:Ljava/io/IOException;
    .restart local v86       #values:Landroid/content/ContentValues;
    :cond_d9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_dae

    .line 607
    const/16 v6, 0xc1

    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_d59

    .line 608
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_dae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_dbc

    .line 609
    const/16 v6, 0xc1

    .line 610
    const/4 v7, 0x1

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto :goto_d59

    .line 612
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_dbc
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_df2

    .line 613
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download IOException for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_dec
    const/16 v6, 0x1ef

    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_d59

    .line 616
    .end local v7           #countRetry:Z
    .restart local v20       #countRetry:Z
    :cond_df2
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download IOException for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1e
    .catchall {:try_start_d64 .. :try_end_e1e} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_d64 .. :try_end_e1e} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_d64 .. :try_end_e1e} :catch_e1f

    goto :goto_dec

    .line 899
    .end local v58           #ex:Ljava/io/IOException;
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_e1f
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_49c

    .line 633
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v39       #bytesRead:I
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_e2c
    if-eqz v53, :cond_e8b

    .line 634
    :try_start_e2e
    move-object/from16 v0, v54

    move-object/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v55

    .line 635
    if-eqz v55, :cond_2d6c

    .line 636
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The last DRM processUpdate ERROR! result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e7d
    .catchall {:try_start_e2e .. :try_end_e7d} :catchall_2ca0
    .catch Ljava/io/IOException; {:try_start_e2e .. :try_end_e7d} :catch_2d51
    .catch Ljava/io/FileNotFoundException; {:try_start_e2e .. :try_end_e7d} :catch_2d3b
    .catch Ljava/lang/Exception; {:try_start_e2e .. :try_end_e7d} :catch_2ced

    .line 641
    const/16 v6, 0x1eb

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 643
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 648
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_e8b
    const/4 v5, 0x1

    move/from16 v0, v35

    move v1, v5

    if-ne v0, v1, :cond_ec6

    move-object/from16 v81, v82

    .line 657
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :goto_e93
    :try_start_e93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-nez v5, :cond_b34

    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b34

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b34

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_eba
    .catchall {:try_start_e93 .. :try_end_eba} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_e93 .. :try_end_eba} :catch_ede
    .catch Ljava/io/FileNotFoundException; {:try_start_e93 .. :try_end_eba} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_e93 .. :try_end_eba} :catch_e1f

    move-result v5

    if-nez v5, :cond_b34

    .line 664
    if-eqz v81, :cond_b34

    .line 665
    :try_start_ebf
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_ec2
    .catchall {:try_start_ebf .. :try_end_ec2} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_ebf .. :try_end_ec2} :catch_efc
    .catch Ljava/io/FileNotFoundException; {:try_start_ebf .. :try_end_ec2} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_ebf .. :try_end_ec2} :catch_e1f

    .line 666
    const/16 v81, 0x0

    goto/16 :goto_b34

    .line 652
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_ec6
    if-nez v82, :cond_2d68

    .line 653
    :try_start_ec8
    new-instance v81, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, v81

    move-object v1, v11

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_ed2
    .catchall {:try_start_ec8 .. :try_end_ed2} :catchall_2ca0
    .catch Ljava/io/IOException; {:try_start_ec8 .. :try_end_ed2} :catch_2d51
    .catch Ljava/io/FileNotFoundException; {:try_start_ec8 .. :try_end_ed2} :catch_2d3b
    .catch Ljava/lang/Exception; {:try_start_ec8 .. :try_end_ed2} :catch_2ced

    .line 655
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :goto_ed2
    const/4 v5, 0x0

    :try_start_ed3
    move-object/from16 v0, v81

    move-object/from16 v1, v48

    move v2, v5

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_edd
    .catchall {:try_start_ed3 .. :try_end_edd} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_ed3 .. :try_end_edd} :catch_ede
    .catch Ljava/io/FileNotFoundException; {:try_start_ed3 .. :try_end_edd} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_ed3 .. :try_end_edd} :catch_e1f

    goto :goto_e93

    .line 681
    :catch_ede
    move-exception v5

    move-object/from16 v58, v5

    .line 682
    .restart local v58       #ex:Ljava/io/IOException;
    :goto_ee1
    :try_start_ee1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v13, v0

    invoke-static {v5, v13, v14}, Lcom/android/providers/downloads/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z
    :try_end_eed
    .catchall {:try_start_ee1 .. :try_end_eed} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_ee1 .. :try_end_eed} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_ee1 .. :try_end_eed} :catch_e1f

    move-result v5

    if-nez v5, :cond_f2a

    .line 684
    const/16 v6, 0x1ec

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 685
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 668
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v58           #ex:Ljava/io/IOException;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :catch_efc
    move-exception v58

    .line 669
    .restart local v58       #ex:Ljava/io/IOException;
    :try_start_efd
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_b34

    .line 670
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when closing the file during download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1c
    .catchall {:try_start_efd .. :try_end_f1c} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_efd .. :try_end_f1c} :catch_ede
    .catch Ljava/io/FileNotFoundException; {:try_start_efd .. :try_end_f1c} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_efd .. :try_end_f1c} :catch_e1f

    goto/16 :goto_b34

    .line 908
    .end local v39           #bytesRead:I
    .end local v58           #ex:Ljava/io/IOException;
    :catchall_f1e
    move-exception v5

    move-object v14, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_58f

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v39       #bytesRead:I
    .restart local v58       #ex:Ljava/io/IOException;
    :cond_f2a
    move-object/from16 v82, v81

    .line 687
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_b30

    .line 709
    .end local v58           #ex:Ljava/io/IOException;
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v30       #Kbps:F
    .restart local v31       #Mbps:F
    .restart local v80       #str_bps:Ljava/lang/String;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    .restart local v86       #values:Landroid/content/ContentValues;
    :cond_f2e
    :try_start_f2e
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v80

    goto/16 :goto_b7b

    .line 718
    :cond_f34
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] Download Performance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v5, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf6

    .line 733
    .end local v30           #Kbps:F
    .end local v31           #Mbps:F
    .end local v80           #str_bps:Ljava/lang/String;
    :cond_f76
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mismatched content length for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c44

    .line 737
    :cond_f97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_fae

    .line 738
    const/16 v6, 0xc1

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 739
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_fae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_fc3

    .line 740
    const/16 v6, 0xc1

    .line 741
    const/4 v7, 0x1

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2b8

    .line 743
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_fc3
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_ff2

    .line 744
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closed socket for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_fe6
    const/16 v6, 0x1ef

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 751
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 746
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_ff2
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closed socket for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe6

    .line 757
    .end local v86           #values:Landroid/content/ContentValues;
    :cond_1012
    if-eqz v37, :cond_105c

    .line 758
    add-int v70, v70, v39

    .line 759
    if-nez v39, :cond_1035

    .line 760
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] No read data... nNumOfRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_afc

    .line 763
    :cond_1035
    if-lez v39, :cond_103d

    move/from16 v0, v70

    move/from16 v1, v27

    if-lt v0, v1, :cond_afc

    .line 768
    :cond_103d
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[kylee@] Now writing... nNumOfRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1058
    .catchall {:try_start_f2e .. :try_end_1058} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_f2e .. :try_end_1058} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_f2e .. :try_end_1058} :catch_e1f

    .line 769
    move/from16 v39, v70

    .line 770
    const/16 v70, 0x0

    .line 775
    :cond_105c
    const/4 v10, 0x1

    move-object/from16 v82, v81

    .line 779
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :goto_105f
    if-eqz v53, :cond_10c1

    .line 780
    :try_start_1061
    move-object/from16 v0, v54

    move-object/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v55

    .line 781
    if-eqz v55, :cond_2d64

    .line 782
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3. DRM processUpdate ERROR! result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    const/16 v6, 0x1eb

    .line 788
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_10b5
    .catchall {:try_start_1061 .. :try_end_10b5} :catchall_2ca0
    .catch Ljava/io/IOException; {:try_start_1061 .. :try_end_10b5} :catch_2d4a
    .catch Ljava/io/FileNotFoundException; {:try_start_1061 .. :try_end_10b5} :catch_2d3b
    .catch Ljava/lang/Exception; {:try_start_1061 .. :try_end_10b5} :catch_2ced

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 789
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 794
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_10c1
    const/4 v5, 0x1

    move/from16 v0, v35

    move v1, v5

    if-ne v0, v1, :cond_1184

    move-object/from16 v81, v82

    .line 804
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :goto_10c9
    :try_start_10c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    if-nez v5, :cond_10fa

    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10fa

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10fa

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_10f0
    .catchall {:try_start_10c9 .. :try_end_10f0} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_10c9 .. :try_end_10f0} :catch_119d
    .catch Ljava/io/FileNotFoundException; {:try_start_10c9 .. :try_end_10f0} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_10c9 .. :try_end_10f0} :catch_e1f

    move-result v5

    if-nez v5, :cond_10fa

    .line 811
    if-eqz v81, :cond_10fa

    .line 812
    :try_start_10f5
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V
    :try_end_10f8
    .catchall {:try_start_10f5 .. :try_end_10f8} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_10f5 .. :try_end_10f8} :catch_11bb
    .catch Ljava/io/FileNotFoundException; {:try_start_10f5 .. :try_end_10f8} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_10f5 .. :try_end_10f8} :catch_e1f

    .line 813
    const/16 v81, 0x0

    .line 836
    :cond_10fa
    :goto_10fa
    add-int v40, v40, v39

    .line 837
    :try_start_10fc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    .line 840
    .local v71, now:J
    sub-int v5, v40, v38

    move v0, v5

    move/from16 v1, v69

    if-le v0, v1, :cond_1111

    sub-long v13, v71, v84

    const-wide/16 v18, 0x5dc

    cmp-long v5, v13, v18

    if-lez v5, :cond_1111

    .line 845
    if-eqz v34, :cond_11e1

    .line 863
    :cond_1111
    :goto_1111
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_1141

    .line 864
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    monitor-enter v5
    :try_end_1147
    .catchall {:try_start_10fc .. :try_end_1147} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_10fc .. :try_end_1147} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_10fc .. :try_end_1147} :catch_e1f

    .line 867
    :try_start_1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget v7, v7, Lcom/android/providers/downloads/DownloadInfo;->control:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_120e

    .line 868
    sget-boolean v7, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v7, :cond_1174

    .line 869
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "paused "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1174
    const/16 v6, 0xc1

    .line 872
    invoke-virtual/range {v75 .. v75}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 873
    monitor-exit v5
    :try_end_117a
    .catchall {:try_start_1147 .. :try_end_117a} :catchall_1249

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 799
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v71           #now:J
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_1184
    if-nez v82, :cond_2d60

    .line 800
    :try_start_1186
    new-instance v81, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, v81

    move-object v1, v11

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1190
    .catchall {:try_start_1186 .. :try_end_1190} :catchall_2ca0
    .catch Ljava/io/IOException; {:try_start_1186 .. :try_end_1190} :catch_2d4a
    .catch Ljava/io/FileNotFoundException; {:try_start_1186 .. :try_end_1190} :catch_2d3b
    .catch Ljava/lang/Exception; {:try_start_1186 .. :try_end_1190} :catch_2ced

    .line 802
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :goto_1190
    const/4 v5, 0x0

    :try_start_1191
    move-object/from16 v0, v81

    move-object/from16 v1, v48

    move v2, v5

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_119b
    .catchall {:try_start_1191 .. :try_end_119b} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_1191 .. :try_end_119b} :catch_119d
    .catch Ljava/io/FileNotFoundException; {:try_start_1191 .. :try_end_119b} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_1191 .. :try_end_119b} :catch_e1f

    goto/16 :goto_10c9

    .line 828
    :catch_119d
    move-exception v5

    move-object/from16 v58, v5

    .line 829
    .restart local v58       #ex:Ljava/io/IOException;
    :goto_11a0
    :try_start_11a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v13, v0

    invoke-static {v5, v13, v14}, Lcom/android/providers/downloads/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z
    :try_end_11ac
    .catchall {:try_start_11a0 .. :try_end_11ac} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_11a0 .. :try_end_11ac} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_11a0 .. :try_end_11ac} :catch_e1f

    move-result v5

    if-nez v5, :cond_11dd

    .line 831
    const/16 v6, 0x1ec

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 832
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 815
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v58           #ex:Ljava/io/IOException;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :catch_11bb
    move-exception v58

    .line 816
    .restart local v58       #ex:Ljava/io/IOException;
    :try_start_11bc
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_10fa

    .line 817
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when closing the file during download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11db
    .catchall {:try_start_11bc .. :try_end_11db} :catchall_f1e
    .catch Ljava/io/IOException; {:try_start_11bc .. :try_end_11db} :catch_119d
    .catch Ljava/io/FileNotFoundException; {:try_start_11bc .. :try_end_11db} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_11bc .. :try_end_11db} :catch_e1f

    goto/16 :goto_10fa

    :cond_11dd
    move-object/from16 v82, v81

    .line 834
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_105f

    .line 850
    .end local v58           #ex:Ljava/io/IOException;
    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v71       #now:J
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    :cond_11e1
    :try_start_11e1
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 851
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "current_bytes"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v86

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v86

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1208
    .catchall {:try_start_11e1 .. :try_end_1208} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_11e1 .. :try_end_1208} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_11e1 .. :try_end_1208} :catch_e1f

    .line 854
    move/from16 v38, v40

    .line 855
    move-wide/from16 v84, v71

    .line 857
    goto/16 :goto_1111

    .line 875
    .end local v86           #values:Landroid/content/ContentValues;
    :cond_120e
    :try_start_120e
    monitor-exit v5
    :try_end_120f
    .catchall {:try_start_120e .. :try_end_120f} :catchall_1249

    .line 876
    :try_start_120f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v7, 0x1ea

    if-ne v5, v7, :cond_afc

    .line 877
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_123d

    .line 878
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canceled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123d
    .catchall {:try_start_120f .. :try_end_123d} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_120f .. :try_end_123d} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_120f .. :try_end_123d} :catch_e1f

    .line 882
    :cond_123d
    const/16 v6, 0x1ea

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 883
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 875
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    :catchall_1249
    move-exception v7

    :try_start_124a
    monitor-exit v5
    :try_end_124b
    .catchall {:try_start_124a .. :try_end_124b} :catchall_1249

    :try_start_124b
    throw v7

    .line 886
    .end local v71           #now:J
    .restart local v86       #values:Landroid/content/ContentValues;
    :cond_124c
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_126f

    .line 887
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download completed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126f
    .catchall {:try_start_124b .. :try_end_126f} :catchall_f1e
    .catch Ljava/io/FileNotFoundException; {:try_start_124b .. :try_end_126f} :catch_d91
    .catch Ljava/lang/Exception; {:try_start_124b .. :try_end_126f} :catch_e1f

    .line 889
    :cond_126f
    const/16 v6, 0xc8

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 891
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_2b8

    .line 903
    .end local v38           #bytesNotified:I
    .end local v39           #bytesRead:I
    .end local v40           #bytesSoFar:I
    .end local v45           #contentLength:I
    .end local v48           #data:[B
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v69           #nMinUpdateSize:I
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v76           #response:Lorg/apache/http/HttpResponse;
    .end local v79           #statusCode:I
    .end local v84           #timeLastNotification:J
    .end local v86           #values:Landroid/content/ContentValues;
    .local v58, ex:Ljava/lang/Exception;
    :cond_127b
    :try_start_127b
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v14, v0

    iget v14, v14, Lcom/android/providers/downloads/DownloadInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v58

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_129e
    .catchall {:try_start_127b .. :try_end_129e} :catchall_12a0

    goto/16 :goto_4c3

    .line 908
    .end local v58           #ex:Ljava/lang/Exception;
    :catchall_12a0
    move-exception v5

    move-object v14, v5

    goto/16 :goto_58f

    .line 922
    :catch_12a4
    move-exception v58

    .line 923
    .local v58, ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_5aa

    .line 924
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "exception when closing the file after download : "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5aa

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_12c9
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_13ca

    if-eqz v53, :cond_13ca

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_12f7

    .line 952
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "3. DRM processUpdate result = "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_12f7
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1321

    .line 956
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "4. DRM processStatus result = "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1321
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .local v43, component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mContext packagename:"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, "||"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-class v18, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_13a7

    .line 965
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "5. DRM processEnd result = "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_13a7
    const/4 v5, 0x0

    :try_start_13a8
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v77

    .line 986
    .local v77, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_13e1

    .line 988
    const-string v5, "DownloadManager"

    const-string v13, "createContentSession() : Fail"

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b5
    .catch Ljava/lang/SecurityException; {:try_start_13a8 .. :try_end_13b5} :catch_13b7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_13a8 .. :try_end_13b5} :catch_13f4

    goto/16 :goto_129

    .line 1070
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_13b7
    move-exception v5

    move-object/from16 v56, v5

    .line 1072
    .local v56, e:Ljava/lang/SecurityException;
    :goto_13ba
    invoke-virtual/range {v56 .. v56}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_129

    .line 937
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v56           #e:Ljava/lang/SecurityException;
    :cond_13bf
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_5be

    .line 1084
    :cond_13ca
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_5be

    .line 1086
    const/16 v5, 0x1a4

    const/4 v13, -0x1

    const/4 v15, -0x1

    invoke-static {v11, v5, v13, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_5be

    .line 1075
    .restart local v38       #bytesNotified:I
    .restart local v40       #bytesSoFar:I
    .restart local v43       #component:Landroid/content/ComponentName;
    .restart local v48       #data:[B
    .restart local v74       #pm:Landroid/os/PowerManager;
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_13d9
    move-exception v5

    move-object/from16 v56, v5

    .line 1077
    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v48           #data:[B
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v84           #timeLastNotification:J
    .local v56, e:Landroid/lge/lgdrm/DrmException;
    :goto_13dc
    invoke-virtual/range {v56 .. v56}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_129

    .line 993
    .end local v56           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_13e1
    const/4 v5, 0x1

    :try_start_13e2
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v44

    .line 994
    .local v44, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_13f8

    .line 996
    const-string v5, "DownloadManager"

    const-string v13, "getSelectedContent(true) : Fail"

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 1075
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_13f4
    move-exception v5

    move-object/from16 v56, v5

    goto :goto_13dc

    .line 1001
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_13f8
    const/4 v5, 0x3

    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v41

    .line 1002
    .local v41, cid:Ljava/lang/String;
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "cid"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v5, "mimetype"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v13, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v86

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1007
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "update CID : "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v29

    .line 1011
    .local v29, DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .local v73, permission:I
    if-lez v29, :cond_1474

    .line 1013
    packed-switch v29, :pswitch_data_2d74

    .line 1029
    :cond_1474
    :goto_1474
    const/4 v5, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v78

    .line 1030
    .local v78, status:I
    if-eqz v78, :cond_5be

    .line 1032
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, ": rights not vaild"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v6, 0x122

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5be

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .local v28, Delay:I
    const/16 v6, 0x123

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v13, "alarm"

    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/AlarmManager;

    .line 1045
    .local v32, alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_14d5

    .line 1046
    const-string v5, "DownloadManager"

    const-string v13, "couldn\'t get alarm manager"

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5be

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_14cc
    const/16 v73, 0x2

    .line 1017
    goto :goto_1474

    .line 1020
    :pswitch_14cf
    const/16 v73, 0x1

    .line 1021
    goto :goto_1474

    .line 1023
    :pswitch_14d2
    const/16 v73, 0x4

    .line 1024
    goto :goto_1474

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_14d5
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1500

    .line 1049
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "scheduling retry in "

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, "ms"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1500
    new-instance v68, Landroid/content/Intent;

    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v68, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    if-eqz v11, :cond_152b

    .line 1055
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    :cond_152b
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"

    const/4 v13, 0x0

    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v13, v0

    const/16 v20, 0x0

    const/high16 v21, 0x4000

    move-object v0, v13

    move/from16 v1, v20

    move-object/from16 v2, v68

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, v32

    move v1, v5

    move-wide/from16 v2, v18

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1065
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set alarm manager for x-oma-separate-delivery:"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157c
    .catch Ljava/lang/SecurityException; {:try_start_13e2 .. :try_end_157c} :catch_13b7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_13e2 .. :try_end_157c} :catch_13f4

    goto/16 :goto_5be

    .line 922
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    .local v58, ex:Ljava/io/FileNotFoundException;
    :catch_157e
    move-exception v58

    .line 923
    .local v58, ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_40a

    .line 924
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception when closing the file after download : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40a

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_15a0
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_167f

    if-eqz v53, :cond_167f

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_15c8

    .line 952
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "3. DRM processUpdate result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_15c8
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_15ec

    .line 956
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "4. DRM processStatus result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_15ec
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .restart local v43       #component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContext packagename:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "||"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-class v14, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_165f

    .line 965
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "5. DRM processEnd result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_165f
    const/4 v5, 0x0

    :try_start_1660
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;
    :try_end_1663
    .catch Ljava/lang/SecurityException; {:try_start_1660 .. :try_end_1663} :catch_2ad1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1660 .. :try_end_1663} :catch_2928

    move-result-object v77

    .line 986
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_168e

    .line 988
    :try_start_1666
    const-string v5, "DownloadManager"
    :try_end_1668
    .catch Ljava/lang/SecurityException; {:try_start_1666 .. :try_end_1668} :catch_2ad6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1666 .. :try_end_1668} :catch_292d

    :try_start_1668
    const-string v13, "createContentSession() : Fail"
    :try_end_166a
    .catch Ljava/lang/SecurityException; {:try_start_1668 .. :try_end_166a} :catch_2ae0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1668 .. :try_end_166a} :catch_2937

    :try_start_166a
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166d
    .catch Ljava/lang/SecurityException; {:try_start_166a .. :try_end_166d} :catch_166f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_166a .. :try_end_166d} :catch_293c

    goto/16 :goto_129

    .line 1070
    :catch_166f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 937
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1674
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_2e7

    .line 1084
    :cond_167f
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2e7

    .line 1086
    const/16 v5, 0x1a4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v5, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_2e7

    .line 993
    .restart local v43       #component:Landroid/content/ComponentName;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_168e
    const/4 v5, 0x1

    :try_start_168f
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;
    :try_end_1695
    .catch Ljava/lang/SecurityException; {:try_start_168f .. :try_end_1695} :catch_2adb
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_168f .. :try_end_1695} :catch_2932

    move-result-object v44

    .line 994
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_16a6

    .line 996
    :try_start_1698
    const-string v5, "DownloadManager"
    :try_end_169a
    .catch Ljava/lang/SecurityException; {:try_start_1698 .. :try_end_169a} :catch_2ae5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1698 .. :try_end_169a} :catch_2941

    :try_start_169a
    const-string v13, "getSelectedContent(true) : Fail"
    :try_end_169c
    .catch Ljava/lang/SecurityException; {:try_start_169a .. :try_end_169c} :catch_2aef
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_169a .. :try_end_169c} :catch_294b

    :try_start_169c
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169f
    .catch Ljava/lang/SecurityException; {:try_start_169c .. :try_end_169f} :catch_16a1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_169c .. :try_end_169f} :catch_2950

    goto/16 :goto_129

    .line 1070
    :catch_16a1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1001
    :cond_16a6
    const/4 v5, 0x3

    :try_start_16a7
    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_16ad
    .catch Ljava/lang/SecurityException; {:try_start_16a7 .. :try_end_16ad} :catch_2aea
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16a7 .. :try_end_16ad} :catch_2946

    move-result-object v41

    .line 1002
    .restart local v41       #cid:Ljava/lang/String;
    :try_start_16ae
    new-instance v86, Landroid/content/ContentValues;
    :try_end_16b0
    .catch Ljava/lang/SecurityException; {:try_start_16ae .. :try_end_16b0} :catch_2af4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16ae .. :try_end_16b0} :catch_2955

    :try_start_16b0
    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V
    :try_end_16b3
    .catch Ljava/lang/SecurityException; {:try_start_16b0 .. :try_end_16b3} :catch_2af9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16b0 .. :try_end_16b3} :catch_295a

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    :try_start_16b3
    const-string v5, "cid"
    :try_end_16b5
    .catch Ljava/lang/SecurityException; {:try_start_16b3 .. :try_end_16b5} :catch_2afe
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16b3 .. :try_end_16b5} :catch_295f

    :try_start_16b5
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16bd
    .catch Ljava/lang/SecurityException; {:try_start_16b5 .. :try_end_16bd} :catch_2b03
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16b5 .. :try_end_16bd} :catch_2964

    .line 1004
    :try_start_16bd
    const-string v5, "mimetype"
    :try_end_16bf
    .catch Ljava/lang/SecurityException; {:try_start_16bd .. :try_end_16bf} :catch_2b08
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16bd .. :try_end_16bf} :catch_2969

    :try_start_16bf
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16c7
    .catch Ljava/lang/SecurityException; {:try_start_16bf .. :try_end_16c7} :catch_2b0d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16bf .. :try_end_16c7} :catch_296e

    .line 1005
    :try_start_16c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_16cc
    .catch Ljava/lang/SecurityException; {:try_start_16c7 .. :try_end_16cc} :catch_2b12
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16c7 .. :try_end_16cc} :catch_2973

    :try_start_16cc
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_16cf
    .catch Ljava/lang/SecurityException; {:try_start_16cc .. :try_end_16cf} :catch_2b17
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16cc .. :try_end_16cf} :catch_2978

    move-result-object v5

    :try_start_16d0
    sget-object v13, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;
    :try_end_16d2
    .catch Ljava/lang/SecurityException; {:try_start_16d0 .. :try_end_16d2} :catch_2b1c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16d0 .. :try_end_16d2} :catch_297d

    :try_start_16d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v14, v0
    :try_end_16d7
    .catch Ljava/lang/SecurityException; {:try_start_16d2 .. :try_end_16d7} :catch_2b21
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16d2 .. :try_end_16d7} :catch_2982

    :try_start_16d7
    iget v14, v14, Lcom/android/providers/downloads/DownloadInfo;->id:I
    :try_end_16d9
    .catch Ljava/lang/SecurityException; {:try_start_16d7 .. :try_end_16d9} :catch_2b26
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16d7 .. :try_end_16d9} :catch_2987

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :try_start_16dd
    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_16e3
    .catch Ljava/lang/SecurityException; {:try_start_16dd .. :try_end_16e3} :catch_2b2b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16dd .. :try_end_16e3} :catch_298c

    move-result-object v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    :try_start_16e7
    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v86

    move-object v3, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16f1
    .catch Ljava/lang/SecurityException; {:try_start_16e7 .. :try_end_16f1} :catch_2b30
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16e7 .. :try_end_16f1} :catch_2991

    .line 1007
    :try_start_16f1
    const-string v5, "DownloadManager"
    :try_end_16f3
    .catch Ljava/lang/SecurityException; {:try_start_16f1 .. :try_end_16f3} :catch_2b35
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16f1 .. :try_end_16f3} :catch_2996

    :try_start_16f3
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_16f5
    .catch Ljava/lang/SecurityException; {:try_start_16f3 .. :try_end_16f5} :catch_2b3a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16f3 .. :try_end_16f5} :catch_299b

    :try_start_16f5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_16f8
    .catch Ljava/lang/SecurityException; {:try_start_16f5 .. :try_end_16f8} :catch_2b3f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16f5 .. :try_end_16f8} :catch_29a0

    :try_start_16f8
    const-string v14, "update CID : "
    :try_end_16fa
    .catch Ljava/lang/SecurityException; {:try_start_16f8 .. :try_end_16fa} :catch_2b44
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16f8 .. :try_end_16fa} :catch_29a5

    :try_start_16fa
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16fd
    .catch Ljava/lang/SecurityException; {:try_start_16fa .. :try_end_16fd} :catch_2b49
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16fa .. :try_end_16fd} :catch_29aa

    move-result-object v13

    :try_start_16fe
    move-object v0, v13

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1704
    .catch Ljava/lang/SecurityException; {:try_start_16fe .. :try_end_1704} :catch_2b4e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_16fe .. :try_end_1704} :catch_29af

    move-result-object v13

    :try_start_1705
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1708
    .catch Ljava/lang/SecurityException; {:try_start_1705 .. :try_end_1708} :catch_2b53
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1705 .. :try_end_1708} :catch_29b4

    move-result-object v13

    :try_start_1709
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170c
    .catch Ljava/lang/SecurityException; {:try_start_1709 .. :try_end_170c} :catch_2b58
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1709 .. :try_end_170c} :catch_29b9

    .line 1010
    :try_start_170c
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I
    :try_end_170f
    .catch Ljava/lang/SecurityException; {:try_start_170c .. :try_end_170f} :catch_2b5d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_170c .. :try_end_170f} :catch_29be

    move-result v29

    .line 1011
    .restart local v29       #DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .restart local v73       #permission:I
    if-lez v29, :cond_1717

    .line 1013
    packed-switch v29, :pswitch_data_2d80

    .line 1029
    :cond_1717
    :goto_1717
    const/4 v5, 0x0

    :try_start_1718
    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I
    :try_end_1720
    .catch Ljava/lang/SecurityException; {:try_start_1718 .. :try_end_1720} :catch_2b62
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1718 .. :try_end_1720} :catch_29c3

    move-result v78

    .line 1030
    .restart local v78       #status:I
    if-eqz v78, :cond_2e7

    .line 1032
    :try_start_1723
    const-string v5, "DownloadManager"
    :try_end_1725
    .catch Ljava/lang/SecurityException; {:try_start_1723 .. :try_end_1725} :catch_2b67
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1723 .. :try_end_1725} :catch_29c8

    :try_start_1725
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1727
    .catch Ljava/lang/SecurityException; {:try_start_1725 .. :try_end_1727} :catch_2b6c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1725 .. :try_end_1727} :catch_29cd

    :try_start_1727
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_172a
    .catch Ljava/lang/SecurityException; {:try_start_1727 .. :try_end_172a} :catch_2b71
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1727 .. :try_end_172a} :catch_29d2

    :try_start_172a
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_172d
    .catch Ljava/lang/SecurityException; {:try_start_172a .. :try_end_172d} :catch_2b76
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_172a .. :try_end_172d} :catch_29d7

    move-result-object v13

    :try_start_172e
    const-string v14, ": rights not vaild"
    :try_end_1730
    .catch Ljava/lang/SecurityException; {:try_start_172e .. :try_end_1730} :catch_2b7b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_172e .. :try_end_1730} :catch_29dc

    :try_start_1730
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1733
    .catch Ljava/lang/SecurityException; {:try_start_1730 .. :try_end_1733} :catch_2b80
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1730 .. :try_end_1733} :catch_29e1

    move-result-object v13

    :try_start_1734
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1737
    .catch Ljava/lang/SecurityException; {:try_start_1734 .. :try_end_1737} :catch_2b85
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1734 .. :try_end_1737} :catch_29e6

    move-result-object v13

    :try_start_1738
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173b
    .catch Ljava/lang/SecurityException; {:try_start_1738 .. :try_end_173b} :catch_2b8a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1738 .. :try_end_173b} :catch_29eb

    .line 1033
    const/16 v6, 0x122

    .line 1036
    :try_start_173d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_1742
    .catch Ljava/lang/SecurityException; {:try_start_173d .. :try_end_1742} :catch_2b8f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_173d .. :try_end_1742} :catch_29f0

    if-eqz v5, :cond_2e7

    .line 1038
    :try_start_1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_1749
    .catch Ljava/lang/SecurityException; {:try_start_1744 .. :try_end_1749} :catch_2b94
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1744 .. :try_end_1749} :catch_29f5

    :try_start_1749
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_174c
    .catch Ljava/lang/SecurityException; {:try_start_1749 .. :try_end_174c} :catch_2b99
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1749 .. :try_end_174c} :catch_29fa

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .restart local v28       #Delay:I
    const/16 v6, 0x123

    .line 1042
    :try_start_1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_1759
    .catch Ljava/lang/SecurityException; {:try_start_1754 .. :try_end_1759} :catch_2b9e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1754 .. :try_end_1759} :catch_29ff

    :try_start_1759
    const-string v13, "alarm"
    :try_end_175b
    .catch Ljava/lang/SecurityException; {:try_start_1759 .. :try_end_175b} :catch_2ba3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1759 .. :try_end_175b} :catch_2a04

    :try_start_175b
    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_175e
    .catch Ljava/lang/SecurityException; {:try_start_175b .. :try_end_175e} :catch_2ba8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_175b .. :try_end_175e} :catch_2a09

    move-result-object v32

    :try_start_175f
    check-cast v32, Landroid/app/AlarmManager;
    :try_end_1761
    .catch Ljava/lang/SecurityException; {:try_start_175f .. :try_end_1761} :catch_2bad
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_175f .. :try_end_1761} :catch_2a0e

    .line 1045
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_177a

    .line 1046
    :try_start_1763
    const-string v5, "DownloadManager"
    :try_end_1765
    .catch Ljava/lang/SecurityException; {:try_start_1763 .. :try_end_1765} :catch_2bb2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1763 .. :try_end_1765} :catch_2a13

    :try_start_1765
    const-string v13, "couldn\'t get alarm manager"
    :try_end_1767
    .catch Ljava/lang/SecurityException; {:try_start_1765 .. :try_end_1767} :catch_2bbc
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1765 .. :try_end_1767} :catch_2a1d

    :try_start_1767
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176a
    .catch Ljava/lang/SecurityException; {:try_start_1767 .. :try_end_176a} :catch_176c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1767 .. :try_end_176a} :catch_2a22

    goto/16 :goto_2e7

    .line 1070
    :catch_176c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_1771
    const/16 v73, 0x2

    .line 1017
    goto :goto_1717

    .line 1020
    :pswitch_1774
    const/16 v73, 0x1

    .line 1021
    goto :goto_1717

    .line 1023
    :pswitch_1777
    const/16 v73, 0x4

    .line 1024
    goto :goto_1717

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_177a
    :try_start_177a
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z
    :try_end_177c
    .catch Ljava/lang/SecurityException; {:try_start_177a .. :try_end_177c} :catch_2bb7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_177a .. :try_end_177c} :catch_2a18

    if-eqz v5, :cond_179f

    .line 1049
    :try_start_177e
    const-string v5, "DownloadManager"
    :try_end_1780
    .catch Ljava/lang/SecurityException; {:try_start_177e .. :try_end_1780} :catch_2bc1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_177e .. :try_end_1780} :catch_2a27

    :try_start_1780
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1782
    .catch Ljava/lang/SecurityException; {:try_start_1780 .. :try_end_1782} :catch_2bcb
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1780 .. :try_end_1782} :catch_2a31

    :try_start_1782
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1785
    .catch Ljava/lang/SecurityException; {:try_start_1782 .. :try_end_1785} :catch_2bd0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1782 .. :try_end_1785} :catch_2a36

    :try_start_1785
    const-string v14, "scheduling retry in "
    :try_end_1787
    .catch Ljava/lang/SecurityException; {:try_start_1785 .. :try_end_1787} :catch_2bd5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1785 .. :try_end_1787} :catch_2a3b

    :try_start_1787
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_178a
    .catch Ljava/lang/SecurityException; {:try_start_1787 .. :try_end_178a} :catch_2bda
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1787 .. :try_end_178a} :catch_2a40

    move-result-object v13

    :try_start_178b
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1791
    .catch Ljava/lang/SecurityException; {:try_start_178b .. :try_end_1791} :catch_2bdf
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_178b .. :try_end_1791} :catch_2a45

    move-result-object v13

    :try_start_1792
    const-string v14, "ms"
    :try_end_1794
    .catch Ljava/lang/SecurityException; {:try_start_1792 .. :try_end_1794} :catch_2be4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1792 .. :try_end_1794} :catch_2a4a

    :try_start_1794
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1797
    .catch Ljava/lang/SecurityException; {:try_start_1794 .. :try_end_1797} :catch_2be9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1794 .. :try_end_1797} :catch_2a4f

    move-result-object v13

    :try_start_1798
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_179b
    .catch Ljava/lang/SecurityException; {:try_start_1798 .. :try_end_179b} :catch_2bee
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1798 .. :try_end_179b} :catch_2a54

    move-result-object v13

    :try_start_179c
    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179f
    .catch Ljava/lang/SecurityException; {:try_start_179c .. :try_end_179f} :catch_2bf3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_179c .. :try_end_179f} :catch_2a59

    .line 1051
    :cond_179f
    :try_start_179f
    new-instance v68, Landroid/content/Intent;
    :try_end_17a1
    .catch Ljava/lang/SecurityException; {:try_start_179f .. :try_end_17a1} :catch_2bc6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_179f .. :try_end_17a1} :catch_2a2c

    :try_start_17a1
    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"
    :try_end_17a3
    .catch Ljava/lang/SecurityException; {:try_start_17a1 .. :try_end_17a3} :catch_2bf8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17a1 .. :try_end_17a3} :catch_2a5e

    :try_start_17a3
    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_17a9
    .catch Ljava/lang/SecurityException; {:try_start_17a3 .. :try_end_17a9} :catch_2bfd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17a3 .. :try_end_17a9} :catch_2a63

    .line 1052
    .restart local v68       #intent:Landroid/content/Intent;
    :try_start_17a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_17ae
    .catch Ljava/lang/SecurityException; {:try_start_17a9 .. :try_end_17ae} :catch_2c02
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17a9 .. :try_end_17ae} :catch_2a68

    :try_start_17ae
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_17b1
    .catch Ljava/lang/SecurityException; {:try_start_17ae .. :try_end_17b1} :catch_2c07
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17ae .. :try_end_17b1} :catch_2a6d

    move-result-object v5

    :try_start_17b2
    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;
    :try_end_17b4
    .catch Ljava/lang/SecurityException; {:try_start_17b2 .. :try_end_17b4} :catch_2c0c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17b2 .. :try_end_17b4} :catch_2a72

    :try_start_17b4
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_17b7
    .catch Ljava/lang/SecurityException; {:try_start_17b4 .. :try_end_17b7} :catch_2c11
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17b4 .. :try_end_17b7} :catch_2a77

    move-result-object v13

    :try_start_17b8
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17bf
    .catch Ljava/lang/SecurityException; {:try_start_17b8 .. :try_end_17bf} :catch_2c16
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17b8 .. :try_end_17bf} :catch_2a7c

    .line 1054
    if-eqz v11, :cond_17ca

    .line 1055
    :try_start_17c1
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"
    :try_end_17c3
    .catch Ljava/lang/SecurityException; {:try_start_17c1 .. :try_end_17c3} :catch_2c1b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17c1 .. :try_end_17c3} :catch_2a81

    :try_start_17c3
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17ca
    .catch Ljava/lang/SecurityException; {:try_start_17c3 .. :try_end_17ca} :catch_2c25
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17c3 .. :try_end_17ca} :catch_2a8b

    .line 1058
    :cond_17ca
    :try_start_17ca
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"
    :try_end_17cc
    .catch Ljava/lang/SecurityException; {:try_start_17ca .. :try_end_17cc} :catch_2c20
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17ca .. :try_end_17cc} :catch_2a86

    const/4 v13, 0x0

    :try_start_17cd
    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_17d4
    .catch Ljava/lang/SecurityException; {:try_start_17cd .. :try_end_17d4} :catch_2c2a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17cd .. :try_end_17d4} :catch_2a90

    .line 1060
    const/4 v5, 0x0

    :try_start_17d5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_17d8
    .catch Ljava/lang/SecurityException; {:try_start_17d5 .. :try_end_17d8} :catch_2c2f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17d5 .. :try_end_17d8} :catch_2a95

    move-result-wide v13

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    :try_start_17e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0
    :try_end_17e6
    .catch Ljava/lang/SecurityException; {:try_start_17e0 .. :try_end_17e6} :catch_2c34
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17e0 .. :try_end_17e6} :catch_2a9a

    const/16 v19, 0x0

    const/high16 v20, 0x4000

    :try_start_17ea
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v68

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_17f5
    .catch Ljava/lang/SecurityException; {:try_start_17ea .. :try_end_17f5} :catch_2c39
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17ea .. :try_end_17f5} :catch_2a9f

    move-result-object v18

    :try_start_17f6
    move-object/from16 v0, v32

    move v1, v5

    move-wide v2, v13

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_17ff
    .catch Ljava/lang/SecurityException; {:try_start_17f6 .. :try_end_17ff} :catch_2c3e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17f6 .. :try_end_17ff} :catch_2aa4

    .line 1065
    :try_start_17ff
    const-string v5, "DownloadManager"
    :try_end_1801
    .catch Ljava/lang/SecurityException; {:try_start_17ff .. :try_end_1801} :catch_2c43
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_17ff .. :try_end_1801} :catch_2aa9

    :try_start_1801
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1803
    .catch Ljava/lang/SecurityException; {:try_start_1801 .. :try_end_1803} :catch_2c48
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1801 .. :try_end_1803} :catch_2aae

    :try_start_1803
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1806
    .catch Ljava/lang/SecurityException; {:try_start_1803 .. :try_end_1806} :catch_2c4d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1803 .. :try_end_1806} :catch_2ab3

    :try_start_1806
    const-string v14, "Set alarm manager for x-oma-separate-delivery:"
    :try_end_1808
    .catch Ljava/lang/SecurityException; {:try_start_1806 .. :try_end_1808} :catch_2c52
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1806 .. :try_end_1808} :catch_2ab8

    :try_start_1808
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_180b
    .catch Ljava/lang/SecurityException; {:try_start_1808 .. :try_end_180b} :catch_2c57
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1808 .. :try_end_180b} :catch_2abd

    move-result-object v13

    :try_start_180c
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1812
    .catch Ljava/lang/SecurityException; {:try_start_180c .. :try_end_1812} :catch_2c5c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_180c .. :try_end_1812} :catch_2ac2

    move-result-object v13

    :try_start_1813
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1816
    .catch Ljava/lang/SecurityException; {:try_start_1813 .. :try_end_1816} :catch_2c61
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1813 .. :try_end_1816} :catch_2ac7

    move-result-object v13

    :try_start_1817
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181a
    .catch Ljava/lang/SecurityException; {:try_start_1817 .. :try_end_181a} :catch_181c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1817 .. :try_end_181a} :catch_2acc

    goto/16 :goto_2e7

    .line 1070
    :catch_181c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 922
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    .local v58, ex:Ljava/lang/Exception;
    :catch_1821
    move-exception v58

    .line 923
    .local v58, ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_4e0

    .line 924
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception when closing the file after download : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e0

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_1843
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_1922

    if-eqz v53, :cond_1922

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_186b

    .line 952
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "3. DRM processUpdate result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_186b
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_188f

    .line 956
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "4. DRM processStatus result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_188f
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .restart local v43       #component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContext packagename:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "||"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-class v14, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1902

    .line 965
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "5. DRM processEnd result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_1902
    const/4 v5, 0x0

    :try_start_1903
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;
    :try_end_1906
    .catch Ljava/lang/SecurityException; {:try_start_1903 .. :try_end_1906} :catch_2793
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1903 .. :try_end_1906} :catch_25ea

    move-result-object v77

    .line 986
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_1931

    .line 988
    :try_start_1909
    const-string v5, "DownloadManager"
    :try_end_190b
    .catch Ljava/lang/SecurityException; {:try_start_1909 .. :try_end_190b} :catch_2798
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1909 .. :try_end_190b} :catch_25ef

    :try_start_190b
    const-string v13, "createContentSession() : Fail"
    :try_end_190d
    .catch Ljava/lang/SecurityException; {:try_start_190b .. :try_end_190d} :catch_27a2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_190b .. :try_end_190d} :catch_25f9

    :try_start_190d
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1910
    .catch Ljava/lang/SecurityException; {:try_start_190d .. :try_end_1910} :catch_1912
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_190d .. :try_end_1910} :catch_25fe

    goto/16 :goto_129

    .line 1070
    :catch_1912
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 937
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1917
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_2e7

    .line 1084
    :cond_1922
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2e7

    .line 1086
    const/16 v5, 0x1a4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v5, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_2e7

    .line 993
    .restart local v43       #component:Landroid/content/ComponentName;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1931
    const/4 v5, 0x1

    :try_start_1932
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;
    :try_end_1938
    .catch Ljava/lang/SecurityException; {:try_start_1932 .. :try_end_1938} :catch_279d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1932 .. :try_end_1938} :catch_25f4

    move-result-object v44

    .line 994
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_1949

    .line 996
    :try_start_193b
    const-string v5, "DownloadManager"
    :try_end_193d
    .catch Ljava/lang/SecurityException; {:try_start_193b .. :try_end_193d} :catch_27a7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_193b .. :try_end_193d} :catch_2603

    :try_start_193d
    const-string v13, "getSelectedContent(true) : Fail"
    :try_end_193f
    .catch Ljava/lang/SecurityException; {:try_start_193d .. :try_end_193f} :catch_27b1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_193d .. :try_end_193f} :catch_260d

    :try_start_193f
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1942
    .catch Ljava/lang/SecurityException; {:try_start_193f .. :try_end_1942} :catch_1944
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_193f .. :try_end_1942} :catch_2612

    goto/16 :goto_129

    .line 1070
    :catch_1944
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1001
    :cond_1949
    const/4 v5, 0x3

    :try_start_194a
    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_1950
    .catch Ljava/lang/SecurityException; {:try_start_194a .. :try_end_1950} :catch_27ac
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_194a .. :try_end_1950} :catch_2608

    move-result-object v41

    .line 1002
    .restart local v41       #cid:Ljava/lang/String;
    :try_start_1951
    new-instance v86, Landroid/content/ContentValues;
    :try_end_1953
    .catch Ljava/lang/SecurityException; {:try_start_1951 .. :try_end_1953} :catch_27b6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1951 .. :try_end_1953} :catch_2617

    :try_start_1953
    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V
    :try_end_1956
    .catch Ljava/lang/SecurityException; {:try_start_1953 .. :try_end_1956} :catch_27bb
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1953 .. :try_end_1956} :catch_261c

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    :try_start_1956
    const-string v5, "cid"
    :try_end_1958
    .catch Ljava/lang/SecurityException; {:try_start_1956 .. :try_end_1958} :catch_27c0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1956 .. :try_end_1958} :catch_2621

    :try_start_1958
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1960
    .catch Ljava/lang/SecurityException; {:try_start_1958 .. :try_end_1960} :catch_27c5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1958 .. :try_end_1960} :catch_2626

    .line 1004
    :try_start_1960
    const-string v5, "mimetype"
    :try_end_1962
    .catch Ljava/lang/SecurityException; {:try_start_1960 .. :try_end_1962} :catch_27ca
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1960 .. :try_end_1962} :catch_262b

    :try_start_1962
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_196a
    .catch Ljava/lang/SecurityException; {:try_start_1962 .. :try_end_196a} :catch_27cf
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1962 .. :try_end_196a} :catch_2630

    .line 1005
    :try_start_196a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_196f
    .catch Ljava/lang/SecurityException; {:try_start_196a .. :try_end_196f} :catch_27d4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_196a .. :try_end_196f} :catch_2635

    :try_start_196f
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_1972
    .catch Ljava/lang/SecurityException; {:try_start_196f .. :try_end_1972} :catch_27d9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_196f .. :try_end_1972} :catch_263a

    move-result-object v5

    :try_start_1973
    sget-object v13, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1975
    .catch Ljava/lang/SecurityException; {:try_start_1973 .. :try_end_1975} :catch_27de
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1973 .. :try_end_1975} :catch_263f

    :try_start_1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v14, v0
    :try_end_197a
    .catch Ljava/lang/SecurityException; {:try_start_1975 .. :try_end_197a} :catch_27e3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1975 .. :try_end_197a} :catch_2644

    :try_start_197a
    iget v14, v14, Lcom/android/providers/downloads/DownloadInfo;->id:I
    :try_end_197c
    .catch Ljava/lang/SecurityException; {:try_start_197a .. :try_end_197c} :catch_27e8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_197a .. :try_end_197c} :catch_2649

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :try_start_1980
    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1986
    .catch Ljava/lang/SecurityException; {:try_start_1980 .. :try_end_1986} :catch_27ed
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1980 .. :try_end_1986} :catch_264e

    move-result-object v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    :try_start_198a
    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v86

    move-object v3, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1994
    .catch Ljava/lang/SecurityException; {:try_start_198a .. :try_end_1994} :catch_27f2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_198a .. :try_end_1994} :catch_2653

    .line 1007
    :try_start_1994
    const-string v5, "DownloadManager"
    :try_end_1996
    .catch Ljava/lang/SecurityException; {:try_start_1994 .. :try_end_1996} :catch_27f7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1994 .. :try_end_1996} :catch_2658

    :try_start_1996
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1998
    .catch Ljava/lang/SecurityException; {:try_start_1996 .. :try_end_1998} :catch_27fc
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1996 .. :try_end_1998} :catch_265d

    :try_start_1998
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_199b
    .catch Ljava/lang/SecurityException; {:try_start_1998 .. :try_end_199b} :catch_2801
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1998 .. :try_end_199b} :catch_2662

    :try_start_199b
    const-string v14, "update CID : "
    :try_end_199d
    .catch Ljava/lang/SecurityException; {:try_start_199b .. :try_end_199d} :catch_2806
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_199b .. :try_end_199d} :catch_2667

    :try_start_199d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19a0
    .catch Ljava/lang/SecurityException; {:try_start_199d .. :try_end_19a0} :catch_280b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_199d .. :try_end_19a0} :catch_266c

    move-result-object v13

    :try_start_19a1
    move-object v0, v13

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19a7
    .catch Ljava/lang/SecurityException; {:try_start_19a1 .. :try_end_19a7} :catch_2810
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19a1 .. :try_end_19a7} :catch_2671

    move-result-object v13

    :try_start_19a8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19ab
    .catch Ljava/lang/SecurityException; {:try_start_19a8 .. :try_end_19ab} :catch_2815
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19a8 .. :try_end_19ab} :catch_2676

    move-result-object v13

    :try_start_19ac
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19af
    .catch Ljava/lang/SecurityException; {:try_start_19ac .. :try_end_19af} :catch_281a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19ac .. :try_end_19af} :catch_267b

    .line 1010
    :try_start_19af
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I
    :try_end_19b2
    .catch Ljava/lang/SecurityException; {:try_start_19af .. :try_end_19b2} :catch_281f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19af .. :try_end_19b2} :catch_2680

    move-result v29

    .line 1011
    .restart local v29       #DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .restart local v73       #permission:I
    if-lez v29, :cond_19ba

    .line 1013
    packed-switch v29, :pswitch_data_2d8c

    .line 1029
    :cond_19ba
    :goto_19ba
    const/4 v5, 0x0

    :try_start_19bb
    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I
    :try_end_19c3
    .catch Ljava/lang/SecurityException; {:try_start_19bb .. :try_end_19c3} :catch_2824
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19bb .. :try_end_19c3} :catch_2685

    move-result v78

    .line 1030
    .restart local v78       #status:I
    if-eqz v78, :cond_2e7

    .line 1032
    :try_start_19c6
    const-string v5, "DownloadManager"
    :try_end_19c8
    .catch Ljava/lang/SecurityException; {:try_start_19c6 .. :try_end_19c8} :catch_2829
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19c6 .. :try_end_19c8} :catch_268a

    :try_start_19c8
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_19ca
    .catch Ljava/lang/SecurityException; {:try_start_19c8 .. :try_end_19ca} :catch_282e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19c8 .. :try_end_19ca} :catch_268f

    :try_start_19ca
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19cd
    .catch Ljava/lang/SecurityException; {:try_start_19ca .. :try_end_19cd} :catch_2833
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19ca .. :try_end_19cd} :catch_2694

    :try_start_19cd
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19d0
    .catch Ljava/lang/SecurityException; {:try_start_19cd .. :try_end_19d0} :catch_2838
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19cd .. :try_end_19d0} :catch_2699

    move-result-object v13

    :try_start_19d1
    const-string v14, ": rights not vaild"
    :try_end_19d3
    .catch Ljava/lang/SecurityException; {:try_start_19d1 .. :try_end_19d3} :catch_283d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19d1 .. :try_end_19d3} :catch_269e

    :try_start_19d3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19d6
    .catch Ljava/lang/SecurityException; {:try_start_19d3 .. :try_end_19d6} :catch_2842
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19d3 .. :try_end_19d6} :catch_26a3

    move-result-object v13

    :try_start_19d7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19da
    .catch Ljava/lang/SecurityException; {:try_start_19d7 .. :try_end_19da} :catch_2847
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19d7 .. :try_end_19da} :catch_26a8

    move-result-object v13

    :try_start_19db
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19de
    .catch Ljava/lang/SecurityException; {:try_start_19db .. :try_end_19de} :catch_284c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19db .. :try_end_19de} :catch_26ad

    .line 1033
    const/16 v6, 0x122

    .line 1036
    :try_start_19e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_19e5
    .catch Ljava/lang/SecurityException; {:try_start_19e0 .. :try_end_19e5} :catch_2851
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19e0 .. :try_end_19e5} :catch_26b2

    if-eqz v5, :cond_2e7

    .line 1038
    :try_start_19e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_19ec
    .catch Ljava/lang/SecurityException; {:try_start_19e7 .. :try_end_19ec} :catch_2856
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19e7 .. :try_end_19ec} :catch_26b7

    :try_start_19ec
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19ef
    .catch Ljava/lang/SecurityException; {:try_start_19ec .. :try_end_19ef} :catch_285b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19ec .. :try_end_19ef} :catch_26bc

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .restart local v28       #Delay:I
    const/16 v6, 0x123

    .line 1042
    :try_start_19f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_19fc
    .catch Ljava/lang/SecurityException; {:try_start_19f7 .. :try_end_19fc} :catch_2860
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19f7 .. :try_end_19fc} :catch_26c1

    :try_start_19fc
    const-string v13, "alarm"
    :try_end_19fe
    .catch Ljava/lang/SecurityException; {:try_start_19fc .. :try_end_19fe} :catch_2865
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19fc .. :try_end_19fe} :catch_26c6

    :try_start_19fe
    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1a01
    .catch Ljava/lang/SecurityException; {:try_start_19fe .. :try_end_1a01} :catch_286a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_19fe .. :try_end_1a01} :catch_26cb

    move-result-object v32

    :try_start_1a02
    check-cast v32, Landroid/app/AlarmManager;
    :try_end_1a04
    .catch Ljava/lang/SecurityException; {:try_start_1a02 .. :try_end_1a04} :catch_286f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a02 .. :try_end_1a04} :catch_26d0

    .line 1045
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_1a1d

    .line 1046
    :try_start_1a06
    const-string v5, "DownloadManager"
    :try_end_1a08
    .catch Ljava/lang/SecurityException; {:try_start_1a06 .. :try_end_1a08} :catch_2874
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a06 .. :try_end_1a08} :catch_26d5

    :try_start_1a08
    const-string v13, "couldn\'t get alarm manager"
    :try_end_1a0a
    .catch Ljava/lang/SecurityException; {:try_start_1a08 .. :try_end_1a0a} :catch_287e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a08 .. :try_end_1a0a} :catch_26df

    :try_start_1a0a
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0d
    .catch Ljava/lang/SecurityException; {:try_start_1a0a .. :try_end_1a0d} :catch_1a0f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a0a .. :try_end_1a0d} :catch_26e4

    goto/16 :goto_2e7

    .line 1070
    :catch_1a0f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_1a14
    const/16 v73, 0x2

    .line 1017
    goto :goto_19ba

    .line 1020
    :pswitch_1a17
    const/16 v73, 0x1

    .line 1021
    goto :goto_19ba

    .line 1023
    :pswitch_1a1a
    const/16 v73, 0x4

    .line 1024
    goto :goto_19ba

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_1a1d
    :try_start_1a1d
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z
    :try_end_1a1f
    .catch Ljava/lang/SecurityException; {:try_start_1a1d .. :try_end_1a1f} :catch_2879
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a1d .. :try_end_1a1f} :catch_26da

    if-eqz v5, :cond_1a42

    .line 1049
    :try_start_1a21
    const-string v5, "DownloadManager"
    :try_end_1a23
    .catch Ljava/lang/SecurityException; {:try_start_1a21 .. :try_end_1a23} :catch_2883
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a21 .. :try_end_1a23} :catch_26e9

    :try_start_1a23
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1a25
    .catch Ljava/lang/SecurityException; {:try_start_1a23 .. :try_end_1a25} :catch_288d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a23 .. :try_end_1a25} :catch_26f3

    :try_start_1a25
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a28
    .catch Ljava/lang/SecurityException; {:try_start_1a25 .. :try_end_1a28} :catch_2892
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a25 .. :try_end_1a28} :catch_26f8

    :try_start_1a28
    const-string v14, "scheduling retry in "
    :try_end_1a2a
    .catch Ljava/lang/SecurityException; {:try_start_1a28 .. :try_end_1a2a} :catch_2897
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a28 .. :try_end_1a2a} :catch_26fd

    :try_start_1a2a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a2d
    .catch Ljava/lang/SecurityException; {:try_start_1a2a .. :try_end_1a2d} :catch_289c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a2a .. :try_end_1a2d} :catch_2702

    move-result-object v13

    :try_start_1a2e
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1a34
    .catch Ljava/lang/SecurityException; {:try_start_1a2e .. :try_end_1a34} :catch_28a1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a2e .. :try_end_1a34} :catch_2707

    move-result-object v13

    :try_start_1a35
    const-string v14, "ms"
    :try_end_1a37
    .catch Ljava/lang/SecurityException; {:try_start_1a35 .. :try_end_1a37} :catch_28a6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a35 .. :try_end_1a37} :catch_270c

    :try_start_1a37
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a3a
    .catch Ljava/lang/SecurityException; {:try_start_1a37 .. :try_end_1a3a} :catch_28ab
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a37 .. :try_end_1a3a} :catch_2711

    move-result-object v13

    :try_start_1a3b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a3e
    .catch Ljava/lang/SecurityException; {:try_start_1a3b .. :try_end_1a3e} :catch_28b0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a3b .. :try_end_1a3e} :catch_2716

    move-result-object v13

    :try_start_1a3f
    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a42
    .catch Ljava/lang/SecurityException; {:try_start_1a3f .. :try_end_1a42} :catch_28b5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a3f .. :try_end_1a42} :catch_271b

    .line 1051
    :cond_1a42
    :try_start_1a42
    new-instance v68, Landroid/content/Intent;
    :try_end_1a44
    .catch Ljava/lang/SecurityException; {:try_start_1a42 .. :try_end_1a44} :catch_2888
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a42 .. :try_end_1a44} :catch_26ee

    :try_start_1a44
    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"
    :try_end_1a46
    .catch Ljava/lang/SecurityException; {:try_start_1a44 .. :try_end_1a46} :catch_28ba
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a44 .. :try_end_1a46} :catch_2720

    :try_start_1a46
    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1a4c
    .catch Ljava/lang/SecurityException; {:try_start_1a46 .. :try_end_1a4c} :catch_28bf
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a46 .. :try_end_1a4c} :catch_2725

    .line 1052
    .restart local v68       #intent:Landroid/content/Intent;
    :try_start_1a4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_1a51
    .catch Ljava/lang/SecurityException; {:try_start_1a4c .. :try_end_1a51} :catch_28c4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a4c .. :try_end_1a51} :catch_272a

    :try_start_1a51
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1a54
    .catch Ljava/lang/SecurityException; {:try_start_1a51 .. :try_end_1a54} :catch_28c9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a51 .. :try_end_1a54} :catch_272f

    move-result-object v5

    :try_start_1a55
    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;
    :try_end_1a57
    .catch Ljava/lang/SecurityException; {:try_start_1a55 .. :try_end_1a57} :catch_28ce
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a55 .. :try_end_1a57} :catch_2734

    :try_start_1a57
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1a5a
    .catch Ljava/lang/SecurityException; {:try_start_1a57 .. :try_end_1a5a} :catch_28d3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a57 .. :try_end_1a5a} :catch_2739

    move-result-object v13

    :try_start_1a5b
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1a62
    .catch Ljava/lang/SecurityException; {:try_start_1a5b .. :try_end_1a62} :catch_28d8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a5b .. :try_end_1a62} :catch_273e

    .line 1054
    if-eqz v11, :cond_1a6d

    .line 1055
    :try_start_1a64
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"
    :try_end_1a66
    .catch Ljava/lang/SecurityException; {:try_start_1a64 .. :try_end_1a66} :catch_28dd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a64 .. :try_end_1a66} :catch_2743

    :try_start_1a66
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1a6d
    .catch Ljava/lang/SecurityException; {:try_start_1a66 .. :try_end_1a6d} :catch_28e7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a66 .. :try_end_1a6d} :catch_274d

    .line 1058
    :cond_1a6d
    :try_start_1a6d
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"
    :try_end_1a6f
    .catch Ljava/lang/SecurityException; {:try_start_1a6d .. :try_end_1a6f} :catch_28e2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a6d .. :try_end_1a6f} :catch_2748

    const/4 v13, 0x0

    :try_start_1a70
    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1a77
    .catch Ljava/lang/SecurityException; {:try_start_1a70 .. :try_end_1a77} :catch_28ec
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a70 .. :try_end_1a77} :catch_2752

    .line 1060
    const/4 v5, 0x0

    :try_start_1a78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1a7b
    .catch Ljava/lang/SecurityException; {:try_start_1a78 .. :try_end_1a7b} :catch_28f1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a78 .. :try_end_1a7b} :catch_2757

    move-result-wide v13

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    :try_start_1a83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0
    :try_end_1a89
    .catch Ljava/lang/SecurityException; {:try_start_1a83 .. :try_end_1a89} :catch_28f6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a83 .. :try_end_1a89} :catch_275c

    const/16 v19, 0x0

    const/high16 v20, 0x4000

    :try_start_1a8d
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v68

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1a98
    .catch Ljava/lang/SecurityException; {:try_start_1a8d .. :try_end_1a98} :catch_28fb
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a8d .. :try_end_1a98} :catch_2761

    move-result-object v18

    :try_start_1a99
    move-object/from16 v0, v32

    move v1, v5

    move-wide v2, v13

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1aa2
    .catch Ljava/lang/SecurityException; {:try_start_1a99 .. :try_end_1aa2} :catch_2900
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a99 .. :try_end_1aa2} :catch_2766

    .line 1065
    :try_start_1aa2
    const-string v5, "DownloadManager"
    :try_end_1aa4
    .catch Ljava/lang/SecurityException; {:try_start_1aa2 .. :try_end_1aa4} :catch_2905
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aa2 .. :try_end_1aa4} :catch_276b

    :try_start_1aa4
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1aa6
    .catch Ljava/lang/SecurityException; {:try_start_1aa4 .. :try_end_1aa6} :catch_290a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aa4 .. :try_end_1aa6} :catch_2770

    :try_start_1aa6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1aa9
    .catch Ljava/lang/SecurityException; {:try_start_1aa6 .. :try_end_1aa9} :catch_290f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aa6 .. :try_end_1aa9} :catch_2775

    :try_start_1aa9
    const-string v14, "Set alarm manager for x-oma-separate-delivery:"
    :try_end_1aab
    .catch Ljava/lang/SecurityException; {:try_start_1aa9 .. :try_end_1aab} :catch_2914
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aa9 .. :try_end_1aab} :catch_277a

    :try_start_1aab
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1aae
    .catch Ljava/lang/SecurityException; {:try_start_1aab .. :try_end_1aae} :catch_2919
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aab .. :try_end_1aae} :catch_277f

    move-result-object v13

    :try_start_1aaf
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1ab5
    .catch Ljava/lang/SecurityException; {:try_start_1aaf .. :try_end_1ab5} :catch_291e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aaf .. :try_end_1ab5} :catch_2784

    move-result-object v13

    :try_start_1ab6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ab9
    .catch Ljava/lang/SecurityException; {:try_start_1ab6 .. :try_end_1ab9} :catch_2923
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ab6 .. :try_end_1ab9} :catch_2789

    move-result-object v13

    :try_start_1aba
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1abd
    .catch Ljava/lang/SecurityException; {:try_start_1aba .. :try_end_1abd} :catch_1abf
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1aba .. :try_end_1abd} :catch_278e

    goto/16 :goto_2e7

    .line 1070
    :catch_1abf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 922
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v74       #pm:Landroid/os/PowerManager;
    :catch_1ac4
    move-exception v58

    .line 923
    .restart local v58       #ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_100

    .line 924
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when closing the file after download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_1ae6
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_1bca

    if-eqz v53, :cond_1bca

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1b0e

    .line 952
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3. DRM processUpdate result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1b0e
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1b32

    .line 956
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4. DRM processStatus result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1b32
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .restart local v43       #component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mContext packagename:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "||"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1ba5

    .line 965
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5. DRM processEnd result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_1ba5
    const/4 v5, 0x0

    :try_start_1ba6
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v77

    .line 986
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_1bfd

    .line 988
    const-string v5, "DownloadManager"

    const-string v7, "createContentSession() : Fail"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb3
    .catch Ljava/lang/SecurityException; {:try_start_1ba6 .. :try_end_1bb3} :catch_1bd9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ba6 .. :try_end_1bb3} :catch_1beb

    :goto_1bb3
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 989
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_129

    .line 937
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_1bbf
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_114

    .line 1084
    :cond_1bca
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_114

    .line 1086
    const/16 v5, 0x1a4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v11, v5, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_114

    .line 1070
    .restart local v43       #component:Landroid/content/ComponentName;
    :catch_1bd9
    move-exception v5

    move-object/from16 v56, v5

    .line 1072
    .local v56, e:Ljava/lang/SecurityException;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1bdf
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 1073
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_129

    .line 1075
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v56           #e:Ljava/lang/SecurityException;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :catch_1beb
    move-exception v5

    move-object/from16 v56, v5

    .line 1077
    .local v56, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual/range {v56 .. v56}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    :goto_1bf1
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 1078
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_129

    .line 993
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v56           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1bfd
    const/4 v5, 0x1

    :try_start_1bfe
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v44

    .line 994
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_1c1a

    .line 996
    const-string v5, "DownloadManager"

    const-string v7, "getSelectedContent(true) : Fail"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c0e
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .line 997
    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_129

    .line 1001
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    :cond_1c1a
    const/4 v5, 0x3

    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v41

    .line 1002
    .restart local v41       #cid:Ljava/lang/String;
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "cid"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v5, "mimetype"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v13, v8

    invoke-static {v7, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v86

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1007
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update CID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v29

    .line 1011
    .restart local v29       #DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .restart local v73       #permission:I
    if-lez v29, :cond_1c83

    .line 1013
    packed-switch v29, :pswitch_data_2d98

    .line 1029
    :cond_1c83
    :goto_1c83
    const/4 v5, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v78

    .line 1030
    .restart local v78       #status:I
    if-eqz v78, :cond_114

    .line 1032
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": rights not vaild"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v6, 0x122

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_114

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .restart local v28       #Delay:I
    const/16 v6, 0x123

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/AlarmManager;

    .line 1045
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_1ce1

    .line 1046
    const-string v5, "DownloadManager"

    const-string v7, "couldn\'t get alarm manager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_114

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_1cd8
    const/16 v73, 0x2

    .line 1017
    goto :goto_1c83

    .line 1020
    :pswitch_1cdb
    const/16 v73, 0x1

    .line 1021
    goto :goto_1c83

    .line 1023
    :pswitch_1cde
    const/16 v73, 0x4

    .line 1024
    goto :goto_1c83

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_1ce1
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1d06

    .line 1049
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scheduling retry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1d06
    new-instance v68, Landroid/content/Intent;

    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .restart local v68       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    if-eqz v11, :cond_1d31

    .line 1055
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    :cond_1d31
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"

    const/4 v7, 0x0

    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v68

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, v32

    move v1, v5

    move-wide v2, v13

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1065
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set alarm manager for x-oma-separate-delivery:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d7b
    .catch Ljava/lang/SecurityException; {:try_start_1bfe .. :try_end_1d7b} :catch_1bd9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1bfe .. :try_end_1d7b} :catch_1beb

    goto/16 :goto_114

    .line 922
    .end local v20           #countRetry:Z
    .end local v21           #retryAfter:I
    .end local v22           #redirectCount:I
    .end local v23           #gotData:Z
    .end local v25           #newUri:Ljava/lang/String;
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v7       #countRetry:Z
    .restart local v8       #retryAfter:I
    .restart local v9       #redirectCount:I
    .restart local v10       #gotData:Z
    .restart local v12       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_1d7d
    move-exception v58

    .line 923
    .restart local v58       #ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_2d3

    .line 924
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception when closing the file after download : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d3

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_1d9f
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_1e7e

    if-eqz v53, :cond_1e7e

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1dc7

    .line 952
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "3. DRM processUpdate result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1dc7
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1deb

    .line 956
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "4. DRM processStatus result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1deb
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .restart local v43       #component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mContext packagename:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "||"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-class v14, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_1e5e

    .line 965
    const-string v5, "DownloadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "5. DRM processEnd result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_1e5e
    const/4 v5, 0x0

    :try_start_1e5f
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;
    :try_end_1e62
    .catch Ljava/lang/SecurityException; {:try_start_1e5f .. :try_end_1e62} :catch_2455
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e5f .. :try_end_1e62} :catch_13d9

    move-result-object v77

    .line 986
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_1e8d

    .line 988
    :try_start_1e65
    const-string v5, "DownloadManager"
    :try_end_1e67
    .catch Ljava/lang/SecurityException; {:try_start_1e65 .. :try_end_1e67} :catch_245a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e65 .. :try_end_1e67} :catch_22b1

    :try_start_1e67
    const-string v13, "createContentSession() : Fail"
    :try_end_1e69
    .catch Ljava/lang/SecurityException; {:try_start_1e67 .. :try_end_1e69} :catch_2464
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e67 .. :try_end_1e69} :catch_22bb

    :try_start_1e69
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e6c
    .catch Ljava/lang/SecurityException; {:try_start_1e69 .. :try_end_1e6c} :catch_1e6e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e69 .. :try_end_1e6c} :catch_22c0

    goto/16 :goto_129

    .line 1070
    :catch_1e6e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 937
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1e73
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_2e7

    .line 1084
    :cond_1e7e
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2e7

    .line 1086
    const/16 v5, 0x1a4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v5, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_2e7

    .line 993
    .restart local v43       #component:Landroid/content/ComponentName;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1e8d
    const/4 v5, 0x1

    :try_start_1e8e
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;
    :try_end_1e94
    .catch Ljava/lang/SecurityException; {:try_start_1e8e .. :try_end_1e94} :catch_245f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e8e .. :try_end_1e94} :catch_22b6

    move-result-object v44

    .line 994
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_1ea5

    .line 996
    :try_start_1e97
    const-string v5, "DownloadManager"
    :try_end_1e99
    .catch Ljava/lang/SecurityException; {:try_start_1e97 .. :try_end_1e99} :catch_2469
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e97 .. :try_end_1e99} :catch_22c5

    :try_start_1e99
    const-string v13, "getSelectedContent(true) : Fail"
    :try_end_1e9b
    .catch Ljava/lang/SecurityException; {:try_start_1e99 .. :try_end_1e9b} :catch_2473
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e99 .. :try_end_1e9b} :catch_22cf

    :try_start_1e9b
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e9e
    .catch Ljava/lang/SecurityException; {:try_start_1e9b .. :try_end_1e9e} :catch_1ea0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1e9b .. :try_end_1e9e} :catch_22d4

    goto/16 :goto_129

    .line 1070
    :catch_1ea0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1001
    :cond_1ea5
    const/4 v5, 0x3

    :try_start_1ea6
    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_1eac
    .catch Ljava/lang/SecurityException; {:try_start_1ea6 .. :try_end_1eac} :catch_246e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ea6 .. :try_end_1eac} :catch_22ca

    move-result-object v41

    .line 1002
    .restart local v41       #cid:Ljava/lang/String;
    :try_start_1ead
    new-instance v86, Landroid/content/ContentValues;
    :try_end_1eaf
    .catch Ljava/lang/SecurityException; {:try_start_1ead .. :try_end_1eaf} :catch_2478
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ead .. :try_end_1eaf} :catch_22d9

    :try_start_1eaf
    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V
    :try_end_1eb2
    .catch Ljava/lang/SecurityException; {:try_start_1eaf .. :try_end_1eb2} :catch_247d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1eaf .. :try_end_1eb2} :catch_22de

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    :try_start_1eb2
    const-string v5, "cid"
    :try_end_1eb4
    .catch Ljava/lang/SecurityException; {:try_start_1eb2 .. :try_end_1eb4} :catch_2482
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1eb2 .. :try_end_1eb4} :catch_22e3

    :try_start_1eb4
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ebc
    .catch Ljava/lang/SecurityException; {:try_start_1eb4 .. :try_end_1ebc} :catch_2487
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1eb4 .. :try_end_1ebc} :catch_22e8

    .line 1004
    :try_start_1ebc
    const-string v5, "mimetype"
    :try_end_1ebe
    .catch Ljava/lang/SecurityException; {:try_start_1ebc .. :try_end_1ebe} :catch_248c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ebc .. :try_end_1ebe} :catch_22ed

    :try_start_1ebe
    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ec6
    .catch Ljava/lang/SecurityException; {:try_start_1ebe .. :try_end_1ec6} :catch_2491
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ebe .. :try_end_1ec6} :catch_22f2

    .line 1005
    :try_start_1ec6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_1ecb
    .catch Ljava/lang/SecurityException; {:try_start_1ec6 .. :try_end_1ecb} :catch_2496
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ec6 .. :try_end_1ecb} :catch_22f7

    :try_start_1ecb
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_1ece
    .catch Ljava/lang/SecurityException; {:try_start_1ecb .. :try_end_1ece} :catch_249b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ecb .. :try_end_1ece} :catch_22fc

    move-result-object v5

    :try_start_1ecf
    sget-object v13, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1ed1
    .catch Ljava/lang/SecurityException; {:try_start_1ecf .. :try_end_1ed1} :catch_24a0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ecf .. :try_end_1ed1} :catch_2301

    :try_start_1ed1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v14, v0
    :try_end_1ed6
    .catch Ljava/lang/SecurityException; {:try_start_1ed1 .. :try_end_1ed6} :catch_24a5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ed1 .. :try_end_1ed6} :catch_2306

    :try_start_1ed6
    iget v14, v14, Lcom/android/providers/downloads/DownloadInfo;->id:I
    :try_end_1ed8
    .catch Ljava/lang/SecurityException; {:try_start_1ed6 .. :try_end_1ed8} :catch_24aa
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ed6 .. :try_end_1ed8} :catch_230b

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :try_start_1edc
    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1ee2
    .catch Ljava/lang/SecurityException; {:try_start_1edc .. :try_end_1ee2} :catch_24af
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1edc .. :try_end_1ee2} :catch_2310

    move-result-object v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    :try_start_1ee6
    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v86

    move-object v3, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1ef0
    .catch Ljava/lang/SecurityException; {:try_start_1ee6 .. :try_end_1ef0} :catch_24b4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ee6 .. :try_end_1ef0} :catch_2315

    .line 1007
    :try_start_1ef0
    const-string v5, "DownloadManager"
    :try_end_1ef2
    .catch Ljava/lang/SecurityException; {:try_start_1ef0 .. :try_end_1ef2} :catch_24b9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ef0 .. :try_end_1ef2} :catch_231a

    :try_start_1ef2
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1ef4
    .catch Ljava/lang/SecurityException; {:try_start_1ef2 .. :try_end_1ef4} :catch_24be
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ef2 .. :try_end_1ef4} :catch_231f

    :try_start_1ef4
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1ef7
    .catch Ljava/lang/SecurityException; {:try_start_1ef4 .. :try_end_1ef7} :catch_24c3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ef4 .. :try_end_1ef7} :catch_2324

    :try_start_1ef7
    const-string v14, "update CID : "
    :try_end_1ef9
    .catch Ljava/lang/SecurityException; {:try_start_1ef7 .. :try_end_1ef9} :catch_24c8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ef7 .. :try_end_1ef9} :catch_2329

    :try_start_1ef9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1efc
    .catch Ljava/lang/SecurityException; {:try_start_1ef9 .. :try_end_1efc} :catch_24cd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ef9 .. :try_end_1efc} :catch_232e

    move-result-object v13

    :try_start_1efd
    move-object v0, v13

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f03
    .catch Ljava/lang/SecurityException; {:try_start_1efd .. :try_end_1f03} :catch_24d2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1efd .. :try_end_1f03} :catch_2333

    move-result-object v13

    :try_start_1f04
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f07
    .catch Ljava/lang/SecurityException; {:try_start_1f04 .. :try_end_1f07} :catch_24d7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f04 .. :try_end_1f07} :catch_2338

    move-result-object v13

    :try_start_1f08
    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0b
    .catch Ljava/lang/SecurityException; {:try_start_1f08 .. :try_end_1f0b} :catch_24dc
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f08 .. :try_end_1f0b} :catch_233d

    .line 1010
    :try_start_1f0b
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I
    :try_end_1f0e
    .catch Ljava/lang/SecurityException; {:try_start_1f0b .. :try_end_1f0e} :catch_24e1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f0b .. :try_end_1f0e} :catch_2342

    move-result v29

    .line 1011
    .restart local v29       #DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .restart local v73       #permission:I
    if-lez v29, :cond_1f16

    .line 1013
    packed-switch v29, :pswitch_data_2da4

    .line 1029
    :cond_1f16
    :goto_1f16
    const/4 v5, 0x0

    :try_start_1f17
    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I
    :try_end_1f1f
    .catch Ljava/lang/SecurityException; {:try_start_1f17 .. :try_end_1f1f} :catch_24e6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f17 .. :try_end_1f1f} :catch_2347

    move-result v78

    .line 1030
    .restart local v78       #status:I
    if-eqz v78, :cond_2e7

    .line 1032
    :try_start_1f22
    const-string v5, "DownloadManager"
    :try_end_1f24
    .catch Ljava/lang/SecurityException; {:try_start_1f22 .. :try_end_1f24} :catch_24eb
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f22 .. :try_end_1f24} :catch_234c

    :try_start_1f24
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1f26
    .catch Ljava/lang/SecurityException; {:try_start_1f24 .. :try_end_1f26} :catch_24f0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f24 .. :try_end_1f26} :catch_2351

    :try_start_1f26
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1f29
    .catch Ljava/lang/SecurityException; {:try_start_1f26 .. :try_end_1f29} :catch_24f5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f26 .. :try_end_1f29} :catch_2356

    :try_start_1f29
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f2c
    .catch Ljava/lang/SecurityException; {:try_start_1f29 .. :try_end_1f2c} :catch_24fa
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f29 .. :try_end_1f2c} :catch_235b

    move-result-object v13

    :try_start_1f2d
    const-string v14, ": rights not vaild"
    :try_end_1f2f
    .catch Ljava/lang/SecurityException; {:try_start_1f2d .. :try_end_1f2f} :catch_24ff
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f2d .. :try_end_1f2f} :catch_2360

    :try_start_1f2f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f32
    .catch Ljava/lang/SecurityException; {:try_start_1f2f .. :try_end_1f32} :catch_2504
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f2f .. :try_end_1f32} :catch_2365

    move-result-object v13

    :try_start_1f33
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f36
    .catch Ljava/lang/SecurityException; {:try_start_1f33 .. :try_end_1f36} :catch_2509
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f33 .. :try_end_1f36} :catch_236a

    move-result-object v13

    :try_start_1f37
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3a
    .catch Ljava/lang/SecurityException; {:try_start_1f37 .. :try_end_1f3a} :catch_250e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f37 .. :try_end_1f3a} :catch_236f

    .line 1033
    const/16 v6, 0x122

    .line 1036
    :try_start_1f3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_1f41
    .catch Ljava/lang/SecurityException; {:try_start_1f3c .. :try_end_1f41} :catch_2513
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f3c .. :try_end_1f41} :catch_2374

    if-eqz v5, :cond_2e7

    .line 1038
    :try_start_1f43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0
    :try_end_1f48
    .catch Ljava/lang/SecurityException; {:try_start_1f43 .. :try_end_1f48} :catch_2518
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f43 .. :try_end_1f48} :catch_2379

    :try_start_1f48
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f4b
    .catch Ljava/lang/SecurityException; {:try_start_1f48 .. :try_end_1f4b} :catch_251d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f48 .. :try_end_1f4b} :catch_237e

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .restart local v28       #Delay:I
    const/16 v6, 0x123

    .line 1042
    :try_start_1f53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_1f58
    .catch Ljava/lang/SecurityException; {:try_start_1f53 .. :try_end_1f58} :catch_2522
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f53 .. :try_end_1f58} :catch_2383

    :try_start_1f58
    const-string v13, "alarm"
    :try_end_1f5a
    .catch Ljava/lang/SecurityException; {:try_start_1f58 .. :try_end_1f5a} :catch_2527
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f58 .. :try_end_1f5a} :catch_2388

    :try_start_1f5a
    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1f5d
    .catch Ljava/lang/SecurityException; {:try_start_1f5a .. :try_end_1f5d} :catch_252c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f5a .. :try_end_1f5d} :catch_238d

    move-result-object v32

    :try_start_1f5e
    check-cast v32, Landroid/app/AlarmManager;
    :try_end_1f60
    .catch Ljava/lang/SecurityException; {:try_start_1f5e .. :try_end_1f60} :catch_2531
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f5e .. :try_end_1f60} :catch_2392

    .line 1045
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_1f79

    .line 1046
    :try_start_1f62
    const-string v5, "DownloadManager"
    :try_end_1f64
    .catch Ljava/lang/SecurityException; {:try_start_1f62 .. :try_end_1f64} :catch_2536
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f62 .. :try_end_1f64} :catch_2397

    :try_start_1f64
    const-string v13, "couldn\'t get alarm manager"
    :try_end_1f66
    .catch Ljava/lang/SecurityException; {:try_start_1f64 .. :try_end_1f66} :catch_2540
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f64 .. :try_end_1f66} :catch_23a1

    :try_start_1f66
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f69
    .catch Ljava/lang/SecurityException; {:try_start_1f66 .. :try_end_1f69} :catch_1f6b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f66 .. :try_end_1f69} :catch_23a6

    goto/16 :goto_2e7

    .line 1070
    :catch_1f6b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_1f70
    const/16 v73, 0x2

    .line 1017
    goto :goto_1f16

    .line 1020
    :pswitch_1f73
    const/16 v73, 0x1

    .line 1021
    goto :goto_1f16

    .line 1023
    :pswitch_1f76
    const/16 v73, 0x4

    .line 1024
    goto :goto_1f16

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_1f79
    :try_start_1f79
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z
    :try_end_1f7b
    .catch Ljava/lang/SecurityException; {:try_start_1f79 .. :try_end_1f7b} :catch_253b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f79 .. :try_end_1f7b} :catch_239c

    if-eqz v5, :cond_1f9e

    .line 1049
    :try_start_1f7d
    const-string v5, "DownloadManager"
    :try_end_1f7f
    .catch Ljava/lang/SecurityException; {:try_start_1f7d .. :try_end_1f7f} :catch_2545
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f7d .. :try_end_1f7f} :catch_23ab

    :try_start_1f7f
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1f81
    .catch Ljava/lang/SecurityException; {:try_start_1f7f .. :try_end_1f81} :catch_254f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f7f .. :try_end_1f81} :catch_23b5

    :try_start_1f81
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1f84
    .catch Ljava/lang/SecurityException; {:try_start_1f81 .. :try_end_1f84} :catch_2554
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f81 .. :try_end_1f84} :catch_23ba

    :try_start_1f84
    const-string v14, "scheduling retry in "
    :try_end_1f86
    .catch Ljava/lang/SecurityException; {:try_start_1f84 .. :try_end_1f86} :catch_2559
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f84 .. :try_end_1f86} :catch_23bf

    :try_start_1f86
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f89
    .catch Ljava/lang/SecurityException; {:try_start_1f86 .. :try_end_1f89} :catch_255e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f86 .. :try_end_1f89} :catch_23c4

    move-result-object v13

    :try_start_1f8a
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1f90
    .catch Ljava/lang/SecurityException; {:try_start_1f8a .. :try_end_1f90} :catch_2563
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f8a .. :try_end_1f90} :catch_23c9

    move-result-object v13

    :try_start_1f91
    const-string v14, "ms"
    :try_end_1f93
    .catch Ljava/lang/SecurityException; {:try_start_1f91 .. :try_end_1f93} :catch_2568
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f91 .. :try_end_1f93} :catch_23ce

    :try_start_1f93
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f96
    .catch Ljava/lang/SecurityException; {:try_start_1f93 .. :try_end_1f96} :catch_256d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f93 .. :try_end_1f96} :catch_23d3

    move-result-object v13

    :try_start_1f97
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f9a
    .catch Ljava/lang/SecurityException; {:try_start_1f97 .. :try_end_1f9a} :catch_2572
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f97 .. :try_end_1f9a} :catch_23d8

    move-result-object v13

    :try_start_1f9b
    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9e
    .catch Ljava/lang/SecurityException; {:try_start_1f9b .. :try_end_1f9e} :catch_2577
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f9b .. :try_end_1f9e} :catch_23dd

    .line 1051
    :cond_1f9e
    :try_start_1f9e
    new-instance v68, Landroid/content/Intent;
    :try_end_1fa0
    .catch Ljava/lang/SecurityException; {:try_start_1f9e .. :try_end_1fa0} :catch_254a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1f9e .. :try_end_1fa0} :catch_23b0

    :try_start_1fa0
    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"
    :try_end_1fa2
    .catch Ljava/lang/SecurityException; {:try_start_1fa0 .. :try_end_1fa2} :catch_257c
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fa0 .. :try_end_1fa2} :catch_23e2

    :try_start_1fa2
    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1fa8
    .catch Ljava/lang/SecurityException; {:try_start_1fa2 .. :try_end_1fa8} :catch_2581
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fa2 .. :try_end_1fa8} :catch_23e7

    .line 1052
    .restart local v68       #intent:Landroid/content/Intent;
    :try_start_1fa8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0
    :try_end_1fad
    .catch Ljava/lang/SecurityException; {:try_start_1fa8 .. :try_end_1fad} :catch_2586
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fa8 .. :try_end_1fad} :catch_23ec

    :try_start_1fad
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1fb0
    .catch Ljava/lang/SecurityException; {:try_start_1fad .. :try_end_1fb0} :catch_258b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fad .. :try_end_1fb0} :catch_23f1

    move-result-object v5

    :try_start_1fb1
    const-class v13, Lcom/android/providers/downloads/DownloadReceiver;
    :try_end_1fb3
    .catch Ljava/lang/SecurityException; {:try_start_1fb1 .. :try_end_1fb3} :catch_2590
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fb1 .. :try_end_1fb3} :catch_23f6

    :try_start_1fb3
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1fb6
    .catch Ljava/lang/SecurityException; {:try_start_1fb3 .. :try_end_1fb6} :catch_2595
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fb3 .. :try_end_1fb6} :catch_23fb

    move-result-object v13

    :try_start_1fb7
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1fbe
    .catch Ljava/lang/SecurityException; {:try_start_1fb7 .. :try_end_1fbe} :catch_259a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fb7 .. :try_end_1fbe} :catch_2400

    .line 1054
    if-eqz v11, :cond_1fc9

    .line 1055
    :try_start_1fc0
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"
    :try_end_1fc2
    .catch Ljava/lang/SecurityException; {:try_start_1fc0 .. :try_end_1fc2} :catch_259f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fc0 .. :try_end_1fc2} :catch_2405

    :try_start_1fc2
    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1fc9
    .catch Ljava/lang/SecurityException; {:try_start_1fc2 .. :try_end_1fc9} :catch_25a9
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fc2 .. :try_end_1fc9} :catch_240f

    .line 1058
    :cond_1fc9
    :try_start_1fc9
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"
    :try_end_1fcb
    .catch Ljava/lang/SecurityException; {:try_start_1fc9 .. :try_end_1fcb} :catch_25a4
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fc9 .. :try_end_1fcb} :catch_240a

    const/4 v13, 0x0

    :try_start_1fcc
    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1fd3
    .catch Ljava/lang/SecurityException; {:try_start_1fcc .. :try_end_1fd3} :catch_25ae
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fcc .. :try_end_1fd3} :catch_2414

    .line 1060
    const/4 v5, 0x0

    :try_start_1fd4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1fd7
    .catch Ljava/lang/SecurityException; {:try_start_1fd4 .. :try_end_1fd7} :catch_25b3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fd4 .. :try_end_1fd7} :catch_2419

    move-result-wide v13

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    :try_start_1fdf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0
    :try_end_1fe5
    .catch Ljava/lang/SecurityException; {:try_start_1fdf .. :try_end_1fe5} :catch_25b8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fdf .. :try_end_1fe5} :catch_241e

    const/16 v19, 0x0

    const/high16 v20, 0x4000

    :try_start_1fe9
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v68

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1ff4
    .catch Ljava/lang/SecurityException; {:try_start_1fe9 .. :try_end_1ff4} :catch_25bd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1fe9 .. :try_end_1ff4} :catch_2423

    move-result-object v18

    :try_start_1ff5
    move-object/from16 v0, v32

    move v1, v5

    move-wide v2, v13

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1ffe
    .catch Ljava/lang/SecurityException; {:try_start_1ff5 .. :try_end_1ffe} :catch_25c2
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ff5 .. :try_end_1ffe} :catch_2428

    .line 1065
    :try_start_1ffe
    const-string v5, "DownloadManager"
    :try_end_2000
    .catch Ljava/lang/SecurityException; {:try_start_1ffe .. :try_end_2000} :catch_25c7
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1ffe .. :try_end_2000} :catch_242d

    :try_start_2000
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_2002
    .catch Ljava/lang/SecurityException; {:try_start_2000 .. :try_end_2002} :catch_25cc
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2000 .. :try_end_2002} :catch_2432

    :try_start_2002
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2005
    .catch Ljava/lang/SecurityException; {:try_start_2002 .. :try_end_2005} :catch_25d1
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2002 .. :try_end_2005} :catch_2437

    :try_start_2005
    const-string v14, "Set alarm manager for x-oma-separate-delivery:"
    :try_end_2007
    .catch Ljava/lang/SecurityException; {:try_start_2005 .. :try_end_2007} :catch_25d6
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2005 .. :try_end_2007} :catch_243c

    :try_start_2007
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_200a
    .catch Ljava/lang/SecurityException; {:try_start_2007 .. :try_end_200a} :catch_25db
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2007 .. :try_end_200a} :catch_2441

    move-result-object v13

    :try_start_200b
    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2011
    .catch Ljava/lang/SecurityException; {:try_start_200b .. :try_end_2011} :catch_25e0
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_200b .. :try_end_2011} :catch_2446

    move-result-object v13

    :try_start_2012
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2015
    .catch Ljava/lang/SecurityException; {:try_start_2012 .. :try_end_2015} :catch_25e5
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2012 .. :try_end_2015} :catch_244b

    move-result-object v13

    :try_start_2016
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2019
    .catch Ljava/lang/SecurityException; {:try_start_2016 .. :try_end_2019} :catch_201b
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2016 .. :try_end_2019} :catch_2450

    goto/16 :goto_2e7

    .line 1070
    :catch_201b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 922
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v38           #bytesNotified:I
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v84           #timeLastNotification:J
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v59       #f:Ljava/io/File;
    .restart local v61       #fileLength:J
    :catch_2020
    move-exception v58

    .line 923
    .restart local v58       #ex:Ljava/io/IOException;
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_33a

    .line 924
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when closing the file after download : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33a

    .line 942
    .end local v58           #ex:Ljava/io/IOException;
    :cond_2042
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_2124

    if-eqz v53, :cond_2124

    .line 951
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_206a

    .line 952
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3. DRM processUpdate result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_206a
    invoke-virtual/range {v54 .. v54}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v55

    .line 955
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_208e

    .line 956
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4. DRM processStatus result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_208e
    new-instance v43, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .restart local v43       #component:Landroid/content/ComponentName;
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mContext packagename:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "||"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x2

    move-object/from16 v0, v54

    move v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v55

    .line 964
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_2101

    .line 965
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5. DRM processEnd result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_2101
    const/4 v5, 0x0

    :try_start_2102
    invoke-static {v11, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v77

    .line 986
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v77, :cond_213b

    .line 988
    const-string v5, "DownloadManager"

    const-string v7, "createContentSession() : Fail"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_210f
    .catch Ljava/lang/SecurityException; {:try_start_2102 .. :try_end_210f} :catch_2111
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2102 .. :try_end_210f} :catch_2133

    goto/16 :goto_1bb3

    .line 1070
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_2111
    move-exception v5

    move-object/from16 v56, v5

    .line 1072
    .local v56, e:Ljava/lang/SecurityException;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1bdf

    .line 937
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v56           #e:Ljava/lang/SecurityException;
    :cond_2119
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    const/4 v11, 0x0

    goto/16 :goto_34e

    .line 1084
    :cond_2124
    invoke-static {v6}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_34e

    .line 1086
    const/16 v5, 0x1a4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v11, v5, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_34e

    .line 1075
    .restart local v43       #component:Landroid/content/ComponentName;
    :catch_2133
    move-exception v5

    move-object/from16 v56, v5

    .line 1077
    .local v56, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual/range {v56 .. v56}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_1bf1

    .line 993
    .end local v56           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_213b
    const/4 v5, 0x1

    :try_start_213c
    move-object/from16 v0, v77

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v44

    .line 994
    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v44, :cond_214e

    .line 996
    const-string v5, "DownloadManager"

    const-string v7, "getSelectedContent(true) : Fail"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c0e

    .line 1001
    :cond_214e
    const/4 v5, 0x3

    move-object/from16 v0, v44

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v41

    .line 1002
    .restart local v41       #cid:Ljava/lang/String;
    new-instance v86, Landroid/content/ContentValues;

    invoke-direct/range {v86 .. v86}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    .restart local v86       #values:Landroid/content/ContentValues;
    const-string v5, "cid"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v5, "mimetype"

    move-object/from16 v0, v86

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/android/providers/downloads/DownloadInfo;->id:I

    int-to-long v13, v8

    invoke-static {v7, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v86

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1007
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update CID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual/range {v44 .. v44}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v29

    .line 1011
    .restart local v29       #DrmContentType:I
    const/16 v73, 0x0

    .line 1012
    .restart local v73       #permission:I
    if-lez v29, :cond_21b7

    .line 1013
    packed-switch v29, :pswitch_data_2db0

    .line 1029
    :cond_21b7
    :goto_21b7
    const/4 v5, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v73

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v78

    .line 1030
    .restart local v78       #status:I
    if-eqz v78, :cond_34e

    .line 1032
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": rights not vaild"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v6, 0x122

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_34e

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mHeaderXOMADRM:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1040
    .restart local v28       #Delay:I
    const/16 v6, 0x123

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v7, "alarm"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/AlarmManager;

    .line 1045
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    if-nez v32, :cond_2215

    .line 1046
    const-string v5, "DownloadManager"

    const-string v7, "couldn\'t get alarm manager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34e

    .line 1016
    .end local v28           #Delay:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v78           #status:I
    :pswitch_220c
    const/16 v73, 0x2

    .line 1017
    goto :goto_21b7

    .line 1020
    :pswitch_220f
    const/16 v73, 0x1

    .line 1021
    goto :goto_21b7

    .line 1023
    :pswitch_2212
    const/16 v73, 0x4

    .line 1024
    goto :goto_21b7

    .line 1048
    .restart local v28       #Delay:I
    .restart local v32       #alarms:Landroid/app/AlarmManager;
    .restart local v78       #status:I
    :cond_2215
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_223a

    .line 1049
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scheduling retry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_223a
    new-instance v68, Landroid/content/Intent;

    const-string v5, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"

    move-object/from16 v0, v68

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .restart local v68       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    if-eqz v11, :cond_2265

    .line 1055
    const-string v5, "android.lge.lgdrm.extra.FILE_NAME"

    move-object/from16 v0, v68

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    :cond_2265
    const-string v5, "android.lge.lgdrm.extra.WAIT_TYPE"

    const/4 v7, 0x0

    move-object/from16 v0, v68

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v68

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, v32

    move v1, v5

    move-wide v2, v13

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1065
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set alarm manager for x-oma-separate-delivery:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22af
    .catch Ljava/lang/SecurityException; {:try_start_213c .. :try_end_22af} :catch_2111
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_213c .. :try_end_22af} :catch_2133

    goto/16 :goto_34e

    .line 1075
    .end local v20           #countRetry:Z
    .end local v21           #retryAfter:I
    .end local v22           #redirectCount:I
    .end local v23           #gotData:Z
    .end local v25           #newUri:Ljava/lang/String;
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v7       #countRetry:Z
    .restart local v8       #retryAfter:I
    .restart local v9       #redirectCount:I
    .restart local v10       #gotData:Z
    .restart local v12       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_22b1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22b6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22bb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22c0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_22c5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22ca
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22cf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22d4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v41       #cid:Ljava/lang/String;
    :catch_22d9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22de
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_22e3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22e8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22ed
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22f2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22f7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_22fc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2301
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2306
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_230b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2310
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2315
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_231a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_231f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2324
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2329
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_232e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2333
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2338
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_233d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2342
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_2347
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v78       #status:I
    :catch_234c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2351
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2356
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_235b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2360
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2365
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_236a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_236f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2374
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2379
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_237e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v28       #Delay:I
    :catch_2383
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2388
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_238d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2392
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_2397
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_239c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23a1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23a6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23ab
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23b0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23b5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23ba
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23bf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23c4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23c9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23ce
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23d3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23d8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23dd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23e2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23e7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_23ec
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23f1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23f6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_23fb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2400
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2405
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_240a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_240f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2414
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2419
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_241e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2423
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2428
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_242d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2432
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2437
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_243c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2441
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2446
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_244b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2450
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .line 1070
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_2455
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_245a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_245f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2464
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_2469
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_246e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2473
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v41       #cid:Ljava/lang/String;
    :catch_2478
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_247d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_2482
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2487
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_248c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2491
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2496
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_249b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24a0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24a5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24aa
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24af
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24b4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24b9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24be
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24c3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24c8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24cd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24d2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24d7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24dc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24e1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_24e6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v78       #status:I
    :catch_24eb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24f0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24f5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24fa
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_24ff
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2504
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2509
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_250e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2513
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2518
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_251d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v28       #Delay:I
    :catch_2522
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2527
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_252c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2531
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_2536
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_253b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2540
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2545
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_254a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_254f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2554
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2559
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_255e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2563
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2568
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_256d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2572
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2577
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_257c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2581
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_2586
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_258b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2590
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2595
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_259a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_259f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25a4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25a9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25ae
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25b3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25b8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25bd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25c2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25c7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25cc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25d1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25d6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25db
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25e0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_25e5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1075
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v38           #bytesNotified:I
    .end local v40           #bytesSoFar:I
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v48           #data:[B
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v74           #pm:Landroid/os/PowerManager;
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v84           #timeLastNotification:J
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_25ea
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_25ef
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_25f4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_25f9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_25fe
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_2603
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2608
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_260d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2612
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v41       #cid:Ljava/lang/String;
    :catch_2617
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_261c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_2621
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2626
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_262b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2630
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2635
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_263a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_263f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2644
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2649
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_264e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2653
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2658
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_265d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2662
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2667
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_266c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2671
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2676
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_267b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2680
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_2685
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v78       #status:I
    :catch_268a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_268f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2694
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2699
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_269e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26a3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26a8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26ad
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26b2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26b7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26bc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v28       #Delay:I
    :catch_26c1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26c6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26cb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26d0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_26d5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26da
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26df
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26e4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26e9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26ee
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26f3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26f8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_26fd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2702
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2707
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_270c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2711
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2716
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_271b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2720
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2725
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_272a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_272f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2734
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2739
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_273e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2743
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2748
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_274d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2752
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2757
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_275c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2761
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2766
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_276b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2770
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2775
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_277a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_277f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2784
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2789
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_278e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .line 1070
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_2793
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_2798
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_279d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27a2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_27a7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27ac
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27b1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v41       #cid:Ljava/lang/String;
    :catch_27b6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27bb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_27c0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27c5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27ca
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27cf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27d4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27d9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27de
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27e3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27e8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27ed
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27f2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27f7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_27fc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2801
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2806
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_280b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2810
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2815
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_281a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_281f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_2824
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v78       #status:I
    :catch_2829
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_282e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2833
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2838
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_283d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2842
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2847
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_284c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2851
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2856
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_285b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v28       #Delay:I
    :catch_2860
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2865
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_286a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_286f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_2874
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2879
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_287e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2883
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2888
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_288d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2892
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2897
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_289c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28a1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28a6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28ab
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28b0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28b5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28ba
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28bf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_28c4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28c9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28ce
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28d3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28d8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28dd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28e2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28e7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28ec
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28f1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28f6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_28fb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2900
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2905
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_290a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_290f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2914
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2919
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_291e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2923
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 1075
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_2928
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_292d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2932
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2937
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_293c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_2941
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2946
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_294b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2950
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v41       #cid:Ljava/lang/String;
    :catch_2955
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_295a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_295f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2964
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2969
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_296e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2973
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2978
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_297d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2982
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2987
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_298c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2991
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2996
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_299b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29a0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29a5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29aa
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29af
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29b4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29b9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29be
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_29c3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v78       #status:I
    :catch_29c8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29cd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29d2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29d7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29dc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29e1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29e6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29eb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29f0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29f5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_29fa
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v28       #Delay:I
    :catch_29ff
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a04
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a09
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a0e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_2a13
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a18
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a1d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a22
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a27
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a2c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a31
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a36
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a3b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a40
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a45
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a4a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a4f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a54
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a59
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a5e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a63
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_2a68
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a6d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a72
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a77
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a7c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a81
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a86
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a8b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a90
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a95
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a9a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2a9f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2aa4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2aa9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2aae
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2ab3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2ab8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2abd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2ac2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2ac7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    :catch_2acc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13dc

    .line 1070
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v86           #values:Landroid/content/ContentValues;
    :catch_2ad1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v77       #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_2ad6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2adb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2ae0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v44       #content:Landroid/lge/lgdrm/DrmContent;
    :catch_2ae5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2aea
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2aef
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v41       #cid:Ljava/lang/String;
    :catch_2af4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2af9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_2afe
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b03
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b08
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b0d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b12
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b17
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b1c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b21
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b26
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b2b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b30
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b35
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b3a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b3f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b44
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b49
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b4e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b53
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b58
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b5d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v29       #DrmContentType:I
    .restart local v73       #permission:I
    :catch_2b62
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v78       #status:I
    :catch_2b67
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b6c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b71
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b76
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b7b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b80
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b85
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b8a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b8f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b94
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2b99
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v28       #Delay:I
    :catch_2b9e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2ba3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2ba8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bad
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v32       #alarms:Landroid/app/AlarmManager;
    :catch_2bb2
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bb7
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bbc
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bc1
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bc6
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bcb
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bd0
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bd5
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bda
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bdf
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2be4
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2be9
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bee
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bf3
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bf8
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2bfd
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .restart local v68       #intent:Landroid/content/Intent;
    :catch_2c02
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c07
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c0c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c11
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c16
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c1b
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c20
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c25
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c2a
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c2f
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c34
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c39
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c3e
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c43
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c48
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c4d
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c52
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c57
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c5c
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    :catch_2c61
    move-exception v5

    move-object/from16 v56, v5

    goto/16 :goto_13ba

    .line 908
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v28           #Delay:I
    .end local v29           #DrmContentType:I
    .end local v32           #alarms:Landroid/app/AlarmManager;
    .end local v41           #cid:Ljava/lang/String;
    .end local v43           #component:Landroid/content/ComponentName;
    .end local v44           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v68           #intent:Landroid/content/Intent;
    .end local v73           #permission:I
    .end local v77           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v78           #status:I
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v40       #bytesSoFar:I
    .restart local v48       #data:[B
    .restart local v59       #f:Ljava/io/File;
    .restart local v61       #fileLength:J
    .restart local v74       #pm:Landroid/os/PowerManager;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catchall_2c66
    move-exception v5

    move-object v14, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_58f

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catchall_2c76
    move-exception v5

    move-object v14, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_58f

    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v63       #header:Lorg/apache/http/Header;
    .restart local v76       #response:Lorg/apache/http/HttpResponse;
    .restart local v79       #statusCode:I
    :catchall_2c82
    move-exception v5

    move-object v14, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    goto/16 :goto_58f

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v10           #gotData:Z
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v23       #gotData:Z
    :catchall_2c8c
    move-exception v5

    move-object v14, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_58f

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v63           #header:Lorg/apache/http/Header;
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v45       #contentLength:I
    .restart local v57       #entityStream:Ljava/io/InputStream;
    .restart local v58       #ex:Ljava/io/IOException;
    .restart local v69       #nMinUpdateSize:I
    .restart local v86       #values:Landroid/content/ContentValues;
    :catchall_2c96
    move-exception v5

    move-object v14, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_58f

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v58           #ex:Ljava/io/IOException;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v39       #bytesRead:I
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catchall_2ca0
    move-exception v5

    move-object v14, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_58f

    .line 899
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v38           #bytesNotified:I
    .end local v39           #bytesRead:I
    .end local v45           #contentLength:I
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v69           #nMinUpdateSize:I
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v76           #response:Lorg/apache/http/HttpResponse;
    .end local v79           #statusCode:I
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v84           #timeLastNotification:J
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v59       #f:Ljava/io/File;
    .restart local v61       #fileLength:J
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2cae
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_49c

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_2cbf
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_49c

    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v63       #header:Lorg/apache/http/Header;
    .restart local v76       #response:Lorg/apache/http/HttpResponse;
    .restart local v79       #statusCode:I
    :catch_2ccc
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    goto/16 :goto_49c

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v10           #gotData:Z
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v23       #gotData:Z
    :catch_2cd7
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_49c

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v63           #header:Lorg/apache/http/Header;
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v45       #contentLength:I
    .restart local v57       #entityStream:Ljava/io/InputStream;
    .restart local v58       #ex:Ljava/io/IOException;
    .restart local v69       #nMinUpdateSize:I
    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_2ce2
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_49c

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v58           #ex:Ljava/io/IOException;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v39       #bytesRead:I
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2ced
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_49c

    .line 893
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v38           #bytesNotified:I
    .end local v39           #bytesRead:I
    .end local v45           #contentLength:I
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v69           #nMinUpdateSize:I
    .end local v75           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v76           #response:Lorg/apache/http/HttpResponse;
    .end local v79           #statusCode:I
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v84           #timeLastNotification:J
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v59       #f:Ljava/io/File;
    .restart local v61       #fileLength:J
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2cfc
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_3c8

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .end local v59           #f:Ljava/io/File;
    .end local v61           #fileLength:J
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v38       #bytesNotified:I
    .restart local v75       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v84       #timeLastNotification:J
    :catch_2d0d
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_3c8

    .end local v9           #redirectCount:I
    .end local v10           #gotData:Z
    .end local v12           #newUri:Ljava/lang/String;
    .restart local v22       #redirectCount:I
    .restart local v23       #gotData:Z
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v63       #header:Lorg/apache/http/Header;
    .restart local v76       #response:Lorg/apache/http/HttpResponse;
    .restart local v79       #statusCode:I
    :catch_2d1a
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    goto/16 :goto_3c8

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v10           #gotData:Z
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v23       #gotData:Z
    :catch_2d25
    move-exception v5

    move-object/from16 v58, v5

    move/from16 v10, v23

    .end local v23           #gotData:Z
    .restart local v10       #gotData:Z
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_3c8

    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v63           #header:Lorg/apache/http/Header;
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v45       #contentLength:I
    .restart local v57       #entityStream:Ljava/io/InputStream;
    .restart local v58       #ex:Ljava/io/IOException;
    .restart local v69       #nMinUpdateSize:I
    .restart local v86       #values:Landroid/content/ContentValues;
    :catch_2d30
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_3c8

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v58           #ex:Ljava/io/IOException;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .end local v86           #values:Landroid/content/ContentValues;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v39       #bytesRead:I
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2d3b
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    move-object/from16 v12, v25

    .end local v25           #newUri:Ljava/lang/String;
    .restart local v12       #newUri:Ljava/lang/String;
    move/from16 v9, v22

    .end local v22           #redirectCount:I
    .restart local v9       #redirectCount:I
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    move/from16 v7, v20

    .end local v20           #countRetry:Z
    .restart local v7       #countRetry:Z
    goto/16 :goto_3c8

    .line 828
    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v9           #redirectCount:I
    .end local v12           #newUri:Ljava/lang/String;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v22       #redirectCount:I
    .restart local v25       #newUri:Ljava/lang/String;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2d4a
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_11a0

    .line 681
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :catch_2d51
    move-exception v5

    move-object/from16 v58, v5

    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_ee1

    .line 324
    .end local v10           #gotData:Z
    .end local v20           #countRetry:Z
    .end local v39           #bytesRead:I
    .end local v45           #contentLength:I
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v69           #nMinUpdateSize:I
    .restart local v7       #countRetry:Z
    .restart local v23       #gotData:Z
    .restart local v63       #header:Lorg/apache/http/Header;
    :catch_2d58
    move-exception v5

    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2af

    :catch_2d5d
    move-exception v5

    goto/16 :goto_2af

    .end local v7           #countRetry:Z
    .end local v8           #retryAfter:I
    .end local v23           #gotData:Z
    .end local v63           #header:Lorg/apache/http/Header;
    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v10       #gotData:Z
    .restart local v20       #countRetry:Z
    .restart local v21       #retryAfter:I
    .restart local v39       #bytesRead:I
    .restart local v45       #contentLength:I
    .restart local v57       #entityStream:Ljava/io/InputStream;
    .restart local v69       #nMinUpdateSize:I
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_2d60
    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_1190

    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_2d64
    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_10fa

    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_2d68
    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_ed2

    .end local v81           #stream:Ljava/io/FileOutputStream;
    .restart local v82       #stream:Ljava/io/FileOutputStream;
    :cond_2d6c
    move-object/from16 v81, v82

    .end local v82           #stream:Ljava/io/FileOutputStream;
    .restart local v81       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_b34

    .end local v10           #gotData:Z
    .end local v20           #countRetry:Z
    .end local v39           #bytesRead:I
    .end local v45           #contentLength:I
    .end local v57           #entityStream:Ljava/io/InputStream;
    .end local v69           #nMinUpdateSize:I
    .restart local v7       #countRetry:Z
    .restart local v23       #gotData:Z
    .restart local v63       #header:Lorg/apache/http/Header;
    :cond_2d70
    move/from16 v8, v21

    .end local v21           #retryAfter:I
    .restart local v8       #retryAfter:I
    goto/16 :goto_2af

    .line 1013
    :pswitch_data_2d74
    .packed-switch 0x1
        :pswitch_14cc
        :pswitch_14cf
        :pswitch_14cf
        :pswitch_14d2
    .end packed-switch

    :pswitch_data_2d80
    .packed-switch 0x1
        :pswitch_1771
        :pswitch_1774
        :pswitch_1774
        :pswitch_1777
    .end packed-switch

    :pswitch_data_2d8c
    .packed-switch 0x1
        :pswitch_1a14
        :pswitch_1a17
        :pswitch_1a17
        :pswitch_1a1a
    .end packed-switch

    :pswitch_data_2d98
    .packed-switch 0x1
        :pswitch_1cd8
        :pswitch_1cdb
        :pswitch_1cdb
        :pswitch_1cde
    .end packed-switch

    :pswitch_data_2da4
    .packed-switch 0x1
        :pswitch_1f70
        :pswitch_1f73
        :pswitch_1f73
        :pswitch_1f76
    .end packed-switch

    :pswitch_data_2db0
    .packed-switch 0x1
        :pswitch_220c
        :pswitch_220f
        :pswitch_220f
        :pswitch_2212
    .end packed-switch
.end method
