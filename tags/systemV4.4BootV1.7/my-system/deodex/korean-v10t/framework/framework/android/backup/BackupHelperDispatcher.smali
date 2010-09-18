.class public Landroid/backup/BackupHelperDispatcher;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/backup/BackupHelperDispatcher$1;,
        Landroid/backup/BackupHelperDispatcher$Header;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupHelperDispatcher"


# instance fields
.field mHelpers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/backup/BackupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    .line 41
    return-void
.end method

.method private static native allocateHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupHelperDispatcher$Header;Landroid/backup/BackupHelper;)V
    .registers 13
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .parameter "header"
    .parameter "helper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ")"

    .line 86
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 89
    .local v1, newStateFD:Ljava/io/FileDescriptor;
    invoke-static {p4, v1}, Landroid/backup/BackupHelperDispatcher;->allocateHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v2

    .line 90
    .local v2, pos:I
    if-gez v2, :cond_2b

    .line 91
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocateHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_2b
    iget-object v3, p4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/backup/BackupDataOutput;->setKeyPrefix(Ljava/lang/String;)V

    .line 97
    invoke-interface {p5, p1, p2, p3}, Landroid/backup/BackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 101
    invoke-static {p4, v1, v2}, Landroid/backup/BackupHelperDispatcher;->writeHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 102
    .local v0, err:I
    if-eqz v0, :cond_58

    .line 103
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_58
    return-void
.end method

.method private static native readHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private static native skipChunk_native(Ljava/io/FileDescriptor;I)I
.end method

.method private static native writeHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/backup/BackupHelper;)V
    .registers 4
    .parameter "keyPrefix"
    .parameter "helper"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 16
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v4, Landroid/backup/BackupHelperDispatcher$Header;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/backup/BackupHelperDispatcher$Header;-><init>(Landroid/backup/BackupHelperDispatcher$1;)V

    .line 53
    .local v4, header:Landroid/backup/BackupHelperDispatcher$Header;
    iget-object v0, p0, Landroid/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/TreeMap;

    .line 54
    .local v8, helpers:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Landroid/backup/BackupHelper;>;"
    const/4 v11, 0x0

    .line 55
    .local v11, oldStateFD:Ljava/io/FileDescriptor;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 57
    .local v10, newStateFD:Ljava/io/FileDescriptor;
    if-eqz p1, :cond_62

    .line 58
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 59
    :cond_19
    :goto_19
    invoke-static {v4, v11}, Landroid/backup/BackupHelperDispatcher;->readHeader_native(Landroid/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v7

    .local v7, err:I
    if-ltz v7, :cond_62

    .line 60
    if-nez v7, :cond_19

    .line 61
    iget-object v0, v4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/backup/BackupHelper;

    .line 62
    .local v5, helper:Landroid/backup/BackupHelper;
    const-string v0, "BackupHelperDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling existing helper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v5, :cond_5c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 64
    invoke-direct/range {v0 .. v5}, Landroid/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupHelperDispatcher$Header;Landroid/backup/BackupHelper;)V

    .line 65
    iget-object v0, v4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 67
    :cond_5c
    iget v0, v4, Landroid/backup/BackupHelperDispatcher$Header;->chunkSize:I

    invoke-static {v11, v0}, Landroid/backup/BackupHelperDispatcher;->skipChunk_native(Ljava/io/FileDescriptor;I)I

    goto :goto_19

    .line 74
    .end local v5           #helper:Landroid/backup/BackupHelper;
    .end local v7           #err:I
    :cond_62
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 75
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/backup/BackupHelper;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    .line 76
    const-string v0, "BackupHelperDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling new helper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/backup/BackupHelper;

    .restart local v5       #helper:Landroid/backup/BackupHelper;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 78
    invoke-direct/range {v0 .. v5}, Landroid/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupHelperDispatcher$Header;Landroid/backup/BackupHelper;)V

    goto :goto_6a

    .line 80
    .end local v5           #helper:Landroid/backup/BackupHelper;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/backup/BackupHelper;>;"
    :cond_ac
    return-void
.end method

.method public performRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 15
    .parameter "input"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "BackupHelperDispatcher"

    const-string v9, "\'"

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, alreadyComplained:Z
    new-instance v6, Landroid/backup/BackupDataInputStream;

    invoke-direct {v6, p1}, Landroid/backup/BackupDataInputStream;-><init>(Landroid/backup/BackupDataInput;)V

    .line 113
    .local v6, stream:Landroid/backup/BackupDataInputStream;
    :goto_a
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->readNextHeader()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 115
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, rawKey:Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 117
    .local v3, pos:I
    if-lez v3, :cond_62

    .line 118
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, prefix:Ljava/lang/String;
    iget-object v7, p0, Landroid/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/backup/BackupHelper;

    .line 120
    .local v1, helper:Landroid/backup/BackupHelper;
    if-eqz v1, :cond_40

    .line 121
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->getDataSize()I

    move-result v7

    iput v7, v6, Landroid/backup/BackupDataInputStream;->dataSize:I

    .line 122
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/backup/BackupDataInputStream;->key:Ljava/lang/String;

    .line 123
    invoke-interface {v1, v6}, Landroid/backup/BackupHelper;->restoreEntity(Landroid/backup/BackupDataInputStream;)V

    .line 136
    .end local v1           #helper:Landroid/backup/BackupHelper;
    .end local v4           #prefix:Ljava/lang/String;
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/backup/BackupDataInput;->skipEntityData()V

    goto :goto_a

    .line 125
    .restart local v1       #helper:Landroid/backup/BackupHelper;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_40
    if-nez v0, :cond_3c

    .line 126
    const-string v7, "BackupHelperDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find helper for: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    goto :goto_3c

    .line 131
    .end local v1           #helper:Landroid/backup/BackupHelper;
    .end local v4           #prefix:Ljava/lang/String;
    :cond_62
    if-nez v0, :cond_3c

    .line 132
    const-string v7, "BackupHelperDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entity with no prefix: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    goto :goto_3c

    .line 140
    .end local v3           #pos:I
    .end local v5           #rawKey:Ljava/lang/String;
    :cond_84
    iget-object v7, p0, Landroid/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/backup/BackupHelper;

    .line 141
    .restart local v1       #helper:Landroid/backup/BackupHelper;
    invoke-interface {v1, p3}, Landroid/backup/BackupHelper;->writeRestoreSnapshot(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_8e

    .line 143
    .end local v1           #helper:Landroid/backup/BackupHelper;
    :cond_9e
    return-void
.end method
