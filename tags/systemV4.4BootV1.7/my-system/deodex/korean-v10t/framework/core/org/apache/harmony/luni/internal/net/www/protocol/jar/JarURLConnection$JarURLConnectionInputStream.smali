.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field inputStream:Ljava/io/InputStream;

.field jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "file"

    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    .line 473
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 474
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    .line 475
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    .line 476
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 481
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 482
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->access$102(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Z)Z

    .line 483
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 485
    :cond_16
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
