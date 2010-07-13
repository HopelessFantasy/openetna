.class final Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
.super Ljava/lang/Object;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimelineEntry"
.end annotation


# static fields
.field static final ACTION_BEGIN:I = 0x0

.field static final ACTION_END:I = 0x1


# instance fields
.field private final mAction:I

.field private final mElement:Lorg/w3c/dom/smil/ElementTime;

.field private final mOffsetTime:D


# direct methods
.method public constructor <init>(DLorg/w3c/dom/smil/ElementTime;I)V
    .registers 5
    .parameter "offsetTime"
    .parameter "element"
    .parameter "action"

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-wide p1, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    .line 586
    iput-object p3, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    .line 587
    iput p4, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    .line 588
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    .registers 3
    .parameter "x0"

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 599
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    return v0
.end method

.method public getElement()Lorg/w3c/dom/smil/ElementTime;
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    return-object v0
.end method

.method public getOffsetTime()D
    .registers 3

    .prologue
    .line 591
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method
