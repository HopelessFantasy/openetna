.class Lcom/lge/sns/profile/ui/ImportFriends$7;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onProfileAdded(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;

.field final synthetic val$profile:Lcom/lge/sns/profile/Profile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/Profile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1200(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ProfileListItem;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v0, v1, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1300(Lcom/lge/sns/profile/ui/ImportFriends;ILcom/lge/sns/profile/ProfileListItem;)V

    .line 590
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$7;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$300(Lcom/lge/sns/profile/ui/ImportFriends;)V

    .line 591
    return-void
.end method
