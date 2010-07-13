.class Lcom/android/calendar/EditEvent$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 645
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1700(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, 0x1f4

    .line 624
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1700(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_76

    .line 625
    :cond_34
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1700(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_77

    .line 626
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1700(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/android/calendar/EditEvent;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_51
    :goto_51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/calendar/EditEvent;->access$2200()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditEvent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/EditEvent$1$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/EditEvent$1$1;-><init>(Lcom/android/calendar/EditEvent$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 641
    :cond_76
    return-void

    .line 627
    :cond_77
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_95

    .line 628
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/android/calendar/EditEvent;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_51

    .line 629
    :cond_95
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_51

    .line 630
    iget-object v0, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/android/calendar/EditEvent;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_51
.end method
