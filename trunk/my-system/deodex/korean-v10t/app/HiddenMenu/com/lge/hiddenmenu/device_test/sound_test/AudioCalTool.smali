.class public Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;
.super Landroid/app/ListActivity;
.source "AudioCalTool.java"


# static fields
.field private static final DIALOG_YES_NO_MESSAGE:I = 0x1

.field private static final DIALOG_YES_NO_MESSAGE_MEM:I = 0x2

.field private static getVolumeValue:I


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 28
    const-string v0, "com.lge.hiddenmenu"

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 26
    sget v0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->getVolumeValue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    sput p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->getVolumeValue:I

    return p0
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    const-string v5, ".device_test.sound_test"

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 69
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 71
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_b4

    .line 110
    :goto_c
    if-eqz v0, :cond_2d

    .line 111
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

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

    .line 112
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->startActivity(Landroid/content/Intent;)V

    .line 114
    :cond_2d
    return-void

    .line 73
    :pswitch_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".device_test.sound_test"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v0, "SoundCalibration"

    .line 75
    goto :goto_c

    .line 78
    :pswitch_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".device_test.sound_test"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v0, "VocoderCalibration"

    .line 80
    goto :goto_c

    .line 83
    :pswitch_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".device_test.sound_test"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v0, "AdvEcCalibration"

    .line 85
    goto :goto_c

    .line 88
    :pswitch_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".device_test.sound_test"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v0, "SubsystemCalibration"

    .line 90
    goto/16 :goto_c

    .line 93
    :pswitch_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".device_test.sound_test"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v0, "MicAmpCalibration"

    .line 95
    goto/16 :goto_c

    .line 98
    :pswitch_a8
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->showDialog(I)V

    goto/16 :goto_c

    .line 103
    :pswitch_ae
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->showDialog(I)V

    goto/16 :goto_c

    .line 71
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_46
        :pswitch_5e
        :pswitch_76
        :pswitch_8f
        :pswitch_a8
        :pswitch_ae
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
    const v0, 0x7f060030

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 41
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v3, 0x7f080139

    const v2, 0x7f080138

    .line 116
    const-string v0, "Junyoub"

    const-string v1, "jkasdfasf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    packed-switch p1, :pswitch_data_58

    .line 173
    const/4 v0, 0x0

    :goto_11
    return-object v0

    .line 119
    :pswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$2;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 146
    :pswitch_35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$4;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$4;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool$3;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 117
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_12
        :pswitch_35
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 54
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 55
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->getListView()Landroid/widget/ListView;

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

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/AudioCalTool;->selectMenuItem(I)V

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
