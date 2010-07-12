.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mLastAudibleIndex:I

.field private final mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private final mStreamType:I

.field private final mVolumeIndexSettingName:Ljava/lang/String;

.field private final mVolumes:[I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;II[I)V
    .registers 6
    .parameter
    .parameter "defaultVolume"
    .parameter "streamType"
    .parameter "volumes"

    .prologue
    const/4 v0, 0x0

    .line 1285
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 1287
    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 1288
    iput p2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    iput p2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1289
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 1290
    iput-object p4, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    .line 1291
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p2}, Landroid/media/AudioSystem;->setVolume(II)I

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 1293
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;II[ILandroid/media/AudioService$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1251
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;II[I)V

    return-void
.end method

.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I[I)V
    .registers 8
    .parameter
    .parameter "settingName"
    .parameter "streamType"
    .parameter "volumes"

    .prologue
    .line 1261
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_last_audible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 1266
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 1267
    iput-object p4, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    .line 1269
    invoke-static {p1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1270
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1271
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-lez v2, :cond_55

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    :goto_3c
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1274
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    aget v1, p4, v1

    invoke-static {p3, v1}, Landroid/media/AudioSystem;->setVolume(II)I

    .line 1275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 1276
    return-void

    .line 1271
    :cond_55
    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    goto :goto_3c
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I[ILandroid/media/AudioService$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1251
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I[I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/AudioService$VolumeStreamState;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return p1
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return v0
.end method

.method static synthetic access$702(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .registers 10
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 1413
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1415
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1416
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_24

    .line 1417
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 1418
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1500(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1419
    monitor-exit v4

    move-object v1, v0

    .line 1430
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_20
    return-object v1

    .line 1416
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1424
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_24
    if-eqz p2, :cond_2e

    .line 1425
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .line 1430
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2b
    monitor-exit v4

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_20

    .line 1427
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2e
    const-string v5, "AudioService"

    const-string v6, "stream was not muted by this client"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2b

    .line 1431
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_37
    move-exception v5

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v5
.end method

.method private getValidIndex(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 1327
    if-gez p1, :cond_4

    .line 1328
    const/4 v0, 0x0

    .line 1333
    :goto_3
    return v0

    .line 1329
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_f

    .line 1330
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_f
    move v0, p1

    .line 1333
    goto :goto_3
.end method

.method private muteCount()I
    .registers 5

    .prologue
    .line 1404
    const/4 v0, 0x0

    .line 1405
    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1406
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 1407
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1000(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1409
    :cond_1a
    return v0
.end method


# virtual methods
.method public adjustIndex(I)Z
    .registers 4
    .parameter "deltaIndex"

    .prologue
    .line 1296
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    return v0
.end method

.method public getMaxIndex()I
    .registers 3

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumes:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 1319
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_21

    .line 1320
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_20
    return-void

    .line 1323
    :cond_21
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    goto :goto_20
.end method

.method public setIndex(IZ)Z
    .registers 5
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    .line 1300
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1301
    .local v0, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 1303
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v0, v1, :cond_14

    .line 1304
    if-eqz p2, :cond_12

    .line 1305
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 1307
    :cond_12
    const/4 v1, 0x1

    .line 1309
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method
