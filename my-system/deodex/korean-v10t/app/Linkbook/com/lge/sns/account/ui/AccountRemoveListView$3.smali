.class Lcom/lge/sns/account/ui/AccountRemoveListView$3;
.super Ljava/lang/Object;
.source "AccountRemoveListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountRemoveListView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountRemoveListView;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$3;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$3;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-static {v0}, Lcom/lge/sns/account/ui/AccountRemoveListView;->access$000(Lcom/lge/sns/account/ui/AccountRemoveListView;)V

    .line 162
    return-void
.end method
