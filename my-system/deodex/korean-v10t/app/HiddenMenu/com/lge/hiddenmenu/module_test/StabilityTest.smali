.class public Lcom/lge/hiddenmenu/module_test/StabilityTest;
.super Landroid/app/ListActivity;
.source "StabilityTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_PASSWORD_FIRST:I = 0x1

.field private static final DIALOG_PASSWORD_SECOND:I = 0x2

.field private static final EVENT_SET_STABILITY_TEST_COMPLETED:I = 0x64

.field private static final PASS:Ljava/lang/String; = "EVE&ADAM&&620LOVE!"

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.StabilityTest"

.field private static cmd_cnt:I = 0x0

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field bRootPermission:Z

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->cmd_cnt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->bRootPermission:Z

    .line 117
    new-instance v0, Lcom/lge/hiddenmenu/module_test/StabilityTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$1;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/module_test/StabilityTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private selectMenuItem(I)V
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 80
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 81
    .local v3, packageName2:Ljava/lang/String;
    const/4 v5, 0x0

    .line 83
    .local v5, ret:I
    iget-object v6, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 84
    .local v2, msg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 86
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    packed-switch p1, :pswitch_data_5a

    .line 108
    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v5

    .line 111
    :goto_1c
    if-eqz v0, :cond_3d

    .line 112
    const-string v6, "com.lge.hiddenmenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_3d
    return-void

    .line 88
    :pswitch_3e
    const/4 v6, 0x0

    invoke-interface {v4, v6, v2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v5

    .line 89
    goto :goto_1c

    .line 92
    :pswitch_44
    invoke-interface {v4, v8, v2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v5

    .line 93
    goto :goto_1c

    .line 97
    :pswitch_49
    const/4 v6, 0x2

    invoke-interface {v4, v6, v2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v5

    .line 98
    goto :goto_1c

    .line 101
    :pswitch_4f
    const/4 v6, 0x3

    invoke-interface {v4, v6, v2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v5

    .line 102
    goto :goto_1c

    .line 104
    :pswitch_55
    invoke-virtual {p0, v8}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->showDialog(I)V

    goto :goto_1c

    .line 86
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_44
        :pswitch_49
        :pswitch_4f
        :pswitch_55
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
    const v0, 0x7f06002d

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 51
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    const-string v0, "HiddenMenu.StabilityTest"

    const-string v1, "[Blue Debug] Get Default Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_14

    .line 137
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 133
    :pswitch_8
    new-instance v0, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;-><init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;Lcom/lge/hiddenmenu/module_test/StabilityTest$1;)V

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/module_test/StabilityTest$PasswordDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 130
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 65
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 66
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 69
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
    .line 74
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/module_test/StabilityTest;->selectMenuItem(I)V

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 59
    return-void
.end method
