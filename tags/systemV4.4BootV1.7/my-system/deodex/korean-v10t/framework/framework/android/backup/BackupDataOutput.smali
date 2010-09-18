.class public Landroid/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "BackupDataOutput.java"


# static fields
.field public static final OP_DELETE:I = 0x2

.field public static final OP_UPDATE:I = 0x1


# instance fields
.field mBackupWriter:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_b
    invoke-static {p1}, Landroid/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    .line 34
    iget v0, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    if-nez v0, :cond_2e

    .line 35
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

    .line 37
    :cond_2e
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)I
.end method

.method private static native dtor(I)V
.end method

.method private static native setKeyPrefix_native(ILjava/lang/String;)V
.end method

.method private static native writeEntityData_native(I[BI)I
.end method

.method private static native writeEntityHeader_native(ILjava/lang/String;I)I
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
    .line 64
    :try_start_0
    iget v0, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0}, Landroid/backup/BackupDataOutput;->dtor(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    return-void

    .line 66
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "keyPrefix"

    .prologue
    .line 59
    iget v0, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v0, p1}, Landroid/backup/BackupDataOutput;->setKeyPrefix_native(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public writeEntityData([BI)I
    .registers 7
    .parameter "data"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget v1, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v1, p1, p2}, Landroid/backup/BackupDataOutput;->writeEntityData_native(I[BI)I

    move-result v0

    .line 51
    .local v0, result:I
    if-ltz v0, :cond_9

    .line 52
    return v0

    .line 54
    :cond_9
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

.method public writeEntityHeader(Ljava/lang/String;I)I
    .registers 7
    .parameter "key"
    .parameter "dataSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v1, p0, Landroid/backup/BackupDataOutput;->mBackupWriter:I

    invoke-static {v1, p1, p2}, Landroid/backup/BackupDataOutput;->writeEntityHeader_native(ILjava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, result:I
    if-ltz v0, :cond_9

    .line 43
    return v0

    .line 45
    :cond_9
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
