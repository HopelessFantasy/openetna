.class Lcom/android/settings/ManageApplications$ResourceLoaderThread;
.super Ljava/lang/Thread;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceLoaderThread"
.end annotation


# static fields
.field static final MSG_PKG_SIZE:I = 0x8


# instance fields
.field volatile abort:Z

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 3
    .parameter

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    return-void
.end method


# virtual methods
.method loadAllResources(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1312
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->start()V

    .line 1314
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    .line 1325
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .local v4, imax:I
    if-gtz v4, :cond_14

    .line 1326
    .end local v4           #imax:I
    :cond_c
    const-string v11, "ManageApplications"

    const-string v12, "Empty or null application list"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_13
    :goto_13
    return-void

    .line 1328
    .restart local v4       #imax:I
    :cond_14
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 1329
    .local v10, size:I
    div-int/lit8 v9, v10, 0x8

    .line 1331
    .local v9, numMsgs:I
    mul-int/lit8 v11, v9, 0x8

    if-le v10, v11, :cond_22

    .line 1332
    add-int/lit8 v9, v9, 0x1

    .line 1335
    :cond_22
    const/4 v2, 0x0

    .line 1337
    .local v2, endi:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_24
    if-ge v5, v10, :cond_6a

    .line 1338
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1339
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    add-int/lit8 v2, v2, 0x8

    .line 1341
    if-le v2, v10, :cond_30

    .line 1342
    move v2, v10

    .line 1345
    :cond_30
    move v3, v5

    .local v3, i:I
    :goto_31
    if-ge v3, v2, :cond_37

    .line 1346
    iget-boolean v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    if-eqz v11, :cond_50

    .line 1356
    :cond_37
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1357
    .local v8, msg:Landroid/os/Message;
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1358
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1337
    add-int/lit8 v5, v5, 0x8

    goto :goto_24

    .line 1351
    .end local v8           #msg:Landroid/os/Message;
    :cond_50
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1352
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v12}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1361
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_6a
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1362
    .local v1, doneMsg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1376
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1378
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v11, 0x1

    sub-int v3, v4, v11

    .restart local v3       #i:I
    :goto_87
    if-ltz v3, :cond_a7

    .line 1379
    iget-boolean v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    if-nez v11, :cond_13

    .line 1383
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1384
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v12}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    add-int/lit8 v3, v3, -0x1

    goto :goto_87

    .line 1387
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_a7
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1388
    .restart local v8       #msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1389
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13
.end method

.method public setAbort()V
    .registers 2

    .prologue
    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    .line 1309
    return-void
.end method
