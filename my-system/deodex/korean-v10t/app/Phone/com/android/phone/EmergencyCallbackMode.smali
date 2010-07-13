.class public Lcom/android/phone/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"


# static fields
.field private static final EVENT_EXIT_ECBM:I = 0x64


# instance fields
.field private mDialListener:Landroid/view/View$OnClickListener;

.field private mEmergencyNumber:Landroid/net/Uri;

.field private mExitListener:Landroid/view/View$OnClickListener;

.field private mOkListener:Landroid/view/View$OnClickListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mDialListener:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExitListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$3;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mOkListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->reDialEmergencyNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallbackMode;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private reDialEmergencyNumber()V
    .registers 4

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyNumber:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private retreat()V
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelEcbmNotification()V

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->setContentView(I)V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    const v3, 0x7f060051

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 56
    .local v0, dialButton:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackMode;->mDialListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f060054

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, exitButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackMode;->mExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f060053

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 62
    .local v2, okButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackMode;->mOkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 107
    .local v0, ret:Z
    sparse-switch p1, :sswitch_data_12

    .line 123
    :goto_4
    return v0

    .line 109
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->reDialEmergencyNumber()V

    .line 112
    :sswitch_8
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 113
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->retreat()V

    .line 120
    :sswitch_10
    const/4 v0, 0x0

    goto :goto_4

    .line 107
    :sswitch_data_12
    .sparse-switch
        0x5 -> :sswitch_5
        0x6 -> :sswitch_8
        0x13 -> :sswitch_10
        0x14 -> :sswitch_10
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x17 -> :sswitch_10
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelEcbmNotification()V

    .line 140
    const-string v2, "ril.cdma.inecmmode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .local v0, inECBM:Z
    if-nez v0, :cond_16

    .line 144
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 146
    :cond_16
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyNumber:Landroid/net/Uri;

    if-nez v2, :cond_24

    .line 149
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyNumber:Landroid/net/Uri;

    .line 150
    :cond_24
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyNumber:Landroid/net/Uri;

    if-nez v2, :cond_30

    .line 151
    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyNumber:Landroid/net/Uri;

    .line 153
    :cond_30
    return-void
.end method
