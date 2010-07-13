.class Lcom/android/camera/Wallpaper$SetWallpaperThread;
.super Ljava/lang/Thread;
.source "Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Wallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetWallpaperThread"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .parameter "bitmap"
    .parameter "handler"
    .parameter "context"
    .parameter "file"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    iput-object p2, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p3, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mContext:Landroid/content/Context;

    .line 87
    iput-object p4, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mFile:Ljava/io/File;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_13

    .line 97
    iget-object v1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    iget-object v1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 100
    :goto_12
    return-void

    .line 94
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, e:Ljava/io/IOException;
    :try_start_15
    const-string v1, "Camera"

    const-string v2, "Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 97
    iget-object v1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    iget-object v1, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_12

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :catchall_27
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    iget-object v2, p0, Lcom/android/camera/Wallpaper$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v1
.end method
