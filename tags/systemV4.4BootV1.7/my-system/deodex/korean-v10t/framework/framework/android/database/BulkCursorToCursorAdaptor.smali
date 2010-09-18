.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Landroid/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 123
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 125
    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_c

    .line 129
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 130
    return-void

    .line 126
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "BulkCursor"

    .line 203
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_13

    .line 204
    const-string v2, "BulkCursor"

    const-string v2, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 229
    :goto_12
    return v2

    .line 208
    :cond_13
    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 209
    if-eqz p1, :cond_1d

    .line 210
    :try_start_18
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 213
    :cond_1d
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_28

    .line 214
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_4a

    move v2, v5

    goto :goto_12

    .line 218
    :cond_28
    :try_start_28
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget-object v4, p0, Landroid/database/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-interface {v3, v4}, Landroid/database/IBulkCursor;->updateRows(Ljava/util/Map;)Z

    move-result v1

    .line 220
    .local v1, result:Z
    if-ne v1, v6, :cond_3b

    .line 221
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 224
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->onChange(Z)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_3e

    .line 226
    :cond_3b
    :try_start_3b
    monitor-exit v2

    move v2, v1

    goto :goto_12

    .line 227
    .end local v1           #result:Z
    :catch_3e
    move-exception v3

    move-object v0, v3

    .line 228
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BulkCursor"

    const-string v4, "Unable to commit updates because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit v2

    move v2, v5

    goto :goto_12

    .line 231
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_4a
    move-exception v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_4a

    throw v3
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 111
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 114
    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_c

    .line 118
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 119
    return-void

    .line 115
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public deleteRow()Z
    .registers 6

    .prologue
    .line 166
    :try_start_0
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget v4, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    invoke-interface {v3, v4}, Landroid/database/IBulkCursor;->deleteRow(I)Z

    move-result v2

    .line 167
    .local v2, result:Z
    if-eqz v2, :cond_27

    .line 169
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 172
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v3}, Landroid/database/IBulkCursor;->count()I

    move-result v3

    iput v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 173
    iget v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    iget v4, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    if-ge v3, v4, :cond_29

    .line 174
    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    .line 175
    .local v1, oldPos:I
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    .line 176
    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->moveToPosition(I)Z

    .line 182
    .end local v1           #oldPos:I
    :goto_23
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->onChange(Z)V

    :cond_27
    move v3, v2

    .line 187
    .end local v2           #result:Z
    :goto_28
    return v3

    .line 178
    .restart local v2       #result:Z
    :cond_29
    iget v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iput v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 185
    .end local v2           #result:Z
    :catch_2e
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BulkCursor"

    const-string v4, "Unable to delete row because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 238
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized getObserver()Landroid/database/IContentObserver;
    .registers 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    if-nez v0, :cond_c

    .line 69
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    .line 71
    :cond_c
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMove(II)Z
    .registers 7
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_1
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_3f

    .line 84
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_1c

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_2a

    .line 86
    :cond_1c
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_34

    .line 100
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_48

    move v1, v3

    .line 104
    :goto_29
    return v1

    .line 87
    :cond_2a
    :try_start_2a
    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_24

    .line 88
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_24

    .line 93
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Unable to get window because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 96
    goto :goto_29

    .line 91
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_34

    goto :goto_24

    .line 104
    :cond_48
    const/4 v1, 0x1

    goto :goto_29
.end method

.method public requery()Z
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 135
    :try_start_2
    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 137
    .local v1, oldCount:I
    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v3

    new-instance v4, Landroid/database/CursorWindow;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-interface {v2, v3, v4}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I

    move-result v2

    iput v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 139
    iget v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    if-eq v2, v7, :cond_25

    .line 140
    const/4 v2, -0x1

    iput v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 146
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    .line 147
    const/4 v2, 0x1

    .line 155
    .end local v1           #oldCount:I
    :goto_24
    return v2

    .line 149
    .restart local v1       #oldCount:I
    :cond_25
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2a

    move v2, v6

    .line 150
    goto :goto_24

    .line 152
    .end local v1           #oldCount:I
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 153
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BulkCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to requery because the remote process exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    move v2, v6

    .line 155
    goto :goto_24
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .parameter "extras"

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 254
    :goto_6
    return-object v1

    .line 249
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_6
.end method

.method public set(Landroid/database/IBulkCursor;)V
    .registers 7
    .parameter "bulkCursor"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    .line 44
    :try_start_2
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v3}, Landroid/database/IBulkCursor;->count()I

    move-result v3

    iput v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 45
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v3}, Landroid/database/IBulkCursor;->getWantsAllOnMoveCalls()Z

    move-result v3

    iput-boolean v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 48
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v3}, Landroid/database/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 49
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    array-length v2, v3

    .line 50
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v2, :cond_2e

    .line 51
    iget-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 52
    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mRowIdColumnIndex:I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2e} :catch_32

    .line 59
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2e
    :goto_2e
    return-void

    .line 50
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 56
    .end local v1           #i:I
    .end local v2           #length:I
    :catch_32
    move-exception v3

    move-object v0, v3

    .line 57
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BulkCursor"

    const-string v4, "Setup failed because the remote process is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
