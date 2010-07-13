.class Lcom/lge/sns/account/ui/AccountListView$4;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onCreate(Landroid/os/Bundle;)V
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
    .line 207
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$4;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView$4;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v0}, Lcom/lge/sns/account/ui/AccountListView;->finish()V

    .line 209
    return-void
.end method
