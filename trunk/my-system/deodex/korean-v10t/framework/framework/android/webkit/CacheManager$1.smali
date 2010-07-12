.class Landroid/webkit/CacheManager$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CacheManager;->removeAllCacheFiles()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Landroid/webkit/CacheManager;->access$000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, files:[Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 446
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 447
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/webkit/CacheManager;->access$000()Ljava/io/File;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 450
    .end local v0           #files:[Ljava/lang/String;
    .end local v1           #i:I
    :catch_1f
    move-exception v2

    .line 454
    :cond_20
    invoke-static {}, Landroid/webkit/CacheManager;->access$100()Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 455
    return-void
.end method
