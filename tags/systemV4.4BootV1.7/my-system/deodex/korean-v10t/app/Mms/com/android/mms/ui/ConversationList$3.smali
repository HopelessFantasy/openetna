.class Lcom/android/mms/ui/ConversationList$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .registers 2
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 577
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_44

    .line 578
    sparse-switch p2, :sswitch_data_66

    :cond_d
    :goto_d
    move v3, v4

    .line 617
    :goto_e
    return v3

    .line 580
    :sswitch_f
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    .line 581
    .local v0, id:J
    cmp-long v3, v0, v6

    if-lez v3, :cond_29

    .line 582
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 584
    .local v2, l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3, v2, v4}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Z)V

    .end local v2           #l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    :cond_29
    move v3, v5

    .line 586
    goto :goto_e

    .line 590
    .end local v0           #id:J
    :sswitch_2b
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 591
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3, v4}, Lcom/android/mms/ui/ConversationList;->access$102(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 592
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)V

    .line 593
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->access$500(Lcom/android/mms/ui/ConversationList;)V

    move v3, v5

    .line 595
    goto :goto_e

    .line 603
    :cond_44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 604
    packed-switch p2, :pswitch_data_70

    goto :goto_d

    .line 606
    :pswitch_4e
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_d

    .line 607
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move v3, v5

    .line 608
    goto :goto_e

    .line 578
    nop

    :sswitch_data_66
    .sparse-switch
        0x4 -> :sswitch_2b
        0x43 -> :sswitch_f
    .end sparse-switch

    .line 604
    :pswitch_data_70
    .packed-switch 0x42
        :pswitch_4e
    .end packed-switch
.end method
