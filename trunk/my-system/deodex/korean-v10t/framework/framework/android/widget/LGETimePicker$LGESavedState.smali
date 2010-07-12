.class Landroid/widget/LGETimePicker$LGESavedState;
.super Landroid/view/View$BaseSavedState;
.source "LGETimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LGETimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGESavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/LGETimePicker$LGESavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I

.field private final mSecond:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 258
    new-instance v0, Landroid/widget/LGETimePicker$LGESavedState$1;

    invoke-direct {v0}, Landroid/widget/LGETimePicker$LGESavedState$1;-><init>()V

    sput-object v0, Landroid/widget/LGETimePicker$LGESavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mHour:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mMinute:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mSecond:I

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/LGETimePicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Landroid/widget/LGETimePicker$LGESavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .parameter "superState"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 226
    iput p2, p0, Landroid/widget/LGETimePicker$LGESavedState;->mHour:I

    .line 227
    iput p3, p0, Landroid/widget/LGETimePicker$LGESavedState;->mMinute:I

    .line 228
    iput p4, p0, Landroid/widget/LGETimePicker$LGESavedState;->mSecond:I

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/LGETimePicker$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LGETimePicker$LGESavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mMinute:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mSecond:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 252
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 253
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Landroid/widget/LGETimePicker$LGESavedState;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    return-void
.end method
