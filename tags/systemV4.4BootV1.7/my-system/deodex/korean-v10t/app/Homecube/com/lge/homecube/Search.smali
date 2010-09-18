.class public Lcom/lge/homecube/Search;
.super Landroid/widget/LinearLayout;
.source "Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/Search$FromParentOriginAnimation;,
        Lcom/lge/homecube/Search$ToParentOriginAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_VELOCITY:F = 1.0f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mGlobalSearch:Z

.field private mInitialQuery:Ljava/lang/String;

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private mMorphAnimation:Landroid/view/animation/Animation;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchText:Landroid/widget/TextView;

.field private mSelectInitialQuery:Z

.field private mUnmorphAnimation:Landroid/view/animation/Animation;

.field private mVoiceButton:Landroid/widget/ImageButton;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v1, "SearchWidget"

    iput-object v1, p0, Lcom/lge/homecube/Search;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 92
    .local v0, interpolator:Landroid/view/animation/Interpolator;
    new-instance v1, Lcom/lge/homecube/Search$ToParentOriginAnimation;

    invoke-direct {v1, p0, v5}, Lcom/lge/homecube/Search$ToParentOriginAnimation;-><init>(Lcom/lge/homecube/Search;Lcom/lge/homecube/Search$1;)V

    iput-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    .line 95
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 97
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lge/homecube/Search$1;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Search$1;-><init>(Lcom/lge/homecube/Search;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    new-instance v1, Lcom/lge/homecube/Search$FromParentOriginAnimation;

    invoke-direct {v1, p0, v5}, Lcom/lge/homecube/Search$FromParentOriginAnimation;-><init>(Lcom/lge/homecube/Search;Lcom/lge/homecube/Search$1;)V

    iput-object v1, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v1, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 128
    iget-object v1, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 129
    iget-object v1, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    iget-object v1, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lge/homecube/Search$2;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Search$2;-><init>(Lcom/lge/homecube/Search;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/homecube/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/lge/homecube/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "web_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/lge/homecube/Search;->mSearchManager:Landroid/app/SearchManager;

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/lge/homecube/Search;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/homecube/Search;->showSearchDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/homecube/Search;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private configureVoiceSearchButton()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 338
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/lge/homecube/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 340
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1e

    const/4 v3, 0x1

    move v2, v3

    .line 343
    .local v2, voiceSearchVisible:Z
    :goto_15
    iget-object v3, p0, Lcom/lge/homecube/Search;->mVoiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_20

    move v4, v5

    :goto_1a
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    return-void

    .end local v2           #voiceSearchVisible:Z
    :cond_1e
    move v2, v5

    .line 340
    goto :goto_15

    .line 343
    .restart local v2       #voiceSearchVisible:Z
    :cond_20
    const/16 v4, 0x8

    goto :goto_1a
.end method

.method private getAnimationDuration()I
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isAtTop()Z
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getTop()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private showSearchDialog()V
    .registers 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Search;->mInitialQuery:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lge/homecube/Search;->mSelectInitialQuery:Z

    iget-object v3, p0, Lcom/lge/homecube/Search;->mAppSearchData:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/lge/homecube/Search;->mGlobalSearch:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 214
    return-void
.end method

.method private startVoiceSearch()V
    .registers 4

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 164
    :goto_9
    return-void

    .line 159
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "SearchWidget"

    const-string v2, "Could not find voice search activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public clearAnimation()V
    .registers 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 251
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_24

    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 253
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 256
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 261
    :cond_24
    :goto_24
    return-void

    .line 258
    .restart local p0
    :cond_25
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->invalidate()V

    goto :goto_24
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/homecube/Search;->mVoiceButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_8

    .line 150
    invoke-direct {p0}, Lcom/lge/homecube/Search;->startVoiceSearch()V

    .line 154
    :goto_7
    return-void

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->onSearchRequested()Z

    goto :goto_7
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 326
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 297
    const v1, 0x7f050038

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    .line 298
    const v1, 0x7f050039

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/homecube/Search;->mVoiceButton:Landroid/widget/ImageButton;

    .line 304
    iget-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 306
    iget-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 308
    iget-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/lge/homecube/Search;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p0, p0}, Lcom/lge/homecube/Search;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    iget-object v1, p0, Lcom/lge/homecube/Search;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 318
    .local v0, googlePlaceholder:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-direct {p0}, Lcom/lge/homecube/Search;->configureVoiceSearchButton()V

    .line 321
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 264
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x13

    if-eq p2, v0, :cond_21

    const/16 v0, 0x14

    if-eq p2, v0, :cond_21

    const/16 v0, 0x15

    if-eq p2, v0, :cond_21

    const/16 v0, 0x16

    if-eq p2, v0, :cond_21

    const/16 v0, 0x17

    if-eq p2, v0, :cond_21

    .line 272
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 281
    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 274
    :pswitch_23
    iget-object v0, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/lge/homecube/Launcher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 276
    :pswitch_2a
    iget-object v0, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/lge/homecube/Launcher;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 278
    :pswitch_35
    iget-object v0, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/lge/homecube/Launcher;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 272
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_35
        :pswitch_2a
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lge/homecube/Search;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 351
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/homecube/Search;->mSearchText:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 173
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 9
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lge/homecube/Search;->mInitialQuery:Ljava/lang/String;

    .line 182
    iput-boolean p2, p0, Lcom/lge/homecube/Search;->mSelectInitialQuery:Z

    .line 183
    iput-object p3, p0, Lcom/lge/homecube/Search;->mAppSearchData:Landroid/os/Bundle;

    .line 184
    iput-boolean p4, p0, Lcom/lge/homecube/Search;->mGlobalSearch:Z

    .line 186
    invoke-direct {p0}, Lcom/lge/homecube/Search;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 187
    invoke-direct {p0}, Lcom/lge/homecube/Search;->showSearchDialog()V

    .line 206
    :cond_11
    :goto_11
    return-void

    .line 193
    :cond_12
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 195
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 201
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_34
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    if-eq v1, v2, :cond_11

    .line 202
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/lge/homecube/Search;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Search;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method public stopSearch(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    .line 222
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Search;->setQuery(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_24

    .line 226
    if-eqz p1, :cond_25

    invoke-direct {p0}, Lcom/lge/homecube/Search;->isAtTop()Z

    move-result v0

    if-nez v0, :cond_25

    .line 227
    iget-object v0, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/lge/homecube/Search;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    iget-object v0, p0, Lcom/lge/homecube/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Search;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    :cond_24
    :goto_24
    return-void

    .line 230
    :cond_25
    invoke-virtual {p0}, Lcom/lge/homecube/Search;->clearAnimation()V

    goto :goto_24
.end method
