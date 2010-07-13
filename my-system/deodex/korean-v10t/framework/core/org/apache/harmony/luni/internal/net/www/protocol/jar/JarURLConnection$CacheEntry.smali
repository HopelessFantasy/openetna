.class final Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;
.super Ljava/lang/ref/WeakReference;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/util/jar/JarFile;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .parameter
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/jar/JarFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<TT;>;"
    .local p1, jar:Ljava/util/jar/JarFile;,"TT;"
    .local p3, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/util/jar/JarFile;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 93
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;->key:Ljava/lang/Object;

    .line 94
    return-void
.end method
