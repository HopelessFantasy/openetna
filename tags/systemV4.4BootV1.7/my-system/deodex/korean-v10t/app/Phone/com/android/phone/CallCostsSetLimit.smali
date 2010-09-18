.class public Lcom/android/phone/CallCostsSetLimit;
.super Landroid/app/Activity;
.source "CallCostsSetLimit.java"


# static fields
.field private static final SETCOST_MAX_ACM:I = 0x2625a00

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field discardButton:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field mContext:Landroid/content/Context;

.field maxText:Landroid/widget/EditText;

.field saveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallCostsSetLimit;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallCostsSetLimit;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/CallCostsSetLimit;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/CallCostsSetLimit;->SRC_TAGS:[Ljava/lang/String;

    return-object v0
.end method

.method private final displayMessage(I)V
    .registers 5
    .parameter "strId"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallCostsSetLimit;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetLimit;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetLimit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->mContext:Landroid/content/Context;

    .line 41
    const v1, 0x7f060085

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetLimit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    .line 42
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetLimit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    .line 44
    const v1, 0x7f060082

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetLimit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->saveButton:Landroid/widget/Button;

    .line 45
    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetLimit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->discardButton:Landroid/widget/Button;

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetLimit;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->intent:Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->intent:Landroid/content/Intent;

    const-string v2, "unit_limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, mAcmMax:I
    const-string v1, "nodebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CCSL>onCreate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez v0, :cond_95

    .line 54
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 63
    :goto_76
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/phone/CallCostsSetLimit$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCostsSetLimit$1;-><init>(Lcom/android/phone/CallCostsSetLimit;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->saveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/CallCostsSetLimit$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCostsSetLimit$2;-><init>(Lcom/android/phone/CallCostsSetLimit;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->discardButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/CallCostsSetLimit$3;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCostsSetLimit$3;-><init>(Lcom/android/phone/CallCostsSetLimit;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void

    .line 58
    :cond_95
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_76
.end method
