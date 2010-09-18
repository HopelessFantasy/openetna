.class public Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;
.super Landroid/app/ListActivity;
.source "HSDPACatSetting.java"


# static fields
.field private static final Cat12:I = 0xc

.field private static final Cat6:I = 0x6

.field private static final Cat8:I = 0x8

.field private static final EVENT_SET_NV_HSDPA_CAT_COMPLETED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.HSDPACatSetting"

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

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 136
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->displaySetNVResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displaySetNVResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 124
    if-eqz p1, :cond_1c

    .line 125
    const-string v0, "FAIL"

    .line 131
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

    iput-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mProgressPanel:Landroid/content/DialogInterface;

    .line 134
    return-void

    .line 128
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
    const-string v3, "HiddenMenu.HSDPACatSetting"

    .line 88
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, HSDPACatmsg:Landroid/os/Message;
    const-string v1, "HiddenMenu.HSDPACatSetting"

    const-string v1, "Select NV_HSDPA_CAT : set NV_HSDPA_CAT (#4118)"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    packed-switch p1, :pswitch_data_42

    .line 118
    :goto_14
    return-void

    .line 94
    :pswitch_15
    const-string v1, "HiddenMenu.HSDPACatSetting"

    const-string v1, "HSDPA Cat. 6"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_HSDPACat(ILandroid/os/Message;)I

    goto :goto_14

    .line 99
    :pswitch_23
    const-string v1, "HiddenMenu.HSDPACatSetting"

    const-string v1, "HSDPA Cat. 8"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->hphone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_HSDPACat(ILandroid/os/Message;)I

    goto :goto_14

    .line 104
    :pswitch_32
    const-string v1, "HiddenMenu.HSDPACatSetting"

    const-string v1, "HSDPA Cat. 12"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->hphone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xc

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setNV_HSDPACat(ILandroid/os/Message;)I

    goto :goto_14

    .line 92
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_15
        :pswitch_23
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f060024

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 54
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 69
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 70
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 73
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
    .line 78
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/HSDPACatSetting;->selectMenuItem(I)V

    .line 79
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 62
    return-void
.end method
