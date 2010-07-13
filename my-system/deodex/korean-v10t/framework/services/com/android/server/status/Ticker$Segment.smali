.class final Lcom/android/server/status/Ticker$Segment;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation


# instance fields
.field current:I

.field first:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field next:I

.field notificationData:Lcom/android/server/status/NotificationData;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/server/status/Ticker;


# direct methods
.method constructor <init>(Lcom/android/server/status/Ticker;Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter
    .parameter "n"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/status/Ticker$Segment;->this$0:Lcom/android/server/status/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/server/status/Ticker$Segment;->notificationData:Lcom/android/server/status/NotificationData;

    .line 105
    iput-object p3, p0, Lcom/android/server/status/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p4, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, index:I
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 109
    .local v1, len:I
    :goto_10
    if-ge v0, v1, :cond_1f

    invoke-interface {p4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 112
    :cond_1f
    iput v0, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    .line 113
    iput v0, p0, Lcom/android/server/status/Ticker$Segment;->next:I

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/Ticker$Segment;->first:Z

    .line 115
    return-void
.end method


# virtual methods
.method advance()Ljava/lang/CharSequence;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 71
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/status/Ticker$Segment;->first:Z

    .line 72
    iget v2, p0, Lcom/android/server/status/Ticker$Segment;->next:I

    .line 73
    .local v2, index:I
    iget-object v9, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 74
    .local v4, len:I
    :goto_c
    if-ge v2, v4, :cond_1d

    iget-object v9, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 77
    :cond_1d
    if-lt v2, v4, :cond_21

    move-object v9, v11

    .line 100
    :goto_20
    return-object v9

    .line 81
    :cond_21
    iget-object v9, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v9, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 82
    .local v8, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v8}, Lcom/android/server/status/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 83
    .local v3, l:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 85
    .local v5, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    if-ge v1, v5, :cond_60

    .line 86
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 87
    .local v7, start:I
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 88
    .local v0, end:I
    const/4 v9, 0x1

    sub-int v9, v5, v9

    if-ne v1, v9, :cond_53

    .line 89
    iput v4, p0, Lcom/android/server/status/Ticker$Segment;->next:I

    .line 93
    :goto_47
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/server/status/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 94
    .local v6, result:Ljava/lang/CharSequence;
    if-eqz v6, :cond_5d

    .line 95
    add-int v9, v2, v7

    iput v9, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    move-object v9, v6

    .line 96
    goto :goto_20

    .line 91
    .end local v6           #result:Ljava/lang/CharSequence;
    :cond_53
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/server/status/Ticker$Segment;->next:I

    goto :goto_47

    .line 85
    .restart local v6       #result:Ljava/lang/CharSequence;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 99
    .end local v0           #end:I
    .end local v6           #result:Ljava/lang/CharSequence;
    .end local v7           #start:I
    :cond_60
    iput v4, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    move-object v9, v11

    .line 100
    goto :goto_20
.end method

.method getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .registers 10
    .parameter "substr"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/status/Ticker$Segment;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v0}, Lcom/android/server/status/Ticker;->access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/Ticker$Segment;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v1}, Lcom/android/server/status/Ticker;->access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/status/Ticker$Segment;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v1}, Lcom/android/server/status/Ticker;->access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 37
    .local v3, w:I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/server/status/Ticker$Segment;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v1}, Lcom/android/server/status/Ticker;->access$100(Lcom/android/server/status/Ticker;)Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 52
    iget v5, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    iget-object v6, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_d

    .line 53
    const/4 v5, 0x0

    .line 62
    :goto_c
    return-object v5

    .line 55
    :cond_d
    iget-object v5, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    iget-object v7, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 56
    .local v4, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v4}, Lcom/android/server/status/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 57
    .local v1, l:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    .line 58
    .local v2, lineCount:I
    if-lez v2, :cond_37

    .line 59
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 60
    .local v3, start:I
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 61
    .local v0, end:I
    iget v5, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/server/status/Ticker$Segment;->next:I

    .line 62
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/status/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_c

    .line 64
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_37
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/status/Ticker$Segment;->current:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/status/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "substr"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 41
    :goto_0
    if-le p3, p2, :cond_12

    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v0

    if-nez v0, :cond_12

    .line 42
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 44
    :cond_12
    if-le p3, p2, :cond_19

    .line 45
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 47
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
