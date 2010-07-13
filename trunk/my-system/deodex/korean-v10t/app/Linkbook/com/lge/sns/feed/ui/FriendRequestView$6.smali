.class Lcom/lge/sns/feed/ui/FriendRequestView$6;
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
    .line 290
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$6;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$6;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-virtual {v1}, Lcom/lge/sns/feed/ui/FriendRequestView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 292
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$6;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/lge/sns/feed/ui/FriendRequestView;->setResult(ILandroid/content/Intent;)V

    .line 293
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FriendRequestView$6;->this$0:Lcom/lge/sns/feed/ui/FriendRequestView;

    invoke-virtual {v1}, Lcom/lge/sns/feed/ui/FriendRequestView;->finish()V

    .line 294
    return-void
.end method
