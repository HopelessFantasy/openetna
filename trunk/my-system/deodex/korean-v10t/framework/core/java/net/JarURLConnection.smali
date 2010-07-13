.class public abstract Ljava/net/JarURLConnection;
.super Ljava/net/URLConnection;
.source "JarURLConnection.java"


# instance fields
.field private entryName:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private fileURL:Ljava/net/URL;

.field protected jarFileURLConnection:Ljava/net/URLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .registers 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 72
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, sepIdx:I
    if-gez v0, :cond_19

    .line 75
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    throw v1

    .line 77
    :cond_19
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_24

    .line 84
    :cond_23
    :goto_23
    return-void

    .line 80
    :cond_24
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

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

    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    goto :goto_23
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 98
    .local v0, jEntry:Ljava/util/jar/JarEntry;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    goto :goto_7
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 114
    .local v0, jEntry:Ljava/util/jar/JarEntry;
    if-nez v0, :cond_8

    .line 115
    const/4 v1, 0x0

    .line 118
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_7
.end method

.method public getEntryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    return-object v0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Ljava/net/JarURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 145
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->connect()V

    .line 147
    :cond_7
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iget-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    goto :goto_c
.end method

.method public abstract getJarFile()Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getJarFileURL()Ljava/net/URL;
    .registers 7

    .prologue
    .line 185
    iget-object v1, p0, Ljava/net/JarURLConnection;->fileURL:Ljava/net/URL;

    if-eqz v1, :cond_7

    .line 186
    iget-object v1, p0, Ljava/net/JarURLConnection;->fileURL:Ljava/net/URL;

    .line 192
    :goto_6
    return-object v1

    .line 189
    :cond_7
    :try_start_7
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Ljava/net/JarURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/net/JarURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/net/JarURLConnection;->fileURL:Ljava/net/URL;
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_6

    .line 191
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 192
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 209
    .local v0, m:Ljava/util/jar/Manifest;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    goto :goto_b
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method
