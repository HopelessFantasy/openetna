.class Lcom/lge/sns/feed/ui/FriendRequestView$1;
.super Ljava/lang/Object;
.source "FriendRequestView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FriendRequestView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/FriendRequestView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/FriendRequestView;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$1;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView$1;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->access$000(Lcom/lge/sns/feed/ui/FriendRequestView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    return-void
.end method
