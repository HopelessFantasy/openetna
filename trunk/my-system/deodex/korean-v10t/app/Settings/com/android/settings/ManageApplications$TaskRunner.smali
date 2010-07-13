.class Lcom/android/settings/ManageApplications$TaskRunner;
.super Ljava/lang/Thread;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskRunner"
.end annotation


# static fields
.field private static final END_MSG:I = 0xa

.field static final MSG_PKG_SIZE:I = 0x8

.field private static final SEND_PKG_SIZES:I = 0x2


# instance fields
.field volatile abort:Z

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeObserver:Lcom/android/settings/ManageApplications$SizeObserver;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;Ljava/util/List;)V
    .registers 4
    .parameter
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
    .line 1196
    .local p2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$TaskRunner;->abort:Z

    .line 1197
    iput-object p2, p0, Lcom/android/settings/ManageApplications$TaskRunner;->mPkgList:Ljava/util/List;

    .line 1198
    new-instance v0, Lcom/android/settings/ManageApplications$SizeObserver;

    invoke-direct {v0, p1}, Lcom/android/settings/ManageApplications$SizeObserver;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$TaskRunner;->mSizeObserver:Lcom/android/settings/ManageApplications$SizeObserver;

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$TaskRunner;->start()V

    .line 1200
    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v15

    .line 1214
    .local v15, size:I
    div-int/lit8 v11, v15, 0x8

    .line 1216
    .local v11, numMsgs:I
    mul-int/lit8 v20, v11, 0x8

    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    .line 1217
    add-int/lit8 v11, v11, 0x1

    .line 1220
    :cond_15
    const/4 v6, 0x0

    .line 1222
    .local v6, endi:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_17
    if-ge v9, v15, :cond_120

    .line 1226
    add-int/lit8 v6, v6, 0x8

    .line 1228
    if-le v6, v15, :cond_1e

    .line 1229
    move v6, v15

    .line 1232
    :cond_1e
    sub-int v20, v6, v9

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 1233
    .local v16, sizes:[J
    sub-int v20, v6, v9

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .line 1234
    .local v7, formatted:[Ljava/lang/String;
    sub-int v20, v6, v9

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 1236
    .local v14, packages:[Ljava/lang/String;
    move v8, v9

    .local v8, i:I
    :goto_35
    if-ge v8, v6, :cond_3f

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->abort:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8b

    .line 1270
    :cond_3f
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1271
    .local v4, data:Landroid/os/Bundle;
    const-string v20, "ps"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1272
    const-string v20, "ss"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1273
    const-string v20, "fs"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1276
    .local v10, msg:Landroid/os/Message;
    invoke-virtual {v10, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1222
    add-int/lit8 v9, v9, 0x8

    goto :goto_17

    .line 1242
    .end local v4           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_8b
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/16 v20, 0x1

    move-object v0, v3

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1243
    .local v3, count:Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->mPkgList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1244
    .local v13, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->mSizeObserver:Lcom/android/settings/ManageApplications$SizeObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v13

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ManageApplications$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 1247
    :try_start_b3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b6} :catch_100

    .line 1254
    :goto_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->mSizeObserver:Lcom/android/settings/ManageApplications$SizeObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/ManageApplications$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    move-object v12, v0

    .line 1255
    .local v12, pStats:Landroid/content/pm/PackageStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->mSizeObserver:Lcom/android/settings/ManageApplications$SizeObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/settings/ManageApplications$SizeObserver;->succeeded:Z

    move/from16 v17, v0

    .line 1258
    .local v17, succeeded:Z
    if-eqz v17, :cond_11d

    if-eqz v12, :cond_11d

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$2800(Lcom/android/settings/ManageApplications;Landroid/content/pm/PackageStats;)J

    move-result-wide v18

    .line 1264
    .local v18, total:J
    :goto_de
    sub-int v20, v8, v9

    aput-wide v18, v16, v20

    .line 1265
    sub-int v20, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$2900(Lcom/android/settings/ManageApplications;J)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v20

    .line 1266
    sub-int v20, v8, v9

    aput-object v13, v14, v20

    .line 1236
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_35

    .line 1248
    .end local v12           #pStats:Landroid/content/pm/PackageStats;
    .end local v17           #succeeded:Z
    .end local v18           #total:J
    :catch_100
    move-exception v5

    .line 1249
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v20, "ManageApplications"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed computing size for pkg : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 1261
    .end local v5           #e:Ljava/lang/InterruptedException;
    .restart local v12       #pStats:Landroid/content/pm/PackageStats;
    .restart local v17       #succeeded:Z
    :cond_11d
    const-wide/16 v18, -0x1

    .restart local v18       #total:J
    goto :goto_de

    .line 1286
    .end local v3           #count:Ljava/util/concurrent/CountDownLatch;
    .end local v7           #formatted:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v12           #pStats:Landroid/content/pm/PackageStats;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v14           #packages:[Ljava/lang/String;
    .end local v16           #sizes:[J
    .end local v17           #succeeded:Z
    .end local v18           #total:J
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$TaskRunner;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1287
    return-void
.end method

.method public setAbort()V
    .registers 2

    .prologue
    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$TaskRunner;->abort:Z

    .line 1204
    return-void
.end method
