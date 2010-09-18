.class Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
.super Ljava/lang/Object;
.source "SourceSuggestionBacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SourceSuggestionBacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SourceStat"
.end annotation


# static fields
.field static final RESPONSE_FINISHED:I = 0x4f

.field static final RESPONSE_IN_PROGRESS:I = 0x4e

.field static final RESPONSE_NOT_STARTED:I = 0x4d


# instance fields
.field private final mIcon:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mName:Landroid/content/ComponentName;

.field private final mNumResults:I

.field private final mQueryLimit:I

.field private final mResponseStatus:I

.field private final mShowingPromotedResults:Z


# direct methods
.method constructor <init>(Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;III)V
    .registers 10
    .parameter "name"
    .parameter "showingPromotedResults"
    .parameter "label"
    .parameter "icon"
    .parameter "responseStatus"
    .parameter "numResults"
    .parameter "queryLimit"

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    packed-switch p5, :pswitch_data_1e

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid response status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :pswitch_e
    iput-object p1, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mName:Landroid/content/ComponentName;

    .line 577
    iput-boolean p2, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mShowingPromotedResults:Z

    .line 578
    iput-object p3, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mLabel:Ljava/lang/String;

    .line 579
    iput-object p4, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mIcon:Ljava/lang/String;

    .line 580
    iput p5, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mResponseStatus:I

    .line 581
    iput p6, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mNumResults:I

    .line 582
    iput p7, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mQueryLimit:I

    .line 583
    return-void

    .line 567
    nop

    :pswitch_data_1e
    .packed-switch 0x4d
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNumResults()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mNumResults:I

    return v0
.end method

.method public getQueryLimit()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mQueryLimit:I

    return v0
.end method

.method public getResponseStatus()I
    .registers 2

    .prologue
    .line 602
    iget v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mResponseStatus:I

    return v0
.end method

.method public isShowingPromotedResults()Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->mShowingPromotedResults:Z

    return v0
.end method
