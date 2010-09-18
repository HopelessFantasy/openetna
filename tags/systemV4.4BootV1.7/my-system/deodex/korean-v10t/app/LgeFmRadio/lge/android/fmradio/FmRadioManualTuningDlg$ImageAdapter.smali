.class public Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "FmRadioManualTuningDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioManualTuningDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThumbIds:[Ljava/lang/Integer;

.field final synthetic this$0:Llge/android/fmradio/FmRadioManualTuningDlg;


# direct methods
.method public constructor <init>(Llge/android/fmradio/FmRadioManualTuningDlg;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "c"

    .prologue
    .line 48
    iput-object p1, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->this$0:Llge/android/fmradio/FmRadioManualTuningDlg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f020023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f020024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f020025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f020026

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f020027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f020028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f020029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->mThumbIds:[Ljava/lang/Integer;

    .line 49
    iput-object p2, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->mThumbIds:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0x8

    .line 68
    if-nez p2, :cond_2d

    .line 69
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 74
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 81
    :goto_21
    iget-object v2, p0, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;->mThumbIds:[Ljava/lang/Integer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    return-object v1

    .line 78
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2d
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .restart local v1       #imageView:Landroid/widget/ImageView;
    goto :goto_21
.end method
