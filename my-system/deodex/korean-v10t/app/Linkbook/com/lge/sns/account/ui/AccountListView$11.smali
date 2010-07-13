.class Lcom/lge/sns/account/ui/AccountListView$11;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView;)V
    .registers 2
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$11;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView$11;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-static {v0}, Lcom/lge/sns/account/ui/AccountListView;->access$000(Lcom/lge/sns/account/ui/AccountListView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 497
    return-void
.end method
