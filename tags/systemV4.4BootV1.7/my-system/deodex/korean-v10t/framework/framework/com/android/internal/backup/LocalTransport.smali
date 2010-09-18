.class public Lcom/android/internal/backup/LocalTransport;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "LocalTransport.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataDir:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 44
    const-string v0, "LocalTransport"

    const-string v1, "Transport constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    return-void
.end method


# virtual methods
.method public clearBackupData(Landroid/content/pm/PackageInfo;)Z
    .registers 10
    .parameter "packageInfo"

    .prologue
    .line 115
    const-string v5, "LocalTransport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearBackupData() pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v4, packageDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_29
    if-ge v2, v3, :cond_33

    aget-object v1, v0, v2

    .line 119
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 121
    .end local v1           #f:Ljava/io/File;
    :cond_33
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 122
    const/4 v5, 0x1

    return v5
.end method

.method public finishBackup()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "LocalTransport"

    const-string v1, "finishBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public finishRestore()V
    .registers 3

    .prologue
    .line 198
    const-string v0, "LocalTransport"

    const-string v1, "finishRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/backup/RestoreSet;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Landroid/backup/RestoreSet;

    const-string v2, "Local disk image"

    const-string v3, "flash"

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 134
    .local v1, set:Landroid/backup/RestoreSet;
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/backup/RestoreSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 135
    .local v0, array:[Landroid/backup/RestoreSet;
    return-object v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)Z
    .registers 17
    .parameter "outFd"

    .prologue
    .line 160
    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v12, :cond_c

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "startRestore not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 161
    :cond_c
    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v12, :cond_18

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "nextRestorePackage not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 162
    :cond_18
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v13, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v14, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v13, v13, v14

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v10, packageDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 167
    .local v1, blobs:[Ljava/io/File;
    if-nez v1, :cond_47

    .line 168
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v12, 0x0

    .line 193
    :goto_46
    return v12

    .line 173
    :cond_47
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  getRestoreData() found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key files"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v9, Landroid/backup/BackupDataOutput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 176
    .local v9, out:Landroid/backup/BackupDataOutput;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    :try_start_70
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_72
    if-ge v5, v8, :cond_d1

    aget-object v4, v0, v5

    .line 177
    .local v4, f:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7b} :catch_c5

    .line 179
    .local v6, in:Ljava/io/FileInputStream;
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    .line 180
    .local v11, size:I
    new-array v2, v11, [B

    .line 181
    .local v2, buf:[B
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 182
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v7, key:Ljava/lang/String;
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    ... key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v9, v7, v11}, Landroid/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 185
    invoke-virtual {v9, v2, v11}, Landroid/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_ba
    .catchall {:try_start_7b .. :try_end_ba} :catchall_c0

    .line 187
    :try_start_ba
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 176
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 187
    .end local v2           #buf:[B
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #size:I
    :catchall_c0
    move-exception v12

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v12
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c5} :catch_c5

    .line 191
    .end local v4           #f:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #in:Ljava/io/FileInputStream;
    .end local v8           #len$:I
    :catch_c5
    move-exception v12

    move-object v3, v12

    .line 192
    .local v3, e:Ljava/io/IOException;
    const-string v12, "LocalTransport"

    const-string v13, "Unable to read backup records"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 v12, 0x0

    goto/16 :goto_46

    .line 190
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    :cond_d1
    const/4 v12, 0x1

    goto/16 :goto_46
.end method

.method public nextRestorePackage()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "LocalTransport"

    .line 146
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "startRestore not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_e
    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 148
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 149
    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 150
    const-string v1, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  nextRestorePackage() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 156
    .end local v0           #name:Ljava/lang/String;
    :goto_47
    return-object v1

    .line 155
    :cond_48
    const-string v1, "LocalTransport"

    const-string v1, "  no more packages to restore"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v1, ""

    goto :goto_47
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)Z
    .registers 16
    .parameter "packageInfo"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performBackup() pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v9, packageDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 70
    new-instance v3, Landroid/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 72
    .local v3, changeSet:Landroid/backup/BackupDataInput;
    const/16 v2, 0x200

    .line 73
    .local v2, bufSize:I
    :try_start_31
    new-array v1, v2, [B

    .line 74
    .local v1, buf:[B
    :goto_33
    invoke-virtual {v3}, Landroid/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 75
    invoke-virtual {v3}, Landroid/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, key:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 77
    .local v0, base64Key:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v7, entityFile:Ljava/io/File;
    invoke-virtual {v3}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 81
    .local v4, dataSize:I
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got change set key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key64="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-ltz v4, :cond_e1

    .line 85
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v6, entity:Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_8b

    .line 88
    move v2, v4

    .line 89
    new-array v1, v2, [B

    .line 91
    :cond_8b
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 92
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  data size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_a7} :catch_af

    .line 95
    const/4 v10, 0x0

    :try_start_a8
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ba

    .line 100
    :try_start_ab
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_33

    .line 107
    .end local v0           #base64Key:Ljava/lang/String;
    .end local v1           #buf:[B
    .end local v4           #dataSize:I
    .end local v6           #entity:Ljava/io/FileOutputStream;
    .end local v7           #entityFile:Ljava/io/File;
    .end local v8           #key:Ljava/lang/String;
    :catch_af
    move-exception v10

    move-object v5, v10

    .line 109
    .local v5, e:Ljava/io/IOException;
    const-string v10, "LocalTransport"

    const-string v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v10, 0x0

    .end local v5           #e:Ljava/io/IOException;
    :goto_b9
    return v10

    .line 96
    .restart local v0       #base64Key:Ljava/lang/String;
    .restart local v1       #buf:[B
    .restart local v4       #dataSize:I
    .restart local v6       #entity:Ljava/io/FileOutputStream;
    .restart local v7       #entityFile:Ljava/io/File;
    .restart local v8       #key:Ljava/lang/String;
    :catch_ba
    move-exception v5

    .line 97
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_bb
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_bb .. :try_end_d7} :catchall_dc

    .line 98
    const/4 v10, 0x0

    .line 100
    :try_start_d8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b9

    .end local v5           #e:Ljava/io/IOException;
    :catchall_dc
    move-exception v10

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v10

    .line 103
    .end local v6           #entity:Ljava/io/FileOutputStream;
    :cond_e1
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e4} :catch_af

    goto/16 :goto_33

    .line 106
    .end local v0           #base64Key:Ljava/lang/String;
    .end local v4           #dataSize:I
    .end local v7           #entityFile:Ljava/io/File;
    .end local v8           #key:Ljava/lang/String;
    :cond_e6
    const/4 v10, 0x1

    goto :goto_b9
.end method

.method public requestBackupTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)Z
    .registers 7
    .parameter "token"
    .parameter "packages"

    .prologue
    .line 139
    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
