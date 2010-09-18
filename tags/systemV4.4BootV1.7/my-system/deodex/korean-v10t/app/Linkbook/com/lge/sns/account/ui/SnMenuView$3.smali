.class Lcom/lge/sns/account/ui/SnMenuView$3;
.super Ljava/lang/Object;
.source "SnMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/SnMenuView;->onAccountRemoved(Lcom/lge/sns/account/Account;)V
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
    .line 188
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenuView$3;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenuView$3;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    invoke-virtual {v0}, Lcom/lge/sns/account/ui/SnMenuView;->finish()V

    .line 190
    return-void
.end method
