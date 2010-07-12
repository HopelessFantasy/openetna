.class public Landroid/backup/AbsoluteFileBackupHelper;
.super Landroid/backup/FileBackupHelperBase;
.source "AbsoluteFileBackupHelper.java"

# interfaces
.implements Landroid/backup/BackupHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsoluteFileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "files"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Landroid/backup/AbsoluteFileBackupHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Landroid/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/backup/AbsoluteFileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public restoreEntity(Landroid/backup/BackupDataInputStream;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 58
    const-string v2, "AbsoluteFileBackupHelper"

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

    .line 59
    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/backup/AbsoluteFileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, f:Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/backup/AbsoluteFileBackupHelper;->writeFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 64
    .end local v0           #f:Ljava/io/File;
    :cond_3e
    return-void
.end method
