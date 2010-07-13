.class public Lcom/android/server/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputDevice$TSCalObserver;,
        Lcom/android/server/InputDevice$AbsoluteInfo;,
        Lcom/android/server/InputDevice$MotionState;
    }
.end annotation


# static fields
.field static final TRACKBALL_MOVEMENT_THRESHOLD:I = 0x6

.field private static scale_factor:I

.field private static xscale:I

.field private static xtrans:I

.field private static yscale:I

.field private static ytrans:I


# instance fields
.field final absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absX:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final absY:Lcom/android/server/InputDevice$AbsoluteInfo;

.field final classes:I

.field final id:I

.field final mAbs:Lcom/android/server/InputDevice$MotionState;

.field mDownTime:J

.field mMetaKeysState:I

.field final mRel:Lcom/android/server/InputDevice$MotionState;

.field private mTSCalObserver:Lcom/android/server/InputDevice$TSCalObserver;

.field final name:Ljava/lang/String;

.field ts_cal:Ljava/io/File;


# direct methods
.method constructor <init>(IILjava/lang/String;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;)V
    .registers 14
    .parameter "_id"
    .parameter "_classes"
    .parameter "_name"
    .parameter "_absX"
    .parameter "_absY"
    .parameter "_absPressure"
    .parameter "_absSize"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/InputDevice;->mDownTime:J

    .line 47
    iput v3, p0, Lcom/android/server/InputDevice;->mMetaKeysState:I

    .line 49
    new-instance v1, Lcom/android/server/InputDevice$MotionState;

    invoke-direct {v1, v3, v3}, Lcom/android/server/InputDevice$MotionState;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .line 50
    new-instance v1, Lcom/android/server/InputDevice$MotionState;

    invoke-direct {v1, v5, v5}, Lcom/android/server/InputDevice$MotionState;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    .line 220
    iput p1, p0, Lcom/android/server/InputDevice;->id:I

    .line 221
    iput p2, p0, Lcom/android/server/InputDevice;->classes:I

    .line 222
    iput-object p3, p0, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 224
    iput-object p5, p0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 225
    iput-object p6, p0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 226
    iput-object p7, p0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 229
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 230
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "misc/ts_cal"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    .line 231
    iget-object v1, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_51

    .line 232
    const-string v1, "TS"

    const-string v2, "+++++ hopemini /data/misc/ts_cal does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sput v4, Lcom/android/server/InputDevice;->xscale:I

    .line 234
    sput v3, Lcom/android/server/InputDevice;->xtrans:I

    .line 235
    sput v4, Lcom/android/server/InputDevice;->yscale:I

    .line 236
    sput v3, Lcom/android/server/InputDevice;->ytrans:I

    .line 237
    sput v4, Lcom/android/server/InputDevice;->scale_factor:I

    .line 239
    invoke-direct {p0}, Lcom/android/server/InputDevice;->save()V

    .line 241
    :cond_51
    new-instance v1, Lcom/android/server/InputDevice$TSCalObserver;

    const-string v2, "/data/misc/ts_cal"

    invoke-direct {v1, p0, v2}, Lcom/android/server/InputDevice$TSCalObserver;-><init>(Lcom/android/server/InputDevice;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/InputDevice;->mTSCalObserver:Lcom/android/server/InputDevice$TSCalObserver;

    .line 242
    iget-object v1, p0, Lcom/android/server/InputDevice;->mTSCalObserver:Lcom/android/server/InputDevice$TSCalObserver;

    invoke-virtual {v1}, Lcom/android/server/InputDevice$TSCalObserver;->startWatching()V

    .line 243
    invoke-direct {p0}, Lcom/android/server/InputDevice;->readTSCal()V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/InputDevice;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/InputDevice;->readTSCal()V

    return-void
.end method

.method static getScaleFactor()I
    .registers 1

    .prologue
    .line 328
    sget v0, Lcom/android/server/InputDevice;->scale_factor:I

    return v0
.end method

.method static getXScale()I
    .registers 1

    .prologue
    .line 316
    sget v0, Lcom/android/server/InputDevice;->xscale:I

    return v0
.end method

.method static getXTrans()I
    .registers 1

    .prologue
    .line 319
    sget v0, Lcom/android/server/InputDevice;->xtrans:I

    return v0
.end method

.method static getYScale()I
    .registers 1

    .prologue
    .line 322
    sget v0, Lcom/android/server/InputDevice;->yscale:I

    return v0
.end method

.method static getYTrans()I
    .registers 1

    .prologue
    .line 325
    sget v0, Lcom/android/server/InputDevice;->ytrans:I

    return v0
.end method

.method private final readTSCal()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 263
    iget-object v6, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 264
    const-string v6, "TS"

    const-string v7, "+++++ hopemini /data/misc/ts_cal does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sput v8, Lcom/android/server/InputDevice;->xscale:I

    .line 266
    sput v9, Lcom/android/server/InputDevice;->xtrans:I

    .line 267
    sput v8, Lcom/android/server/InputDevice;->yscale:I

    .line 268
    sput v9, Lcom/android/server/InputDevice;->ytrans:I

    .line 269
    sput v8, Lcom/android/server/InputDevice;->scale_factor:I

    .line 298
    :cond_1b
    :goto_1b
    return-void

    .line 272
    :cond_1c
    const/4 v0, 0x0

    .line 274
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v7, 0x20

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_76

    .line 275
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, s:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, tokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 279
    .local v2, idx:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/InputDevice;->xscale:I

    .line 280
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/InputDevice;->xtrans:I

    .line 281
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/InputDevice;->yscale:I

    .line 282
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/InputDevice;->ytrans:I

    .line 283
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/InputDevice;->scale_factor:I
    :try_end_68
    .catchall {:try_start_2b .. :try_end_68} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_86

    .line 293
    if-eqz v1, :cond_6d

    .line 294
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_81

    :cond_6d
    :goto_6d
    move-object v0, v1

    .line 297
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1b

    .line 292
    .end local v3           #idx:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #tokens:[Ljava/lang/String;
    :catchall_6f
    move-exception v6

    .line 293
    :goto_70
    if-eqz v0, :cond_75

    .line 294
    :try_start_72
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7f

    .line 292
    :cond_75
    :goto_75
    throw v6

    .line 290
    :catch_76
    move-exception v6

    .line 293
    :goto_77
    if-eqz v0, :cond_1b

    .line 294
    :try_start_79
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_1b

    .line 295
    :catch_7d
    move-exception v6

    goto :goto_1b

    :catch_7f
    move-exception v7

    goto :goto_75

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #idx:I
    .restart local v4       #s:Ljava/lang/String;
    .restart local v5       #tokens:[Ljava/lang/String;
    :catch_81
    move-exception v6

    goto :goto_6d

    .line 292
    .end local v3           #idx:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #tokens:[Ljava/lang/String;
    :catchall_83
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_70

    .line 290
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_77
.end method

.method private save()V
    .registers 8

    .prologue
    const-string v3, ","

    .line 302
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 303
    .local v1, fos:Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/android/server/InputDevice;->ts_cal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/server/InputDevice;->xscale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/InputDevice;->xtrans:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/InputDevice;->yscale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/InputDevice;->ytrans:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/InputDevice;->scale_factor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_66} :catch_67

    .line 313
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #s:Ljava/lang/String;
    :goto_66
    return-void

    .line 310
    :catch_67
    move-exception v3

    move-object v0, v3

    .line 311
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TS"

    const-string v4, "File Not Found error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method
