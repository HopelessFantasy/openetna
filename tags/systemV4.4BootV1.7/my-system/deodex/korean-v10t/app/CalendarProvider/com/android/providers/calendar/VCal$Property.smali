.class public Lcom/android/providers/calendar/VCal$Property;
.super Ljava/lang/Object;
.source "VCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/VCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public parameters:[Lcom/android/providers/calendar/VCal$Parameter;

.field public value:Ljava/lang/String;

.field public values:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
