.class Landroid/widget/TextView$ChangeWatcher;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mBeforeText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 6501
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6501
    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 6534
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 6536
    const/high16 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 6538
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6540
    :cond_12
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6511
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6512
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 6515
    :cond_16
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 6516
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v3, -0x1

    .line 6552
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6553
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 6546
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6547
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    .line 6558
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6559
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6522
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 6524
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6527
    :cond_2d
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 6528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 6530
    :cond_37
    return-void
.end method