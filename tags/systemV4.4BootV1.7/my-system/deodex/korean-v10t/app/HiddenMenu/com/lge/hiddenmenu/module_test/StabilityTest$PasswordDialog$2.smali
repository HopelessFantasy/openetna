.class Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$2;
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
    .line 158
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$2;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$2;->this$1:Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    invoke-static {v0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->access$200(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V

    .line 160
    return-void
.end method
