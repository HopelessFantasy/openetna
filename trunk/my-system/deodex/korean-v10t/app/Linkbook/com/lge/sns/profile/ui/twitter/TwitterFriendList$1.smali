.class Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;
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
    .line 121
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 124
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;

    invoke-virtual {v1, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setKeyword(Ljava/lang/String;)V

    .line 126
    :cond_1d
    return-void
.end method
