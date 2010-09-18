.class public Landroid/text/style/LeadingMarginSpan$Standard;
.super Ljava/lang/Object;
.source "LeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LeadingMarginSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mFirst:I

.field private final mRest:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "every"

    .prologue
    .line 45
    invoke-direct {p0, p1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "first"
    .parameter "rest"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 41
    iput p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 13
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    .line 76
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 3
    .parameter "first"

    .prologue
    .line 67
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    goto :goto_4
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 54
    const/16 v0, 0xa

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
