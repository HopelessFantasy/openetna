.class public Lcom/android/music/DeleteItems;
.super Landroid/app/Activity;
.source "DeleteItems.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mItemList:[I

.field private mPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/music/DeleteItems$2;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$2;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/DeleteItems;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mItemList:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->setVolumeControlStream(I)V

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->requestWindowFeature(I)Z

    .line 51
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 55
    const v2, 0x7f0a0012

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/android/music/DeleteItems$1;

    invoke-direct {v3, p0}, Lcom/android/music/DeleteItems$1;-><init>(Lcom/android/music/DeleteItems;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, desc:Ljava/lang/String;
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mItemList:[I

    .line 69
    iget-object v2, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
