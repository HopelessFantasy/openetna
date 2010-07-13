.class Lcom/lge/sns/profile/ui/FriendView$6;
.super Ljava/lang/Object;
.source "FriendView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendView;->onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendView;

.field final synthetic val$entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendView$ViewEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$6;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendView$6;->val$entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$6;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView$6;->val$entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method
