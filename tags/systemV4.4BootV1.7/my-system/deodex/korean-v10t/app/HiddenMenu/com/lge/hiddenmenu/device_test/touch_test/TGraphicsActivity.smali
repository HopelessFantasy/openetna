.class Lcom/lge/hiddenmenu/device_test/touch_test/TGraphicsActivity;
.super Landroid/app/Activity;
.source "GridTouchTest.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 53
    return-void
.end method
