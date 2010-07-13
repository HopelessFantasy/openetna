.class public Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;
.super Landroid/app/ListActivity;
.source "GpsAppMainMenu.java"


# static fields
.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mgr:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 122
    return-void
.end method

.method private selectMenuItem(I)V
    .registers 12
    .parameter "id"

    .prologue
    const-string v7, "com.lge.hiddenmenu"

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_c0

    .line 115
    :goto_a
    return-void

    .line 68
    :pswitch_b
    const-string v6, "com.lge.hiddenmenu"

    const-string v6, "com.lge.hiddenmenu.gps_test.GpsStartTest"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 73
    :pswitch_16
    const-string v6, "com.lge.hiddenmenu"

    const-string v6, "com.lge.hiddenmenu.gps_test.GpsStartTestSingleFix"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 78
    :pswitch_21
    const-string v6, "location"

    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    iput-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->mgr:Landroid/location/LocationManager;

    if-nez v6, :cond_33

    .line 79
    const-string v6, "Error: getSystemService(LOCATION_SERVICE)"

    invoke-direct {p0, v6}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->alert(Ljava/lang/String;)V

    goto :goto_a

    .line 81
    :cond_33
    iget-object v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->mgr:Landroid/location/LocationManager;

    const-string v7, "gps"

    const-string v8, "delete_aiding_data"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    .line 82
    .local v5, rv:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cold Start Result= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->alert(Ljava/lang/String;)V

    goto :goto_a

    .line 87
    .end local v5           #rv:Z
    :pswitch_5b
    const-string v6, "com.lge.hiddenmenu"

    const-string v6, "com.lge.hiddenmenu.gps_test.GpsSettings"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 92
    :pswitch_66
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ApnSettings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 97
    :pswitch_71
    const-string v2, ""

    .line 98
    .local v2, mcc:Ljava/lang/String;
    const-string v3, ""

    .line 99
    .local v3, mnc:Ljava/lang/String;
    const-string v4, ""

    .line 100
    .local v4, oper:Ljava/lang/String;
    const-string v0, ""

    .line 101
    .local v0, country:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMncCode()Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nCountry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nMCC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nMNC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->alert(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 66
    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_16
        :pswitch_21
        :pswitch_5b
        :pswitch_66
        :pswitch_71
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f060013

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 32
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 45
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 46
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->getListView()Landroid/widget/ListView;

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

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsAppMainMenu;->selectMenuItem(I)V

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
