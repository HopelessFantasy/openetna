.class Lcom/android/camera/GalleryPicker$1;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker;->rebake(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GalleryPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$1;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 118
    .local v0, remaining:J
    invoke-static {}, Lcom/android/camera/GalleryPicker;->access$000()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_33

    .line 120
    iget-object v4, p0, Lcom/android/camera/GalleryPicker$1;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/GalleryPicker$1$1;

    invoke-direct {v5, p0}, Lcom/android/camera/GalleryPicker$1$1;-><init>(Lcom/android/camera/GalleryPicker$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .end local v0           #remaining:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :cond_33
    return-void
.end method
