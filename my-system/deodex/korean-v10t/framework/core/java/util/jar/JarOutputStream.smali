.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# instance fields
.field private manifest:Ljava/util/jar/Manifest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .registers 5
    .parameter "os"
    .parameter "mf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    if-nez p2, :cond_b

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 52
    :cond_b
    iput-object p2, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    .line 53
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 55
    iget-object v1, p0, Ljava/util/jar/JarOutputStream;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1, p0}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 56
    invoke-virtual {p0}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    .line 57
    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 2
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 87
    return-void
.end method
