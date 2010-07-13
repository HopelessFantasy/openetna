.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;
.super Ljava/lang/Object;
.source "TwitterFriendList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->onCreate(Landroid/os/Bundle;)V
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
    .line 131
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, result:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->finish()V

    .line 138
    return-void
.end method
