.class Lcom/lge/sns/profile/ui/ProfileDetailView$1;
.super Ljava/lang/Object;
.source "ProfileDetailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileDetailView;
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
    .line 176
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 177
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, profileStatus:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    const v3, 0x7f0800a7

    invoke-virtual {v2, v3}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, statusPublished:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_61

    .line 181
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_3f
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 187
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$100()Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;->this$0:Lcom/lge/sns/profile/ui/ProfileDetailView;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ProfileDetailView;->access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_60
    return-void

    .line 183
    :cond_61
    const v2, 0x7f050088

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3f

    .line 189
    :cond_68
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_60
.end method
