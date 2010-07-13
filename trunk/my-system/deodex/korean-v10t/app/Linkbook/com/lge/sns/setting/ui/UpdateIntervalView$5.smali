.class Lcom/lge/sns/setting/ui/UpdateIntervalView$5;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$5;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$5;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-virtual {v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->finish()V

    .line 247
    return-void
.end method
