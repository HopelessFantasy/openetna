.class Lcom/lge/sns/profile/ui/ProfileDetailView$2;
.super Ljava/lang/Object;
.source "ProfileDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileDetailView;->addButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileDetailView;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .local v0, editIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    return-void
.end method
