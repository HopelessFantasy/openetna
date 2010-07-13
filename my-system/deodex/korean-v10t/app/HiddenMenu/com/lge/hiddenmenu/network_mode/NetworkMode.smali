.class public Lcom/lge/hiddenmenu/network_mode/NetworkMode;
.super Landroid/app/ListActivity;
.source "NetworkMode.java"


# static fields
.field private static final EVENT_NMBAND_SELECTION_DONE:I = 0x64

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private NMPhone:Lcom/android/internal/telephony/Phone;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressPanel:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    new-instance v0, Lcom/lge/hiddenmenu/network_mode/NetworkMode$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/network_mode/NetworkMode$1;-><init>(Lcom/lge/hiddenmenu/network_mode/NetworkMode;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/network_mode/NetworkMode;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 161
    if-eqz p1, :cond_1c

    .line 162
    const-string v0, "FAIL"

    .line 168
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

    iput-object v1, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 171
    return-void

    .line 165
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
    const/16 v5, 0x64

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 84
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, packageName2:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 90
    .local v2, nmmsg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_7a

    .line 143
    :goto_12
    if-eqz v0, :cond_33

    .line 144
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

    .line 145
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->startActivity(Landroid/content/Intent;)V

    .line 147
    :cond_33
    return-void

    .line 94
    :pswitch_34
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 99
    :pswitch_3b
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x68

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 104
    :pswitch_43
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x69

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 109
    :pswitch_4b
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x6a

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 114
    :pswitch_53
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x6b

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 119
    :pswitch_5b
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 124
    :pswitch_61
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x65

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 129
    :pswitch_69
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x66

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 134
    :pswitch_71
    iget-object v4, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x67

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    goto :goto_12

    .line 90
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5b
        :pswitch_61
        :pswitch_69
        :pswitch_71
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f060019

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 52
    iget-object v0, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->NMPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 69
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 70
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->getListView()Landroid/widget/ListView;

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

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/network_mode/NetworkMode;->selectMenuItem(I)V

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
