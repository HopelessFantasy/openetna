.class public Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;
.super Ljava/net/URLConnection;
.source "FileURLConnection.java"


# instance fields
.field fileName:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private isDir:Z

.field private length:I

.field private permission:Ljava/io/FilePermission;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    .line 61
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 65
    :cond_31
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    if-nez v1, :cond_39

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 68
    :cond_39
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 72
    :cond_60
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;
    .registers 10
    .parameter "f"

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, fileList:[Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v3, out:Ljava/io/PrintStream;
    const-string v4, "<title>Directory Listing</title>\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    const-string v4, "<base href=\"file:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/\"><h1>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h1>\n<hr>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    .local v2, i:I
    :goto_49
    array-length v4, v1

    if-ge v2, v4, :cond_67

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 160
    :cond_67
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 161
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v4
.end method


# virtual methods
.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 87
    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->isDir:Z

    .line 88
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->getDirectoryListing(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 96
    :goto_16
    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    .line 97
    return-void

    .line 92
    :cond_19
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    .line 94
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    goto :goto_16
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 109
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 110
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_a

    .line 115
    :cond_7
    :goto_7
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->length:I

    return v0

    .line 112
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "content/unknown"

    .line 127
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v2, :cond_9

    .line 128
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_10

    .line 133
    :cond_9
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->isDir:Z

    if-eqz v2, :cond_16

    .line 134
    const-string v2, "text/html"

    .line 140
    :goto_f
    return-object v2

    .line 130
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 131
    .local v0, e:Ljava/io/IOException;
    const-string v2, "content/unknown"

    move-object v2, v3

    goto :goto_f

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_26

    .line 138
    const-string v2, "content/unknown"

    move-object v2, v3

    goto :goto_f

    :cond_26
    move-object v2, v1

    .line 140
    goto :goto_f
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 181
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->connect()V

    .line 183
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    if-nez v1, :cond_1b

    .line 199
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->fileName:Ljava/lang/String;

    .line 200
    .local v0, path:Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_12

    .line 201
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_12
    new-instance v1, Ljava/io/FilePermission;

    const-string v2, "read"

    invoke-direct {v1, v0, v2}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    .line 205
    .end local v0           #path:Ljava/lang/String;
    :cond_1b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;->permission:Ljava/io/FilePermission;

    return-object v1
.end method
