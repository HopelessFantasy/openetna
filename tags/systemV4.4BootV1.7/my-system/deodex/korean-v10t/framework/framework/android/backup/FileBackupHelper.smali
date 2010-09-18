.class public Landroid/backup/FileBackupHelper;
.super Landroid/backup/FileBackupHelperBase;
.source "FileBackupHelper.java"

# interfaces
.implements Landroid/backup/BackupHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;

.field mFilesDir:Ljava/io/File;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "files"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Landroid/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    .line 39
    iput-object p2, p0, Landroid/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 50
    iget-object v2, p0, Landroid/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 51
    .local v2, files:[Ljava/lang/String;
    iget-object v5, p0, Landroid/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, base:Ljava/io/File;
    array-length v0, v2

    .line 53
    .local v0, N:I
    new-array v3, v0, [Ljava/lang/String;

    .line 54
    .local v3, fullPaths:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_1e

    .line 55
    new-instance v5, Ljava/io/File;

    aget-object v6, v2, v4

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 59
    :cond_1e
    invoke-static {p1, p2, p3, v3, v2}, Landroid/backup/FileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public restoreEntity(Landroid/backup/BackupDataInputStream;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 64
    const-string v2, "FileBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got entity \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/backup/FileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/backup/FileBackupHelper;->writeFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 70
    .end local v0           #f:Ljava/io/File;
    :cond_40
    return-void
.end method
