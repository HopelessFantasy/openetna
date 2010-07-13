.class Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    .line 258
    iput p2, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 259
    return-void
.end method
