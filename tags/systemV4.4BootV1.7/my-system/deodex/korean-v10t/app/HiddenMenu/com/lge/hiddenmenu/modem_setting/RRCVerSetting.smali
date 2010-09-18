.class public Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;
.super Landroid/app/ListActivity;
.source "RRCVerSetting.java"


# static fields
.field private static final EVENT_SET_NV_RRCVER_COMPLETED:I = 0x64

.field private static final R5:I = 0x1

.field private static final R6:I = 0x2

.field private static final R99:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.RRC Version Setting"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private RVphone:Lcom/android/internal/telephony/Phone;

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

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->RVphone:Lcom/android/internal/telephony/Phone;

    .line 139
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->displaySetNVResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displaySetNVResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 127
    if-eqz p1, :cond_1c

    .line 128
    const-string v0, "FAIL"

    .line 134
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

    iput-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mProgressPanel:Landroid/content/DialogInterface;

    .line 137
    return-void

    .line 131
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
    const-string v3, "HiddenMenu.RRC Version Setting"

    .line 91
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, RRCVermsg:Landroid/os/Message;
    const-string v1, "HiddenMenu.RRC Version Setting"

    const-string v1, "Select RRC Version : setNV RRC Version"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    packed-switch p1, :pswitch_data_40

    .line 121
    :goto_14
    return-void

    .line 97
    :pswitch_15
    const-string v1, "HiddenMenu.RRC Version Setting"

    const-string v1, "Select RRC Version : R99"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->RVphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_RRCVer(ILandroid/os/Message;)I

    goto :goto_14

    .line 102
    :pswitch_23
    const-string v1, "HiddenMenu.RRC Version Setting"

    const-string v1, "Select RRC Version : R5"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->RVphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_RRCVer(ILandroid/os/Message;)I

    goto :goto_14

    .line 107
    :pswitch_31
    const-string v1, "HiddenMenu.RRC Version Setting"

    const-string v1, "Select RRC Version : R6"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->RVphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_RRCVer(ILandroid/os/Message;)I

    goto :goto_14

    .line 95
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_15
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f060021

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 56
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const-string v0, "HiddenMenu.RRC Version Setting"

    const-string v1, "Select RRC Version : setNV RRC Version Create"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->RVphone:Lcom/android/internal/telephony/Phone;

    .line 60
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 72
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 73
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 76
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
    .line 81
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/RRCVerSetting;->selectMenuItem(I)V

    .line 82
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 65
    return-void
.end method
