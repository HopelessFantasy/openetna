.class public Lcom/lge/hiddenmenu/sim_test/SimTest;
.super Landroid/app/ListActivity;
.source "SimTest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"

.field public static virtualSimEnabled:Z


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mphone:Lcom/android/internal/telephony/Phone;

.field private vsimOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/sim_test/SimTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->vsimOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/sim_test/SimTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->vsimOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/sim_test/SimTest;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->mphone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 75
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_70

    .line 121
    :goto_a
    if-eqz v0, :cond_2b

    .line 122
    const-string v3, "com.lge.hiddenmenu"

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

    .line 123
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/sim_test/SimTest;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_2b
    return-void

    .line 82
    :pswitch_2c
    sget v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    if-eqz v3, :cond_38

    .line 84
    const-string v3, "GSM"

    const-string v4, "Sorry..Real SIM is inserted."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 89
    :cond_38
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/hiddenmenu/sim_test/SimTest;->virtualSimEnabled:Z

    if-eqz v4, :cond_6b

    const v4, 0x7f0800f8

    :goto_4b
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800fe

    new-instance v5, Lcom/lge/hiddenmenu/sim_test/SimTest$2;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/sim_test/SimTest$2;-><init>(Lcom/lge/hiddenmenu/sim_test/SimTest;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800ff

    new-instance v5, Lcom/lge/hiddenmenu/sim_test/SimTest$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/sim_test/SimTest$1;-><init>(Lcom/lge/hiddenmenu/sim_test/SimTest;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_a

    :cond_6b
    const v4, 0x7f0800f7

    goto :goto_4b

    .line 77
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->mphone:Lcom/android/internal/telephony/Phone;

    .line 44
    const v0, 0x7f060009

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/sim_test/SimTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/lge/hiddenmenu/sim_test/SimTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/sim_test/SimTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 60
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 61
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/sim_test/SimTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 64
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
    .line 69
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/sim_test/SimTest;->selectMenuItem(I)V

    .line 70
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 53
    return-void
.end method
