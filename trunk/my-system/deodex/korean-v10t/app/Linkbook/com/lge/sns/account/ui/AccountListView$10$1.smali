.class Lcom/lge/sns/account/ui/AccountListView$10$1;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/account/ui/AccountListView$10;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView$10;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$10$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView$10$1;->this$1:Lcom/lge/sns/account/ui/AccountListView$10;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountListView$10;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-static {v0}, Lcom/lge/sns/account/ui/AccountListView;->access$000(Lcom/lge/sns/account/ui/AccountListView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 456
    return-void
.end method
