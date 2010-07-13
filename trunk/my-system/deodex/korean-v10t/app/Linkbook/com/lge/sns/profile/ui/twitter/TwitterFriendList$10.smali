.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onFirendEntryLoadStarted(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

.field final synthetic val$hasNext:Z

.field final synthetic val$hasPrev:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->val$hasPrev:Z

    iput-boolean p3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->val$hasNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->val$hasPrev:Z

    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;->val$hasNext:Z

    invoke-static {v0, v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;ZZ)V

    .line 399
    return-void
.end method
