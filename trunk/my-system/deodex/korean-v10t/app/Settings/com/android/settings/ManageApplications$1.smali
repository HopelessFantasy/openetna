.class Lcom/android/settings/ManageApplications$1;
.super Landroid/os/Handler;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 32
    .parameter "msg"

    .prologue
    .line 290
    const/16 v20, 0x0

    .line 292
    .local v20, pkgName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 294
    .local v6, data:Landroid/os/Bundle;
    if-eqz v6, :cond_11

    .line 295
    const-string v27, "p"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 298
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_582

    .line 570
    :cond_1a
    :goto_1a
    return-void

    .line 301
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_49

    .line 302
    const-string v27, "ManageApplications"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Message INIT_PKG_INFO, justCreated = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings/ManageApplications;->access$100(Lcom/android/settings/ManageApplications;)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_49
    const/16 v18, 0x0

    .line 309
    .local v18, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$100(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_70

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v18

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$200(Lcom/android/settings/ManageApplications;Ljava/util/List;)Z

    .line 316
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;Ljava/util/List;I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x9

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1a

    .line 323
    .end local v18           #newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_ae

    .line 324
    const-string v27, "ManageApplications"

    const-string v28, "Message COMPUTE_BULK_PKG_SIZE"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_ae
    const-string v27, "ps"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 328
    .local v21, pkgs:[Ljava/lang/String;
    const-string v27, "ss"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v25

    .line 329
    .local v25, sizes:[J
    const-string v27, "fs"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, formatted:[Ljava/lang/String;
    if-eqz v21, :cond_cf

    if-eqz v25, :cond_cf

    if-nez v8, :cond_d8

    .line 333
    :cond_cf
    const-string v27, "ManageApplications"

    const-string v28, "Ignoring message"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 338
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateSizes([Ljava/lang/String;[J[Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 343
    .end local v8           #formatted:[Ljava/lang/String;
    .end local v21           #pkgs:[Ljava/lang/String;
    .end local v25           #sizes:[J
    :pswitch_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$602(Lcom/android/settings/ManageApplications;Z)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$702(Lcom/android/settings/ManageApplications;Z)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x9

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1a

    .line 351
    :pswitch_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_128

    .line 352
    const-string v27, "ManageApplications"

    const-string v28, "Message REMOVE_PKG"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_128
    if-nez v20, :cond_133

    .line 356
    const-string v27, "ManageApplications"

    const-string v28, "Ignoring message:REMOVE_PKG for null pkgName"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 362
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_177

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 365
    .local v5, currB:Ljava/lang/Boolean;
    if-eqz v5, :cond_160

    sget-object v27, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 366
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    .line 372
    .end local v5           #currB:Ljava/lang/Boolean;
    :cond_177
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v19, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    goto/16 :goto_1a

    .line 380
    .end local v19           #pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_1a5

    .line 381
    const-string v27, "ManageApplications"

    const-string v28, "Message REORDER_LIST"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1a5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 386
    .local v17, menuOption:I
    if-eqz v17, :cond_1b5

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_219

    .line 389
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/ManageApplications;->access$902(Lcom/android/settings/ManageApplications;I)I

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_200

    .line 393
    const-string v27, "ManageApplications"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Changing sort order to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortList(I)V

    goto/16 :goto_1a

    .line 399
    :cond_219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    move/from16 v0, v17

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/settings/ManageApplications;->mFilterApps:I

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->resetAppList(I)Z

    move-result v22

    .line 405
    .local v22, ret:Z
    if-nez v22, :cond_1a

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/settings/ManageApplications;->mFilterApps:I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;II)V

    goto/16 :goto_1a

    .line 417
    .end local v17           #menuOption:I
    .end local v22           #ret:Z
    :pswitch_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_296

    .line 418
    const-string v27, "ManageApplications"

    const-string v28, "Message ADD_PKG_START"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_296
    if-nez v20, :cond_2a1

    .line 422
    const-string v27, "ManageApplications"

    const-string v28, "Ignoring message:ADD_PKG_START for null pkgName"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 428
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_2b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1100(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_2f1

    .line 429
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 431
    .restart local v5       #currB:Ljava/lang/Boolean;
    if-eqz v5, :cond_2da

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 432
    :cond_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    sget-object v28, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    .line 439
    .end local v5           #currB:Ljava/lang/Boolean;
    :cond_2f1
    :try_start_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_306
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f1 .. :try_end_306} :catch_31a

    move-result-object v13

    .line 447
    .local v13, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$PkgSizeObserver;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$PkgSizeObserver;->invokeGetSizeInfo(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 440
    .end local v13           #info:Landroid/content/pm/ApplicationInfo;
    :catch_31a
    move-exception v27

    move-object/from16 v7, v27

    .line 441
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v27, "ManageApplications"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Couldnt find application info for:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 453
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_34e

    .line 454
    const-string v27, "ManageApplications"

    const-string v28, "Message ADD_PKG_DONE"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_34e
    if-nez v20, :cond_359

    .line 458
    const-string v27, "ManageApplications"

    const-string v28, "Ignoring message:ADD_PKG_START for null pkgName"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 464
    :cond_359
    const-string v27, "passed"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 466
    .local v26, status:Z
    if-eqz v26, :cond_1a

    .line 467
    const-string v27, "s"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 468
    .local v23, size:J
    const-string v27, "f"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 470
    .local v9, formattedSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getIndex(Ljava/lang/String;)I

    move-result v12

    .line 472
    .local v12, idx:I
    const/16 v27, -0x1

    move v0, v12

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a5

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-wide/from16 v2, v23

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->addToList(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1a

    .line 476
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-wide/from16 v2, v23

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->updatePackage(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1a

    .line 485
    .end local v9           #formattedSize:Ljava/lang/String;
    .end local v12           #idx:I
    .end local v23           #size:J
    .end local v26           #status:Z
    :pswitch_3bb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Map;

    .line 487
    .local v16, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-eqz v16, :cond_1a

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateLabels(Ljava/util/Map;)V

    goto/16 :goto_1a

    .line 495
    .end local v16           #labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :pswitch_3d8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/util/Map;

    .line 497
    .local v11, iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v11, :cond_1a

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->bulkUpdateIcons(Ljava/util/Map;)V

    goto/16 :goto_1a

    .line 504
    .end local v11           #iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :pswitch_3f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$1102(Lcom/android/settings/ManageApplications;Z)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x9

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1a

    .line 511
    :pswitch_40f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$1500(Lcom/android/settings/ManageApplications$AppInfoCache;)Z

    move-result v27

    if-nez v27, :cond_45d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_45d

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_43e

    .line 513
    const-string v27, "ManageApplications"

    const-string v28, "Using cache to populate list view"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_43e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1700(Lcom/android/settings/ManageApplications;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$1602(Lcom/android/settings/ManageApplications;Z)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$702(Lcom/android/settings/ManageApplications;Z)Z

    .line 521
    :cond_45d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_4e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1100(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_4e6

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1800(Lcom/android/settings/ManageApplications;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 527
    .local v15, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_490
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4d7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 528
    .local v14, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    sget-object v28, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4c6

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const-string v28, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$1900(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_490

    .line 534
    :cond_4c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const-string v28, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/android/settings/ManageApplications;->access$1900(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_490

    .line 539
    .end local v14           #key:Ljava/lang/String;
    :cond_4d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->clear()V

    goto/16 :goto_1a

    .line 540
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_520

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1100(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_520

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_515

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$2100(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_1a

    .line 545
    :cond_515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$2200(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_1a

    .line 548
    :cond_520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_553

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-eqz v27, :cond_53f

    .line 550
    const-string v27, "ManageApplications"

    const-string v28, "Initing list view for very first time"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_53f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1700(Lcom/android/settings/ManageApplications;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/settings/ManageApplications;->access$1602(Lcom/android/settings/ManageApplications;Z)Z

    .line 558
    :cond_553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$600(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_56a

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$2100(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_1a

    .line 560
    :cond_56a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$1100(Lcom/android/settings/ManageApplications;)Z

    move-result v27

    if-nez v27, :cond_1a

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageApplications$1;->this$0:Lcom/android/settings/ManageApplications;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/ManageApplications;->access$2200(Lcom/android/settings/ManageApplications;)V

    goto/16 :goto_1a

    .line 298
    nop

    :pswitch_data_582
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_9b
        :pswitch_115
        :pswitch_192
        :pswitch_283
        :pswitch_33b
        :pswitch_3bb
        :pswitch_3f3
        :pswitch_40f
        :pswitch_ee
        :pswitch_3d8
    .end packed-switch
.end method
