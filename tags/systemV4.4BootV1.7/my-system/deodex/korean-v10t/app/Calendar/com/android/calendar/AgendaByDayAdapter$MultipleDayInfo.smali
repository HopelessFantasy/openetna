.class Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "position"
    .parameter "endDay"

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 268
    iput p2, p0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 269
    return-void
.end method
