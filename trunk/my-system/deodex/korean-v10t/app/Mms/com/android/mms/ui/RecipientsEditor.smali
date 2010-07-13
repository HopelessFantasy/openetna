.class public Lcom/android/mms/ui/RecipientsEditor;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
    }
.end annotation


# instance fields
.field private mLongPressedPosition:I

.field private final mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 55
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 67
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/text/Spanned;IILandroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientAt(Landroid/text/Spanned;IILandroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/Spanned;IILandroid/content/Context;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "a"
    .parameter "key"

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1a

    .line 233
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 234
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 238
    :goto_16
    return-object v1

    .line 232
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1a
    const-string v1, ""

    goto :goto_16
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "field"
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 191
    const-class v2, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 192
    .local v0, a:[Landroid/text/Annotation;
    invoke-static {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, fieldValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 194
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_16
    return-object v1
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 170
    const-string v0, "number"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRecipientAt(Landroid/text/Spanned;IILandroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;
    .registers 14
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    .line 201
    const-class v8, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 202
    .local v0, a:[Landroid/text/Annotation;
    const-string v8, "person_id"

    invoke-static {v0, v8}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, person_id:Ljava/lang/String;
    const-string v8, "name"

    invoke-static {v0, v8}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, name:Ljava/lang/String;
    const-string v8, "label"

    invoke-static {v0, v8}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, label:Ljava/lang/String;
    const-string v8, "bcc"

    invoke-static {v0, v8}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, bcc:Ljava/lang/String;
    const-string v8, "number"

    invoke-static {v0, v8}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, number:Ljava/lang/String;
    new-instance v7, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v7}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 210
    .local v7, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v4, v7, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 211
    iput-object v3, v7, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 212
    const-string v8, "true"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 213
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    :goto_41
    iput-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 215
    iget-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5f

    iget-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 216
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v2

    .line 217
    .local v2, cache:Lcom/android/mms/util/ContactInfoCache;
    iget-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, p3, v8}, Lcom/android/mms/util/ContactInfoCache;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 220
    .end local v2           #cache:Lcom/android/mms/util/ContactInfoCache;
    :cond_5f
    iget-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/mms/ui/RecipientList$Recipient;->buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    .line 222
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_78

    .line 223
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 228
    :goto_75
    return-object v7

    :cond_76
    move-object v8, v5

    .line 213
    goto :goto_41

    .line 225
    :cond_78
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    goto :goto_75
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .registers 7
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 181
    const-class v1, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 182
    .local v0, a:[Landroid/text/Annotation;
    array-length v1, v0

    if-lez v1, :cond_13

    .line 183
    aget-object v1, v0, v2

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 185
    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method private pointToPosition(II)I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 128
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1c

    .line 129
    const/4 v3, -0x1

    .line 135
    :goto_1b
    return v3

    .line 132
    :cond_1c
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 133
    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .local v2, off:I
    move v3, v2

    .line 135
    goto :goto_1b
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 7

    .prologue
    .line 153
    iget v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v4, :cond_30

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 155
    .local v3, text:Landroid/text/Spanned;
    iget v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v5

    if-gt v4, v5, :cond_30

    .line 156
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v4, v3, v5}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 157
    .local v2, start:I
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 159
    .local v0, end:I
    if-eq v0, v2, :cond_30

    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v0, v5}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientAt(Landroid/text/Spanned;IILandroid/content/Context;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v1

    .line 161
    .local v1, r:Lcom/android/mms/ui/RecipientList$Recipient;
    new-instance v4, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v4, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 165
    .end local v0           #end:I
    .end local v1           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    .end local v2           #start:I
    .end local v3           #text:Landroid/text/Spanned;
    :goto_2f
    return-object v4

    :cond_30
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public getRecipientCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientList()Lcom/android/mms/ui/RecipientList;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getRecipientList()Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 244
    packed-switch p1, :pswitch_data_24

    .line 256
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_d
    return v2

    .line 246
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 249
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, selectedItem:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientsEditor;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->replaceText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->dismissDropDown()V

    .line 252
    const/4 v2, 0x1

    goto :goto_d

    .line 244
    nop

    :pswitch_data_24
    .packed-switch 0x37
        :pswitch_e
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 142
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 144
    .local v2, y:I
    if-nez v0, :cond_16

    .line 145
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 148
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public populate(Lcom/android/mms/ui/RecipientList;)V
    .registers 6
    .parameter "list"

    .prologue
    .line 103
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 105
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/RecipientList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 112
    .local v1, r:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->toToken()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    .line 116
    .end local v1           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_22
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
