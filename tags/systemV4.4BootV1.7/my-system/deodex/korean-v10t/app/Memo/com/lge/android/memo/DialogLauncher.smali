.class public Lcom/lge/android/memo/DialogLauncher;
.super Landroid/app/Activity;
.source "DialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;,
        Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;,
        Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;,
        Lcom/lge/android/memo/DialogLauncher$MinimiseButton;
    }
.end annotation


# static fields
.field private static AppWidgetId:I = 0x0

.field protected static final BLUE_PAPER_STYLE:I = 0x8

.field protected static final BROWN_PAPER_STYLE:I = 0x7

.field protected static final COLOR_RECT_HEIGHT:I = 0x19

.field protected static final COLOR_RECT_WIDTH:I = 0x19

.field private static final COLUMN_INDEX_STYLE:I = 0x3

.field private static final COLUMN_INDEX_TEXT_COLOR:I = 0x4

.field protected static final DISCARD_BUTTON:I = 0x4

.field protected static final EDIT_BUTTON:I = 0x1

.field private static final EDIT_TEXT_ID:I = 0x7f060012

.field private static final ORIGINAL_CONTENT:Ljava/lang/String; = "origContent"

.field protected static final SET_BUTTON:I = 0x3

.field protected static final STYLE_BUTTON:I = 0x2

.field private static final STYLE_INT_ID:I = 0x7f060013

.field protected static final YELLOW_PAPER_STYLE:I = 0x6

.field private static date_title:Ljava/lang/StringBuilder;

.field protected static image_coordinate:[Ljava/lang/String;

.field protected static isEditButtonPressed:Z

.field protected static list_imagebitmaps_database:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected static mOriginalContent:Ljava/lang/String;

.field private static mSelfInstance:Lcom/lge/android/memo/DialogLauncher;

.field private static mUri:Landroid/net/Uri;

.field public static note:Ljava/lang/String;

.field private static pageStyle:I

.field private static pageStyleUri:Landroid/net/Uri;

.field private static show_date:Landroid/widget/TextView;

.field private static show_time:Landroid/widget/TextView;

.field public static slctdCol:I

.field protected static styleID:I

.field protected static textColor:I

.field private static time_title:Ljava/lang/StringBuilder;

.field protected static total_no_images:I


# instance fields
.field private bluePaperDrawable:Landroid/widget/ImageView;

.field private brownPaperDrawable:Landroid/widget/ImageView;

.field public con:Landroid/content/Context;

.field private discard:Landroid/widget/TextView;

.field private editButtonText:Landroid/widget/TextView;

.field public image_coordinates_all_images:Ljava/lang/String;

.field public image_url:[Ljava/lang/String;

.field public image_urls_all_images:Ljava/lang/String;

.field private isStylePageDisplaying:Ljava/lang/Boolean;

.field private lastNonConfigureObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field public mText:Lcom/lge/android/memo/NoteEditor;

.field private set:Landroid/widget/TextView;

.field private styleButtonText:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private view:Landroid/widget/RemoteViews;

.field private yellowPaperDrawable:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 51
    sput-object v3, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    .line 67
    sput v2, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 68
    sput v1, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 69
    sput v2, Lcom/lge/android/memo/DialogLauncher;->pageStyle:I

    .line 70
    sput-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 77
    sput-object v3, Lcom/lge/android/memo/DialogLauncher;->image_coordinate:[Ljava/lang/String;

    .line 78
    sput v1, Lcom/lge/android/memo/DialogLauncher;->total_no_images:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->list_imagebitmaps_database:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->image_urls_all_images:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->image_coordinates_all_images:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->image_url:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    .line 86
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    .line 97
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 772
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    return-object v0
.end method

.method private forUpdatingTime()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 727
    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/android/memo/DialogLauncher;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    .line 729
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 730
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "modified"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 731
    .local v7, milisec:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 733
    .local v6, date:Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .local v9, str_date:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .local v10, str_time:Ljava/lang/StringBuilder;
    sput-object v9, Lcom/lge/android/memo/DialogLauncher;->date_title:Ljava/lang/StringBuilder;

    .line 737
    sput-object v10, Lcom/lge/android/memo/DialogLauncher;->time_title:Ljava/lang/StringBuilder;

    .line 739
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->show_date:Landroid/widget/TextView;

    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->date_title:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->show_time:Landroid/widget/TextView;

    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->time_title:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #milisec:J
    .end local v9           #str_date:Ljava/lang/StringBuilder;
    .end local v10           #str_time:Ljava/lang/StringBuilder;
    :cond_55
    return-void
.end method

.method public static getAppWidgetId()I
    .registers 1

    .prologue
    .line 136
    sget v0, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    return v0
.end method

.method public static getMUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPageStyle()I
    .registers 1

    .prologue
    .line 112
    sget v0, Lcom/lge/android/memo/DialogLauncher;->pageStyle:I

    return v0
.end method

.method public static getPageStyleUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 132
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->pageStyleUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getTextColor()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    return v0
.end method

.method public static notiOfChageStrings()V
    .registers 1

    .prologue
    .line 880
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->mSelfInstance:Lcom/lge/android/memo/DialogLauncher;

    if-eqz v0, :cond_9

    .line 881
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->mSelfInstance:Lcom/lge/android/memo/DialogLauncher;

    invoke-direct {v0}, Lcom/lge/android/memo/DialogLauncher;->setTextFeild()V

    .line 882
    :cond_9
    return-void
.end method

.method public static setAppWidgetId(I)V
    .registers 1
    .parameter "appWidgetId"

    .prologue
    .line 140
    sput p0, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    .line 141
    return-void
.end method

.method public static setMUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "uri"

    .prologue
    .line 124
    sput-object p0, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    .line 125
    return-void
.end method

.method public static setPageStyle(I)V
    .registers 1
    .parameter "pageStyle"

    .prologue
    .line 116
    sput p0, Lcom/lge/android/memo/DialogLauncher;->pageStyle:I

    .line 117
    return-void
.end method

.method public static setPageStyleUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "uri"

    .prologue
    .line 128
    sput-object p0, Lcom/lge/android/memo/DialogLauncher;->pageStyleUri:Landroid/net/Uri;

    .line 129
    return-void
.end method

.method private setTextFeild()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 887
    iput-object v3, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    .line 888
    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/android/memo/DialogLauncher;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    .line 892
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_76

    .line 894
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 903
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "memo"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_65

    .line 906
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v1, "textColor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 911
    :goto_3d
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    sget v1, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/NoteEditor;->setTextColor(I)V

    .line 912
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 915
    .local v6, title:Ljava/lang/String;
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 916
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 919
    :cond_5a
    sput-object v6, Lcom/lge/android/memo/NoteEditor;->memoTitle:Ljava/lang/String;

    .line 923
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 924
    sget-object v0, Lcom/lge/android/memo/DialogLauncher;->note:Ljava/lang/String;

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 930
    .end local v6           #title:Ljava/lang/String;
    :cond_64
    :goto_64
    return-void

    .line 908
    :cond_65
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "textcolor"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    goto :goto_3d

    .line 927
    :cond_76
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogLauncher;->setTitle(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_64
.end method


# virtual methods
.method public addMinimiseButtonInLayout()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 264
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, linLayoutPenSize:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 266
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 267
    .local v1, minimiseButtonLayout:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;

    invoke-direct {v2, p0, p0}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;-><init>(Lcom/lge/android/memo/DialogLauncher;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    return-void
.end method

.method protected closeStyle()V
    .registers 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher;->finish()V

    .line 332
    return-void
.end method

.method public getContentID()I
    .registers 8

    .prologue
    .line 775
    const/4 v6, 0x0

    .line 776
    .local v6, contentID:I
    sget-object v1, Lcom/lge/android/memo/DialogLauncher;->pageStyleUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memoId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "modified DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/android/memo/DialogLauncher;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    .line 782
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 783
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 784
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    const-string v2, "memo"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->title:Ljava/lang/String;

    .line 787
    :cond_45
    sget v0, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogLauncher;->getPageStyleLayout(I)I

    move-result v6

    .line 788
    return v6
.end method

.method public getDesktopIconImage(I)I
    .registers 3
    .parameter "styleID"

    .prologue
    .line 844
    const v0, 0x7f020018

    .line 845
    .local v0, desktopIconId:I
    packed-switch p1, :pswitch_data_10

    .line 853
    :goto_6
    return v0

    .line 847
    :pswitch_7
    const v0, 0x7f020014

    .line 848
    goto :goto_6

    .line 850
    :pswitch_b
    const v0, 0x7f020015

    goto :goto_6

    .line 845
    nop

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public getDesktopIconImageLine(I)I
    .registers 3
    .parameter "styleID"

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, desktopIconLineId:I
    packed-switch p1, :pswitch_data_e

    .line 865
    :goto_4
    return v0

    .line 859
    :pswitch_5
    const v0, 0x7f020016

    .line 860
    goto :goto_4

    .line 862
    :pswitch_9
    const v0, 0x7f020017

    goto :goto_4

    .line 857
    nop

    :pswitch_data_e
    .packed-switch 0x7
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public getPageStyleLayout(I)I
    .registers 2
    .parameter "contentID"

    .prologue
    .line 792
    packed-switch p1, :pswitch_data_10

    .line 800
    const p1, 0x7f030005

    .line 804
    :goto_6
    return p1

    .line 794
    :pswitch_7
    const p1, 0x7f030003

    .line 795
    goto :goto_6

    .line 797
    :pswitch_b
    const p1, 0x7f030001

    .line 798
    goto :goto_6

    .line 792
    nop

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public getPageStyleSetting(I)I
    .registers 2
    .parameter "styleID"

    .prologue
    .line 808
    packed-switch p1, :pswitch_data_10

    .line 816
    const p1, 0x7f030006

    .line 820
    :goto_6
    return p1

    .line 810
    :pswitch_7
    const p1, 0x7f030004

    .line 811
    goto :goto_6

    .line 813
    :pswitch_b
    const p1, 0x7f030002

    .line 814
    goto :goto_6

    .line 808
    nop

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public getTheImagesAsBitmapsInArrayList()V
    .registers 7

    .prologue
    .line 756
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/lge/android/memo/DialogLauncher;->total_no_images:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/lge/android/memo/DialogLauncher;->list_imagebitmaps_database:Ljava/util/ArrayList;

    .line 757
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 758
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 759
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    sget v4, Lcom/lge/android/memo/DialogLauncher;->total_no_images:I

    if-ge v3, v4, :cond_31

    .line 761
    :try_start_13
    iget-object v4, p0, Lcom/lge/android/memo/DialogLauncher;->image_url:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_22} :catch_2b

    move-result-object v0

    .line 766
    :goto_23
    sget-object v4, Lcom/lge/android/memo/DialogLauncher;->list_imagebitmaps_database:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 763
    :catch_2b
    move-exception v4

    move-object v2, v4

    .line 764
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 770
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_31
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/lge/android/memo/DialogLauncher;->forUpdatingTime()V

    .line 721
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 723
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    iput-object p0, p0, Lcom/lge/android/memo/DialogLauncher;->con:Landroid/content/Context;

    .line 153
    sput-object p0, Lcom/lge/android/memo/DialogLauncher;->mSelfInstance:Lcom/lge/android/memo/DialogLauncher;

    .line 157
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher;->getContentID()I

    move-result v0

    .line 158
    .local v0, contentID:I
    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogLauncher;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher;->addMinimiseButtonInLayout()V

    .line 165
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/android/memo/NoteEditor;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    .line 170
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    .line 172
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    const v2, 0x7f060012

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 175
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    const v2, 0x7f060013

    invoke-virtual {p0, v1, v2, v4}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 181
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lge/android/memo/DialogLauncher;->show_date:Landroid/widget/TextView;

    .line 182
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lge/android/memo/DialogLauncher;->show_time:Landroid/widget/TextView;

    .line 184
    const/4 v1, -0x1

    sput v1, Lcom/lge/android/memo/DialogLauncher;->slctdCol:I

    .line 186
    invoke-direct {p0}, Lcom/lge/android/memo/DialogLauncher;->forUpdatingTime()V

    .line 213
    if-eqz p1, :cond_6a

    .line 214
    const-string v1, "origContent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 217
    :cond_6a
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    .line 218
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    if-eqz v1, :cond_a5

    .line 219
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v2, "inEditorMode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 220
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    const-string v2, "isStylePageDisplaying"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 222
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 223
    invoke-virtual {p0, v4}, Lcom/lge/android/memo/DialogLauncher;->performActivityAction(I)V

    .line 231
    :cond_a5
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    .line 826
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_a
    sput-boolean v2, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 829
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 830
    const/4 v0, 0x6

    sput v0, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 836
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    aput v1, v0, v2

    invoke-static {v0}, Lcom/lge/android/memo/UpdateService;->requestUpdate([I)V

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/android/memo/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lge/android/memo/DialogLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 838
    sget v0, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    invoke-static {p0, v0}, Lcom/lge/android/memo/MemoAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    .line 840
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 841
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 937
    sput-object p0, Lcom/lge/android/memo/DialogLauncher;->mSelfInstance:Lcom/lge/android/memo/DialogLauncher;

    .line 938
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 939
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 748
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 751
    invoke-direct {p0}, Lcom/lge/android/memo/DialogLauncher;->setTextFeild()V

    .line 753
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v0, lastNonConfigureItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "isStylePageDisplaying"

    iget-object v2, p0, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v1, "inEditorMode"

    sget-boolean v2, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v1, "styleId"

    sget v2, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string v1, "textColor"

    sget v2, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 876
    return-object v0
.end method

.method protected performActivityAction(I)V
    .registers 28
    .parameter "activity"

    .prologue
    .line 467
    const/4 v15, 0x0

    .line 468
    .local v15, contentID:I
    const/4 v5, 0x2

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_375

    .line 469
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/lge/android/memo/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    .line 472
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->getPageStyleSetting(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->setContentView(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    if-eqz v5, :cond_27e

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->lastNonConfigureObjects:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "styleId"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 481
    :goto_49
    const v5, 0x7f080017

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    const v5, 0x7f080018

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    const v5, 0x7f080019

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnClickOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_296

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f02001c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 529
    :cond_161
    :goto_161
    const v5, 0x7f08001a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->set:Landroid/widget/TextView;

    .line 530
    const v5, 0x7f08001b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->discard:Landroid/widget/TextView;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->set:Landroid/widget/TextView;

    move-object v5, v0

    if-eqz v5, :cond_19c

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->set:Landroid/widget/TextView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$2;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$2;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 548
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->discard:Landroid/widget/TextView;

    move-object v5, v0

    new-instance v6, Lcom/lge/android/memo/DialogLauncher$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/android/memo/DialogLauncher$3;-><init>(Lcom/lge/android/memo/DialogLauncher;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 564
    const/high16 v14, -0x100

    .line 565
    .local v14, buttonTextColor:I
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_329

    .line 566
    const v14, 0x7f050003

    .line 573
    :cond_1b6
    :goto_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->set:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->discard:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    const v5, 0x7f080011

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 577
    .local v22, penText:Landroid/widget/TextView;
    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    const v5, 0x7f080014

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 580
    .local v21, paperText:Landroid/widget/TextView;
    move-object/from16 v0, v21

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 583
    .local v18, linLayoutMain:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 585
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 586
    .local v19, linLayoutPenSize:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 589
    const/4 v5, 0x4

    new-array v12, v5, [Landroid/widget/LinearLayout;

    .line 592
    .local v12, arrayOfLinLayoutButtons:[Landroid/widget/LinearLayout;
    const/16 v5, 0x20

    new-array v13, v5, [Lcom/lge/android/memo/GenericColorPallet;

    .line 593
    .local v13, btn1:[Lcom/lge/android/memo/GenericColorPallet;
    const/16 v24, 0x0

    .line 595
    .local v24, x:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_215
    array-length v5, v13

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_33e

    .line 597
    new-instance v5, Lcom/lge/android/memo/GenericColorPallet;

    sget-object v6, Lcom/lge/android/memo/IPenColors;->PEN_COLORS:[I

    aget v7, v6, v16

    const/16 v8, 0x19

    const/16 v9, 0x19

    const-string v10, ""

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/lge/android/memo/GenericColorPallet;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    aput-object v5, v13, v16

    .line 598
    if-nez v16, :cond_246

    .line 599
    new-instance v5, Landroid/widget/LinearLayout;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v5, v12, v24

    .line 600
    aget-object v5, v12, v24

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 601
    aget-object v5, v12, v24

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 603
    :cond_246
    rem-int/lit8 v5, v16, 0x8

    if-nez v5, :cond_26b

    const/16 v5, 0x20

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_26b

    if-lez v16, :cond_26b

    .line 604
    add-int/lit8 v24, v24, 0x1

    .line 605
    new-instance v5, Landroid/widget/LinearLayout;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v5, v12, v24

    .line 606
    aget-object v5, v12, v24

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    aget-object v5, v12, v24

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 610
    :cond_26b
    aget-object v5, v12, v24

    aget-object v6, v13, v16

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    const/16 v9, 0x1b

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    add-int/lit8 v16, v16, 0x1

    goto :goto_215

    .line 477
    .end local v12           #arrayOfLinLayoutButtons:[Landroid/widget/LinearLayout;
    .end local v13           #btn1:[Lcom/lge/android/memo/GenericColorPallet;
    .end local v14           #buttonTextColor:I
    .end local v16           #i:I
    .end local v18           #linLayoutMain:Landroid/widget/LinearLayout;
    .end local v19           #linLayoutPenSize:Landroid/widget/LinearLayout;
    .end local v21           #paperText:Landroid/widget/TextView;
    .end local v22           #penText:Landroid/widget/TextView;
    .end local v24           #x:I
    .restart local p1
    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "style"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    goto/16 :goto_49

    .line 507
    .end local p1
    :cond_296
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2df

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f02001c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_161

    .line 517
    :cond_2df
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_161

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->yellowPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->brownPaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->bluePaperDrawable:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f02001c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_161

    .line 567
    .restart local v14       #buttonTextColor:I
    :cond_329
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_333

    .line 568
    const v14, 0x7f050001

    goto/16 :goto_1b6

    .line 569
    :cond_333
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1b6

    .line 570
    const v14, 0x7f050002

    goto/16 :goto_1b6

    .line 614
    .restart local v12       #arrayOfLinLayoutButtons:[Landroid/widget/LinearLayout;
    .restart local v13       #btn1:[Lcom/lge/android/memo/GenericColorPallet;
    .restart local v16       #i:I
    .restart local v18       #linLayoutMain:Landroid/widget/LinearLayout;
    .restart local v19       #linLayoutPenSize:Landroid/widget/LinearLayout;
    .restart local v21       #paperText:Landroid/widget/TextView;
    .restart local v22       #penText:Landroid/widget/TextView;
    .restart local v24       #x:I
    :cond_33e
    const/16 v25, 0x0

    .local v25, y:I
    :goto_340
    array-length v5, v12

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_359

    .line 615
    aget-object v5, v12, v25

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    add-int/lit8 v25, v25, 0x1

    goto :goto_340

    .line 620
    :cond_359
    const v5, 0x7f080012

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 621
    .local v20, ly:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    .end local v12           #arrayOfLinLayoutButtons:[Landroid/widget/LinearLayout;
    .end local v13           #btn1:[Lcom/lge/android/memo/GenericColorPallet;
    .end local v14           #buttonTextColor:I
    .end local v16           #i:I
    .end local v18           #linLayoutMain:Landroid/widget/LinearLayout;
    .end local v19           #linLayoutPenSize:Landroid/widget/LinearLayout;
    .end local v20           #ly:Landroid/widget/LinearLayout;
    .end local v21           #paperText:Landroid/widget/TextView;
    .end local v22           #penText:Landroid/widget/TextView;
    .end local v24           #x:I
    .end local v25           #y:I
    :cond_374
    :goto_374
    return-void

    .line 623
    .restart local p1
    :cond_375
    const/4 v5, 0x4

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_42b

    .line 624
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "style"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 627
    sget v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->getPageStyleLayout(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->setContentView(I)V

    .line 629
    const v5, 0x7f08000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/lge/android/memo/NoteEditor;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    .line 631
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    if-eqz v5, :cond_3d6

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    sget-object v6, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 634
    :cond_3d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    sget v6, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-virtual {v5, v6}, Lcom/lge/android/memo/NoteEditor;->setTextColor(I)V

    .line 635
    const v5, 0x7f08000e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    .line 636
    const v5, 0x7f08000f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060012

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060013

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogLauncher;->addMinimiseButtonInLayout()V

    goto/16 :goto_374

    .line 642
    .restart local p1
    :cond_42b
    const/4 v5, 0x3

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_5bb

    .line 643
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 644
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 645
    .local v23, values:Landroid/content/ContentValues;
    const-string v5, "style"

    sget v6, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v5, "textcolor"

    sget v6, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/lge/android/memo/DialogLauncher;->getPageStyleUri()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memoId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogLauncher;->getContentID()I

    move-result v15

    .line 651
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->setContentView(I)V

    .line 657
    const v5, 0x7f08000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/lge/android/memo/NoteEditor;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    .line 660
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    if-eqz v5, :cond_5ac

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    sget-object v6, Lcom/lge/android/memo/DialogLauncher;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/android/memo/NoteEditor;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 668
    :goto_4af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    sget v6, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-virtual {v5, v6}, Lcom/lge/android/memo/NoteEditor;->setTextColor(I)V

    .line 669
    const v5, 0x7f08000e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    .line 670
    const v5, 0x7f08000f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->editButtonText:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060012

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->styleButtonText:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f060013

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V

    .line 675
    const v5, 0x7f08000c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/lge/android/memo/DialogLauncher;->show_date:Landroid/widget/TextView;

    .line 676
    const v5, 0x7f08000d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/lge/android/memo/DialogLauncher;->show_time:Landroid/widget/TextView;

    .line 678
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->show_date:Landroid/widget/TextView;

    sget-object v6, Lcom/lge/android/memo/DialogLauncher;->date_title:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->show_time:Landroid/widget/TextView;

    sget-object v6, Lcom/lge/android/memo/DialogLauncher;->time_title:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/memo/DialogLauncher;->addMinimiseButtonInLayout()V

    .line 681
    new-instance v5, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->con:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v5, v0

    const v6, 0x7f080001

    sget v7, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->getDesktopIconImage(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v5, v0

    const v6, 0x7f080003

    sget v7, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->getDesktopIconImageLine(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v5, v0

    const v6, 0x7f080005

    sget v7, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->getDesktopIconImageLine(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v5, v0

    const v6, 0x7f080002

    sget v7, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v5, v0

    const v6, 0x7f080004

    sget v7, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->con:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    .line 692
    .local v11, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget v5, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->view:Landroid/widget/RemoteViews;

    move-object v6, v0

    invoke-virtual {v11, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_374

    .line 665
    .end local v11           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_5ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mText:Lcom/lge/android/memo/NoteEditor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->title:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4af

    .line 696
    .end local v23           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_5bb
    const/4 v5, 0x1

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_374

    .line 697
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/memo/DialogLauncher;->isStylePageDisplaying:Ljava/lang/Boolean;

    .line 698
    const/4 v5, 0x1

    sput-boolean v5, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 699
    new-instance v17, Landroid/content/Intent;

    const-string v5, "com.lge.android.memo.action.EDIT_MEMO"

    sget-object v6, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 700
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "style"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 701
    const-string v5, "AppWidgetId"

    sget v6, Lcom/lge/android/memo/DialogLauncher;->AppWidgetId:I

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v5, "styleID"

    sget v6, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->pageStyleUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/lge/android/memo/DialogTextEditor;->setPageStyleUri(Landroid/net/Uri;)V

    .line 704
    sget-object v5, Lcom/lge/android/memo/DialogLauncher;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/lge/android/memo/DialogTextEditor;->setMUri(Landroid/net/Uri;)V

    .line 708
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/lge/android/memo/DialogLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_374
.end method

.method public setOnClickListnerOnText(Landroid/widget/TextView;II)V
    .registers 7
    .parameter "textView"
    .parameter "textOverButton"
    .parameter "actionToPerform"

    .prologue
    .line 235
    const/high16 v0, -0x100

    .line 237
    .local v0, buttonTextColor:I
    sget v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_19

    .line 238
    const v0, 0x7f050003

    .line 245
    :cond_a
    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    new-instance v1, Lcom/lge/android/memo/DialogLauncher$1;

    invoke-direct {v1, p0, p3}, Lcom/lge/android/memo/DialogLauncher$1;-><init>(Lcom/lge/android/memo/DialogLauncher;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    return-void

    .line 239
    :cond_19
    sget v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_22

    .line 240
    const v0, 0x7f050001

    goto :goto_a

    .line 241
    :cond_22
    sget v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 242
    const v0, 0x7f050002

    goto :goto_a
.end method
