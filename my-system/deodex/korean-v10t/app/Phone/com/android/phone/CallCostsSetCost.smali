.class public Lcom/android/phone/CallCostsSetCost;
.super Landroid/app/Activity;
.source "CallCostsSetCost.java"


# static fields
.field private static final SETCOST_MAX_PRICE:I = 0x3b9ac99c

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field currencyText:Landroid/widget/EditText;

.field discardButton:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field mContext:Landroid/content/Context;

.field mPuctCurrency:Ljava/lang/String;

.field mPuctPrice:I

.field mUnit:I

.field saveButton:Landroid/widget/Button;

.field unitAlert:Landroid/app/AlertDialog;

.field unitBuilder:Landroid/app/AlertDialog$Builder;

.field unitItems:[Ljava/lang/CharSequence;

.field unitText:Landroid/widget/EditText;

.field valueText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallCostsSetCost;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Units"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Currency"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCostsSetCost;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/CallCostsSetCost;->enableText(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCostsSetCost;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCostsSetCost;->getFlexData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCostsSetCost;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/phone/CallCostsSetCost;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/phone/CallCostsSetCost;->SRC_TAGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallCostsSetCost;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method private final displayMessage(I)V
    .registers 5
    .parameter "strId"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallCostsSetCost;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method

.method private enableText(I)V
    .registers 5
    .parameter "selection"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    if-nez p1, :cond_f

    .line 42
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 49
    :goto_e
    return-void

    .line 46
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_e
.end method

.method private getFlexData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetCost;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_c

    move-object v1, p2

    .line 58
    :goto_b
    return-object v1

    .line 55
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    move-object v1, p2

    .line 56
    goto :goto_b

    :cond_14
    move-object v1, v0

    .line 58
    goto :goto_b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v5, 0x7f03001a

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetCost;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->mContext:Landroid/content/Context;

    .line 69
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    const v6, 0x7f0900b4

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCostsSetCost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    .line 70
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    const v6, 0x7f0900b5

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCostsSetCost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v9

    .line 72
    const v5, 0x7f06007c

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitText:Landroid/widget/EditText;

    .line 73
    const v5, 0x7f06007e

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    .line 74
    const v5, 0x7f060080

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    .line 76
    const v5, 0x7f060082

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->saveButton:Landroid/widget/Button;

    .line 77
    const v5, 0x7f060083

    invoke-virtual {p0, v5}, Lcom/android/phone/CallCostsSetCost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->discardButton:Landroid/widget/Button;

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetCost;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->intent:Landroid/content/Intent;

    .line 81
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->intent:Landroid/content/Intent;

    const-string v6, "unit_price"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, mPuctPrice:I
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->intent:Landroid/content/Intent;

    const-string v6, "unit_currency"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, mPuctCurrency:Ljava/lang/String;
    const-string v5, "nodebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CCSC>onCreate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez v2, :cond_108

    .line 87
    iput v8, p0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    .line 88
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    const-string v6, "NVDB_CALLCOST_UNIT_I"

    const-string v7, "1.00"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCostsSetCost;->getFlexData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    const-string v6, "NVDB_CALLCOST_CURRENCY_I"

    const-string v7, "EUR"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCostsSetCost;->getFlexData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_b4
    :goto_b4
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    iget v7, p0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v5, p0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    invoke-direct {p0, v5}, Lcom/android/phone/CallCostsSetCost;->enableText(I)V

    .line 104
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitBuilder:Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitBuilder:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0900b1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 106
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    iget v7, p0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    new-instance v8, Lcom/android/phone/CallCostsSetCost$1;

    invoke-direct {v8, p0}, Lcom/android/phone/CallCostsSetCost$1;-><init>(Lcom/android/phone/CallCostsSetCost;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitAlert:Landroid/app/AlertDialog;

    .line 119
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->unitText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/phone/CallCostsSetCost$2;

    invoke-direct {v6, p0}, Lcom/android/phone/CallCostsSetCost$2;-><init>(Lcom/android/phone/CallCostsSetCost;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->saveButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/phone/CallCostsSetCost$3;

    invoke-direct {v6, p0}, Lcom/android/phone/CallCostsSetCost$3;-><init>(Lcom/android/phone/CallCostsSetCost;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->discardButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/phone/CallCostsSetCost$4;

    invoke-direct {v6, p0}, Lcom/android/phone/CallCostsSetCost$4;-><init>(Lcom/android/phone/CallCostsSetCost;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void

    .line 91
    :cond_108
    iput v9, p0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    .line 92
    div-int/lit8 v3, v2, 0x64

    .line 93
    .local v3, realNum:I
    rem-int/lit8 v0, v2, 0x64

    .line 94
    .local v0, decNum:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, values:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b4

    .line 98
    iget-object v5, p0, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b4
.end method
