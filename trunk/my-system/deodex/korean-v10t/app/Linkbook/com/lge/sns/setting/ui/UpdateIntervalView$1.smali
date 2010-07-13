.class Lcom/lge/sns/setting/ui/UpdateIntervalView$1;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 186
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->chk_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    move v0, v1

    .line 189
    .local v0, enable:Z
    :goto_c
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v1, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 192
    return-void

    .line 188
    .end local v0           #enable:Z
    :cond_22
    const/4 v1, 0x0

    move v0, v1

    goto :goto_c
.end method
