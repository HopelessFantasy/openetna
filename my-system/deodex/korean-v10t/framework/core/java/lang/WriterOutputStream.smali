.class Ljava/lang/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "Runtime.java"


# instance fields
.field private enc:Ljava/lang/String;

.field private numBytes:I

.field private out:Ljava/io/PipedOutputStream;

.field private pipe:Ljava/io/PipedInputStream;

.field private reader:Ljava/io/Reader;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "stream"

    .prologue
    const-string v3, "UTF-8"

    .line 843
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 841
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/WriterOutputStream;->enc:Ljava/lang/String;

    .line 846
    :try_start_f
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/lang/WriterOutputStream;->enc:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/lang/WriterOutputStream;->writer:Ljava/io/Writer;

    .line 849
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v1, p0, Ljava/lang/WriterOutputStream;->out:Ljava/io/PipedOutputStream;

    .line 850
    new-instance v1, Ljava/io/PipedInputStream;

    iget-object v2, p0, Ljava/lang/WriterOutputStream;->out:Ljava/io/PipedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Ljava/lang/WriterOutputStream;->pipe:Ljava/io/PipedInputStream;

    .line 851
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ljava/lang/WriterOutputStream;->pipe:Ljava/io/PipedInputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/lang/WriterOutputStream;->reader:Ljava/io/Reader;
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_33} :catch_3c

    .line 859
    return-void

    .line 853
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 855
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 856
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3c
    move-exception v1

    move-object v0, v1

    .line 857
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Ljava/lang/WriterOutputStream;->out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V

    .line 886
    invoke-virtual {p0}, Ljava/lang/WriterOutputStream;->flush()V

    .line 887
    iget-object v0, p0, Ljava/lang/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 888
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v2, p0, Ljava/lang/WriterOutputStream;->out:Ljava/io/PipedOutputStream;

    invoke-virtual {v2}, Ljava/io/PipedOutputStream;->flush()V

    .line 873
    const/16 v2, 0x80

    new-array v0, v2, [C

    .line 874
    .local v0, chars:[C
    iget-object v2, p0, Ljava/lang/WriterOutputStream;->pipe:Ljava/io/PipedInputStream;

    invoke-virtual {v2}, Ljava/io/PipedInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1f

    .line 875
    iget-object v2, p0, Ljava/lang/WriterOutputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 876
    .local v1, read:I
    if-lez v1, :cond_1f

    .line 877
    iget-object v2, p0, Ljava/lang/WriterOutputStream;->writer:Ljava/io/Writer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    .line 880
    .end local v1           #read:I
    :cond_1f
    iget-object v2, p0, Ljava/lang/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 881
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Ljava/lang/WriterOutputStream;->out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedOutputStream;->write(I)V

    .line 864
    iget v0, p0, Ljava/lang/WriterOutputStream;->numBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/WriterOutputStream;->numBytes:I

    const/16 v1, 0x100

    if-le v0, v1, :cond_15

    .line 865
    invoke-virtual {p0}, Ljava/lang/WriterOutputStream;->flush()V

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/WriterOutputStream;->numBytes:I

    .line 868
    :cond_15
    return-void
.end method
