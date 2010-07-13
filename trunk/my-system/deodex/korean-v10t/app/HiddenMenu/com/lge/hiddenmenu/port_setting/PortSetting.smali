.class public Lcom/lge/hiddenmenu/port_setting/PortSetting;
.super Landroid/app/ListActivity;
.source "PortSetting.java"


# static fields
.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 60
    .local v0, className:Ljava/lang/String;
    const-string v2, "com.lge.hiddenmenu.port_setting"

    .line 62
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_42

    .line 81
    :goto_b
    if-eqz v0, :cond_2c

    .line 82
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

    .line 83
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_2c
    return-void

    .line 64
    :pswitch_2d
    const-string v0, "DiagSetting"

    .line 65
    goto :goto_b

    .line 68
    :pswitch_30
    const-string v3, "Completed!"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->SetUSBSwitching()V

    goto :goto_b

    .line 73
    :pswitch_3e
    const-string v0, "DataSetting"

    .line 74
    goto :goto_b

    .line 62
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_30
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public SetUSBSwitching()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f060006

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/port_setting/PortSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 32
    iget-object v0, p0, Lcom/lge/hiddenmenu/port_setting/PortSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lge/hiddenmenu/port_setting/PortSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 45
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 46
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 49
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
    .line 54
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/port_setting/PortSetting;->selectMenuItem(I)V

    .line 55
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 38
    return-void
.end method
