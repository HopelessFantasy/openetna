.class public Lcom/lge/hiddenmenu/call_test/AutoCallTest;
.super Landroid/app/Activity;
.source "AutoCallTest.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mEndingTime:Landroid/widget/TextView;

.field private mRunButton:Landroid/widget/Button;

.field private mSendingTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->setContentView(I)V

    .line 38
    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->mSendingTime:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->mEndingTime:Landroid/widget/TextView;

    .line 41
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, mRunButton:Landroid/widget/Button;
    new-instance v2, Lcom/lge/hiddenmenu/call_test/AutoCallTest$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/call_test/AutoCallTest$1;-><init>(Lcom/lge/hiddenmenu/call_test/AutoCallTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/call_test/AutoCallTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, mCancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/lge/hiddenmenu/call_test/AutoCallTest$2;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/call_test/AutoCallTest$2;-><init>(Lcom/lge/hiddenmenu/call_test/AutoCallTest;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 62
    return-void
.end method
