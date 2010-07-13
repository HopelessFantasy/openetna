.class public Lcom/lge/hiddenmenu/factory_reset/FactoryReset;
.super Landroid/app/ListActivity;
.source "FactoryReset.java"


# static fields
.field private static final A51_A52:I = 0x3

.field private static final A51_A52_A53:I = 0x7

.field private static final A51_A53:I = 0x5

.field private static final A51_only:I = 0x1

.field private static COMMAND_DIR:Ljava/io/File; = null

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_DELETE_USERDATA_COMPLETED:I = 0x65

.field private static final EVENT_FACTORY_RESET_COMPLETED:I = 0x64

.field private static final EVENT_SET_NV_GCFFLAG_COMPLETED:I = 0x64

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE_DONE:I = 0xc8

.field private static final GCF_Off:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.FactoryReset"

.field private static countrycode:Ljava/lang/String; = null

.field private static final network_Type:I = 0x0

.field private static operator_code:Ljava/lang/String; = null

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private GCFphone:Lcom/android/internal/telephony/Phone;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/nv"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->COMMAND_DIR:Ljava/io/File;

    .line 62
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->COMMAND_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->COMMAND_FILE:Ljava/io/File;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    .line 78
    const-string v0, "OPEN"

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    .line 380
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mHandler:Landroid/os/Handler;

    .line 430
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mResultReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->displayFactoryResetResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->displayDeleteUserdataResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displayDeleteUserdataResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    const v2, 0x104000a

    .line 364
    if-eqz p1, :cond_22

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080153

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    :goto_21
    return-void

    .line 372
    :cond_22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080154

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_21
.end method

.method private displayFactoryResetResult(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    const v2, 0x104000a

    .line 325
    if-eqz p1, :cond_22

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 338
    :goto_21
    return-void

    .line 333
    :cond_22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080150

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_21
.end method

.method private selectMenuItem(I)V
    .registers 6
    .parameter "id"

    .prologue
    const v1, 0x7f02003a

    const v3, 0x104000a

    const/high16 v2, 0x104

    .line 132
    packed-switch p1, :pswitch_data_a0

    .line 219
    :goto_b
    return-void

    .line 134
    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080148

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$2;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$1;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b

    .line 158
    :pswitch_3d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08014d

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$4;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$4;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$3;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$3;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b

    .line 192
    :pswitch_6e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080151

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$6;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$6;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$5;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$5;-><init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 132
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3d
        :pswitch_6e
    .end packed-switch
.end method

.method private updateResetInfoDB()V
    .registers 5

    .prologue
    .line 421
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    sget-object v2, Lcom/lge/provider/LGSystemDB$ResetInfo;->RESET_CLIENT_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 423
    const-string v2, "reset_client"

    sget-object v3, Lcom/lge/provider/LGSystemDB$ResetInfo;->RESET_CLIENT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v2, "reset_status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lge/provider/LGSystemDB$ResetInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 427
    :cond_2a
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f060003

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 90
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EVENT_FACTORY_RESET_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EVENT_DELETE_USERDATA_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 118
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 119
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 122
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
    .line 127
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->selectMenuItem(I)V

    .line 128
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mResultReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 111
    return-void
.end method

.method public runDeleteUserdata()V
    .registers 6

    .prologue
    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLEAR_USERDATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, broadcastIntent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.DELETE_USERDATA_FAILED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "factory_reset.FactoryReset"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v0, ExtraInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "ExtraInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 348
    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, v1, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public runFactoryReset()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v7, "BR"

    const-string v5, "HiddenMenu.FactoryReset"

    .line 230
    const/4 v2, 0x1

    .line 234
    .local v2, result:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    .line 235
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "GCF flag Off"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v8, v6}, Lcom/android/internal/telephony/Phone;->setNV_GCFFlag(ILandroid/os/Message;)I

    .line 238
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set Automatic Mode"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 241
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set Dual Mode"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v8, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 244
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    .line 245
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    .line 246
    const-string v3, "HiddenMenu.FactoryReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[A5 algorithm Settings] operator_code is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 250
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "VDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 252
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 and A5/3"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    .line 303
    :cond_7f
    :goto_7f
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.FACTORY_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, broadcastIntent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.intent.action.FACTORY_RESET_FAILED"

    aput-object v4, v3, v8

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x2

    const-string v5, "factory_reset.FactoryReset"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    .local v0, ExtraInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "ExtraInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 309
    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, v1, v3}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 322
    return-void

    .line 256
    .end local v0           #ExtraInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :cond_ac
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "TCL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 258
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 and A5/3"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_7f

    .line 263
    :cond_c4
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    const-string v4, "BR"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f0

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "CLARO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e2

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "TIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 265
    :cond_e2
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 and A5/2 and A5/3"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto :goto_7f

    .line 270
    :cond_f0
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    const-string v4, "BR"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_112

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "VIVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 272
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 only"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v9, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto/16 :goto_7f

    .line 277
    :cond_112
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    const-string v4, "BR"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_13f

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "OI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "BRT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 279
    :cond_130
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 and A5/2"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto/16 :goto_7f

    .line 283
    :cond_13f
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    const-string v4, "BR"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_162

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 285
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 and A5/2 and A5/3 for OPEN BR"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto/16 :goto_7f

    .line 288
    :cond_162
    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->countrycode:Ljava/lang/String;

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_184

    sget-object v3, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->operator_code:Ljava/lang/String;

    const-string v4, "KTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 290
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Set A5/1 only"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->GCFphone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v9, v6}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    goto/16 :goto_7f

    .line 295
    :cond_184
    const-string v3, "HiddenMenu.FactoryReset"

    const-string v3, "Enter default, Not update NV"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f
.end method
