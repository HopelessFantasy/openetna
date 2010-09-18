.class public Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;
.super Landroid/app/Activity;
.source "AirtestResultViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final GPSON_SMS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.GPSONSMS_RECEIVED"

.field public static final GPSRESULT_RECEIVED:Ljava/lang/String; = "com.lge.gps.GPSRESULT_RECEIVED"


# instance fields
.field private count:I

.field public mContext:Landroid/content/Context;

.field networkReceiver:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;

.field private outputText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;-><init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->networkReceiver:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;

    .line 26
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->mContext:Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->alert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->outputText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    return p1
.end method

.method static synthetic access$308(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    return v0
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->setContentView(I)V

    .line 36
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->count:I

    .line 38
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v2, networkIntentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->mContext:Landroid/content/Context;

    .line 40
    const-string v3, "com.lge.gps.GPSRESULT_RECEIVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->networkReceiver:Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$MyBroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->outputText:Landroid/widget/TextView;

    .line 45
    const v3, 0x7f070074

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, bt:Landroid/view/View;
    new-instance v3, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$1;-><init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f070075

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, bt2:Landroid/view/View;
    new-instance v3, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer$2;-><init>(Lcom/lge/hiddenmenu/gps_test/AirtestResultViewer;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
