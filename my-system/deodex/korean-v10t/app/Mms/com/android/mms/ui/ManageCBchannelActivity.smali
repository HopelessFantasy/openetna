.class public Lcom/android/mms/ui/ManageCBchannelActivity;
.super Landroid/app/ListActivity;
.source "ManageCBchannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;
    }
.end annotation


# static fields
.field private static final CBMI_LENGTH_IN_BYTES:I = 0x2

.field private static final CBSETTING_PROJECTION:[Ljava/lang/String; = null

.field private static final DIALOG_TEXT_CATEGORY:Ljava/lang/String; = "dialogTextCategory"

.field private static final DIALOG_TEXT_CBMI_DUPLICATED:I = 0x1

.field private static final DIALOG_TEXT_CBMI_EMPTY:I = 0x0

.field private static final DIALOG_TEXT_CBMI_NOSIM:I = 0x4

.field private static final DIALOG_TEXT_CBMI_OVERFLOW:I = 0x2

.field private static final DIALOG_TEXT_CBMI_UNACCEPTABLE:I = 0x3

.field private static final MAX_CB_CHANNEL_NUMBER:I = 0x25

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_DELETEALL:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ManageCBchannelActivity"

.field private static cbNoInSimIndex:I

.field private static cbNumberInSim:I

.field private static list:Landroid/widget/ListView;

.field private static rowsNumber:I


# instance fields
.field private countryCode:Ljava/lang/String;

.field private final mChannelListKeyListener:Landroid/view/View$OnKeyListener;

.field private mGoAddChannel:Landroid/view/View$OnClickListener;

.field private operatorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/ManageCBchannelActivity;->rowsNumber:I

    .line 51
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNumberInSim:I

    .line 52
    sput v2, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNoInSimIndex:I

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "channelid"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelActivity;->PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "cbmitotalnoinsim"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->operatorCode:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->countryCode:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/android/mms/ui/ManageCBchannelActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageCBchannelActivity$1;-><init>(Lcom/android/mms/ui/ManageCBchannelActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->mGoAddChannel:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/android/mms/ui/ManageCBchannelActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageCBchannelActivity$2;-><init>(Lcom/android/mms/ui/ManageCBchannelActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->mChannelListKeyListener:Landroid/view/View$OnKeyListener;

    .line 283
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNumberInSim:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageCBchannelActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageCBchannelActivity;->launchDialogActivity(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageCBchannelActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->operatorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageCBchannelActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method private launchDialogActivity(I)V
    .registers 4
    .parameter "dialogText"

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dialogTextCategory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-class v1, Lcom/android/mms/ui/CbmiDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method


# virtual methods
.method public confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)Z
    .registers 7
    .parameter "listener"
    .parameter "deleteAll"

    .prologue
    const/4 v3, 0x1

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 261
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 263
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    if-eqz p2, :cond_2e

    const v1, 0x7f0700a7

    :goto_27
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return v3

    .line 265
    :cond_2e
    const v1, 0x7f0700a8

    goto :goto_27
.end method

.method public deleteChannel()Z
    .registers 3

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "ManageCBchannelActivity"

    const-string v1, "[LGE_Rian]ManageCBchannelActivity START!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 82
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 83
    sget-object v0, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    :cond_1f
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->operatorCode:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->countryCode:Ljava/lang/String;

    .line 87
    const-string v0, "ManageCBchannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operatorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ManageCBchannelActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "created ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_129

    .line 94
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBchannelActivity;->rowsNumber:I

    .line 95
    const-string v0, "ManageCBchannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor rows number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBchannelActivity;->rowsNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_86
    sget-object v1, Lcom/android/mms/CbSetting$CbSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/ManageCBchannelActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "cbmitotalnoinsim ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 104
    .local v7, cbSetting_cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_14c

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    const-string v0, "cbmitotalnoinsim"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNoInSimIndex:I

    .line 107
    sget v0, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNoInSimIndex:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNumberInSim:I

    .line 108
    const-string v0, "ManageCBchannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CB channel total numbers in SIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBchannelActivity;->cbNumberInSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_c2
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 114
    .local v10, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    .line 116
    const v0, 0x7f030003

    sget-object v1, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 117
    .local v9, header:Landroid/view/View;
    const v0, 0x7f09000d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 119
    .local v6, addButton:Landroid/widget/Button;
    if-eqz v6, :cond_e6

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->mGoAddChannel:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_e6
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 125
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->mChannelListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->operatorCode:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelActivity;->countryCode:Ljava/lang/String;

    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 129
    sget-object v6, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    .end local v6           #addButton:Landroid/widget/Button;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v3, 0x1020014

    aput v3, v5, v1

    move-object v1, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    :goto_128
    return-void

    .line 97
    .end local v7           #cbSetting_cursor:Landroid/database/Cursor;
    .end local v9           #header:Landroid/view/View;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    :cond_129
    const-string v0, "ManageCBchannelActivity"

    const-string v1, "cursor is null "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "ManageCBchannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null cursor rows number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBchannelActivity;->rowsNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 110
    .restart local v7       #cbSetting_cursor:Landroid/database/Cursor;
    :cond_14c
    const-string v0, "ManageCBchannelActivity"

    const-string v1, "Error for cbSetting_cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 133
    .restart local v6       #addButton:Landroid/widget/Button;
    .restart local v9       #header:Landroid/view/View;
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    :cond_155
    sget-object v6, Lcom/android/mms/ui/ManageCBchannelActivity;->list:Landroid/widget/ListView;

    .end local v6           #addButton:Landroid/widget/Button;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "channelid"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v3, 0x1020014

    aput v3, v5, v1

    move-object v1, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_128
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x108003c

    const/4 v3, 0x0

    .line 188
    const-string v0, "ManageCBchannelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() getListView().getCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 196
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 245
    :cond_24
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ManageCBchannelActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    :goto_31
    return-void

    .line 248
    :cond_32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 230
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 223
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->deleteChannel()Z

    move v0, v2

    .line 224
    goto :goto_c

    .line 227
    :pswitch_12
    new-instance v0, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageCBchannelActivity$DeleteChannelListener;-><init>(Lcom/android/mms/ui/ManageCBchannelActivity;I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ManageCBchannelActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)Z

    move v0, v2

    .line 228
    goto :goto_c

    .line 221
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "ManageCBchannelActivity"

    .line 203
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 204
    const-string v0, "ManageCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareOptionsMenu() getListView().getCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_4a

    .line 206
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "onPrepareOptionsMenu()- menu Visible"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 214
    :goto_49
    return v0

    .line 211
    :cond_4a
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    const-string v0, "ManageCBchannelActivity"

    const-string v0, "onPrepareOptionsMenu()- menu NOT Visible"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 214
    goto :goto_49
.end method
