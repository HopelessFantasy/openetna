.class Lcom/android/mms/ui/ComposeMessageActivity$9;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1358
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1360
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1361
    :cond_1c
    const-string v6, "ComposeMessageActivity"

    const-string v7, "Bad cursor."

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    :cond_28
    :goto_28
    return-void

    .line 1364
    :cond_29
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1365
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1367
    .local v2, msgId:J
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1369
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 1370
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v4, :cond_67

    .line 1371
    const-string v6, "ComposeMessageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load message item for type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 1376
    :cond_67
    const v6, 0x7f070027

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1378
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    .line 1379
    .local v1, l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_161

    .line 1380
    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v6, :pswitch_data_1a2

    .line 1390
    :cond_80
    :goto_80
    :pswitch_80
    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v6, :pswitch_data_1ae

    .line 1402
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const v9, 0x7f070015

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1404
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 1405
    const/4 v6, 0x0

    const/16 v7, 0x19

    const/4 v8, 0x0

    const v9, 0x7f0700f9

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1421
    :cond_ab
    :goto_ab
    :pswitch_ab
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    if-nez v6, :cond_188

    .line 1423
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6, p1, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 1426
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 1427
    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    const v9, 0x7f070020

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1434
    :cond_cc
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1435
    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const v9, 0x7f070026

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1439
    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const v9, 0x7f070029

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1444
    :cond_ee
    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    const v9, 0x7f070016

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1452
    :cond_fc
    :goto_fc
    const/4 v6, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x0

    const v9, 0x7f0700c0

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1456
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    if-nez v6, :cond_28

    .line 1457
    iget-boolean v6, v4, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    if-nez v6, :cond_11a

    iget-boolean v6, v4, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v6, :cond_28

    .line 1458
    :cond_11a
    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    const v9, 0x7f070017

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_28

    .line 1384
    :pswitch_12a
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_80

    .line 1385
    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const v9, 0x7f0700bd

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_80

    .line 1395
    :pswitch_147
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 1396
    const/4 v6, 0x0

    const/16 v7, 0x19

    const/4 v8, 0x0

    const v9, 0x7f0700f9

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_ab

    .line 1412
    :cond_161
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ab

    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_178

    iget v6, v4, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_ab

    .line 1415
    :cond_178
    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const v9, 0x7f0700bd

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_ab

    .line 1446
    :cond_188
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_fc

    .line 1447
    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    const v9, 0x7f070016

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_fc

    .line 1380
    nop

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_12a
    .end packed-switch

    .line 1390
    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_147
        :pswitch_147
    .end packed-switch
.end method
