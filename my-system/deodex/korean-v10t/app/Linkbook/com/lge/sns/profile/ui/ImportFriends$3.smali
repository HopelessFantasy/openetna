.class Lcom/lge/sns/profile/ui/ImportFriends$3;
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
    .line 121
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$3;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFriends(Ljava/util/List;Z)V
    .registers 9
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
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileListItem;>;"
    const-string v5, "ImportFriends"

    .line 122
    const-string v3, "ImportFriends"

    const-string v3, " [[[[[ mContactsListCB  onLoadFriends  ]]]]]]]"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ProfileListItem;

    .line 125
    .local v2, profile:Lcom/lge/sns/profile/ProfileListItem;
    const-string v3, "ImportFriends"

    const-string v3, " [[[[[ mContactsListCB  onLoadFriends in Set (add) ]]]]]]]"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;-><init>()V

    .line 127
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iput-object v2, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    .line 128
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->name:Ljava/lang/String;

    .line 129
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->id:J

    .line 131
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 133
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    .line 140
    :goto_3c
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$3;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 137
    :cond_44
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    goto :goto_3c

    .line 148
    .end local v0           #entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    .end local v2           #profile:Lcom/lge/sns/profile/ProfileListItem;
    :cond_48
    invoke-static {}, Lcom/lge/sns/profile/ui/ImportFriends;->access$400()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lge/sns/profile/ui/ImportFriends$3$1;

    invoke-direct {v4, p0}, Lcom/lge/sns/profile/ui/ImportFriends$3$1;-><init>(Lcom/lge/sns/profile/ui/ImportFriends$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
