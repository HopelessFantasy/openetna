.class public Lcom/lge/hiddenmenu/mms_test/MmsTest;
.super Landroid/app/ListActivity;
.source "MmsTest.java"


# static fields
.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 58
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 60
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_36

    .line 82
    :goto_a
    :pswitch_a
    if-eqz v0, :cond_2b

    .line 83
    const-string v3, "com.lge.hiddenmenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/mms_test/MmsTest;->startActivity(Landroid/content/Intent;)V

    .line 86
    :cond_2b
    return-void

    .line 65
    :pswitch_2c
    const-string v2, "com.lge.hiddenmenu.mms_test"

    .line 66
    const-string v0, "MmsHiddenMenu"

    .line 67
    goto :goto_a

    .line 73
    :pswitch_31
    const-string v2, "com.lge.hiddenmenu.mms_test"

    .line 74
    const-string v0, "TestBedSetting"

    .line 75
    goto :goto_a

    .line 60
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2c
        :pswitch_a
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f06000e

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/mms_test/MmsTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 30
    iget-object v0, p0, Lcom/lge/hiddenmenu/mms_test/MmsTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/mms_test/MmsTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lge/hiddenmenu/mms_test/MmsTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/mms_test/MmsTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 43
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 44
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/mms_test/MmsTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 47
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 52
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/mms_test/MmsTest;->selectMenuItem(I)V

    .line 53
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 36
    return-void
.end method
