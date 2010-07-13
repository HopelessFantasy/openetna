.class public Lcom/lge/hiddenmenu/sms_test/ManageMemFull;
.super Landroid/app/Activity;
.source "ManageMemFull.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageMemFull"


# instance fields
.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mcountindex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->mcountindex:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->mStorageOkIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->mStorageOkIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->mStorageLowIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->mStorageLowIntent:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const-string v5, "ManageMemFull"

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v4, "ManageMemFull"

    const-string v4, "[RHS 0408] onCreate "

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const v4, 0x7f030026

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->setContentView(I)V

    .line 38
    const v4, 0x7f07008a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 39
    .local v2, set99Button:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$1;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$1;-><init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v4, 0x7f07008b

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, set10Button:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$2;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$2;-><init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0x7f070088

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 57
    .local v3, setButton:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$3;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$3;-><init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v4, 0x7f070089

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, resetButton:Landroid/widget/Button;
    new-instance v4, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;-><init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-string v4, "ManageMemFull"

    const-string v4, "[RHS 0408] ManageMemFull"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 87
    return-void
.end method

.method public setmemoryfull(Landroid/content/Context;Z)Z
    .registers 8
    .parameter "context"
    .parameter "bfull"

    .prologue
    const-string v4, "ManageMemFull"

    .line 90
    const-string v2, "ManageMemFull"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS 0402]setmemoryfull"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    .local v0, bResult:Ljava/lang/Boolean;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v1

    .line 93
    .local v1, smsManager:Landroid/telephony/gsm/SmsManager;
    invoke-virtual {v1, p2}, Landroid/telephony/gsm/SmsManager;->setMEMemoryFull(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    const-string v2, "ManageMemFull"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS 0402]bResult >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method
