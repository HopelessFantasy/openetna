.class public abstract Landroid/graphics/drawable/Drawable$ConstantState;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConstantState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChangingConfigurations()I
.end method

.method public abstract newDrawable()Landroid/graphics/drawable/Drawable;
.end method
