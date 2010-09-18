.class Lcom/android/mms/ui/ComposeMessageActivity$21;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 3598
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3599
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3566
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3573
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 3575
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3577
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 3578
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-nez v0, :cond_44

    .line 3579
    new-instance v0, Lcom/android/mms/model/TextModel;

    .end local v0           #text:Lcom/android/mms/model/TextModel;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "text/plain"

    const-string v3, "text_0.txt"

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 3585
    .restart local v0       #text:Lcom/android/mms/model/TextModel;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3588
    :cond_44
    invoke-virtual {v0, p1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 3593
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :goto_47
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3595
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V

    .line 3596
    return-void

    .line 3590
    :cond_52
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6002(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_47
.end method
