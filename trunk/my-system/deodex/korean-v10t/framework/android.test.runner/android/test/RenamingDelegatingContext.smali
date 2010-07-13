.class public Landroid/test/RenamingDelegatingContext;
.super Landroid/content/ContextWrapper;
.source "RenamingDelegatingContext.java"


# instance fields
.field private mDatabaseNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileContext:Landroid/content/Context;

.field private mFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "fileContext"
    .parameter "filePrefix"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    .line 27
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    .line 107
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "filePrefix"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    .line 27
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    .line 95
    iput-object p1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 4
    .parameter
    .parameter "c"
    .parameter "filePrefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 32
    .local p0, contentProvider:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/test/RenamingDelegatingContext;->providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;
    .registers 8
    .parameter
    .parameter "c"
    .parameter "filePrefix"
    .parameter "allowAccessToExistingFilesAndDbs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, contentProvider:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object v2, p0

    .line 40
    .local v2, mProviderClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 41
    .local v1, mProvider:Landroid/content/ContentProvider;,"TT;"
    new-instance v0, Landroid/test/RenamingDelegatingContext;

    invoke-direct {v0, p1, p2}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .local v0, mContext:Landroid/test/RenamingDelegatingContext;
    if-eqz p3, :cond_11

    .line 43
    invoke-virtual {v0}, Landroid/test/RenamingDelegatingContext;->makeExistingFilesAndDbsAccessible()V

    .line 45
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 46
    return-object v1
.end method

.method private renamedFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public databaseList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 133
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    .line 136
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 171
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 174
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public fileList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDatabasePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public makeExistingFilesAndDbsAccessible()V
    .registers 9

    .prologue
    .line 55
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, databaseList:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_1f

    aget-object v2, v0, v4

    .line 57
    .local v2, diskName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 58
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 61
    .end local v2           #diskName:Ljava/lang/String;
    :cond_1f
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, fileList:[Ljava/lang/String;
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v5, :cond_3e

    aget-object v2, v0, v4

    .line 63
    .restart local v2       #diskName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 64
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 67
    .end local v2           #diskName:Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, internalName:Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    return-object v1

    .line 152
    :cond_13
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 5
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .parameter "name"
    .parameter "mode"
    .parameter "factory"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, internalName:Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 124
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 127
    :cond_16
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "diskName"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disk file should not be visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1f
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method shouldDiskNameBeVisible(Ljava/lang/String;)Z
    .registers 3
    .parameter "diskName"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
