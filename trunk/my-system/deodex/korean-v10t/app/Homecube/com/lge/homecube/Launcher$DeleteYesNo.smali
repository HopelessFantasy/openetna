.class Lcom/lge/homecube/Launcher$DeleteYesNo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteYesNo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4533
    iput-object p1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4533
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$DeleteYesNo;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/lge/homecube/Launcher$DeleteYesNo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4533
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$DeleteYesNo;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->removeDialog(I)V

    .line 4569
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 4537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4539
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4540
    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4541
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    const v2, 0x7f090038

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v5}, Lcom/lge/homecube/Launcher;->access$4500(Lcom/lge/homecube/Launcher;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lge/homecube/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4543
    new-instance v1, Lcom/lge/homecube/Launcher$DeleteYesNo$1;

    invoke-direct {v1, p0}, Lcom/lge/homecube/Launcher$DeleteYesNo$1;-><init>(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4548
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/homecube/Launcher$DeleteYesNo$2;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$DeleteYesNo$2;-><init>(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4555
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/homecube/Launcher$DeleteYesNo$3;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$DeleteYesNo$3;-><init>(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
