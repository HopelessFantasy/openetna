.class public Lcom/lge/ota/OTAActivity;
.super Landroid/app/Activity;
.source "OTAActivity.java"


# instance fields
.field msgView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/lge/ota/OTAActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/lge/ota/OTAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/ota/OTAActivity;->msgView:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
