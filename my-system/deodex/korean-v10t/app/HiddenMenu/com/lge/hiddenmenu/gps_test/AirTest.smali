.class public Lcom/lge/hiddenmenu/gps_test/AirTest;
.super Landroid/app/ListActivity;
.source "AirTest.java"


# static fields
.field private static final AIRTEST_MODES:[Ljava/lang/String; = null

.field public static final GPSON_SMS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.GPSONSMS_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "Gps"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mAirtestMode:I

.field private mgr:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Yes"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "No"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/AirTest;->AIRTEST_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mAirtestMode:I

    return-void
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 100
    return-void
.end method

.method private loadSettings()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method private saveSettings()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->loadSettings()V

    .line 74
    packed-switch p1, :pswitch_data_48

    .line 93
    :goto_b
    return-void

    .line 76
    :pswitch_c
    const-string v2, "Starting GPS Air Test"

    invoke-direct {p0, v2}, Lcom/lge/hiddenmenu/gps_test/AirTest;->alert(Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.GPSONSMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, intent1:Landroid/content/Intent;
    const-string v2, "testNum"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/gps_test/AirTest;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    .line 83
    .end local v1           #intent1:Landroid/content/Intent;
    :pswitch_22
    const-string v2, "com.lge.hiddenmenu"

    const-string v3, "com.lge.hiddenmenu.gps_test.AirtestResultViewer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 88
    :pswitch_2d
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/gps_test/AirTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mgr:Landroid/location/LocationManager;

    .line 89
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mgr:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "enable_airtest"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 90
    const-string v2, "Air Test Function is Enabled!"

    invoke-direct {p0, v2}, Lcom/lge/hiddenmenu/gps_test/AirTest;->alert(Ljava/lang/String;)V

    goto :goto_b

    .line 74
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_c
        :pswitch_22
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f060015

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 41
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/AirTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 54
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 55
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 58
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
    .line 63
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/AirTest;->selectMenuItem(I)V

    .line 64
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 47
    return-void
.end method
