.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$9;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onFirendEntryLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$9;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->dismissDialog(I)V

    .line 391
    return-void
.end method
