.class public Lcom/android/mms/ui/ConversationHeaderView;
.super Landroid/widget/RelativeLayout;
.source "ConversationHeaderView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "ConversationHeaderView"


# instance fields
.field private mAttachmentView:Landroid/view/View;

.field private mCheckButton:Landroid/widget/CheckedTextView;

.field private mConversationHeader:Lcom/android/mms/ui/ConversationHeader;

.field private final mConversationHeaderLock:Ljava/lang/Object;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadIndicator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 72
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationHeaderView;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationHeaderView;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationHeaderView;)Lcom/android/mms/ui/ConversationHeader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeader:Lcom/android/mms/ui/ConversationHeader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationHeaderView;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationHeaderView;->formatMessage(Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationHeaderView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    return-object v0
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;
    .registers 13
    .parameter "ch"

    .prologue
    const/16 v10, 0x11

    const-string v8, "ConversationHeaderView"

    .line 127
    const v5, 0x1030046

    .line 128
    .local v5, size:I
    const/16 v2, 0x8

    .line 133
    .local v2, color:I
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, fromText:Ljava/lang/String;
    const-string v6, "ConversationHeaderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<formatMessage> getFrom() from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v6, "801010101018"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 137
    iget-object v6, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    const v7, 0x7f070150

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, from:Ljava/lang/String;
    const-string v6, "ConversationHeaderView"

    const-string v6, "<formatMessage> 801010101018"

    invoke-static {v8, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_3d
    if-nez v3, :cond_41

    .line 150
    const-string v3, "..."

    .line 153
    :cond_41
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getMessageCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_6d

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u200e(\u202a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getMessageCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u202a)\u200e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    :cond_6d
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 163
    .local v0, before:I
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->hasDraft()Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 164
    const-string v6, " "

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    iget-object v6, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    const v8, 0x1030046

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 174
    :cond_b8
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->isRead()Z

    move-result v6

    if-nez v6, :cond_c8

    .line 175
    sget-object v6, Lcom/android/mms/ui/ConversationHeaderView;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :cond_c8
    return-object v1

    .line 139
    .end local v0           #before:I
    .end local v1           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #from:Ljava/lang/String;
    :cond_c9
    const-string v6, "901010101019"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 140
    iget-object v6, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    const v7, 0x7f070151

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3       #from:Ljava/lang/String;
    const-string v6, "ConversationHeaderView"

    const-string v6, "<formatMessage> 901010101019"

    invoke-static {v8, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 143
    .end local v3           #from:Ljava/lang/String;
    :cond_e3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ec

    move-object v3, v4

    .restart local v3       #from:Ljava/lang/String;
    :goto_ea
    goto/16 :goto_3d

    .end local v3           #from:Ljava/lang/String;
    :cond_ec
    const/4 v6, 0x0

    move-object v3, v6

    goto :goto_ea
.end method

.method private setConversationHeader(Lcom/android/mms/ui/ConversationHeader;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeader:Lcom/android/mms/ui/ConversationHeader;

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;I)V
    .registers 13
    .parameter "context"
    .parameter "ch"
    .parameter "position"

    .prologue
    .line 210
    const-string v7, "ConversationHeaderView"

    const-string v8, "bind()"

    invoke-static {v7, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v3, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 215
    .local v3, locale:Ljava/util/Locale;
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationHeaderView;->setConversationHeader(Lcom/android/mms/ui/ConversationHeader;)V

    .line 217
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mAttachmentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .local v0, attachmentLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->hasError()Z

    move-result v2

    .line 223
    .local v2, hasError:Z
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "iw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 225
    :cond_38
    if-eqz v2, :cond_cf

    .line 226
    const/4 v7, 0x1

    const v8, 0x7f09002b

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 240
    :goto_41
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->hasAttachment()Z

    move-result v1

    .line 241
    .local v1, hasAttachment:Z
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mAttachmentView:Landroid/view/View;

    if-eqz v1, :cond_ec

    const/4 v8, 0x0

    :goto_4a
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationHeaderView;->formatMessage(Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_68

    .line 252
    invoke-virtual {p2, p0}, Lcom/android/mms/ui/ConversationHeader;->setWaitingView(Lcom/android/mms/ui/ConversationHeaderView;)V

    .line 255
    :cond_68
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mUnreadIndicator:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->isRead()Z

    move-result v8

    if-eqz v8, :cond_f0

    const/4 v8, 0x4

    :goto_71
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .local v6, subjectLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "iw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fc

    .line 264
    :cond_9d
    const/4 v7, 0x1

    if-eqz v1, :cond_f2

    const v8, 0x7f09002c

    :goto_a3
    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 274
    :goto_a6
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mErrorIndicator:Landroid/view/View;

    if-eqz v2, :cond_110

    const/4 v8, 0x0

    :goto_ab
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 277
    instance-of v7, p1, Lcom/android/mms/ui/ConversationListDeleteActivity;

    if-eqz v7, :cond_ce

    .line 279
    check-cast p1, Lcom/android/mms/ui/ConversationListDeleteActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 280
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 282
    .local v5, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_113

    .line 283
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mCheckButton:Landroid/widget/CheckedTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 287
    :goto_c8
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mCheckButton:Landroid/widget/CheckedTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 289
    .end local v4           #lv:Landroid/widget/ListView;
    .end local v5           #sba:Landroid/util/SparseBooleanArray;
    :cond_ce
    return-void

    .line 228
    .end local v1           #hasAttachment:Z
    .end local v6           #subjectLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local p1
    :cond_cf
    const/4 v7, 0x1

    const v8, 0x7f09002a

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_41

    .line 233
    :cond_d8
    if-eqz v2, :cond_e3

    .line 234
    const/4 v7, 0x0

    const v8, 0x7f09002b

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_41

    .line 236
    :cond_e3
    const/4 v7, 0x0

    const v8, 0x7f09002a

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_41

    .line 241
    .restart local v1       #hasAttachment:Z
    :cond_ec
    const/16 v8, 0x8

    goto/16 :goto_4a

    .line 255
    :cond_f0
    const/4 v8, 0x0

    goto :goto_71

    .line 264
    .restart local v6       #subjectLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f2
    if-eqz v2, :cond_f8

    const v8, 0x7f09002b

    goto :goto_a3

    :cond_f8
    const v8, 0x7f09002a

    goto :goto_a3

    .line 269
    :cond_fc
    const/4 v7, 0x0

    if-eqz v1, :cond_106

    const v8, 0x7f09002c

    :goto_102
    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_a6

    :cond_106
    if-eqz v2, :cond_10c

    const v8, 0x7f09002b

    goto :goto_102

    :cond_10c
    const v8, 0x7f09002a

    goto :goto_102

    .line 274
    :cond_110
    const/16 v8, 0x8

    goto :goto_ab

    .line 285
    .end local p1
    .restart local v4       #lv:Landroid/widget/ListView;
    .restart local v5       #sba:Landroid/util/SparseBooleanArray;
    :cond_113
    iget-object v7, p0, Lcom/android/mms/ui/ConversationHeaderView;->mCheckButton:Landroid/widget/CheckedTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_c8
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "title"
    .parameter "explain"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public getConversationHeader()Lcom/android/mms/ui/ConversationHeader;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeader:Lcom/android/mms/ui/ConversationHeader;

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mSubjectView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mDateView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mAttachmentView:Landroid/view/View;

    .line 91
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mUnreadIndicator:Landroid/view/View;

    .line 92
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mErrorIndicator:Landroid/view/View;

    .line 93
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mPresenceView:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mCheckButton:Landroid/widget/CheckedTextView;

    .line 95
    return-void
.end method

.method public onHeaderLoaded(Lcom/android/mms/ui/ConversationHeader;)V
    .registers 5
    .parameter "newHeader"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView;->mConversationHeader:Lcom/android/mms/ui/ConversationHeader;

    if-eq v1, p1, :cond_9

    .line 190
    monitor-exit v0

    .line 207
    :goto_8
    return-void

    .line 195
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ConversationHeaderView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ConversationHeaderView$1;-><init>(Lcom/android/mms/ui/ConversationHeaderView;Lcom/android/mms/ui/ConversationHeader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    monitor-exit v0

    goto :goto_8

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setPresenceIcon(I)V
    .registers 4
    .parameter "iconId"

    .prologue
    .line 98
    if-nez p1, :cond_a

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mPresenceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_9
    return-void

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView;->mPresenceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9
.end method
