.class Lcom/lge/sns/profile/ui/ProfileView$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 459
    .local v3, tag:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    move-object v2, v0

    .line 460
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 461
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v4, v1}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method
