.class Lcom/android/server/DemoThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    .line 510
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 517
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    move v9, v0

    .line 518
    .local v9, hasData:Z
    :goto_1a
    if-eqz v6, :cond_1f

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 521
    :cond_1f
    if-nez v9, :cond_2b

    .line 522
    new-instance v7, Lcom/android/server/DemoDataSet;

    invoke-direct {v7}, Lcom/android/server/DemoDataSet;-><init>()V

    .line 523
    .local v7, dataset:Lcom/android/server/DemoDataSet;
    iget-object v0, p0, Lcom/android/server/DemoThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/server/DemoDataSet;->add(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2f

    .line 529
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #dataset:Lcom/android/server/DemoDataSet;
    .end local v9           #hasData:Z
    :cond_2b
    :goto_2b
    return-void

    .line 517
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2c
    const/4 v0, 0x0

    move v9, v0

    goto :goto_1a

    .line 525
    .end local v6           #c:Landroid/database/Cursor;
    :catch_2f
    move-exception v0

    move-object v8, v0

    .line 526
    .local v8, e:Ljava/lang/Throwable;
    const-string v0, "SystemServer"

    const-string v1, "Failure installing demo data"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method
