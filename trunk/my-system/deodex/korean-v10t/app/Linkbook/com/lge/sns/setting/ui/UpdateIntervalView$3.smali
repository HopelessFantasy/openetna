.class Lcom/lge/sns/setting/ui/UpdateIntervalView$3;
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
    .line 204
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$3;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$3;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->showDialog(I)V

    .line 206
    return-void
.end method
