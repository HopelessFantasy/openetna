.class Lcom/lge/homecube/Launcher$RenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3425
    iput-object p1, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3425
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$RenameFolder;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/homecube/Launcher$RenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3425
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$RenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/homecube/Launcher$RenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3425
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$RenameFolder;->changeFolderName()V

    return-void
.end method

.method private changeFolderName()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3461
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3462
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 3464
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v4}, Lcom/lge/homecube/Launcher;->access$1600(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/lge/homecube/FolderInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/lge/homecube/LauncherModel;->findFolderById(J)Lcom/lge/homecube/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/homecube/Launcher;->access$1602(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/FolderInfo;)Lcom/lge/homecube/FolderInfo;

    .line 3465
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$1600(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/FolderInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/lge/homecube/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3466
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3}, Lcom/lge/homecube/Launcher;->access$1600(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/homecube/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;)V

    .line 3468
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$1800(Lcom/lge/homecube/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3469
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 3470
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/lge/homecube/LauncherModel;->loadUserItems(ZLcom/lge/homecube/Launcher;ZZ)V

    .line 3485
    :cond_51
    :goto_51
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$RenameFolder;->cleanup()V

    .line 3486
    return-void

    .line 3472
    :cond_55
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3}, Lcom/lge/homecube/Launcher;->access$1600(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/FolderIcon;

    .line 3474
    .local v0, folderIcon:Lcom/lge/homecube/FolderIcon;
    if-eqz v0, :cond_79

    .line 3475
    invoke-virtual {v0, v1}, Lcom/lge/homecube/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 3476
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2}, Lcom/lge/homecube/Launcher;->getWorkspace()Lcom/lge/homecube/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->requestLayout()V

    .line 3477
    invoke-virtual {v0}, Lcom/lge/homecube/FolderIcon;->requestLayout()V

    goto :goto_51

    .line 3479
    :cond_79
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/homecube/Launcher;->access$1802(Lcom/lge/homecube/Launcher;Z)Z

    .line 3480
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 3481
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/lge/homecube/LauncherModel;->loadUserItems(ZLcom/lge/homecube/Launcher;ZZ)V

    goto :goto_51
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->unlock()V

    .line 3490
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 3491
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/homecube/Launcher;->access$1302(Lcom/lge/homecube/Launcher;Z)Z

    .line 3492
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/homecube/Launcher;->access$1602(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/FolderInfo;)Lcom/lge/homecube/FolderInfo;

    .line 3493
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3429
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2, v5}, Lcom/lge/homecube/Launcher;->access$1302(Lcom/lge/homecube/Launcher;Z)Z

    .line 3430
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3431
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    .line 3433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3434
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3435
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3436
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3437
    new-instance v2, Lcom/lge/homecube/Launcher$RenameFolder$1;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$RenameFolder$1;-><init>(Lcom/lge/homecube/Launcher$RenameFolder;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3442
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$RenameFolder$2;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$RenameFolder$2;-><init>(Lcom/lge/homecube/Launcher$RenameFolder;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3449
    iget-object v2, p0, Lcom/lge/homecube/Launcher$RenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$RenameFolder$3;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$RenameFolder$3;-><init>(Lcom/lge/homecube/Launcher$RenameFolder;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3456
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
