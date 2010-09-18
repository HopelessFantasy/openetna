.class public Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;
.super Landroid/app/Activity;
.source "fmradiotest.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"


# instance fields
.field private leftButton:Landroid/widget/Button;

.field private leftTextEdit:Landroid/widget/EditText;

.field private mConnection:Landroid/content/ServiceConnection;

.field mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 40
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;-><init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;-><init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private DisplayFrequency()V
    .registers 4

    .prologue
    .line 167
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method private DisplayRssi()V
    .registers 5

    .prologue
    .line 174
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fmradiotest][DisplayRssi] Rssi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastRssi(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastRssi(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->DisplayFrequency()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->DisplayRssi()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->leftTextEdit:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "FM RADIO"

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v1, "FM RADIO"

    const-string v1, "[fmradiotest][onCreate])"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->requestWindowFeature(I)Z

    .line 102
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->setContentView(I)V

    .line 104
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->leftTextEdit:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->leftButton:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->leftButton:Landroid/widget/Button;

    new-instance v2, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$3;-><init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->setVolumeControlStream(I)V

    .line 133
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 134
    const-string v1, "FM RADIO"

    const-string v1, "++[ERROR]++ [FmRadioView][onStart] bindService"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "lge.android.fmradio.poweron"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "lge.android.fmradio.poweroff"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "lge.android.fmradio.updaterssi"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "lge.android.fmradio.warningwithoutearjack"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 151
    :try_start_1
    const-string v1, "FM RADIO"

    const-string v2, "[fmradiotest][onDestroy]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    invoke-interface {v1}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;->stop()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1d

    .line 158
    :goto_d
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->unbindFromService(Landroid/content/Context;)V

    .line 160
    iput-object v3, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object v3, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mConnection:Landroid/content/ServiceConnection;

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void

    .line 153
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method
