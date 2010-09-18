.class Lcom/lge/homecube/Launcher$CharThemeSelector;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharThemeSelector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4633
    iput-object p1, p0, Lcom/lge/homecube/Launcher$CharThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4633
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$CharThemeSelector;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/lge/homecube/Launcher$CharThemeSelector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4633
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$CharThemeSelector;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 4685
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CharThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 4687
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 4637
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$CharThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4639
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4640
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4641
    new-instance v1, Lcom/lge/homecube/Launcher$CharThemeSelector$1;

    invoke-direct {v1, p0}, Lcom/lge/homecube/Launcher$CharThemeSelector$1;-><init>(Lcom/lge/homecube/Launcher$CharThemeSelector;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4646
    const v1, 0x7f080002

    new-instance v2, Lcom/lge/homecube/Launcher$CharThemeSelector$2;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$CharThemeSelector$2;-><init>(Lcom/lge/homecube/Launcher$CharThemeSelector;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
