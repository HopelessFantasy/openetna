.class public Lcom/android/contacts/ui/LiteTabHost;
.super Landroid/widget/LinearLayout;
.source "LiteTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/LiteTabHost$IntentContentStrategy;,
        Lcom/android/contacts/ui/LiteTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;,
        Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;,
        Lcom/android/contacts/ui/LiteTabHost$IndicatorStrategy;,
        Lcom/android/contacts/ui/LiteTabHost$TabSpec;,
        Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/LinearLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/ui/LiteTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    .line 31
    iput-object v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    .line 33
    iput-object v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabHost;->initTabHost()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    .line 31
    iput-object v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    .line 33
    iput-object v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 44
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabHost;->initTabHost()V

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/LiteTabHost;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ui/LiteTabHost;)Lcom/android/contacts/ui/LiteTabWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    return-object v0
.end method

.method private final initTabHost()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabHost;->setFocusableInTouchMode(Z)V

    .line 49
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabHost;->setDescendantFocusability(I)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    .line 53
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mOnTabChangeListener:Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;

    if-eqz v0, :cond_d

    .line 306
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mOnTabChangeListener:Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 308
    :cond_d
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)V
    .registers 5
    .parameter "tabSpec"

    .prologue
    .line 156
    invoke-static {p1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->access$200(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)Lcom/android/contacts/ui/LiteTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_e

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_e
    invoke-static {p1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->access$300(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1c
    invoke-static {p1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->access$200(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)Lcom/android/contacts/ui/LiteTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/ui/LiteTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    invoke-virtual {v1, v0}, Lcom/android/contacts/ui/LiteTabWidget;->addView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    invoke-virtual {v0}, Lcom/android/contacts/ui/LiteTabWidget;->removeAllViews()V

    .line 175
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabHost;->initTabHost()V

    .line 176
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->requestLayout()V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->invalidate()V

    .line 180
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 231
    .local v0, handled:Z
    if-nez v0, :cond_3b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 237
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    iget v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 238
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/LiteTabHost;->playSoundEffect(I)V

    .line 239
    const/4 v1, 0x1

    .line 241
    :goto_3a
    return v1

    :cond_3b
    move v1, v0

    goto :goto_3a
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 248
    return-void
.end method

.method public getCurrentTab()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 192
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_1c
    return-object v0

    .restart local p0
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getCurrentTabView()Landroid/view/View;
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 199
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    iget v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 201
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/android/contacts/ui/LiteTabWidget;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/android/contacts/ui/LiteTabHost$TabSpec;
    .registers 4
    .parameter "tag"

    .prologue
    .line 60
    new-instance v0, Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;-><init>(Lcom/android/contacts/ui/LiteTabHost;Ljava/lang/String;Lcom/android/contacts/ui/LiteTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 123
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 126
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 132
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 133
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 135
    :cond_c
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 141
    if-nez p1, :cond_1d

    .line 144
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 145
    :cond_12
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    iget v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/LiteTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 148
    :cond_1d
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 251
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 292
    :cond_b
    :goto_b
    return-void

    .line 255
    :cond_c
    iget v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_b

    .line 260
    iget v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_25

    .line 261
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    invoke-static {v1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->access$300(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;->tabClosed()V

    .line 264
    :cond_25
    iput p1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    .line 265
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    .line 269
    .local v0, spec:Lcom/android/contacts/ui/LiteTabHost$TabSpec;
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    iget v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/LiteTabWidget;->focusCurrentTab(I)V

    .line 272
    invoke-static {v0}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->access$300(Lcom/android/contacts/ui/LiteTabHost$TabSpec;)Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/ui/LiteTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    .line 274
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_59

    .line 275
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    :cond_59
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    invoke-virtual {v1}, Lcom/android/contacts/ui/LiteTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_66

    .line 287
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 291
    :cond_66
    invoke-direct {p0}, Lcom/android/contacts/ui/LiteTabHost;->invokeOnTabChangeListener()V

    goto :goto_b
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 211
    iget-object v1, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/LiteTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/android/contacts/ui/LiteTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    .line 216
    :cond_1e
    return-void

    .line 210
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnTabChangedListener(Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabHost;->mOnTabChangeListener:Lcom/android/contacts/ui/LiteTabHost$OnTabChangeListener;

    .line 302
    return-void
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 66
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/LiteTabWidget;

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    if-nez v0, :cond_17

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_17
    new-instance v0, Lcom/android/contacts/ui/LiteTabHost$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/LiteTabHost$1;-><init>(Lcom/android/contacts/ui/LiteTabHost;)V

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 90
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabWidget:Lcom/android/contacts/ui/LiteTabWidget;

    new-instance v1, Lcom/android/contacts/ui/LiteTabHost$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/ui/LiteTabHost$2;-><init>(Lcom/android/contacts/ui/LiteTabHost;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/LiteTabWidget;->setTabSelectionListener(Lcom/android/contacts/ui/LiteTabWidget$OnTabSelectionChanged;)V

    .line 99
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/LiteTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    .line 100
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost;->mTabContent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3f

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3f
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .registers 2
    .parameter "activityGroup"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/ui/LiteTabHost;->setup()V

    .line 115
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 116
    return-void
.end method
