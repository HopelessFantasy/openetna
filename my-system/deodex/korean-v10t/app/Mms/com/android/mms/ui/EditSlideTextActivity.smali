.class public Lcom/android/mms/ui/EditSlideTextActivity;
.super Landroid/app/Activity;
.source "EditSlideTextActivity.java"


# static fields
.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field public static final SLIDE_TOTAL:Ljava/lang/String; = "slide_total"

.field private static final STATE:Ljava/lang/String; = "state"

.field public static final TEXT_CONTENT:Ljava/lang/String; = "text"


# instance fields
.field private mCurSlide:I

.field private mDone:Landroid/widget/Button;

.field private mLabel:Landroid/widget/TextView;

.field private final mOnDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mState:Landroid/os/Bundle;

.field private mText:Landroid/widget/EditText;

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Lcom/android/mms/ui/EditSlideTextActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideTextActivity$1;-><init>(Lcom/android/mms/ui/EditSlideTextActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 120
    new-instance v0, Lcom/android/mms/ui/EditSlideTextActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideTextActivity$2;-><init>(Lcom/android/mms/ui/EditSlideTextActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected editDone()V
    .registers 4

    .prologue
    .line 129
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/EditSlideTextActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideTextActivity;->finish()V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const-string v7, "text"

    const-string v6, "slide_total"

    const-string v5, "slide_index"

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/EditSlideTextActivity;->requestWindowFeature(I)Z

    .line 57
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideTextActivity;->setContentView(I)V

    .line 60
    if-nez p1, :cond_8c

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "slide_index"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mCurSlide:I

    .line 64
    const-string v2, "slide_total"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mTotal:I

    .line 65
    const-string v2, "text"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, text:Ljava/lang/String;
    :goto_2f
    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mLabel:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Edit text for slide "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mCurSlide:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mText:Landroid/widget/EditText;

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    const v2, 0x7f090040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mDone:Landroid/widget/Button;

    .line 85
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mDone:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 67
    .end local v1           #text:Ljava/lang/String;
    :cond_8c
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    .line 69
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_index"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mCurSlide:I

    .line 70
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v3, "slide_total"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mTotal:I

    .line 71
    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v3, "text"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto/16 :goto_2f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mCurSlide:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_total"

    iget v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mTotal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    const-string v1, "text"

    iget-object v2, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/EditSlideTextActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
