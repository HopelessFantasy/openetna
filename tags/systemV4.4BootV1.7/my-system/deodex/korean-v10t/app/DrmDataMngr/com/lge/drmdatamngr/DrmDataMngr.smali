.class public Lcom/lge/drmdatamngr/DrmDataMngr;
.super Landroid/app/ListActivity;
.source "DrmDataMngr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmDataMngr"


# instance fields
.field private mTopMenu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Clean Device Network"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Clean RI Context"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Clean All Licenses"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/drmdatamngr/DrmDataMngr;->mTopMenu:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/lge/drmdatamngr/DrmDataMngr;->mTopMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lge/drmdatamngr/DrmDataMngr;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 32
    packed-switch p3, :pswitch_data_26

    .line 54
    :goto_3
    return-void

    .line 36
    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->manageDatabase(I)I

    .line 37
    const-string v0, "Device Network Deleted!"

    invoke-virtual {p0, v0}, Lcom/lge/drmdatamngr/DrmDataMngr;->showMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :pswitch_e
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->manageDatabase(I)I

    .line 43
    const-string v0, "RI Context Deleted!"

    invoke-virtual {p0, v0}, Lcom/lge/drmdatamngr/DrmDataMngr;->showMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 48
    :pswitch_18
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->manageDatabase(I)I

    .line 49
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->manageDatabase(I)I

    .line 50
    const-string v0, "All Licenses Deleted!"

    invoke-virtual {p0, v0}, Lcom/lge/drmdatamngr/DrmDataMngr;->showMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_4
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "sMessage"

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "DrmDataMngr"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    return-void
.end method
