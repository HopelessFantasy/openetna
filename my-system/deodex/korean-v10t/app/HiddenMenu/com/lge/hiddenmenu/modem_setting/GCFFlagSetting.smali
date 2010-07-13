.class public Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;
.super Landroid/app/ListActivity;
.source "GCFFlagSetting.java"


# static fields
.field private static final EVENT_SET_NV_GCFFLAG_COMPLETED:I = 0x64

.field private static final GCF_Off:I = 0x0

.field private static final GCF_On:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.GCFFlagSetting"

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

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 126
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->displaySetNVResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displaySetNVResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 114
    if-eqz p1, :cond_1c

    .line 115
    const-string v0, "FAIL"

    .line 121
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

    iput-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mProgressPanel:Landroid/content/DialogInterface;

    .line 124
    return-void

    .line 118
    .end local v0           #status:Ljava/lang/String;
    :cond_1c
    const-string v0, "SUCCESS"

    .restart local v0       #status:Ljava/lang/String;
    goto :goto_4
.end method

.method private selectMenuItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    const-string v6, "HiddenMenu.GCFFlagSetting"

    .line 81
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 83
    .local v1, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, packageName2:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, GCFmsg:Landroid/os/Message;
    const-string v4, "HiddenMenu.GCFFlagSetting"

    const-string v4, "Select GCF Flag on/off : set NV GCFFlag"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    packed-switch p1, :pswitch_data_5a

    .line 104
    :goto_1b
    if-eqz v1, :cond_3c

    .line 105
    const-string v4, "com.lge.hiddenmenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->startActivity(Landroid/content/Intent;)V

    .line 108
    :cond_3c
    return-void

    .line 91
    :pswitch_3d
    const-string v4, "HiddenMenu.GCFFlagSetting"

    const-string v4, "GCF flag Off"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/Phone;->setNV_GCFFlag(ILandroid/os/Message;)I

    goto :goto_1b

    .line 96
    :pswitch_4b
    const-string v4, "HiddenMenu.GCFFlagSetting"

    const-string v4, "GCF flag On"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->hphone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/Phone;->setNV_GCFFlag(ILandroid/os/Message;)I

    goto :goto_1b

    .line 89
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_4b
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f060025

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 53
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->hphone:Lcom/android/internal/telephony/Phone;

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 68
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 69
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 72
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
    .line 77
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->selectMenuItem(I)V

    .line 78
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
