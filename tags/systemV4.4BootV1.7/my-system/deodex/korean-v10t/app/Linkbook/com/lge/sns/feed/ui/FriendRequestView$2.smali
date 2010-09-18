.class Lcom/lge/sns/feed/ui/FriendRequestView$2;
.super Ljava/lang/Object;
.source "FriendRequestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/FriendRequestView;
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
    .line 190
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$2;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView$2;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->access$000(Lcom/lge/sns/feed/ui/FriendRequestView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView$2;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->access$100(Lcom/lge/sns/feed/ui/FriendRequestView;)V

    .line 193
    return-void
.end method
