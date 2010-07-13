.class Ljava/util/zip/ZipEntry$LittleEndianReader;
.super Ljava/lang/Object;
.source "ZipEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LittleEndianReader"
.end annotation


# instance fields
.field private b:[B

.field hdrBuf:[B


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    .line 620
    const/16 v0, 0x2e

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->hdrBuf:[B

    return-void
.end method


# virtual methods
.method readIntLE(Ljava/io/InputStream;)J
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 637
    iget-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 638
    iget-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 644
    :cond_36
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "in ZipEntry.readIntLE(InputStream)"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readShortLE(Ljava/io/InputStream;)I
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 627
    iget-object v0, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Ljava/util/zip/ZipEntry$LittleEndianReader;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0

    .line 629
    :cond_1b
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "in ZipEntry.readShortLE(InputStream)"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
