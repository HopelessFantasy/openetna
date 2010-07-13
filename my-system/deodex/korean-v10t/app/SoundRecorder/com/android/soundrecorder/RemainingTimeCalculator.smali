.class Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# static fields
.field public static final DISK_SPACE_LIMIT:I = 0x2

.field public static final FILE_SIZE_LIMIT:I = 0x1

.field public static final UNKNOWN_LIMIT:I


# instance fields
.field private mBlocksChangedTime:J

.field private mBytesPerSecond:I

.field private mCurrentLowerLimit:I

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mMaxBytes:J

.field private mRecordingFile:Ljava/io/File;

.field private mSDCardDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    .line 82
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceAvailable()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 171
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, fs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    if-le v1, v2, :cond_14

    move v1, v2

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public reset()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 103
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 104
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 105
    return-void
.end method

.method public setBitRate(I)V
    .registers 3
    .parameter "bitRate"

    .prologue
    .line 182
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 183
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .registers 4
    .parameter "file"
    .parameter "maxBytes"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 95
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 96
    return-void
.end method

.method public timeRemaining()J
    .registers 21

    .prologue
    .line 113
    new-instance v9, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 114
    .local v9, fs:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    .line 115
    .local v5, blocks:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v3, v0

    .line 116
    .local v3, blockSize:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 118
    .local v10, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_3c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    cmp-long v16, v5, v16

    if-eqz v16, :cond_46

    .line 119
    :cond_3c
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 120
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 129
    :cond_46
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    mul-long v16, v16, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v12, v16, v18

    .line 131
    .local v12, result:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v12, v12, v16

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-nez v16, :cond_7c

    .line 134
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    move-wide/from16 v16, v12

    .line 155
    :goto_7b
    return-wide v16

    .line 141
    :cond_7c
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 143
    .local v7, fileSize:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_b1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    move-wide/from16 v16, v0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_bb

    .line 144
    :cond_b1
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 145
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 148
    :cond_bb
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v14, v16, v18

    .line 149
    .local v14, result2:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v14, v14, v16

    .line 150
    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 152
    cmp-long v16, v12, v14

    if-gez v16, :cond_f3

    const/16 v16, 0x2

    :goto_e8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 155
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_7b

    .line 152
    :cond_f3
    const/16 v16, 0x1

    goto :goto_e8
.end method
