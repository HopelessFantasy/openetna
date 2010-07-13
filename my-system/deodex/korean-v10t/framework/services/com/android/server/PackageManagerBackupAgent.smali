.class public Lcom/android/server/PackageManagerBackupAgent;
.super Landroid/app/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .parameter "packageMgr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/BackupAgent;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 85
    iput-object p1, p0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    iput-object p2, p0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 89
    return-void
.end method

.method private flattenSignatureArray([Landroid/content/pm/Signature;)[B
    .registers 11
    .parameter "allSigs"

    .prologue
    .line 302
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    .local v6, outBuf:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 308
    .local v5, out:Ljava/io/DataOutputStream;
    :try_start_a
    array-length v8, p1

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 311
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_27

    aget-object v7, v0, v3

    .line 312
    .local v7, sig:Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 313
    .local v2, flat:[B
    array-length v8, v2

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_23

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 316
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #flat:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #sig:Landroid/content/pm/Signature;
    :catch_23
    move-exception v8

    move-object v1, v8

    .line 318
    .local v1, e:Ljava/io/IOException;
    const/4 v8, 0x0

    .line 321
    .end local v1           #e:Ljava/io/IOException;
    :goto_26
    return-object v8

    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_27
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_26
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .parameter "stateFile"

    .prologue
    const/4 v8, 0x0

    const-string v10, "PMBA"

    const-string v7, "@meta@"

    .line 352
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 353
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 354
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 355
    iput-object v8, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 361
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 362
    .local v4, instream:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 364
    .local v3, in:Ljava/io/DataInputStream;
    const/16 v1, 0x100

    .line 365
    .local v1, bufSize:I
    new-array v0, v1, [B

    .line 367
    .local v0, buf:[B
    :try_start_26
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, pkg:Ljava/lang/String;
    const-string v7, "@meta@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 369
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 370
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 371
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string v8, "@meta@"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_45
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 381
    .local v6, versionCode:I
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v7, p0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v8, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v6, v9}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 384
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #versionCode:I
    :catch_5e
    move-exception v7

    .line 390
    :goto_5f
    return-void

    .line 373
    .restart local v5       #pkg:Ljava/lang/String;
    :cond_60
    const-string v7, "PMBA"

    const-string v8, "No global metadata in state file!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_67} :catch_5e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_67} :catch_68

    goto :goto_5f

    .line 386
    .end local v5           #pkg:Ljava/lang/String;
    :catch_68
    move-exception v7

    move-object v2, v7

    .line 388
    .local v2, e:Ljava/io/IOException;
    const-string v7, "PMBA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read Package Manager state file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private unflattenSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;
    .registers 12
    .parameter "in"

    .prologue
    const-string v9, "PMBA"

    .line 325
    const/4 v5, 0x0

    .line 328
    .local v5, sigs:[Landroid/content/pm/Signature;
    :try_start_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 329
    .local v4, num:I
    const-string v6, "PMBA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ... unflatten read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-array v5, v4, [Landroid/content/pm/Signature;

    .line 331
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    if-ge v2, v4, :cond_42

    .line 332
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 333
    .local v3, len:I
    new-array v1, v3, [B

    .line 334
    .local v1, flatSig:[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 335
    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v1}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v6, v5, v2
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_34} :catch_37
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_34} :catch_44

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 337
    .end local v1           #flatSig:[B
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #num:I
    :catch_37
    move-exception v6

    move-object v0, v6

    .line 339
    .local v0, e:Ljava/io/EOFException;
    if-nez v5, :cond_42

    .line 340
    const-string v6, "PMBA"

    const-string v6, "Empty signature block found"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/EOFException;
    :cond_42
    move-object v6, v5

    .line 347
    :goto_43
    return-object v6

    .line 342
    :catch_44
    move-exception v6

    move-object v0, v6

    .line 343
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PMBA"

    const-string v6, "Unable to unflatten sigs"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v6, 0x0

    goto :goto_43
.end method

.method private writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .parameter
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 395
    .local v3, outstream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 399
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_e
    const-string v5, "@meta@"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 400
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 401
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 405
    .local v4, pkg:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 406
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_37} :catch_38

    goto :goto_21

    .line 408
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #pkg:Landroid/content/pm/PackageInfo;
    :catch_38
    move-exception v5

    move-object v0, v5

    .line 409
    .local v0, e:Ljava/io/IOException;
    const-string v5, "PMBA"

    const-string v6, "Unable to write package manager state file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0           #e:Ljava/io/IOException;
    :cond_41
    return-void
.end method


# virtual methods
.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .registers 4
    .parameter "packageName"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 97
    const-string v0, "PMBA"

    const-string v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .line 101
    .end local p0
    :goto_c
    return-object v0

    .restart local p0
    :cond_d
    iget-object v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object v0, p0

    goto :goto_c
.end method

.method public hasMetadata()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 22
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"

    .prologue
    .line 108
    const-string v15, "PMBA"

    const-string v16, "onBackup()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v4, bufStream:Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v10, outWriter:Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    move-object v15, v0

    sget-object v16, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_60

    .line 119
    :cond_28
    const-string v15, "PMBA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Previous metadata "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mismatch vs "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " - rewriting"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    .line 134
    :cond_60
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    const-string v16, "@meta@"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15b

    .line 135
    const-string v15, "PMBA"

    const-string v16, "Storing global metadata key"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 137
    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 139
    .local v9, metadata:[B
    const-string v15, "@meta@"

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 140
    array-length v15, v9

    move-object/from16 v0, p2

    move-object v1, v9

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 149
    .end local v9           #metadata:[B
    :goto_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p1
    .local v7, i$:Ljava/util/Iterator;
    :cond_a1
    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 150
    .local v12, pkg:Landroid/content/pm/PackageInfo;
    iget-object v11, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 151
    .local v11, packName:Ljava/lang/String;
    const-string v15, "@meta@"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_b4} :catch_151

    move-result v15

    if-nez v15, :cond_a1

    .line 155
    const/4 v8, 0x0

    .line 157
    .local v8, info:Landroid/content/pm/PackageInfo;
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v15, v0

    const/16 v16, 0x40

    move-object v0, v15

    move-object v1, v11

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_c6} :catch_16e
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c6} :catch_151

    move-result-object v8

    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, doBackup:Z
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17a

    .line 169
    const/4 v5, 0x1

    .line 182
    :goto_d4
    if-eqz v5, :cond_a1

    .line 192
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 193
    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 194
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 196
    .local v14, versionBuf:[B
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerBackupAgent;->flattenSignatureArray([Landroid/content/pm/Signature;)[B

    move-result-object v13

    .line 200
    .local v13, sigs:[B
    const-string v15, "PMBA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "+ metadata for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v8

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " versionLen="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sigsLen="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    array-length v15, v14

    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p2

    move-object v1, v11

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 207
    array-length v15, v14

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 208
    array-length v15, v13

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_14f} :catch_151

    goto/16 :goto_a1

    .line 226
    .end local v5           #doBackup:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #packName:Ljava/lang/String;
    .end local v12           #pkg:Landroid/content/pm/PackageInfo;
    .end local v13           #sigs:[B
    .end local v14           #versionBuf:[B
    :catch_151
    move-exception v15

    move-object v6, v15

    .line 228
    .local v6, e:Ljava/io/IOException;
    const-string v15, "PMBA"

    const-string v16, "Unable to write package backup data file!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v6           #e:Ljava/io/IOException;
    :goto_15a
    return-void

    .line 142
    .restart local p1
    :cond_15b
    :try_start_15b
    const-string v15, "PMBA"

    const-string v16, "Global metadata key already stored"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    const-string v16, "@meta@"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 159
    .end local p1
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #info:Landroid/content/pm/PackageInfo;
    .restart local v11       #packName:Ljava/lang/String;
    .restart local v12       #pkg:Landroid/content/pm/PackageInfo;
    :catch_16e
    move-exception v15

    move-object v6, v15

    .line 162
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a1

    .line 176
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #doBackup:Z
    :cond_17a
    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_197

    .line 177
    const/4 v5, 0x1

    .line 179
    :cond_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_d4

    .line 216
    .end local v5           #doBackup:Z
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #packName:Ljava/lang/String;
    .end local v12           #pkg:Landroid/content/pm/PackageInfo;
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1aa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1e4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    .local v3, app:Ljava/lang/String;
    const-string v15, "PMBA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- removing metadata for deleted pkg "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_1d1} :catch_151

    .line 220
    const/4 v15, -0x1

    :try_start_1d2
    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d9} :catch_1da

    goto :goto_1aa

    .line 221
    :catch_1da
    move-exception v6

    .line 222
    .local v6, e:Ljava/io/IOException;
    :try_start_1db
    const-string v15, "PMBA"

    const-string v16, "Unable to write package deletions!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1e2} :catch_151

    goto/16 :goto_15a

    .line 233
    .end local v3           #app:Ljava/lang/String;
    .end local v6           #e:Ljava/io/IOException;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_15a
.end method

.method public onRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 23
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v10, restoredApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v11, sigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerBackupAgent$Metadata;>;"
    const-string v16, "PMBA"

    const-string v17, "onRestore()"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v14, -0x1

    .line 246
    .local v14, storedSystemVersion:I
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/backup/BackupDataInput;->readNextHeader()Z

    move-result v16

    if-eqz v16, :cond_165

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v7

    .line 250
    .local v7, dataSize:I
    const-string v16, "PMBA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   got key="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " dataSize="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-array v6, v7, [B

    .line 254
    .local v6, dataBuf:[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/backup/BackupDataInput;->readEntityData([BII)I

    .line 255
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    .local v5, baStream:Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v8, in:Ljava/io/DataInputStream;
    const-string v16, "@meta@"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_fa

    .line 259
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 260
    .local v13, storedSdkVersion:I
    const-string v16, "PMBA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   storedSystemVersion = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_98

    .line 263
    const-string v16, "PMBA"

    const-string v17, "Restore set was from a later version of Android; not restoring"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v5           #baStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #dataBuf:[B
    .end local v7           #dataSize:I
    .end local v8           #in:Ljava/io/DataInputStream;
    .end local v9           #key:Ljava/lang/String;
    .end local v13           #storedSdkVersion:I
    :goto_97
    return-void

    .line 266
    .restart local v5       #baStream:Ljava/io/ByteArrayInputStream;
    .restart local v6       #dataBuf:[B
    .restart local v7       #dataSize:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v13       #storedSdkVersion:I
    :cond_98
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 267
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 268
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 271
    const-string v16, "PMBA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Restore set version "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " is compatible with OS version "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vs "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 278
    .end local v13           #storedSdkVersion:I
    :cond_fa
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 279
    .local v15, versionCode:I
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerBackupAgent;->unflattenSignatureArray(Ljava/io/DataInputStream;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 282
    .local v12, sigs:[Landroid/content/pm/Signature;
    const-string v16, "PMBA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "   restored metadata for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " dataSize="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " versionCode="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " sigs="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 288
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    iput-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 289
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v16, Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 295
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    .end local v5           #baStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #dataBuf:[B
    .end local v7           #dataSize:I
    .end local v8           #in:Ljava/io/DataInputStream;
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #sigs:[Landroid/content/pm/Signature;
    .end local v15           #versionCode:I
    :cond_165
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    goto/16 :goto_97
.end method
