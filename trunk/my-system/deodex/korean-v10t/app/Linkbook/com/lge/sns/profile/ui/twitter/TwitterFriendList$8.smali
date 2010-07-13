.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onFriendEntryLoadError(Ljava/lang/Exception;)V
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
    .line 377
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->dismissDialog(I)V

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 382
    return-void
.end method
