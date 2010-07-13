.class Lcom/lge/sns/profile/ui/ProfileView$5;
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
    .line 530
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$5;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    .line 531
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v1, 0x7f060007

    new-instance v2, Lcom/lge/sns/profile/ui/ProfileView$5$1;

    invoke-direct {v2, p0}, Lcom/lge/sns/profile/ui/ProfileView$5$1;-><init>(Lcom/lge/sns/profile/ui/ProfileView$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 550
    const/4 v1, 0x1

    return v1
.end method
