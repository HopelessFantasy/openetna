.class Lcom/lge/sns/profile/ui/FriendsList$8;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->onProfileAdded(Lcom/lge/sns/profile/Profile;)V
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
    .line 1055
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v4, " ==== onProfileAdded  ==== "

    const-string v3, "FriendsList"

    .line 1057
    const-string v1, "FriendsList"

    const-string v1, " ==== onProfileAdded  ==== "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {}, Lcom/lge/sns/profile/ui/FriendsList;->access$1510()I

    .line 1060
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$600(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1061
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$200(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 1064
    :cond_1b
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$1600(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1065
    const-string v1, "FriendsList"

    const-string v1, " ==== mIsSearch  ==== "

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1700(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1076
    :goto_34
    return-void

    .line 1071
    :cond_35
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1800(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)I

    move-result v0

    .line 1072
    .local v0, index:I
    const-string v1, "FriendsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ==== onProfileAdded  ==== "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1900(Lcom/lge/sns/profile/ui/FriendsList;ILcom/lge/sns/profile/ProfileListItem;)V

    .line 1075
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList$8;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$300(Lcom/lge/sns/profile/ui/FriendsList;)V

    goto :goto_34
.end method
