.class Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f070070

    .line 1657
    if-nez p2, :cond_5a

    .line 1658
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1660
    .local v0, bResult:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1661
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0700c9

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1665
    :goto_2a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1683
    .end local v0           #bResult:Ljava/lang/Boolean;
    :cond_46
    :goto_46
    return-void

    .line 1663
    .restart local v0       #bResult:Ljava/lang/Boolean;
    :cond_47
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0700cc

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2a

    .line 1670
    .end local v0           #bResult:Ljava/lang/Boolean;
    :cond_5a
    const/4 v1, 0x1

    if-ne v1, p2, :cond_46

    .line 1671
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1672
    .restart local v0       #bResult:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1673
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0700ca

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1678
    :goto_89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_46

    .line 1675
    :cond_a6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0700cd

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_89
.end method
