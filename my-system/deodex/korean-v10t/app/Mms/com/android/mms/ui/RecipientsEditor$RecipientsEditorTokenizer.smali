.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLabelSpan:Landroid/text/style/TextAppearanceSpan;

.field private final mList:Landroid/widget/MultiAutoCompleteTextView;

.field private final mTypeSpan:Landroid/text/style/TextAppearanceSpan;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V
    .registers 9
    .parameter
    .parameter "context"
    .parameter "list"

    .prologue
    const v4, 0x1030046

    const/16 v3, 0x8

    .line 268
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    .line 269
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mInflater:Landroid/view/LayoutInflater;

    .line 270
    iput-object p3, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/MultiAutoCompleteTextView;

    .line 271
    iput-object p2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    .line 273
    const v1, 0x1030046

    .line 274
    .local v1, size:I
    const/16 v0, 0x8

    .line 275
    .local v0, color:I
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p2, v4, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mLabelSpan:Landroid/text/style/TextAppearanceSpan;

    .line 276
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p2, v4, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mTypeSpan:Landroid/text/style/TextAppearanceSpan;

    .line 277
    return-void
.end method


# virtual methods
.method public getNumbers()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 312
    .local v4, sp:Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 313
    .local v2, len:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 316
    .local v6, start:I
    const/4 v1, 0x0

    .line 317
    .local v1, i:I
    :goto_11
    add-int/lit8 v7, v2, 0x1

    if-ge v1, v7, :cond_4b

    .line 319
    if-eq v1, v2, :cond_23

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_23

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_48

    .line 320
    .end local v0           #c:C
    :cond_23
    if-le v1, v6, :cond_37

    .line 321
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$100(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$200(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 328
    .local v5, spanLen:I
    if-le v5, v1, :cond_37

    .line 329
    move v1, v5

    .line 333
    .end local v5           #spanLen:I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 335
    :goto_39
    if-ge v1, v2, :cond_46

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_46

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 339
    :cond_46
    move v6, v1

    goto :goto_11

    .line 341
    .restart local v0       #c:C
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 345
    .end local v0           #c:C
    :cond_4b
    return-object v3
.end method

.method public getRecipientList()Lcom/android/mms/ui/RecipientList;
    .registers 9

    .prologue
    .line 280
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 281
    .local v4, sp:Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v1

    .line 282
    .local v1, len:I
    new-instance v3, Lcom/android/mms/ui/RecipientList;

    invoke-direct {v3}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 284
    .local v3, rl:Lcom/android/mms/ui/RecipientList;
    const/4 v5, 0x0

    .line 285
    .local v5, start:I
    const/4 v0, 0x0

    .line 286
    .local v0, i:I
    :goto_11
    add-int/lit8 v6, v1, 0x1

    if-ge v0, v6, :cond_3e

    .line 287
    if-eq v0, v1, :cond_1f

    invoke-interface {v4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3b

    .line 288
    :cond_1f
    if-le v0, v5, :cond_2a

    .line 289
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v0, v6}, Lcom/android/mms/ui/RecipientsEditor;->access$000(Landroid/text/Spanned;IILandroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v2

    .line 291
    .local v2, r:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-virtual {v3, v2}, Lcom/android/mms/ui/RecipientList;->add(Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 294
    .end local v2           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    .line 296
    :goto_2c
    if-ge v0, v1, :cond_39

    invoke-interface {v4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_39

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 300
    :cond_39
    move v5, v0

    goto :goto_11

    .line 302
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 306
    :cond_3e
    return-object v3
.end method
