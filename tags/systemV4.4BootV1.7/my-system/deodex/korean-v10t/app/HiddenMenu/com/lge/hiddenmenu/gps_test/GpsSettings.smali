.class public Lcom/lge/hiddenmenu/gps_test/GpsSettings;
.super Landroid/app/ListActivity;
.source "GpsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;
    }
.end annotation


# static fields
.field private static final GPS_TYPES:[Ljava/lang/String; = null

.field private static final LOG_TYPES:[Ljava/lang/String; = null

.field private static final PM:[Ljava/lang/String; = null

.field private static final SLP_MODES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Gps"


# instance fields
.field private curAgpsMode:I

.field private curLoggingMode:I

.field private curPM:I

.field private curSLP:I

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mCurAddr:Ljava/lang/String;

.field private mCurPort:I

.field private mILM:Landroid/location/ILocationManager;

.field private mTextViewAddr:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/TextView;

.field private mgr:Landroid/location/LocationManager;

.field private myData:Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;

.field private tmpAgpsMode:I

.field private tmpLoggingMode:I

.field private tmpPM:I

.field private tmpSLP:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "Standalone"

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standalone"

    aput-object v5, v0, v2

    const-string v1, "MS-Based"

    aput-object v1, v0, v3

    const-string v1, "MS-Assisted"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->PM:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Standalone"

    aput-object v5, v0, v2

    const-string v1, "A-GPS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->GPS_TYPES:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Auto"

    aput-object v1, v0, v2

    const-string v1, "Manual"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->SLP_MODES:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Disabled"

    aput-object v1, v0, v2

    const-string v1, "Enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->LOG_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curPM:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curAgpsMode:I

    .line 45
    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curSLP:I

    .line 251
    return-void
.end method

.method static synthetic access$1000(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurPort:I

    return v0
.end method

.method static synthetic access$1002(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurPort:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewPort:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curLoggingMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curLoggingMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpLoggingMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpLoggingMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/location/ILocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mILM:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/location/ILocationManager;)Landroid/location/ILocationManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mILM:Landroid/location/ILocationManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curAgpsMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curAgpsMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->alert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curPM:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curPM:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpAgpsMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpAgpsMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->saveSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpPM:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpPM:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curSLP:I

    return v0
.end method

.method static synthetic access$602(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curSLP:I

    return p1
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpSLP:I

    return v0
.end method

.method static synthetic access$702(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpSLP:I

    return p1
.end method

.method static synthetic access$800(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 249
    return-void
.end method

.method private loadSettings()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->myData:Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->access$100(Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;)V

    .line 87
    return-void
.end method

.method private saveSettings()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->myData:Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;->access$000(Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;)V

    .line 83
    return-void
.end method

.method private selectMenuItem(I)V
    .registers 12
    .parameter "id"

    .prologue
    const v9, 0x7f0801b5

    const v8, 0x7f0801b4

    .line 119
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->loadSettings()V

    .line 120
    packed-switch p1, :pswitch_data_140

    .line 243
    :goto_c
    return-void

    .line 122
    :pswitch_d
    iget v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curAgpsMode:I

    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpAgpsMode:I

    .line 123
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "GPS Type"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->GPS_TYPES:[Ljava/lang/String;

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curAgpsMode:I

    new-instance v7, Lcom/lge/hiddenmenu/gps_test/GpsSettings$3;

    invoke-direct {v7, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$3;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    .line 152
    :pswitch_3f
    iget v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curPM:I

    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpPM:I

    .line 153
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Position Mode"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->PM:[Ljava/lang/String;

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curPM:I

    new-instance v7, Lcom/lge/hiddenmenu/gps_test/GpsSettings$6;

    invoke-direct {v7, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$6;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$4;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$4;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    .line 173
    :pswitch_71
    iget v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curSLP:I

    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpSLP:I

    .line 174
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "SLP Mode"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->SLP_MODES:[Ljava/lang/String;

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curSLP:I

    new-instance v7, Lcom/lge/hiddenmenu/gps_test/GpsSettings$9;

    invoke-direct {v7, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$9;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$8;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$8;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$7;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$7;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 194
    :pswitch_a4
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurAddr:Ljava/lang/String;

    .line 195
    .local v0, curAddr:Ljava/lang/String;
    iget v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mCurPort:I

    .line 196
    .local v1, curPort:I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 197
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030033

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 198
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f0700de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewAddr:Landroid/widget/TextView;

    .line 199
    const v4, 0x7f0700e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewPort:Landroid/widget/TextView;

    .line 200
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mTextViewPort:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Setting SUPL Server"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$10;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$10;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 222
    .end local v0           #curAddr:Ljava/lang/String;
    .end local v1           #curPort:I
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #textEntryView:Landroid/view/View;
    :pswitch_10d
    iget v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curLoggingMode:I

    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->tmpLoggingMode:I

    .line 223
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "GPS Logging"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->LOG_TYPES:[Ljava/lang/String;

    iget v6, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->curLoggingMode:I

    new-instance v7, Lcom/lge/hiddenmenu/gps_test/GpsSettings$14;

    invoke-direct {v7, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$14;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$13;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$13;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsSettings$12;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$12;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 120
    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_d
        :pswitch_3f
        :pswitch_71
        :pswitch_a4
        :pswitch_10d
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f060014

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 70
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;

    invoke-direct {v0, p0, p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->myData:Lcom/lge/hiddenmenu/gps_test/GpsSettings$MyDataManager;

    .line 74
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->loadSettings()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mgr:Landroid/location/LocationManager;

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 99
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 100
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 103
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
    .line 107
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->selectMenuItem(I)V

    .line 108
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 92
    return-void
.end method
