.class Lcom/lge/sns/account/ui/AccountRemoveListView$2;
.super Ljava/lang/Object;
.source "AccountRemoveListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountRemoveListView;->remove()V
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
    .line 131
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$2;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$2;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountRemoveListView;->titleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    return-void
.end method
