.class public Lcom/lge/hiddenmenu/wlan_service/WlanService;
.super Landroid/app/ListActivity;
.source "WlanService.java"


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
    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 55
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 57
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_50

    .line 111
    :goto_a
    if-eqz v0, :cond_2b

    .line 112
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

    .line 113
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/wlan_service/WlanService;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_2b
    return-void

    .line 60
    :pswitch_2c
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 61
    const-string v0, "Net_Info"

    .line 63
    goto :goto_a

    .line 67
    :pswitch_31
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 68
    const-string v0, "Available_Net"

    .line 70
    goto :goto_a

    .line 73
    :pswitch_36
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 74
    const-string v0, "Saved_Net"

    .line 75
    goto :goto_a

    .line 79
    :pswitch_3b
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 80
    const-string v0, "Tx_Rx_button"

    .line 83
    goto :goto_a

    .line 87
    :pswitch_40
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 88
    const-string v0, "FTM_Test"

    .line 90
    goto :goto_a

    .line 94
    :pswitch_45
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 95
    const-string v0, "WMM_PS"

    .line 97
    goto :goto_a

    .line 101
    :pswitch_4a
    const-string v2, "com.lge.hiddenmenu.wlan_service"

    .line 102
    const-string v0, "IPerf_Test"

    .line 104
    goto :goto_a

    .line 57
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f060017

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WlanService;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 29
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WlanService;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/WlanService;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WlanService;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wlan_service/WlanService;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 40
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 41
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wlan_service/WlanService;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 44
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
    .line 49
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/wlan_service/WlanService;->selectMenuItem(I)V

    .line 50
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 34
    return-void
.end method
