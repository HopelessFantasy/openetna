.class abstract Lcom/android/server/status/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V
    .registers 8
    .parameter "context"
    .parameter "sb"

    .prologue
    const v4, 0x10a001e

    const v3, 0x10a001d

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Lcom/android/server/status/Ticker$1;

    invoke-direct {v1, p0}, Lcom/android/server/status/Ticker$1;-><init>(Lcom/android/server/status/Ticker;)V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 126
    const v1, 0x10201d3

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mTickerView:Landroid/view/View;

    .line 128
    const v1, 0x10201d4

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 129
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 134
    const v1, 0x10201d5

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 135
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mPaint:Landroid/text/TextPaint;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/status/Ticker;)Landroid/text/TextPaint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/status/Ticker;)Landroid/widget/ImageSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/status/Ticker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/status/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private scheduleAdvance()V
    .registers 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "n"
    .parameter "icon"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 148
    .local v1, initialCount:I
    new-instance v2, Lcom/android/server/status/Ticker$Segment;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/status/Ticker$Segment;-><init>(Lcom/android/server/status/Ticker;Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 152
    .local v2, newSegment:Lcom/android/server/status/Ticker$Segment;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_34

    .line 153
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/Ticker$Segment;

    .line 154
    .local v3, seg:Lcom/android/server/status/Ticker$Segment;
    iget v4, p1, Lcom/android/server/status/NotificationData;->id:I

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->notificationData:Lcom/android/server/status/NotificationData;

    iget v5, v5, Lcom/android/server/status/NotificationData;->id:I

    if-ne v4, v5, :cond_31

    iget-object v4, p1, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->notificationData:Lcom/android/server/status/NotificationData;

    iget-object v5, v5, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 156
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v3           #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_30
    :goto_30
    return-void

    .line 152
    .restart local v3       #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 162
    .end local v3           #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_34
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    if-nez v1, :cond_30

    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 165
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/Ticker$Segment;

    .line 166
    .restart local v3       #seg:Lcom/android/server/status/Ticker$Segment;
    iput-boolean v6, v3, Lcom/android/server/status/Ticker$Segment;->first:Z

    .line 168
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4, v6}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 169
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4}, Landroid/widget/ImageSwitcher;->reset()V

    .line 170
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v6}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 173
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4}, Landroid/widget/TextSwitcher;->reset()V

    .line 174
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Lcom/android/server/status/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/status/Ticker;->tickerStarting()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/status/Ticker;->scheduleAdvance()V

    goto :goto_30
.end method

.method halt()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/status/Ticker;->tickerHalting()V

    .line 185
    return-void
.end method

.method reflowText()V
    .registers 5

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 189
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/Ticker$Segment;

    .line 190
    .local v0, seg:Lcom/android/server/status/Ticker$Segment;
    invoke-virtual {v0}, Lcom/android/server/status/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 191
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 193
    .end local v0           #seg:Lcom/android/server/status/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1a
    return-void
.end method

.method abstract tickerDone()V
.end method

.method abstract tickerHalting()V
.end method

.method abstract tickerStarting()V
.end method
