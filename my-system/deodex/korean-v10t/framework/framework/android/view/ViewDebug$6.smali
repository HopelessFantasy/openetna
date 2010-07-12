.class Landroid/view/ViewDebug$6;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[Landroid/graphics/Bitmap;

.field final synthetic val$captureView:Landroid/view/View;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([Landroid/graphics/Bitmap;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    iput-object p3, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 869
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_e} :catch_14

    .line 879
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    :goto_10
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 881
    return-void

    .line 871
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 873
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_16
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_24} :catch_27

    .line 879
    :goto_24
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_10

    .line 875
    :catch_27
    move-exception v2

    move-object v1, v2

    .line 876
    .local v1, e2:Ljava/lang/OutOfMemoryError;
    :try_start_29
    const-string v2, "View"

    const-string v3, "Out of memory for bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_24

    .line 879
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #e2:Ljava/lang/OutOfMemoryError;
    :catchall_31
    move-exception v2

    iget-object v3, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
.end method
