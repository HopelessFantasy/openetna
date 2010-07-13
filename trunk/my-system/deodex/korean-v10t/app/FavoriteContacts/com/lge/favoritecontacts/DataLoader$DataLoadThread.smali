.class Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;
.super Ljava/lang/Thread;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/DataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoadThread"
.end annotation


# instance fields
.field private m_m_Done:Z

.field private m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

.field private m_m_LoadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_m_Pause:Z

.field private m_m_lLoadCnt:J

.field final synthetic this$0:Lcom/lge/favoritecontacts/DataLoader;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/DataLoader;Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 6
    .parameter
    .parameter "FC"

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-object p1, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->this$0:Lcom/lge/favoritecontacts/DataLoader;

    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    .line 114
    iput-object p2, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    .line 116
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Done:Z

    .line 117
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Pause:Z

    .line 121
    return-void
.end method

.method private LoadPhotoData(Lcom/lge/render/FCPhotoItem;)V
    .registers 16
    .parameter "item"

    .prologue
    const/4 v13, 0x2

    const/4 v0, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p1, v0}, Lcom/lge/render/FCPhotoItem;->setBitmapLoadState(Z)V

    .line 240
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, personUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/favoritecontacts/DataLoader;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 245
    .local v9, personCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 247
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 249
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Lcom/lge/favoritecontacts/FavoriteContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/render/FCPhotoItem;->setName(Ljava/lang/String;)V

    .line 255
    :goto_3d
    const/4 v6, 0x0

    .line 256
    .local v6, bitmapInfo:Landroid/graphics/Bitmap;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 258
    const/4 v0, 0x2

    :try_start_45
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 259
    .local v10, photoData:[B
    const/4 v0, 0x0

    array-length v2, v10

    invoke-static {v10, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_4e} :catch_60

    move-result-object v6

    .line 280
    .end local v10           #photoData:[B
    :cond_4f
    :goto_4f
    invoke-virtual {p1, v6}, Lcom/lge/render/FCPhotoItem;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {p1, v12}, Lcom/lge/render/FCPhotoItem;->setBitmapLoadState(Z)V

    .line 286
    invoke-virtual {p1, v12}, Lcom/lge/render/FCPhotoItem;->finishedLoad(Z)V

    .line 289
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v6           #bitmapInfo:Landroid/graphics/Bitmap;
    .end local v8           #name:Ljava/lang/String;
    :cond_5b
    return-void

    .line 251
    .restart local v8       #name:Ljava/lang/String;
    :cond_5c
    invoke-virtual {p1, v8}, Lcom/lge/render/FCPhotoItem;->setName(Ljava/lang/String;)V

    goto :goto_3d

    .line 261
    .restart local v6       #bitmapInfo:Landroid/graphics/Bitmap;
    :catch_60
    move-exception v0

    move-object v7, v0

    .line 264
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x0

    .line 265
    goto :goto_4f

    .line 266
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_64
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 267
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0, v1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 270
    .local v11, stream:Ljava/io/InputStream;
    if-eqz v11, :cond_7b

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_75
    invoke-static {v11, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_75 .. :try_end_78} :catch_7d

    move-result-object v0

    move-object v6, v0

    :goto_7a
    goto :goto_4f

    :cond_7b
    move-object v6, v3

    goto :goto_7a

    .line 273
    :catch_7d
    move-exception v7

    .line 276
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x0

    goto :goto_4f
.end method


# virtual methods
.method public ThreadDone()V
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Done:Z

    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 209
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public ThreadWorkQueueFlush()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    return-void
.end method

.method public addLoadList(Lcom/lge/render/FCPhotoItem;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public flushLoadList()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    return-void
.end method

.method public getLoadList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Pause:Z

    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 220
    monitor-enter p0

    .line 221
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Pause:Z

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 8

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lcom/lge/favoritecontacts/DataLoader;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 131
    :goto_7
    iget-boolean v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Done:Z

    if-nez v3, :cond_64

    .line 132
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_91
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_3f

    .line 133
    :try_start_c
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Pause:Z

    if-eqz v3, :cond_5a

    .line 140
    :cond_18
    :goto_18
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Pause:Z

    if-eqz v3, :cond_5a

    :cond_24
    iget-boolean v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Done:Z

    if-nez v3, :cond_5a

    .line 141
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    .line 142
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->endLoading()V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 144
    const-string v3, "Data Loader"

    const-string v4, "  ===  Wake Load === "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 161
    :catchall_3c
    move-exception v3

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_91
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 164
    :catch_3f
    move-exception v3

    move-object v1, v3

    .line 165
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->this$0:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_91

    .line 169
    invoke-static {}, Lcom/lge/favoritecontacts/DataLoader;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 171
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #msg:Ljava/lang/String;
    :goto_59
    return-void

    .line 149
    :cond_5a
    :try_start_5a
    iget-boolean v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_Done:Z

    if-eqz v3, :cond_6c

    .line 150
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 151
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_3c

    .line 169
    :cond_64
    invoke-static {}, Lcom/lge/favoritecontacts/DataLoader;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_59

    .line 154
    :cond_6c
    :try_start_6c
    iget-object v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_LoadList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 155
    .local v0, c:Lcom/lge/render/FCPhotoItem;
    iget-wide v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    .line 156
    iget-wide v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-lez v3, :cond_8b

    .line 157
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 158
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    .line 160
    :cond_8b
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->LoadPhotoData(Lcom/lge/render/FCPhotoItem;)V

    .line 161
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_3c

    goto/16 :goto_7

    .line 169
    .end local v0           #c:Lcom/lge/render/FCPhotoItem;
    :catchall_91
    move-exception v3

    invoke-static {}, Lcom/lge/favoritecontacts/DataLoader;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3
.end method

.method public startLoad()V
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->m_m_lLoadCnt:J

    .line 178
    iget-object v1, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->this$0:Lcom/lge/favoritecontacts/DataLoader;

    invoke-static {v1}, Lcom/lge/favoritecontacts/DataLoader;->access$100(Lcom/lge/favoritecontacts/DataLoader;)Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .line 180
    .local v0, thisThreadState:Ljava/lang/Thread$State;
    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_24

    .line 181
    monitor-enter p0

    .line 182
    :try_start_16
    iget-object v1, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->this$0:Lcom/lge/favoritecontacts/DataLoader;

    invoke-static {v1}, Lcom/lge/favoritecontacts/DataLoader;->access$100(Lcom/lge/favoritecontacts/DataLoader;)Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 183
    monitor-exit p0

    .line 195
    :cond_20
    :goto_20
    return-void

    .line 183
    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v1

    .line 188
    :cond_24
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_20

    .line 189
    monitor-enter p0

    .line 190
    :try_start_29
    iget-object v1, p0, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->this$0:Lcom/lge/favoritecontacts/DataLoader;

    invoke-static {v1}, Lcom/lge/favoritecontacts/DataLoader;->access$100(Lcom/lge/favoritecontacts/DataLoader;)Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/DataLoader$DataLoadThread;->start()V

    .line 191
    monitor-exit p0

    goto :goto_20

    :catchall_34
    move-exception v1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method
