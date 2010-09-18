.class Lcom/android/mms/ui/ComposeMessageActivity$4;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 495
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 496
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 509
    :goto_a
    return v0

    .line 501
    :cond_b
    const/16 v0, 0x43

    if-ne p2, v0, :cond_3a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_3a

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 506
    const/4 v0, 0x1

    goto :goto_a

    :cond_3a
    move v0, v2

    .line 509
    goto :goto_a
.end method
