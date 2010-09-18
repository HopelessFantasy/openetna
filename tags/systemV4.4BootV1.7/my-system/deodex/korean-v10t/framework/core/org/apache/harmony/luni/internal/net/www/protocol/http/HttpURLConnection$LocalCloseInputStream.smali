.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCloseInputStream"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    .line 137
    return-void
.end method

.method private throwClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 190
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v0, :cond_7

    .line 191
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 194
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    .line 199
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 200
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 202
    :cond_1c
    return-void
.end method

.method public mark(I)V
    .registers 3
    .parameter "readLimit"

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-nez v0, :cond_d

    .line 206
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 208
    :cond_d
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

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
    .line 140
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v1, :cond_7

    .line 141
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 144
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 145
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 146
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 148
    :cond_2a
    return v0
.end method

.method public read([B)I
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v1, :cond_7

    .line 168
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 170
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 171
    .local v0, result:I
    if-lez v0, :cond_2d

    .line 174
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 175
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    :cond_2d
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v1, :cond_7

    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 155
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 156
    .local v0, result:I
    if-lez v0, :cond_2c

    .line 159
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 160
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 163
    :cond_2c
    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v0, :cond_7

    .line 212
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 215
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 216
    return-void
.end method

.method public skip(J)J
    .registers 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->closed:Z

    if-eqz v0, :cond_7

    .line 183
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->throwClosed()V

    .line 186
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
