.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_36

    .line 55
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_7
    return v3

    .line 38
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 39
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 44
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isPush()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    :cond_22
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 49
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v3, 0x1

    goto :goto_7

    .line 36
    nop

    :pswitch_data_36
    .packed-switch 0x1f
        :pswitch_8
    .end packed-switch
.end method
