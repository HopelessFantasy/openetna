.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

.field final synthetic val$profile:Lcom/lge/sns/profile/FriendEntry;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Lcom/lge/sns/profile/FriendEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;->val$profile:Lcom/lge/sns/profile/FriendEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;->val$profile:Lcom/lge/sns/profile/FriendEntry;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;->add(Ljava/lang/Object;)V

    .line 407
    return-void
.end method
