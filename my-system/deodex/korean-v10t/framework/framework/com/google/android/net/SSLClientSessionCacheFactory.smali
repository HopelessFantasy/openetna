.class public final Lcom/google/android/net/SSLClientSessionCacheFactory;
.super Ljava/lang/Object;
.source "SSLClientSessionCacheFactory.java"


# static fields
.field public static final DB:Ljava/lang/String; = "db"

.field public static final FILE:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String; = "SSLClientSessionCacheFactory"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache(Landroid/content/Context;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const-string v7, "SSLClientSessionCacheFactory"

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ssl_session_cache"

    invoke-static {v4, v5}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_7a

    .line 42
    const-string v4, "db"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 43
    invoke-static {p0}, Lcom/android/internal/net/DbSSLSessionCache;->getInstanceForPackage(Landroid/content/Context;)Lcom/android/internal/net/DbSSLSessionCache;

    move-result-object v4

    .line 60
    :goto_1b
    return-object v4

    .line 44
    :cond_1c
    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "sslcache"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_38

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 51
    :cond_38
    :try_start_38
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    move-result-object v4

    goto :goto_1b

    .line 52
    :catch_3d
    move-exception v2

    .line 53
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "SSLClientSessionCacheFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create FileClientSessionCache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 54
    goto :goto_1b

    .line 57
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_5c
    const-string v4, "SSLClientSessionCacheFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unrecognized type: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    move-object v4, v6

    .line 60
    goto :goto_1b
.end method
