.class public Lcom/android/providers/calendar/VCal$Begin;
.super Lcom/android/providers/calendar/VCal$Property;
.source "VCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/VCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Begin"
.end annotation


# instance fields
.field public parent:Lcom/android/providers/calendar/VCal$Begin;

.field public properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/VCal$Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/providers/calendar/VCal$Property;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/VCal$Begin;->properties:Ljava/util/ArrayList;

    return-void
.end method
