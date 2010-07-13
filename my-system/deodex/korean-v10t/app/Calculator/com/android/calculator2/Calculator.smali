.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"


# static fields
.field static final ADVANCED_PANEL:I = 0x1

.field static final BASIC_PANEL:I = 0x0

.field private static final CMD_ADVANCED_PANEL:I = 0x3

.field private static final CMD_BASIC_PANEL:I = 0x2

.field private static final CMD_CLEAR_HISTORY:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Calculator"


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

.field private mPersist:Lcom/android/calculator2/Persist;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 1
    .parameter "message"

    .prologue
    .line 161
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->requestWindowFeature(I)Z

    .line 54
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 56
    new-instance v2, Lcom/android/calculator2/Persist;

    invoke-direct {v2, p0}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    .line 57
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v2, v2, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    .line 59
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 61
    new-instance v3, Lcom/android/calculator2/Logic;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v5, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;Landroid/widget/Button;)V

    iput-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    .line 62
    new-instance v0, Lcom/android/calculator2/HistoryAdapter;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 63
    .local v0, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 65
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/PanelSwitcher;

    iput-object v2, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 67
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v4, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/calculator2/EventListener;->setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V

    .line 69
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 72
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_75

    .line 73
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    :cond_75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    const v1, 0x7f050023

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    const/4 v1, 0x3

    const v2, 0x7f050022

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    const/4 v1, 0x2

    const v2, 0x7f050021

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 141
    :cond_8
    :goto_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 123
    :pswitch_d
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v0}, Lcom/android/calculator2/History;->clear()V

    .line 124
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Logic;->clear(Z)V

    goto :goto_8

    .line 128
    :pswitch_18
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 130
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    goto :goto_8

    .line 135
    :pswitch_2a
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_8

    .line 137
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v0}, Lcom/android/calculator2/PanelSwitcher;->moveLeft()V

    goto :goto_8

    .line 121
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_18
        :pswitch_2a
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 154
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v0}, Lcom/android/calculator2/Persist;->save()V

    .line 155
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 110
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-ne v1, v2, :cond_30

    move v1, v2

    :goto_17
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v1

    if-nez v1, :cond_32

    move v1, v2

    :goto_2c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    return v2

    :cond_30
    move v1, v3

    .line 110
    goto :goto_17

    :cond_32
    move v1, v3

    .line 113
    goto :goto_2c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 148
    return-void
.end method
