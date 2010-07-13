.class Lcom/android/launcher/Launcher$RenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1832
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher$RenameFolder;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher/Launcher$RenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/launcher/Launcher$RenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher/Launcher$RenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/launcher/Launcher$RenameFolder;->changeFolderName()V

    return-void
.end method

.method private changeFolderName()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1876
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1879
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v4}, Lcom/android/launcher/Launcher;->access$1000(Lcom/android/launcher/Launcher;)Lcom/android/launcher/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher/FolderInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher/LauncherModel;->findFolderById(J)Lcom/android/launcher/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher/Launcher;->access$1002(Lcom/android/launcher/Launcher;Lcom/android/launcher/FolderInfo;)Lcom/android/launcher/FolderInfo;

    .line 1880
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$1000(Lcom/android/launcher/Launcher;)Lcom/android/launcher/FolderInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/android/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1881
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher/Launcher;->access$1000(Lcom/android/launcher/Launcher;)Lcom/android/launcher/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V

    .line 1883
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$1200(Lcom/android/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1884
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$1300(Lcom/android/launcher/Launcher;)Landroid/widget/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 1885
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/android/launcher/LauncherModel;->loadUserItems(ZLcom/android/launcher/Launcher;ZZ)V

    .line 1899
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/android/launcher/Launcher$RenameFolder;->cleanup()V

    .line 1900
    return-void

    .line 1887
    :cond_57
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher/Launcher;->access$1000(Lcom/android/launcher/Launcher;)Lcom/android/launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/FolderIcon;

    .line 1889
    .local v0, folderIcon:Lcom/android/launcher/FolderIcon;
    if-eqz v0, :cond_78

    .line 1890
    invoke-virtual {v0, v1}, Lcom/android/launcher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getWorkspace()Lcom/android/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->requestLayout()V

    goto :goto_53

    .line 1893
    :cond_78
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher/Launcher;->access$1202(Lcom/android/launcher/Launcher;Z)Z

    .line 1894
    iget-object v2, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$1300(Lcom/android/launcher/Launcher;)Landroid/widget/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 1895
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/android/launcher/LauncherModel;->loadUserItems(ZLcom/android/launcher/Launcher;ZZ)V

    goto :goto_53
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->unlock()V

    .line 1904
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->dismissDialog(I)V

    .line 1905
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/Launcher;->access$602(Lcom/android/launcher/Launcher;Z)Z

    .line 1906
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/Launcher;->access$1002(Lcom/android/launcher/Launcher;Lcom/android/launcher/FolderInfo;)Lcom/android/launcher/FolderInfo;

    .line 1907
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1836
    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v3, v6}, Lcom/android/launcher/Launcher;->access$602(Lcom/android/launcher/Launcher;Z)Z

    .line 1837
    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1838
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    .line 1840
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1842
    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1843
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1844
    new-instance v3, Lcom/android/launcher/Launcher$RenameFolder$1;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$RenameFolder$1;-><init>(Lcom/android/launcher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1849
    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/Launcher$RenameFolder$2;

    invoke-direct {v4, p0}, Lcom/android/launcher/Launcher$RenameFolder$2;-><init>(Lcom/android/launcher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1856
    iget-object v3, p0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/Launcher$RenameFolder$3;

    invoke-direct {v4, p0}, Lcom/android/launcher/Launcher$RenameFolder$3;-><init>(Lcom/android/launcher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1863
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1865
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1866
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/launcher/Launcher$RenameFolder$4;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$RenameFolder$4;-><init>(Lcom/android/launcher/Launcher$RenameFolder;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1872
    return-object v1
.end method
