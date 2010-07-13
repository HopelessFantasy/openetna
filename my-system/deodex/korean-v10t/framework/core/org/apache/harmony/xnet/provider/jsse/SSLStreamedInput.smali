.class public Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "SSLStreamedInput.java"


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

    .line 38
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 54
    .local v0, res:I
    if-gez v0, :cond_e

    .line 55
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;-><init>()V

    throw v1

    .line 57
    :cond_e
    return v0
.end method
