.class public Lcom/android/phone/IccMissingPanel;
.super Lcom/android/phone/IccPanel;
.source "IccMissingPanel.java"


# instance fields
.field mButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/android/phone/IccMissingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccMissingPanel$1;-><init>(Lcom/android/phone/IccMissingPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccMissingPanel;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/android/phone/IccMissingPanel;->setContentView(I)V

    .line 38
    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/android/phone/IccMissingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/IccMissingPanel;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
