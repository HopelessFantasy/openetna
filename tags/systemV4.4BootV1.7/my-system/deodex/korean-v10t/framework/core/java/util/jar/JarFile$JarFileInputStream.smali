.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private digest:Ljava/security/MessageDigest;

.field private entry:Ljava/util/jar/JarVerifier$VerifierEntry;

.field private verifier:Ljava/util/jar/JarVerifier;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier;)V
    .registers 6
    .parameter "is"
    .parameter "ze"
    .parameter "ver"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    if-eqz p3, :cond_27

    .line 82
    iput-object p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 83
    iput-object p3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->verifier:Ljava/util/jar/JarVerifier;

    .line 84
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 85
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 86
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    if-eqz v0, :cond_27

    .line 87
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    iget-object v0, v0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    iput-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->digest:Ljava/security/MessageDigest;

    .line 90
    :cond_27
    return-void
.end method


# virtual methods
.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 94
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 95
    .local v0, r:I
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    if-eqz v2, :cond_2e

    .line 96
    if-eq v0, v6, :cond_18

    .line 97
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v3, v0

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update(B)V

    .line 98
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 100
    :cond_18
    if-eq v0, v6, :cond_22

    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2e

    .line 101
    :cond_22
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 102
    .local v1, temp:Ljava/util/jar/JarVerifier$VerifierEntry;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 103
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v1, v3}, Ljava/util/jar/JarVerifier;->verifySignatures(Ljava/util/jar/JarVerifier$VerifierEntry;Ljava/util/zip/ZipEntry;)V

    .line 106
    .end local v1           #temp:Ljava/util/jar/JarVerifier$VerifierEntry;
    :cond_2e
    return v0
.end method

.method public read([BII)I
    .registers 12
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 111
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, r:I
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    if-eqz v3, :cond_37

    .line 113
    if-eq v0, v7, :cond_21

    .line 114
    move v1, v0

    .line 115
    .local v1, size:I
    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_16

    .line 116
    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v3

    .line 118
    :cond_16
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1, p2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 119
    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    .line 121
    .end local v1           #size:I
    :cond_21
    if-eq v0, v7, :cond_2b

    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_37

    .line 122
    :cond_2b
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 123
    .local v2, temp:Ljava/util/jar/JarVerifier$VerifierEntry;
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    .line 124
    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v4, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3, v2, v4}, Ljava/util/jar/JarVerifier;->verifySignatures(Ljava/util/jar/JarVerifier$VerifierEntry;Ljava/util/zip/ZipEntry;)V

    .line 127
    .end local v2           #temp:Ljava/util/jar/JarVerifier$VerifierEntry;
    :cond_37
    return v0
.end method

.method public skip(J)J
    .registers 12
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-wide/16 v1, 0x0

    .local v1, cnt:J
    const-wide/16 v3, 0x0

    .line 133
    .local v3, rem:J
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 134
    .local v0, buf:[B
    :goto_8
    cmp-long v6, v1, p1

    if-gez v6, :cond_1d

    .line 135
    const/4 v6, 0x0

    sub-long v3, p1, v1

    array-length v7, v0

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_1e

    array-length v7, v0

    :goto_16
    invoke-virtual {p0, v0, v6, v7}, Ljava/util/jar/JarFile$JarFileInputStream;->read([BII)I

    move-result v5

    .line 138
    .local v5, x:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_20

    .line 143
    .end local v5           #x:I
    :cond_1d
    return-wide v1

    .line 135
    :cond_1e
    long-to-int v7, v3

    goto :goto_16

    .line 141
    .restart local v5       #x:I
    :cond_20
    int-to-long v6, v5

    add-long/2addr v1, v6

    .line 142
    goto :goto_8
.end method
