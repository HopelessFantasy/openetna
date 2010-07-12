.class public Landroid/backup/SharedPreferencesBackupHelper;
.super Landroid/backup/FileBackupHelperBase;
.source "SharedPreferencesBackupHelper.java"

# interfaces
.implements Landroid/backup/BackupHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedPreferencesBackupHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefGroups:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "prefGroups"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Landroid/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Landroid/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 42
    iget-object v1, p0, Landroid/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 45
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Landroid/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .line 46
    .local v4, prefGroups:[Ljava/lang/String;
    array-length v0, v4

    .line 47
    .local v0, N:I
    new-array v2, v0, [Ljava/lang/String;

    .line 48
    .local v2, files:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v0, :cond_19

    .line 49
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 53
    :cond_19
    invoke-static {p1, p2, p3, v2, v4}, Landroid/backup/SharedPreferencesBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public restoreEntity(Landroid/backup/BackupDataInputStream;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 60
    .local v0, context:Landroid/content/Context;
    const-string v3, "SharedPreferencesBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got entity \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/backup/SharedPreferencesBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 64
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1, p1}, Landroid/backup/SharedPreferencesBackupHelper;->writeFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 66
    .end local v1           #f:Ljava/io/File;
    :cond_43
    return-void
.end method
