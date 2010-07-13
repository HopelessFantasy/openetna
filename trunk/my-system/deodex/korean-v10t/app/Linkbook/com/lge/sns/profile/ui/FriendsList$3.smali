.class Lcom/lge/sns/profile/ui/FriendsList$3;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFriends(Ljava/util/List;Z)V
    .registers 7
    .parameter
    .parameter "moreItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileListItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/ProfileListItem;

    .line 227
    .local v1, profile:Lcom/lge/sns/profile/ProfileListItem;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v2, v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$700(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)V

    goto :goto_4

    .line 230
    .end local v1           #profile:Lcom/lge/sns/profile/ProfileListItem;
    :cond_16
    if-nez p2, :cond_1d

    .line 231
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$200(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 234
    :cond_1d
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$3;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    new-instance v3, Lcom/lge/sns/profile/ui/FriendsList$3$1;

    invoke-direct {v3, p0, p2}, Lcom/lge/sns/profile/ui/FriendsList$3$1;-><init>(Lcom/lge/sns/profile/ui/FriendsList$3;Z)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/FriendsList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
