.class Lcom/lge/sns/feed/ui/PhotoPostedView$2;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;->addMediaFileView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, tag:Ljava/lang/Object;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 302
    const v2, 0x7f060005

    new-instance v3, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;

    invoke-direct {v3, p0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;-><init>(Lcom/lge/sns/feed/ui/PhotoPostedView$2;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 319
    const/4 v2, 0x1

    return v2
.end method
