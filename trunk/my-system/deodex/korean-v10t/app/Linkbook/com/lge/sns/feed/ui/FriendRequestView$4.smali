.class Lcom/lge/sns/feed/ui/FriendRequestView$4;
.super Ljava/lang/Object;
.source "FriendRequestView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FriendRequestView;->addButtonView()V
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
    .line 274
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$4;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView$4;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/sns/feed/ui/FriendRequestView;->access$202(Lcom/lge/sns/feed/ui/FriendRequestView;Z)Z

    .line 276
    iget-object v0, p0, Lcom/lge/sns/feed/ui/FriendRequestView$4;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-virtual {v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->onFriendRequestStarted()V

    .line 277
    return-void
.end method
