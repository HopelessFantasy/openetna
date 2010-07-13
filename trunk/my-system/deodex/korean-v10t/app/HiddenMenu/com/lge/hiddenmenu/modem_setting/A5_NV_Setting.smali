.class public Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;
.super Landroid/app/ListActivity;
.source "A5_NV_Setting.java"


# static fields
.field private static final A51_A52:I = 0x3

.field private static final A51_A52_A53:I = 0x7

.field private static final A51_A53:I = 0x5

.field private static final A51_only:I = 0x1

.field private static final EVENT_SET_NV_A5_ALGO_COMPLETED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.A5_ALGO_NV_Setting"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private hphone:Lcom/android/internal/telephony/Phone;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressPanel:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 143
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->displaySetNVResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displaySetNVResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 131
    if-eqz p1, :cond_1c

    .line 132
    const-string v0, "FAIL"

    .line 138
    .local v0, status:Ljava/lang/String;
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mProgressPanel:Landroid/content/DialogInterface;

    .line 141
    return-void

    .line 135
    .end local v0           #status:Ljava/lang/String;
    :cond_1c
    const-string v0, "SUCCESS"

    .restart local v0       #status:Ljava/lang/String;
    goto :goto_4
.end method

.method private selectMenuItem(I)V
    .registers 6
    .parameter "id"

    .prologue
    const-string v3, "HiddenMenu.A5_ALGO_NV_Setting"

    .line 90
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, A5NVmsg:Landroid/os/Message;
    const-string v1, "HiddenMenu.A5_ALGO_NV_Setting"

    const-string v1, "Select A5_ALGO on/off : set NV A5_ALGO (#553)"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    packed-switch p1, :pswitch_data_4e

    .line 125
    :goto_14
    return-void

    .line 96
    :pswitch_15
    const-string v1, "HiddenMenu.A5_ALGO_NV_Setting"

    const-string v1, "A5_1 Only"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_14

    .line 101
    :pswitch_23
    const-string v1, "HiddenMenu.A5_ALGO_NV_Setting"

    const-string v1, "A5_1 & A5_2 On"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_14

    .line 106
    :pswitch_31
    const-string v1, "HiddenMenu.A5_ALGO_NV_Setting"

    const-string v1, "A5_1 & A5_3 On"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_14

    .line 111
    :pswitch_3f
    const-string v1, "HiddenMenu.A5_ALGO_NV_Setting"

    const-string v1, "A5_1 & A5_2 & A5_3 All On"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x7

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_14

    .line 94
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_23
        :pswitch_31
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f060023

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 55
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 58
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 70
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 71
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 74
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
    .line 79
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/A5_NV_Setting;->selectMenuItem(I)V

    .line 80
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 63
    return-void
.end method
