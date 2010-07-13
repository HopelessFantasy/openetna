.class Lcom/lge/sns/account/ui/AccountCredentialView$1;
.super Ljava/lang/Object;
.source "AccountCredentialView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountCredentialView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountCredentialView;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$1;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iput-object p2, p0, Lcom/lge/sns/account/ui/AccountCredentialView$1;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView$1;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView$1;->val$remember:Landroid/widget/CheckBox;

    if-eqz p2, :cond_10

    const v1, 0x7f02004b

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 122
    return-void

    .line 120
    :cond_10
    const v1, 0x7f02004c

    goto :goto_c
.end method
