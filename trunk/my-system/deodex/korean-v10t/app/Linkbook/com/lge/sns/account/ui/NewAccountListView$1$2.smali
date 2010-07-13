.class Lcom/lge/sns/account/ui/NewAccountListView$1$2;
.super Ljava/lang/Object;
.source "NewAccountListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/NewAccountListView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/NewAccountListView$1;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$2;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/sns/account/ui/NewAccountListView$1$2;->this$1:Lcom/lge/sns/account/ui/NewAccountListView$1;

    iget-object v0, v0, Lcom/lge/sns/account/ui/NewAccountListView$1;->this$0:Lcom/lge/sns/account/ui/NewAccountListView;

    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method
