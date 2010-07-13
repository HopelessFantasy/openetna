.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1527
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 28
    .parameter "item"

    .prologue
    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 1531
    .local v5, cursor:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v22

    if-nez v22, :cond_20

    invoke-interface {v5}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v22

    if-nez v22, :cond_20

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 1532
    :cond_20
    const-string v22, "ComposeMessageActivity"

    const-string v23, "Bad cursor."

    new-instance v24, Ljava/lang/RuntimeException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static/range {v22 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    const/16 v22, 0x0

    .line 1690
    :goto_2e
    return v22

    .line 1535
    :cond_2f
    const/16 v22, 0x0

    move-object v0, v5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1536
    .local v20, type:Ljava/lang/String;
    const/16 v22, 0x1

    move-object v0, v5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1537
    .local v12, msgId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-wide v2, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)Lcom/android/mms/ui/MessageItem;

    move-result-object v14

    .line 1539
    .local v14, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v14, :cond_55

    .line 1540
    const/16 v22, 0x0

    goto :goto_2e

    .line 1543
    :cond_55
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v22

    packed-switch v22, :pswitch_data_38c

    .line 1690
    :pswitch_5c
    const/16 v22, 0x0

    goto :goto_2e

    .line 1545
    :pswitch_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v22

    if-eqz v22, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v22

    move/from16 v4, v22

    .line 1549
    .local v4, attachmentType:I
    :goto_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 1550
    const/16 v22, 0x1

    goto :goto_2e

    .line 1546
    .end local v4           #attachmentType:I
    :cond_96
    const/16 v22, 0x0

    move/from16 v4, v22

    goto :goto_87

    .line 1553
    :pswitch_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 1554
    const/16 v22, 0x1

    goto :goto_2e

    .line 1558
    :pswitch_ac
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFreeMemSize()J

    move-result-wide v7

    .line 1559
    .local v7, freeMem:J
    const-string v22, "ComposeMessageActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Free Memsize : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-wide/32 v22, 0x5dc000

    cmp-long v22, v22, v7

    if-ltz v22, :cond_102

    .line 1563
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x1040287

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x1040074

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070070

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1570
    const/16 v22, 0x0

    goto/16 :goto_2e

    .line 1573
    :cond_102
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1576
    .local v9, intent:Landroid/content/Intent;
    const-string v22, "exit_on_sent"

    const/16 v23, 0x1

    move-object v0, v9

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1577
    const-string v22, "forwarded_message"

    const/16 v23, 0x1

    move-object v0, v9

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1578
    const-string v22, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15b

    .line 1579
    const-string v22, "sms_body"

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    :goto_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move-object v1, v9

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 1605
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1581
    :cond_15b
    new-instance v16, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1582
    .local v16, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070052

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1583
    .local v18, subject:Ljava/lang/String;
    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18e

    .line 1584
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1586
    :cond_18e
    new-instance v22, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1587
    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1590
    const/16 v21, 0x0

    .line 1593
    .local v21, uri:Landroid/net/Uri;
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v22

    sget-object v23, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1cb
    .catch Lcom/google/android/mms/MmsException; {:try_start_1b6 .. :try_end_1cb} :catch_1e2

    move-result-object v21

    .line 1601
    const-string v22, "msg_uri"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1602
    const-string v22, "subject"

    move-object v0, v9

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_147

    .line 1594
    :catch_1e2
    move-exception v22

    move-object/from16 v6, v22

    .line 1595
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v22, "ComposeMessageActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to copy message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07005e

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 1598
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1608
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .end local v7           #freeMem:J
    .end local v9           #intent:Landroid/content/Intent;
    .end local v16           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v18           #subject:Ljava/lang/String;
    .end local v21           #uri:Landroid/net/Uri;
    :pswitch_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V

    .line 1611
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1614
    :pswitch_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    .line 1616
    .local v11, messageDetails:Ljava/lang/String;
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0700ab

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x104000a

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1622
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1625
    .end local v11           #messageDetails:Ljava/lang/String;
    :pswitch_27a
    new-instance v10, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object v0, v10

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 1627
    .local v10, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v10

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1628
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1631
    .end local v10           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v12

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 1632
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1635
    :pswitch_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v22

    if-eqz v22, :cond_2e5

    const v22, 0x7f0700fa

    move/from16 v15, v22

    .line 1637
    .local v15, resId:I
    :goto_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move v1, v15

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 1638
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1635
    .end local v15           #resId:I
    :cond_2e5
    const v22, 0x7f0700fb

    move/from16 v15, v22

    goto :goto_2cd

    .line 1643
    :pswitch_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4202(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4402(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4502(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1649
    const/16 v22, 0x7

    move-object v0, v5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1650
    .local v17, smsType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move-object v0, v5

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v22 .. v24}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4602(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v23

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v19

    .line 1653
    .local v19, temp:Ljava/lang/String;
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f07002a

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f05000a

    new-instance v24, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1686
    const/16 v22, 0x1

    goto/16 :goto_2e

    .line 1543
    nop

    :pswitch_data_38c
    .packed-switch 0xe
        :pswitch_5f
        :pswitch_5c
        :pswitch_21d
        :pswitch_237
        :pswitch_27a
        :pswitch_5c
        :pswitch_2a7
        :pswitch_ac
        :pswitch_5c
        :pswitch_5c
        :pswitch_9b
        :pswitch_2b9
        :pswitch_5c
        :pswitch_5c
        :pswitch_2eb
    .end packed-switch
.end method
