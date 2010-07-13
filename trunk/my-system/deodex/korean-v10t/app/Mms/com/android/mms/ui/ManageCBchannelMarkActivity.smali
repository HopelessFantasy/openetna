.class public Lcom/android/mms/ui/ManageCBchannelMarkActivity;
.super Landroid/app/Activity;
.source "ManageCBchannelMarkActivity.java"


# static fields
.field private static final CBMI_LENGTH_IN_BYTES:I = 0x2

.field private static final CBSETTING_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_CB_CHANNEL_NUMBER:I = 0x25

.field private static final MENU_DESELECT_ALL:I = 0x2

.field private static final MENU_SELECT_ALL:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_SIMIO:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ManageCBchannelMarkActivity"

.field private static addButton:Landroid/widget/Button;

.field private static cbNoInSimIndex:I

.field private static cbNumberInSim:I

.field private static list:Landroid/widget/ListView;


# instance fields
.field private countryCode:Ljava/lang/String;

.field private mCursor_SimIO:Landroid/database/Cursor;

.field private mDeleteChannel:Landroid/view/View$OnClickListener;

.field private operatorCode:Ljava/lang/String;

.field private rowsNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 45
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNumberInSim:I

    .line 46
    sput v2, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNoInSimIndex:I

    .line 54
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "channelid"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->PROJECTION:[Ljava/lang/String;

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "simindex"

    aput-object v1, v0, v3

    const-string v1, "channelid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "cbmitotalnoinsim"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->operatorCode:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->countryCode:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity$1;-><init>(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->mDeleteChannel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->mCursor_SimIO:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ManageCBchannelMarkActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->mCursor_SimIO:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 31
    sget v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNumberInSim:I

    return v0
.end method

.method static synthetic access$300()Landroid/widget/ListView;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->operatorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageCBchannelMarkActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method private doDeselectallAction()V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 167
    sget-object v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_12
    return-void
.end method

.method private doSelectallAction()V
    .registers 4

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 161
    sget-object v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x1020014

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v9, "ManageCBchannelMarkActivity"

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "ManageCBchannelMarkActivity"

    const-string v0, "[LGE_Rian]ManageCBchannelMarkActivity START!!"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 81
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_27

    .line 82
    sget-object v0, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    :cond_27
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->operatorCode:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->countryCode:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "created ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->rowsNumber:I

    .line 95
    const-string v0, "ManageCBchannelMarkActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->rowsNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/android/mms/CbSetting$CbSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    const-string v5, "cbmitotalnoinsim ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cbSetting_cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_fa

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    const-string v0, "cbmitotalnoinsim"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNoInSimIndex:I

    .line 103
    sget v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNoInSimIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNumberInSim:I

    .line 104
    const-string v0, "ManageCBchannelMarkActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CB channel total numbers in SIM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->cbNumberInSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_a0
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    .line 110
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->addButton:Landroid/widget/Button;

    .line 112
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->addButton:Landroid/widget/Button;

    if-eqz v0, :cond_c1

    .line 113
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->addButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->mDeleteChannel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_c1
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->operatorCode:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->countryCode:Ljava/lang/String;

    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 118
    sget-object v9, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090010

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v11

    new-array v5, v10, [I

    aput v12, v5, v11

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    :goto_ee
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 127
    sget-object v0, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 128
    return-void

    .line 106
    :cond_fa
    const-string v0, "ManageCBchannelMarkActivity"

    const-string v0, "Error for cbSetting_cursor "

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 122
    :cond_102
    sget-object v9, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->list:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090010

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "channelid"

    aput-object v1, v4, v11

    new-array v5, v10, [I

    aput v12, v5, v11

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_ee
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 141
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 149
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->doSelectallAction()V

    move v0, v1

    .line 150
    goto :goto_c

    .line 153
    :pswitch_12
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBchannelMarkActivity;->doDeselectallAction()V

    move v0, v1

    .line 154
    goto :goto_c

    .line 147
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method
