.class Lcom/lge/sns/profile/ui/ProfileView$2;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 466
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 469
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/lge/sns/media/MediaFile;

    if-eqz v2, :cond_2b

    .line 470
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    const v2, 0x7f060005

    new-instance v3, Lcom/lge/sns/profile/ui/ProfileView$2$1;

    invoke-direct {v3, p0, v1}, Lcom/lge/sns/profile/ui/ProfileView$2$1;-><init>(Lcom/lge/sns/profile/ui/ProfileView$2;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 490
    const/4 v2, 0x1

    .line 492
    .end local v0           #dlg:Landroid/app/AlertDialog$Builder;
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method
