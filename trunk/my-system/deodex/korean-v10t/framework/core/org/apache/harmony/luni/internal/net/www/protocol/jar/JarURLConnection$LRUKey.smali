.class final Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;
.super Ljava/lang/Object;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LRUKey"
.end annotation


# instance fields
.field jar:Ljava/util/jar/JarFile;

.field ts:J


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;J)V
    .registers 4
    .parameter "file"
    .parameter "time"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->jar:Ljava/util/jar/JarFile;

    .line 104
    iput-wide p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->ts:J

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 112
    instance-of v0, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->jar:Ljava/util/jar/JarFile;

    check-cast p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->jar:Ljava/util/jar/JarFile;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
