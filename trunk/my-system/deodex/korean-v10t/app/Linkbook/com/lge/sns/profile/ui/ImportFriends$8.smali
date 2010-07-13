.class Lcom/lge/sns/profile/ui/ImportFriends$8;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;

.field final synthetic val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$8;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ImportFriends$8;->val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$8;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends$8;->val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$8;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$300(Lcom/lge/sns/profile/ui/ImportFriends;)V

    .line 611
    return-void
.end method
