.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 8
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 55
    const/4 v0, 0x1

    if-ge p4, v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_25
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 60
    iput p4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 191
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    .line 194
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 7

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 150
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d

    .line 180
    :cond_f
    :goto_f
    monitor-exit p0

    return-object v3

    .line 153
    :cond_11
    :try_start_11
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_20

    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1d

    .line 149
    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 158
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_23} :catch_25

    move-result-object v3

    goto :goto_f

    .line 159
    :catch_25
    move-exception v1

    .line 160
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_26
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_2b

    throw v1

    .line 161
    :cond_2b
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_1d

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4d
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 167
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_ab

    .line 170
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9d
    .catchall {:try_start_4d .. :try_end_9d} :catchall_9d

    .line 179
    .end local v2           #path:Ljava/lang/String;
    :catchall_9d
    move-exception v3

    const/4 v4, 0x0

    :try_start_9f
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 180
    if-eqz v0, :cond_aa

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_aa

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_aa
    throw v3
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_1d

    .line 174
    .restart local v2       #path:Ljava/lang/String;
    :cond_ab
    :try_start_ab
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 177
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d2
    .catchall {:try_start_ab .. :try_end_d2} :catchall_9d

    .line 179
    const/4 v4, 0x0

    :try_start_d3
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 180
    if-eqz v0, :cond_f

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_f

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_de
    .catchall {:try_start_d3 .. :try_end_de} :catchall_1d

    goto/16 :goto_f
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_19

    .line 77
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_25

    .line 130
    :goto_17
    monitor-exit p0

    return-object v3

    .line 80
    :cond_19
    :try_start_19
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_28

    .line 81
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getWritableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_25

    .line 76
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    :cond_28
    const/4 v1, 0x0

    .line 91
    .local v1, success:Z
    const/4 v0, 0x0

    .line 92
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_33

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_25

    .line 94
    :cond_33
    const/4 v3, 0x1

    :try_start_34
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 95
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_75

    .line 96
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    :goto_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 102
    .local v2, version:I
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v2, v3, :cond_5a

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_8c

    .line 105
    if-nez v2, :cond_81

    .line 106
    :try_start_4c
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    :goto_4f
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_87

    .line 113
    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    :cond_5a
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_8c

    .line 118
    const/4 v1, 0x1

    .line 121
    const/4 v3, 0x0

    :try_start_5f
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 122
    if-eqz v1, :cond_a3

    .line 123
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_25

    if-eqz v3, :cond_71

    .line 124
    :try_start_67
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_c3

    .line 125
    :goto_6c
    :try_start_6c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 127
    :cond_71
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_25

    :cond_73
    :goto_73
    move-object v3, v0

    .line 130
    goto :goto_17

    .line 98
    .end local v2           #version:I
    :cond_75
    :try_start_75
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_8c

    move-result-object v0

    goto :goto_3f

    .line 108
    .restart local v2       #version:I
    :cond_81
    :try_start_81
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_87

    goto :goto_4f

    .line 113
    :catchall_87
    move-exception v3

    :try_start_88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .line 121
    .end local v2           #version:I
    :catchall_8c
    move-exception v3

    const/4 v4, 0x0

    :try_start_8e
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 122
    if-eqz v1, :cond_b2

    .line 123
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_25

    if-eqz v4, :cond_a0

    .line 124
    :try_start_96
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_c1

    .line 125
    :goto_9b
    :try_start_9b
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 127
    :cond_a0
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    :cond_a2
    :goto_a2
    throw v3

    .line 129
    .restart local v2       #version:I
    :cond_a3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 130
    :cond_ac
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_73

    .line 129
    .end local v2           #version:I
    :cond_b2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_bb

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 130
    :cond_bb
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c0
    .catchall {:try_start_9b .. :try_end_c0} :catchall_25

    goto :goto_a2

    .line 124
    :catch_c1
    move-exception v4

    goto :goto_9b

    .restart local v2       #version:I
    :catch_c3
    move-exception v3

    goto :goto_6c
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 228
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
