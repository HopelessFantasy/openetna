.class Lcom/android/mms/ui/AttachmentEditor$1;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentEditor;->createMediaView(IIIIIII)Lcom/android/mms/ui/SlideViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->removeAttachment()V

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$100(Lcom/android/mms/ui/AttachmentEditor;)Lcom/android/mms/ui/SlideViewInterface;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$200(Lcom/android/mms/ui/AttachmentEditor;)I

    move-result v0

    .line 217
    .local v0, oldAttachmentType:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->access$202(Lcom/android/mms/ui/AttachmentEditor;I)I

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$300(Lcom/android/mms/ui/AttachmentEditor;)Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$300(Lcom/android/mms/ui/AttachmentEditor;)Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentEditor$1;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v2}, Lcom/android/mms/ui/AttachmentEditor;->access$200(Lcom/android/mms/ui/AttachmentEditor;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;->onAttachmentChanged(II)V

    .line 222
    :cond_35
    return-void
.end method
