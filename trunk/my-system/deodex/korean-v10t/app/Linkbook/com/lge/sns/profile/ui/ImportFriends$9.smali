.class Lcom/lge/sns/profile/ui/ImportFriends$9;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;

.field final synthetic val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

.field final synthetic val$profile:Lcom/lge/sns/profile/Profile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/Profile;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    iput-object p3, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->val$entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->val$profile:Lcom/lge/sns/profile/Profile;

    invoke-static {v0, v1, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1400(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V

    .line 632
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$9;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$300(Lcom/lge/sns/profile/ui/ImportFriends;)V

    .line 633
    return-void
.end method
