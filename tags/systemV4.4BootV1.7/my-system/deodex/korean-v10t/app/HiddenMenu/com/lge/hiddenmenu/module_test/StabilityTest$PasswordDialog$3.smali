.class Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;
.super Ljava/lang/Object;
.source "StabilityTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const-string v5, ""

    .line 165
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-static {v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->access$300(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, name:Ljava/lang/String;
    const-string v1, "EVE&ADAM&&620LOVE!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 168
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    iget-object v1, v1, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    iget-object v1, v1, Lcom/lge/hiddenmenu/module_test/StabilityTest;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    iget-object v3, v3, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->msg:Landroid/os/Message;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    .line 169
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-static {v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->access$300(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    iget-object v1, v1, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const v2, 0x7f08021b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    :goto_40
    return-void

    .line 174
    :cond_41
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    iget-object v1, v1, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const-string v2, "Incorrect password"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 175
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-static {v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->access$300(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40
.end method
