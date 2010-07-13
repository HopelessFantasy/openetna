.class public Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;
.super Landroid/app/Activity;
.source "FixedFreqSetting.java"


# static fields
.field private static final EVENT_SET_NV_FREQ_COMPLETED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HiddenMenu.Fixed Freq"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private callButton1:Landroid/widget/Button;

.field private callButton2:Landroid/widget/Button;

.field private editText1:Landroid/widget/EditText;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$3;-><init>(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->editText1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->setContentView(I)V

    .line 67
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->editText1:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->callButton1:Landroid/widget/Button;

    .line 70
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->callButton2:Landroid/widget/Button;

    .line 72
    const-string v0, "HiddenMenu.Fixed Freq"

    const-string v1, "Enter Fixed Freq Setting Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->callButton1:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;->callButton2:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting$2;-><init>(Lcom/lge/hiddenmenu/modem_setting/FixedFreqSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 124
    return-void
.end method
