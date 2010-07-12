.class Landroid/widget/TextView$CommitSelectionReceiver;
.super Landroid/os/ResultReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitSelectionReceiver"
.end annotation


# instance fields
.field mNewEnd:I

.field mNewStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 6724
    iput-object p1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    .line 6725
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6726
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 6729
    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    .line 6730
    iget-object v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6731
    .local v0, len:I
    iget v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    if-le v1, v0, :cond_13

    .line 6732
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    .line 6734
    :cond_13
    iget v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    if-le v1, v0, :cond_19

    .line 6735
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    .line 6737
    :cond_19
    iget-object v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    iget v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6739
    .end local v0           #len:I
    :cond_28
    return-void
.end method
