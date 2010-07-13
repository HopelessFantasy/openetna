.class Lcom/lge/sns/account/ui/SnMenuView$5;
.super Ljava/lang/Object;
.source "SnMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/SnMenuView;->onInitializeCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/SnMenuView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/SnMenuView;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenuView$5;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$5;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/ui/SnMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 211
    .local v0, progress:Landroid/widget/ProgressBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$5;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1c

    .line 213
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$5;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/ui/SnMenuView;->dismissDialog(I)V

    .line 215
    :cond_1c
    return-void
.end method
