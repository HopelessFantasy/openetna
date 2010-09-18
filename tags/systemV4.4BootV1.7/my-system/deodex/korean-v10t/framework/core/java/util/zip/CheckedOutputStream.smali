.class public Ljava/util/zip/CheckedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CheckedOutputStream.java"


# instance fields
.field private final check:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V
    .registers 3
    .parameter "os"
    .parameter "cs"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    iput-object p2, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    .line 50
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 75
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 76
    return-void
.end method

.method public write([BII)V
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
    .line 95
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    iget-object v0, p0, Ljava/util/zip/CheckedOutputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 97
    return-void
.end method
