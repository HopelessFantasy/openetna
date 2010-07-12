.class public Landroid/backup/BackupDataInput;
.super Ljava/lang/Object;
.source "BackupDataInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/backup/BackupDataInput$1;,
        Landroid/backup/BackupDataInput$EntityHeader;
    }
.end annotation


# instance fields
.field mBackupReader:I

.field private mHeader:Landroid/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/backup/BackupDataInput$EntityHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/backup/BackupDataInput$EntityHeader;-><init>(Landroid/backup/BackupDataInput$1;)V

    iput-object v0, p0, Landroid/backup/BackupDataInput;->mHeader:Landroid/backup/BackupDataInput$EntityHeader;

    .line 37
    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38
    :cond_13
    invoke-static {p1}, Landroid/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    .line 39
    iget v0, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    if-nez v0, :cond_36

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_36
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)I
.end method

.method private static native dtor(I)V
.end method

.method private native readEntityData_native(I[BII)I
.end method

.method private native readNextHeader_native(ILandroid/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(I)I
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget v0, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    invoke-static {v0}, Landroid/backup/BackupDataInput;->dtor(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    return-void

    .line 48
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDataSize()I
    .registers 3

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Landroid/backup/BackupDataInput;->mHeader:Landroid/backup/BackupDataInput$EntityHeader;

    iget v0, v0, Landroid/backup/BackupDataInput$EntityHeader;->dataSize:I

    return v0

    .line 81
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mHeaderReady=false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Landroid/backup/BackupDataInput;->mHeader:Landroid/backup/BackupDataInput$EntityHeader;

    iget-object v0, v0, Landroid/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    return-object v0

    .line 73
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mHeaderReady=false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEntityData([BII)I
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v1, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v1, :cond_2a

    .line 87
    iget v1, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/backup/BackupDataInput;->readEntityData_native(I[BII)I

    move-result v0

    .line 88
    .local v0, result:I
    if-ltz v0, :cond_d

    .line 89
    return v0

    .line 91
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0           #result:I
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mHeaderReady=false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNextHeader()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    iget v1, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    iget-object v2, p0, Landroid/backup/BackupDataInput;->mHeader:Landroid/backup/BackupDataInput$EntityHeader;

    invoke-direct {p0, v1, v2}, Landroid/backup/BackupDataInput;->readNextHeader_native(ILandroid/backup/BackupDataInput$EntityHeader;)I

    move-result v0

    .line 54
    .local v0, result:I
    if-nez v0, :cond_10

    .line 56
    iput-boolean v4, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    move v1, v4

    .line 61
    :goto_f
    return v1

    .line 58
    :cond_10
    if-lez v0, :cond_16

    .line 60
    iput-boolean v3, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    move v1, v3

    .line 61
    goto :goto_f

    .line 64
    :cond_16
    iput-boolean v3, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    .line 65
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipEntityData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v1, p0, Landroid/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v1, :cond_2a

    .line 100
    iget v1, p0, Landroid/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v1}, Landroid/backup/BackupDataInput;->skipEntityData_native(I)I

    move-result v0

    .line 101
    .local v0, result:I
    if-ltz v0, :cond_d

    .line 102
    return-void

    .line 104
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0           #result:I
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mHeaderReady=false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
