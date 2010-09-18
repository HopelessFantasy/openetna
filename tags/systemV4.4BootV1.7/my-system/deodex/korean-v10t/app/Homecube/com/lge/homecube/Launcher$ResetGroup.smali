.class Lcom/lge/homecube/Launcher$ResetGroup;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4461
    iput-object p1, p0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4461
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$ResetGroup;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/lge/homecube/Launcher$ResetGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4461
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$ResetGroup;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 4496
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 4465
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4467
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4468
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4469
    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4470
    new-instance v1, Lcom/lge/homecube/Launcher$ResetGroup$1;

    invoke-direct {v1, p0}, Lcom/lge/homecube/Launcher$ResetGroup$1;-><init>(Lcom/lge/homecube/Launcher$ResetGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4475
    iget-object v1, p0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/homecube/Launcher$ResetGroup$2;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$ResetGroup$2;-><init>(Lcom/lge/homecube/Launcher$ResetGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4482
    iget-object v1, p0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/homecube/Launcher$ResetGroup$3;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$ResetGroup$3;-><init>(Lcom/lge/homecube/Launcher$ResetGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4491
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
