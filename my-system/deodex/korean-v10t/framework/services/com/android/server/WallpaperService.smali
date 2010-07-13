.class Lcom/android/server/WallpaperService;
.super Landroid/app/IWallpaperService$Stub;
.source "WallpaperService.java"


# static fields
.field private static final DEFAULT_WALLPAPER:Ljava/lang/String; = "wallpaper_default"

.field private static final DEFAULT_WALLPAPER_FILE:Ljava/io/File; = null

.field private static final HINT_HEIGHT:Ljava/lang/String; = "hintHeight"

.field private static final HINT_WIDTH:Ljava/lang/String; = "hintWidth"

.field private static final PREFERENCES:Ljava/lang/String; = "wallpaper-hints"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_DIR:Ljava/io/File;

.field private static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    const-class v0, Lcom/android/server/WallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_FILE:Ljava/io/File;

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper_default"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperService;->DEFAULT_WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 108
    invoke-direct {p0}, Landroid/app/IWallpaperService$Stub;-><init>()V

    .line 79
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 88
    new-instance v1, Lcom/android/server/WallpaperService$1;

    sget-object v2, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x108

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/WallpaperService$1;-><init>(Lcom/android/server/WallpaperService;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/WallpaperService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 105
    iput v4, p0, Lcom/android/server/WallpaperService;->mWidth:I

    .line 106
    iput v4, p0, Lcom/android/server/WallpaperService;->mHeight:I

    .line 109
    sget-object v1, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService startup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/android/server/WallpaperService;->createFilesDir()V

    .line 112
    iget-object v1, p0, Lcom/android/server/WallpaperService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 114
    iget-object v1, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    const-string v2, "wallpaper-hints"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "hintWidth"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/WallpaperService;->mWidth:I

    .line 117
    const-string v1, "hintHeight"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/WallpaperService;->mHeight:I

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/WallpaperService;->notifyCallbacks()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 306
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_2f
    return-void
.end method

.method private createFilesDir()V
    .registers 2

    .prologue
    .line 281
    sget-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 282
    sget-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_d
    return-void
.end method

.method private notifyCallbacks()V
    .registers 5

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 288
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 290
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperServiceCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperServiceCallback;->onWallpaperChanged()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_2f

    .line 288
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 297
    :cond_17
    iget-object v3, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 298
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 301
    iget-object v3, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    :cond_2e
    return-void

    .line 291
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2f
    move-exception v3

    goto :goto_14
.end method


# virtual methods
.method public clearWallpaper()V
    .registers 3

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/WallpaperService;->WALLPAPER_FILE:Ljava/io/File;

    .line 128
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    :cond_b
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/IWallpaperService$Stub;->finalize()V

    .line 123
    iget-object v0, p0, Lcom/android/server/WallpaperService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 124
    return-void
.end method

.method public getDefaultWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    .line 252
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 253
    sget-object v1, Lcom/android/server/WallpaperService;->DEFAULT_WALLPAPER_FILE:Ljava/io/File;

    .line 254
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v4

    .line 263
    .end local v1           #f:Ljava/io/File;
    :goto_f
    return-object v2

    .line 257
    .restart local v1       #f:Ljava/io/File;
    :cond_10
    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_f

    .line 258
    .end local v1           #f:Ljava/io/File;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 261
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v3, "Error getting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 263
    goto :goto_f
.end method

.method public getDrmWallpaper(Landroid/app/IWallpaperServiceCallback;)[B
    .registers 11
    .parameter "cb"

    .prologue
    const/4 v8, 0x0

    .line 181
    const/4 v2, 0x0

    .line 187
    .local v2, inDrm:Landroid/lge/lgdrm/DrmStream;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/WallpaperService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    .line 189
    .local v3, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v3, :cond_33

    .line 191
    sget-object v4, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v5, "Fail to create DRM session"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 221
    .end local v3           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_32
    return-object v4

    .line 196
    .restart local v3       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_33
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v4

    if-eqz v4, :cond_44

    .line 198
    sget-object v4, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v5, "No valid Rights exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 199
    goto :goto_32

    .line 203
    :cond_44
    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v4

    if-eqz v4, :cond_59

    .line 205
    sget-object v4, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v5, "Fail to consume"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 206
    goto :goto_32

    .line 209
    :cond_59
    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDecryptionInfo()[B
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5c} :catch_5f
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_2 .. :try_end_5c} :catch_66

    move-result-object v0

    .local v0, DecInfo:[B
    move-object v4, v0

    .line 210
    goto :goto_32

    .line 213
    .end local v0           #DecInfo:[B
    .end local v3           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_5f
    move-exception v4

    move-object v1, v4

    .line 215
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v4, v8

    .line 216
    goto :goto_32

    .line 218
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_66
    move-exception v4

    move-object v1, v4

    .line 220
    .local v1, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v1}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    move-object v4, v8

    .line 221
    goto :goto_32
.end method

.method public getHeightHint()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget v0, p0, Lcom/android/server/WallpaperService;->mHeight:I

    return v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    .line 164
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WallpaperService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 165
    sget-object v1, Lcom/android/server/WallpaperService;->WALLPAPER_FILE:Ljava/io/File;

    .line 166
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v4

    .line 175
    .end local v1           #f:Ljava/io/File;
    :goto_f
    return-object v2

    .line 169
    .restart local v1       #f:Ljava/io/File;
    :cond_10
    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_f

    .line 170
    .end local v1           #f:Ljava/io/File;
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v3, "Error getting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 175
    goto :goto_f
.end method

.method public getWidthHint()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/WallpaperService;->mWidth:I

    return v0
.end method

.method public setDefaultWallpaper()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .prologue
    .line 270
    const-string v1, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v1}, Lcom/android/server/WallpaperService;->checkPermission(Ljava/lang/String;)V

    .line 272
    :try_start_5
    sget-object v1, Lcom/android/server/WallpaperService;->DEFAULT_WALLPAPER_FILE:Ljava/io/File;

    const/high16 v2, 0x3800

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object v1

    .line 276
    :goto_d
    return-object v1

    .line 273
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v2, "Error setting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setDimensionHints(II)V
    .registers 8
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperService;->checkPermission(Ljava/lang/String;)V

    .line 136
    if-lez p1, :cond_9

    if-gtz p2, :cond_11

    .line 137
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width and height must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_11
    iget v2, p0, Lcom/android/server/WallpaperService;->mWidth:I

    if-ne p1, v2, :cond_19

    iget v2, p0, Lcom/android/server/WallpaperService;->mHeight:I

    if-eq p2, v2, :cond_37

    .line 141
    :cond_19
    iput p1, p0, Lcom/android/server/WallpaperService;->mWidth:I

    .line 142
    iput p2, p0, Lcom/android/server/WallpaperService;->mHeight:I

    .line 144
    iget-object v2, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    const-string v3, "wallpaper-hints"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "hintWidth"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    const-string v2, "hintHeight"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_37
    return-void
.end method

.method public setWallpaper()Landroid/os/ParcelFileDescriptor;
    .registers 8

    .prologue
    .line 227
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperService;->checkPermission(Ljava/lang/String;)V

    .line 230
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/WallpaperService;->createFilesDir()V

    .line 232
    sget-object v5, Lcom/android/server/WallpaperService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v6, 0x3800

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 236
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 237
    .local v3, origId:J
    new-instance v0, Landroid/backup/BackupManager;

    iget-object v5, p0, Lcom/android/server/WallpaperService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, bm:Landroid/backup/BackupManager;
    invoke-virtual {v0}, Landroid/backup/BackupManager;->dataChanged()V

    .line 239
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_21} :catch_23

    move-object v5, v2

    .line 245
    .end local v0           #bm:Landroid/backup/BackupManager;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #origId:J
    :goto_22
    return-object v5

    .line 242
    :catch_23
    move-exception v5

    move-object v1, v5

    .line 243
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/android/server/WallpaperService;->TAG:Ljava/lang/String;

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v5, 0x0

    goto :goto_22
.end method
