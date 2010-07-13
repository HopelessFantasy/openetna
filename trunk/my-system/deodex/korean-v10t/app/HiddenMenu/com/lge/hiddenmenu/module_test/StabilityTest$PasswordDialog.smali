.class Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;
.super Ljava/lang/Object;
.source "StabilityTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/module_test/StabilityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordDialog"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;)V
    .registers 4
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->access$100(Lcom/lge/hiddenmenu/module_test/StabilityTest;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;Lcom/lge/hiddenmenu/module_test/StabilityTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->cleanup()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->dismissDialog(I)V

    .line 192
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 144
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f07008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->mInput:Landroid/widget/EditText;

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const v4, 0x7f08021a

    invoke-virtual {v3, v4}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance v3, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$1;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$1;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const v4, 0x7f08021c

    invoke-virtual {v3, v4}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$2;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$2;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    const v4, 0x7f08021b

    invoke-virtual {v3, v4}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog$3;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 188
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method
