.class public Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;
.super Landroid/app/ListActivity;
.source "Arm9LogSetting.java"


# static fields
.field private static final EVENT_SET_NVDB_UPDATE_COMPLETED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.Arm9LogSetting"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->phone:Lcom/android/internal/telephony/Phone;

    .line 102
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 77
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 79
    .local v3, packageName2:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 82
    .local v2, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_42

    .line 95
    :goto_12
    if-eqz v0, :cond_33

    .line 96
    const-string v4, "com.lge.hiddenmenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->startActivity(Landroid/content/Intent;)V

    .line 99
    :cond_33
    return-void

    .line 84
    :pswitch_34
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setArm9_NVDB_Update(ILandroid/os/Message;)I

    goto :goto_12

    .line 88
    :pswitch_3b
    iget-object v4, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setArm9_NVDB_Update(ILandroid/os/Message;)I

    goto :goto_12

    .line 82
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f060026

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->phone:Lcom/android/internal/telephony/Phone;

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 62
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 63
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 66
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
    .line 71
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/Arm9LogSetting;->selectMenuItem(I)V

    .line 72
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 55
    return-void
.end method
