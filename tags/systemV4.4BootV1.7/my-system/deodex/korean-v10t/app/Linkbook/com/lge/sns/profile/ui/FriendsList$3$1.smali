.class Lcom/lge/sns/profile/ui/FriendsList$3$1;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList$3;->onLoadFriends(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/FriendsList$3;

.field final synthetic val$moreItems:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList$3;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$3$1;->this$1:Lcom/lge/sns/profile/ui/FriendsList$3;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/FriendsList$3$1;->val$moreItems:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$3$1;->this$1:Lcom/lge/sns/profile/ui/FriendsList$3;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$300(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 237
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$3$1;->this$1:Lcom/lge/sns/profile/ui/FriendsList$3;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList$3$1;->val$moreItems:Z

    if-nez v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-static {v0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$802(Lcom/lge/sns/profile/ui/FriendsList;Z)Z

    .line 238
    return-void

    .line 237
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method
