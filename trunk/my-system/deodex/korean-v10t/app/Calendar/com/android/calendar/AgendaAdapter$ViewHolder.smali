.class Lcom/android/calendar/AgendaAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field calendarColor:I

.field overLayColor:I

.field title:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;

.field where:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
