.class Ljava/lang/ReaderInputStream;
.super Ljava/io/InputStream;
.source "Runtime.java"


# instance fields
.field private bytes:[B

.field encoding:Ljava/lang/String;

.field private nextByte:I

.field private numBytes:I

.field out:Ljava/io/ByteArrayOutputStream;

.field private reader:Ljava/io/Reader;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6
    .parameter "stream"

    .prologue
    const-string v3, "UTF-8"

    .line 787
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 777
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ReaderInputStream;->out:Ljava/io/ByteArrayOutputStream;

    .line 785
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ReaderInputStream;->encoding:Ljava/lang/String;

    .line 789
    :try_start_18
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/lang/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 790
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/lang/ReaderInputStream;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/lang/ReaderInputStream;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/lang/ReaderInputStream;->writer:Ljava/io/Writer;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_2c} :catch_2d

    .line 796
    return-void

    .line 791
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 794
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 808
    const/16 v2, 0x80

    new-array v0, v2, [C

    .line 809
    .local v0, chars:[C
    iget-object v2, p0, Ljava/lang/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 810
    .local v1, read:I
    if-gez v1, :cond_10

    .line 811
    iput v1, p0, Ljava/lang/ReaderInputStream;->numBytes:I

    .line 820
    :goto_f
    return-void

    .line 815
    :cond_10
    iget-object v2, p0, Ljava/lang/ReaderInputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    .line 816
    iget-object v2, p0, Ljava/lang/ReaderInputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 817
    iget-object v2, p0, Ljava/lang/ReaderInputStream;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljava/lang/ReaderInputStream;->bytes:[B

    .line 818
    iget-object v2, p0, Ljava/lang/ReaderInputStream;->bytes:[B

    array-length v2, v2

    iput v2, p0, Ljava/lang/ReaderInputStream;->numBytes:I

    .line 819
    iput v3, p0, Ljava/lang/ReaderInputStream;->nextByte:I

    goto :goto_f
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    iget v0, p0, Ljava/lang/ReaderInputStream;->nextByte:I

    iget v1, p0, Ljava/lang/ReaderInputStream;->numBytes:I

    if-lt v0, v1, :cond_9

    .line 801
    invoke-direct {p0}, Ljava/lang/ReaderInputStream;->readBuffer()V

    .line 804
    :cond_9
    iget v0, p0, Ljava/lang/ReaderInputStream;->numBytes:I

    if-gez v0, :cond_f

    const/4 v0, -0x1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Ljava/lang/ReaderInputStream;->bytes:[B

    iget v1, p0, Ljava/lang/ReaderInputStream;->nextByte:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/ReaderInputStream;->nextByte:I

    aget-byte v0, v0, v1

    goto :goto_e
.end method
