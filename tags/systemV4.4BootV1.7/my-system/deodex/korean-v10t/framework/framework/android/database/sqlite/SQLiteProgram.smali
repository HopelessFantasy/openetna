.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mStackTraceElements:[Ljava/lang/StackTraceElement;

.field protected nHandle:I

.field protected nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "sql"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 34
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    .line 42
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    .line 55
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 57
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 58
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteProgram;->nHandle:I

    .line 59
    invoke-virtual {p0, p2, v1}, Landroid/database/sqlite/SQLiteProgram;->compile(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method private final native native_clear_bindings()V
.end method


# virtual methods
.method public bindBlob(I[B)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 192
    if-nez p2, :cond_21

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_21
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 197
    :try_start_24
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_blob(I[B)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 199
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 201
    return-void

    .line 199
    :catchall_2b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public bindDouble(ID)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 159
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_double(ID)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 161
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 163
    return-void

    .line 161
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public bindLong(IJ)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 143
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 145
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 147
    return-void

    .line 145
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public bindNull(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 127
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->native_bind_null(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 131
    return-void

    .line 129
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 173
    if-nez p2, :cond_21

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_21
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 178
    :try_start_24
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 180
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 182
    return-void

    .line 180
    :catchall_2b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public clearBindings()V
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 209
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteProgram;->native_clear_bindings()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 211
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 213
    return-void

    .line 211
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 221
    :try_start_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 223
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 225
    return-void

    .line 223
    :catchall_e
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method protected compile(Ljava/lang/String;Z)V
    .registers 5
    .parameter "sql"
    .parameter "forceCompilation"

    .prologue
    .line 104
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_19

    .line 105
    :cond_6
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 109
    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->acquireReference()V

    .line 110
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->native_compile(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    .line 112
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 113
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 116
    :cond_19
    return-void

    .line 112
    :catchall_1a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->releaseReference()V

    .line 113
    iget-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    if-eqz v0, :cond_7

    .line 244
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->onAllReferencesReleasedFromContainer()V

    .line 246
    :cond_7
    return-void
.end method

.method public final getUniqueId()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->nStatement:I

    return v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
.end method

.method protected final native native_finalize()V
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->native_finalize()V

    .line 67
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 68
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V

    .line 69
    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->native_finalize()V

    .line 76
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 77
    return-void
.end method
