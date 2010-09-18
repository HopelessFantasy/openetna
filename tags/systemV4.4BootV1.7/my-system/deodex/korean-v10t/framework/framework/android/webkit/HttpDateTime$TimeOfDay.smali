.class Landroid/webkit/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/HttpDateTime$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/webkit/HttpDateTime$TimeOfDay;-><init>()V

    return-void
.end method
