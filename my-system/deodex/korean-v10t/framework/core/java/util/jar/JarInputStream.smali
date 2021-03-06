.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private eos:Z

.field private isMeta:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private mEntry:Ljava/util/jar/JarEntry;

.field private manifest:Ljava/util/jar/Manifest;

.field private verStream:Ljava/io/OutputStream;

.field private verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 8
    .parameter "stream"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->eos:Z

    .line 67
    if-eqz p2, :cond_12

    .line 68
    new-instance v2, Ljava/util/jar/JarVerifier;

    const-string v3, "JarInputStream"

    invoke-direct {v2, v3}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 70
    :cond_12
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_1b

    .line 102
    :cond_1a
    :goto_1a
    return-void

    .line 73
    :cond_1b
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, name:Ljava/lang/String;
    const-string v2, "META-INF/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 75
    iput-object v4, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    .line 76
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 77
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    .line 78
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_42
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 81
    iput-object v4, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    .line 82
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-direct {v2, p0, p2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    .line 83
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 84
    if-eqz p2, :cond_1a

    .line 85
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->setManifest(Ljava/util/jar/Manifest;)V

    .line 86
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_1a

    .line 87
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributesChunk()[B

    move-result-object v3

    iput-object v3, v2, Ljava/util/jar/JarVerifier;->mainAttributesChunk:[B

    goto :goto_1a

    .line 93
    :cond_6e
    new-instance v1, Ljava/util/jar/Attributes;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 94
    .local v1, temp:Ljava/util/jar/Attributes;
    iget-object v2, v1, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    const-string v3, "hidden"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2, v1}, Ljava/util/jar/JarEntry;->setAttributes(Ljava/util/jar/Attributes;)V

    .line 100
    iput-object v4, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    goto :goto_1a
.end method


# virtual methods
.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .parameter "name"

    .prologue
    .line 226
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, entry:Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_12

    .line 228
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarEntry;->setAttributes(Ljava/util/jar/Attributes;)V

    .line 230
    :cond_12
    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->manifest:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_16

    .line 202
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    .line 203
    iput-object v1, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    .line 204
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarEntry;->setAttributes(Ljava/util/jar/Attributes;)V

    .line 220
    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarInputStream;->eos:Z

    .line 221
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    :goto_15
    return-object v0

    .line 206
    :cond_16
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    .line 207
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_24

    move-object v0, v1

    .line 208
    goto :goto_15

    .line 210
    :cond_24
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_10

    .line 211
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    .line 213
    iget-boolean v0, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    if-eqz v0, :cond_46

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    goto :goto_10

    .line 216
    :cond_46
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    goto :goto_10
.end method

.method public getNextJarEntry()Ljava/util/jar/JarEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/jar/JarEntry;

    return-object p0
.end method

.method public read([BII)I
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 159
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mEntry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_7

    move v2, v3

    .line 187
    :goto_6
    return v2

    .line 162
    :cond_7
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    .line 163
    .local v1, r:I
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_38

    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->eos:Z

    if-nez v2, :cond_38

    .line 164
    if-ne v1, v3, :cond_4c

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/jar/JarInputStream;->eos:Z

    .line 166
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_38

    .line 167
    iget-boolean v2, p0, Ljava/util/jar/JarInputStream;->isMeta:Z

    if-eqz v2, :cond_40

    .line 168
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 172
    :try_start_33
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_38} :catch_3a

    :cond_38
    :goto_38
    move v2, v1

    .line 187
    goto :goto_6

    .line 173
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 175
    throw v0

    .line 178
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_40
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Ljava/util/jar/JarVerifier$VerifierEntry;

    iget-object v4, p0, Ljava/util/jar/JarInputStream;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v3, v2, v4}, Ljava/util/jar/JarVerifier;->verifySignatures(Ljava/util/jar/JarVerifier$VerifierEntry;Ljava/util/zip/ZipEntry;)V

    goto :goto_38

    .line 184
    :cond_4c
    iget-object v2, p0, Ljava/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_38
.end method
