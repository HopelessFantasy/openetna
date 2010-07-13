.class Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;
.super Landroid/os/Handler;
.source "ContactsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->creatActionDialogHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x3

    const v5, 0x7f07001b

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, " / "

    .line 388
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_15e

    .line 461
    :goto_d
    return-void

    .line 390
    :pswitch_e
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto :goto_d

    .line 393
    :pswitch_15
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$200(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-virtual {v4, v6}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    goto :goto_d

    .line 397
    :pswitch_24
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 398
    .local v3, total:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 399
    .local v1, index:I
    if-ge v1, v3, :cond_5f

    .line 400
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    .local v0, dataView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$400(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    .line 405
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v9, v1, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$500(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;III)V

    goto :goto_d

    .line 407
    .end local v0           #dataView:Landroid/widget/TextView;
    .end local v2           #message:Ljava/lang/String;
    :cond_5f
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto :goto_d

    .line 411
    .end local v1           #index:I
    .end local v3           #total:I
    :pswitch_66
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$200(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 413
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v7}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$002(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)I

    .line 414
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const-string v5, "create contacts"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 418
    :pswitch_89
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 419
    .restart local v3       #total:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 420
    .restart local v1       #index:I
    if-ge v1, v3, :cond_c6

    .line 421
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 422
    .restart local v0       #dataView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2       #message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v6}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$600(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    .line 426
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v5, 0x5

    invoke-static {v4, v5, v1, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$500(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;III)V

    goto/16 :goto_d

    .line 428
    .end local v0           #dataView:Landroid/widget/TextView;
    .end local v2           #message:Ljava/lang/String;
    :cond_c6
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto/16 :goto_d

    .line 432
    .end local v1           #index:I
    .end local v3           #total:I
    :pswitch_ce
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$200(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 434
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v7}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$002(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)I

    .line 435
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const-string v5, "create groups"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 439
    :pswitch_f3
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 440
    .restart local v3       #total:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 441
    .restart local v1       #index:I
    if-ge v1, v3, :cond_130

    .line 442
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 443
    .restart local v0       #dataView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2       #message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v7}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$600(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    .line 447
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v5, 0x7

    invoke-static {v4, v5, v1, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$500(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;III)V

    goto/16 :goto_d

    .line 449
    .end local v0           #dataView:Landroid/widget/TextView;
    .end local v2           #message:Ljava/lang/String;
    :cond_130
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto/16 :goto_d

    .line 453
    .end local v1           #index:I
    .end local v3           #total:I
    :pswitch_139
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$200(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v4, v7}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$002(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)I

    .line 456
    iget-object v4, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const-string v5, "create groups"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 388
    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_15
        :pswitch_24
        :pswitch_66
        :pswitch_89
        :pswitch_ce
        :pswitch_f3
        :pswitch_139
    .end packed-switch
.end method
