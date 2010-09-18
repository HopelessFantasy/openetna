.class final Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;
.super Ljava/lang/Object;
.source "JarURLConnection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LRUComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    .local p0, this:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    .local p0, this:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator<TT;>;"
    check-cast p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    .end local p1
    check-cast p2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;->compare(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;)I
    .registers 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 131
    .local p0, this:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator<TT;>;"
    iget-wide v0, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->ts:J

    iget-wide v2, p2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->ts:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->ts:J

    iget-wide v2, p2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->ts:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 146
    .local p0, this:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator<TT;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
