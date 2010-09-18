.class public Lcom/lge/homecube/Workspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/homecube/Workspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1693
    new-instance v0, Lcom/lge/homecube/Workspace$SavedState$1;

    invoke-direct {v0}, Lcom/lge/homecube/Workspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/lge/homecube/Workspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1676
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    .line 1684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    .line 1685
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lge/homecube/Workspace$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1675
    invoke-direct {p0, p1}, Lcom/lge/homecube/Workspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "superState"

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1676
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    .line 1680
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1689
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1690
    iget v0, p0, Lcom/lge/homecube/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    return-void
.end method
