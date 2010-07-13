.class Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnClick"
.end annotation


# instance fields
.field private mWhat:I

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentEditor;I)V
    .registers 3
    .parameter
    .parameter "what"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    .line 161
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method
