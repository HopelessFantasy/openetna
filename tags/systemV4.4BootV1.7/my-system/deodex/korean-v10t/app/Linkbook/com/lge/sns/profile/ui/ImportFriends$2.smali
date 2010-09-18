.class Lcom/lge/sns/profile/ui/ImportFriends$2;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ImportFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$2;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

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
    .line 98
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

    .line 99
    .local v1, profile:Lcom/lge/sns/profile/ProfileListItem;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$2;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v2, v1}, Lcom/lge/sns/profile/ui/ImportFriends;->access$200(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ProfileListItem;)V

    goto :goto_4

    .line 107
    .end local v1           #profile:Lcom/lge/sns/profile/ProfileListItem;
    :cond_16
    invoke-static {}, Lcom/lge/sns/profile/ui/ImportFriends;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/ImportFriends$2$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/ImportFriends$2$1;-><init>(Lcom/lge/sns/profile/ui/ImportFriends$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method
