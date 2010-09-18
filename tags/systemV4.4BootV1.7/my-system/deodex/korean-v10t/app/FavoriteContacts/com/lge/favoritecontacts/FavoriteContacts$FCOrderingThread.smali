.class Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;
.super Ljava/lang/Thread;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FCOrderingThread"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mIsDone:Z

.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 3
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mIsDone:Z

    return-void
.end method

.method private initFavoriteContactsList(Landroid/database/Cursor;Z)V
    .registers 15
    .parameter "cursor"
    .parameter "isAdd"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/render/PhotoList;->setList(Landroid/database/Cursor;)V

    .line 1381
    if-eqz p2, :cond_14

    .line 1382
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->startAddAction()V

    .line 1384
    :cond_14
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1386
    .local v7, count:I
    if-lez v7, :cond_a9

    .line 1388
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1b
    if-ge v9, v7, :cond_21

    .line 1389
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mIsDone:Z

    if-eqz v0, :cond_35

    .line 1416
    :cond_21
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mIsDone:Z

    if-nez v0, :cond_34

    .line 1417
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1700(Lcom/lge/favoritecontacts/FavoriteContacts;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    .line 1422
    .end local v9           #i:I
    :cond_34
    :goto_34
    return-void

    .line 1391
    .restart local v9       #i:I
    :cond_35
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->GetFirst()[J

    move-result-object v11

    .line 1393
    .local v11, value:[J
    const/4 v0, 0x1

    aget-wide v0, v11, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_99

    .line 1394
    if-eqz p2, :cond_53

    .line 1395
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->increaseAddCnt()V

    .line 1397
    :cond_53
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->moveToFirst()V

    .line 1398
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->GetLast()[J

    move-result-object v10

    .line 1400
    .local v10, last:[J
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v10, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->setPosition(J)V

    .line 1401
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    const/4 v1, 0x0

    aget-wide v1, v11, v1

    const/4 v3, 0x2

    aget-wide v3, v11, v3

    const/4 v5, 0x1

    aget-wide v5, v10, v5

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    invoke-static/range {v0 .. v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1500(Lcom/lge/favoritecontacts/FavoriteContacts;JJJ)V

    .line 1402
    .end local v10           #last:[J
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->FirstToNext()V

    .line 1404
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->GetFirst()[J

    move-result-object v11

    .line 1407
    :cond_99
    add-int/lit8 v8, v9, 0x1

    .line 1408
    .local v8, cur:I
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    new-instance v1, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;

    invoke-direct {v1, p0, v8}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread$1;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;I)V

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1388
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    .line 1420
    .end local v8           #cur:I
    .end local v9           #i:I
    .end local v11           #value:[J
    :cond_a9
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    goto :goto_34
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 1373
    monitor-enter p0

    .line 1374
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mIsDone:Z

    .line 1375
    monitor-exit p0

    .line 1376
    return-void

    .line 1375
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    new-instance v1, Lcom/lge/render/PhotoList;

    invoke-direct {v1}, Lcom/lge/render/PhotoList;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1402(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/PhotoList;)Lcom/lge/render/PhotoList;

    .line 1360
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->initFavoriteContactsList(Landroid/database/Cursor;Z)V

    .line 1362
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mIsDone:Z

    if-nez v0, :cond_35

    .line 1363
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    new-instance v1, Lcom/lge/render/PhotoMgr;

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/render/PhotoMgr;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/EssentialRenderer;Lcom/lge/render/PhotoList;)V

    invoke-static {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$502(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoMgr;

    .line 1364
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$500(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->startDataLoader()V

    .line 1367
    :cond_35
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1368
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1370
    :cond_42
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->mCursor:Landroid/database/Cursor;

    .line 1355
    return-void
.end method
