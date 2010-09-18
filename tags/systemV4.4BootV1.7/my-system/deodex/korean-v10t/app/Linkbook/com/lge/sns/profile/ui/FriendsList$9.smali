.class Lcom/lge/sns/profile/ui/FriendsList$9;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;

.field final synthetic val$profile:Lcom/lge/sns/profile/Profile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1089
    const-string v1, "FriendsList"

    const-string v2, " ==== onProfileRemoved  ==== "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {}, Lcom/lge/sns/profile/ui/FriendsList;->access$1508()I

    .line 1091
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$600(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1092
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$200(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 1094
    :cond_17
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$1600(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1095
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1700(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1108
    :cond_29
    :goto_29
    return-void

    .line 1100
    :cond_2a
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$2000(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    move-result-object v0

    .line 1101
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    if-eqz v0, :cond_29

    .line 1105
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$9;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$300(Lcom/lge/sns/profile/ui/FriendsList;)V

    goto :goto_29
.end method
