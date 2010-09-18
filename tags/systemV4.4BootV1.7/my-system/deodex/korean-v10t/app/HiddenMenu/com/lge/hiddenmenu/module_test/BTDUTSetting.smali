.class public Lcom/lge/hiddenmenu/module_test/BTDUTSetting;
.super Landroid/app/ListActivity;
.source "BTDUTSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BT_DUT_SETTING"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mManager:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 12
    .parameter "id"

    .prologue
    const v8, 0x7f02003a

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 66
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, packageName2:Ljava/lang/String;
    move-object v2, p0

    .line 68
    .local v2, mContext:Landroid/content/Context;
    const/4 v5, 0x0

    .line 69
    .local v5, result:Z
    const/4 v6, 0x0

    .line 72
    .local v6, ret:I
    const-string v7, "bluetooth"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mManager:Landroid/bluetooth/BluetoothDevice;

    .line 73
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 75
    .local v4, res:Ljava/lang/String;
    packed-switch p1, :pswitch_data_88

    .line 110
    :goto_1f
    if-eqz v0, :cond_40

    .line 111
    const-string v7, "com.lge.hiddenmenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->startActivity(Landroid/content/Intent;)V

    .line 114
    :cond_40
    return-void

    .line 77
    :pswitch_41
    iget-object v7, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->DUTOn()I

    move-result v6

    .line 79
    if-gez v6, :cond_5f

    .line 80
    const/4 v5, 0x0

    .line 84
    :goto_4a
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v5, :cond_61

    const-string v8, "Success BT DUT ON"

    :goto_57
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1f

    .line 82
    :cond_5f
    const/4 v5, 0x1

    goto :goto_4a

    .line 84
    :cond_61
    const-string v8, "Fail BT DUT ON"

    goto :goto_57

    .line 92
    :pswitch_64
    iget-object v7, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->DUTOff()I

    move-result v6

    .line 94
    if-gez v6, :cond_82

    .line 95
    const/4 v5, 0x0

    .line 99
    :goto_6d
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v5, :cond_84

    const-string v8, "Success BT DUT OFF"

    :goto_7a
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1f

    .line 97
    :cond_82
    const/4 v5, 0x1

    goto :goto_6d

    .line 99
    :cond_84
    const-string v8, "Fail BT DUT OFF"

    goto :goto_7a

    .line 75
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_41
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f060028

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 38
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 51
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 52
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 55
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
    .line 60
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/module_test/BTDUTSetting;->selectMenuItem(I)V

    .line 61
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 44
    return-void
.end method
