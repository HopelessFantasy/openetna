.class public Lcom/android/calendar/AgendaItemView;
.super Landroid/widget/RelativeLayout;
.source "AgendaItemView.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 45
    .local v6, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    if-eqz v6, :cond_3d

    .line 47
    iget-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    iget v0, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    if-eqz v0, :cond_3d

    .line 52
    iget-object v0, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    :cond_3d
    return-void
.end method
