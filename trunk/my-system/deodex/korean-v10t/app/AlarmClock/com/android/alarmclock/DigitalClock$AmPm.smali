.class Lcom/android/alarmclock/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAm:Landroid/widget/TextView;

.field private mAmPmLayout:Landroid/widget/LinearLayout;

.field private mColorOff:I

.field private mColorOn:I

.field private mPm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const v1, 0x7f0a000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAm:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mPm:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOn:I

    .line 82
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOff:I

    .line 83
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAm:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    iget v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOn:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mPm:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    iget v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOff:I

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    return-void

    .line 90
    :cond_13
    iget v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOff:I

    goto :goto_6

    .line 91
    :cond_16
    iget v1, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mColorOn:I

    goto :goto_f
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_9
    const/16 v1, 0x8

    goto :goto_5
.end method
