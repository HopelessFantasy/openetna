.class public Lcom/android/server/status/TickerView;
.super Landroid/widget/TextSwitcher;
.source "TickerView.java"


# instance fields
.field mTicker:Lcom/android/server/status/Ticker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 20
    iget-object v0, p0, Lcom/android/server/status/TickerView;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v0}, Lcom/android/server/status/Ticker;->reflowText()V

    .line 21
    return-void
.end method
