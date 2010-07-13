.class Lcom/lge/sns/profile/ui/ProfileView$5$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/ProfileView$5;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView$5;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$5$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dlg"
    .parameter "index"

    .prologue
    .line 538
    packed-switch p2, :pswitch_data_2a

    .line 546
    :goto_3
    return-void

    .line 540
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$5$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$5;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView$5;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 541
    .local v0, editIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$5$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$5;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$5;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 544
    .end local v0           #editIntent:Landroid/content/Intent;
    :pswitch_21
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$5$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$5;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$5;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$1600(Lcom/lge/sns/profile/ui/ProfileView;Z)V

    goto :goto_3

    .line 538
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_21
    .end packed-switch
.end method
