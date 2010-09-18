.class public Lcom/lge/hiddenmenu/aging_test/DB_Full_Shake;
.super Landroid/app/ListActivity;
.source "DB_Full_Shake.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1  Test Start!"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DB_Full_Shake;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DB_Full_Shake;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/DB_Full_Shake;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 64
    const-string v1, "Aging DB Test"

    const-string v2, "Test Now~!"

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    .line 65
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 57
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 61
    return-void
.end method
