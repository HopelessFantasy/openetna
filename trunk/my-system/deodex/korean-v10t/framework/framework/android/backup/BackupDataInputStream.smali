.class public Landroid/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;

.field mData:Landroid/backup/BackupDataInput;

.field mOneByte:[B


# direct methods
.method constructor <init>(Landroid/backup/BackupDataInput;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/backup/BackupDataInputStream;->mData:Landroid/backup/BackupDataInput;

    .line 35
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Landroid/backup/BackupDataInputStream;->mOneByte:[B

    .line 39
    .local v0, one:[B
    iget-object v1, p0, Landroid/backup/BackupDataInputStream;->mOneByte:[B

    if-nez v1, :cond_c

    .line 40
    new-array v0, v3, [B

    .end local v0           #one:[B
    iput-object v0, p0, Landroid/backup/BackupDataInputStream;->mOneByte:[B

    .line 42
    .restart local v0       #one:[B
    :cond_c
    iget-object v1, p0, Landroid/backup/BackupDataInputStream;->mData:Landroid/backup/BackupDataInput;

    invoke-virtual {v1, v0, v2, v3}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 43
    aget-byte v1, v0, v2

    return v1
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
    .line 51
    iget-object v0, p0, Landroid/backup/BackupDataInputStream;->mData:Landroid/backup/BackupDataInput;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "b"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Landroid/backup/BackupDataInputStream;->mData:Landroid/backup/BackupDataInput;

    invoke-virtual {v0, p1, p2, p3}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Landroid/backup/BackupDataInputStream;->dataSize:I

    return v0
.end method
