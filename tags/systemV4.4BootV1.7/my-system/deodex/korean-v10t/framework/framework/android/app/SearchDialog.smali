.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchAutoComplete;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOG_TIMING:Z = false

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final FINISH_TOKEN:I = -0x21524111

.field private static final INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final INSTANCE_KEY_GLOBALSEARCH:Ljava/lang/String; = "glob"

.field private static final INSTANCE_KEY_PREVIOUS_COMPONENTS:Ljava/lang/String; = "sPrev"

.field private static final INSTANCE_KEY_STORED_APPDATA:Ljava/lang/String; = "sData"

.field private static final INSTANCE_KEY_STORED_COMPONENT:Ljava/lang/String; = "sComp"

.field private static final INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final REWRITE_QUERIES:Z = true

.field private static final SEARCH_PLATE_LEFT_PADDING_GLOBAL:I = 0xc

.field private static final SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mBadgeLabel:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mButtonsKeyListener:Landroid/view/View$OnKeyListener;

.field private mCloseDialogsFilter:Landroid/content/IntentFilter;

.field private mGlobalSearchMode:Z

.field private mGoButton:Landroid/widget/Button;

.field mGoButtonClickListener:Landroid/view/View$OnClickListener;

.field private mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLaunchComponent:Landroid/content/ComponentName;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageFilter:Landroid/content/IntentFilter;

.field private mPreviousComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

.field private mSearchAutoCompleteImeOptions:I

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/server/search/SearchableInfo;

.field private mStoredAppSearchData:Landroid/os/Bundle;

.field private mStoredComponentName:Landroid/content/ComponentName;

.field private mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUserQuery:Ljava/lang/String;

.field private mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/widget/ImageButton;

.field mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

.field private mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 171
    const v0, 0x1030087

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 159
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 788
    new-instance v0, Landroid/app/SearchDialog$1;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 844
    new-instance v0, Landroid/app/SearchDialog$2;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    .line 869
    new-instance v0, Landroid/app/SearchDialog$3;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    .line 882
    new-instance v0, Landroid/app/SearchDialog$4;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1002
    new-instance v0, Landroid/app/SearchDialog$5;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1068
    new-instance v0, Landroid/app/SearchDialog$6;

    invoke-direct {v0, p0}, Landroid/app/SearchDialog$6;-><init>(Landroid/app/SearchDialog;)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1932
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    return-void
.end method

.method static synthetic access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/SearchDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/app/SearchDialog;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/SearchDialog;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/SearchDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/SearchDialog;->backToPreviousComponent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/app/SearchDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateWidgetState()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/SearchDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/SearchDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return v0
.end method

.method static synthetic access$502(Landroid/app/SearchDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    return p1
.end method

.method static synthetic access$700(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/SearchDialog;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/SearchDialog;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->createVoiceAppSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private backToPreviousComponent()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1557
    invoke-direct {p0}, Landroid/app/SearchDialog;->popPreviousComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1558
    .local v0, previous:Landroid/content/ComponentName;
    if-nez v0, :cond_9

    move v2, v5

    .line 1572
    :goto_8
    return v2

    .line 1561
    :cond_9
    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2, v5}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1562
    const-string v2, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to switch to source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 1563
    goto :goto_8

    .line 1569
    :cond_2b
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 1572
    const/4 v2, 0x1

    goto :goto_8
.end method

.method private static checkStartActivityResult(ILandroid/content/Intent;)V
    .registers 5
    .parameter "res"
    .parameter "intent"

    .prologue
    .line 1449
    if-ltz p0, :cond_3

    .line 1450
    return-void

    .line 1452
    :cond_3
    packed-switch p0, :pswitch_data_90

    .line 1469
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :pswitch_29
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1456
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1460
    :cond_56
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :pswitch_6f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :pswitch_88
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :pswitch_data_90
    .packed-switch -0x4
        :pswitch_6f
        :pswitch_88
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private closeSuggestionsAdapter()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 438
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v3, :cond_23

    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v3}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 439
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v3}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Filter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 440
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_23

    .line 441
    const v3, -0x21524111

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 442
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #message:Landroid/os/Message;
    :cond_23
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    move-object v0, v4

    check-cast v0, Landroid/app/SuggestionsAdapter;

    move-object v3, v0

    invoke-virtual {v5, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v3, :cond_35

    .line 450
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v3}, Landroid/app/SuggestionsAdapter;->close()V

    .line 452
    :cond_35
    iput-object v4, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    .line 453
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 11
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "componentName"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1659
    if-eqz p2, :cond_f

    .line 1660
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1662
    :cond_f
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    if-eqz p4, :cond_1d

    .line 1664
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    :cond_1d
    if-eqz p3, :cond_24

    .line 1667
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    :cond_24
    if-eqz p5, :cond_2b

    .line 1670
    const-string v1, "intent_component_name_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    :cond_2b
    iget-object v1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_36

    .line 1673
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1675
    :cond_36
    if-eqz p6, :cond_42

    .line 1676
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1677
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    :cond_42
    iget-boolean v1, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-nez v1, :cond_4f

    .line 1681
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1683
    :cond_4f
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 17
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1591
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1594
    .local v1, action:Ljava/lang/String;
    const-string v0, "android.search.action.ZILCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1595
    const/4 v0, 0x0

    .line 1636
    .end local v1           #action:Ljava/lang/String;
    :goto_f
    return-object v0

    .line 1598
    .restart local v1       #action:Ljava/lang/String;
    :cond_10
    if-nez v1, :cond_18

    .line 1599
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1601
    :cond_18
    if-nez v1, :cond_1c

    .line 1602
    const-string v1, "android.intent.action.SEARCH"

    .line 1606
    :cond_1c
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1607
    .local v8, data:Ljava/lang/String;
    if-nez v8, :cond_2a

    .line 1608
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v8

    .line 1611
    :cond_2a
    if-eqz v8, :cond_4f

    .line 1612
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1613
    .local v11, id:Ljava/lang/String;
    if-eqz v11, :cond_4f

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1617
    .end local v11           #id:Ljava/lang/String;
    :cond_4f
    if-nez v8, :cond_6e

    const/4 v0, 0x0

    move-object v2, v0

    .line 1619
    .local v2, dataUri:Landroid/net/Uri;
    :goto_53
    const-string v0, "suggest_intent_component"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1622
    .local v5, componentName:Ljava/lang/String;
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1623
    .local v4, query:Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v6, p2

    move-object/from16 v7, p3

    .line 1625
    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_f

    .line 1617
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v5           #componentName:Ljava/lang/String;
    :cond_6e
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_71} :catch_74

    move-result-object v0

    move-object v2, v0

    goto :goto_53

    .line 1627
    .end local v1           #action:Ljava/lang/String;
    .end local v8           #data:Ljava/lang/String;
    :catch_74
    move-exception v0

    move-object v9, v0

    .line 1630
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_76
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_79} :catch_a3

    move-result v12

    .line 1634
    .local v12, rowNum:I
    :goto_7a
    const-string v0, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 1631
    .end local v12           #rowNum:I
    :catch_a3
    move-exception v10

    .line 1632
    .local v10, e2:Ljava/lang/RuntimeException;
    const/4 v12, -0x1

    .restart local v12       #rowNum:I
    goto :goto_7a
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 15
    .parameter "baseIntent"

    .prologue
    .line 916
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 921
    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 923
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 930
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v5, queryExtras:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_2b

    .line 932
    const-string v10, "app_data"

    iget-object v11, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 938
    :cond_2b
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 941
    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .line 942
    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 943
    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 944
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .line 945
    .local v2, maxResults:I
    iget-object v10, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 946
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_4d

    .line 947
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    :cond_4d
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_5f

    .line 950
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 952
    :cond_5f
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_71

    .line 953
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    :cond_71
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_7f

    .line 956
    iget-object v10, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v10}, Landroid/server/search/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 958
    :cond_7f
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    const-string v10, "calling_package"

    if-nez v8, :cond_a6

    const/4 v11, 0x0

    :goto_98
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 967
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 969
    return-object v9

    .line 962
    :cond_a6
    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    goto :goto_98
.end method

.method private dbgLogTiming(Ljava/lang/String;)V
    .registers 11
    .parameter "caller"

    .prologue
    .line 1934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1935
    .local v2, millis:J
    iget-object v7, p0, Landroid/app/SearchDialog;->mLastLogTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 1936
    .local v4, oldTime:J
    sub-long v0, v2, v4

    .line 1937
    .local v0, delta:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") ticks for Search keystroke in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1938
    .local v6, report:Ljava/lang/String;
    const-string v7, "SearchDialog"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return-void
.end method

.method private doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z
    .registers 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 319
    invoke-direct {p0, p3, p4, p5}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 320
    const/4 v0, 0x0

    .line 329
    :goto_7
    return v0

    .line 324
    :cond_8
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 325
    if-eqz p2, :cond_12

    .line 326
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->selectAll()V

    .line 329
    :cond_12
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "inUrl"

    .prologue
    const-string v4, "http://"

    const-string v3, "://"

    .line 980
    const-string v1, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    move-object v0, p1

    .line 995
    .end local p1
    .local v0, inUrl:Ljava/lang/String;
    :goto_15
    return-object v0

    .line 983
    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_16
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 984
    :cond_26
    const-string v1, "http:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "https:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 985
    :cond_36
    const-string v1, "/"

    const-string v2, "//"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 991
    :cond_3e
    :goto_3e
    const-string v1, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5a
    move-object v0, p1

    .line 995
    .end local p1
    .restart local v0       #inUrl:Ljava/lang/String;
    goto :goto_15

    .line 987
    .end local v0           #inUrl:Ljava/lang/String;
    .restart local p1
    :cond_5c
    const-string v1, ":"

    const-string v2, "://"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/server/search/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .registers 4
    .parameter "c"
    .parameter "actionKey"

    .prologue
    .line 1696
    const/4 v1, 0x0

    .line 1698
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1700
    invoke-static {p0, v0}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1704
    :cond_b
    if-nez v1, :cond_11

    .line 1705
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1707
    :cond_11
    return-object v1
.end method

.method private getClickReportingUri()Landroid/net/Uri;
    .registers 5

    .prologue
    const-string v3, ""

    .line 1299
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.android.globalsearch.stats"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1303
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "click"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1305
    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private handleChangeSourceIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const-string v5, "SearchDialog"

    .line 1492
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1493
    .local v1, dataUri:Landroid/net/Uri;
    if-nez v1, :cond_10

    .line 1494
    const-string v3, "SearchDialog"

    const-string v3, "SearchManager.INTENT_ACTION_CHANGE_SOURCE without intent data."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :goto_f
    return-void

    .line 1497
    :cond_10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1498
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_33

    .line 1499
    const-string v3, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1504
    :cond_33
    iget-object v3, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Landroid/app/SearchDialog;->pushPreviousComponent(Landroid/content/ComponentName;)V

    .line 1505
    iget-object v3, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1506
    const-string v3, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to switch to source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-direct {p0}, Landroid/app/SearchDialog;->popPreviousComponent()Landroid/content/ComponentName;

    goto :goto_f

    .line 1511
    :cond_5d
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    .local v2, query:Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 1513
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDown()V

    goto :goto_f
.end method

.method private handleSpecialIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 1480
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.search.action.CHANGE_SEARCH_SOURCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1482
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->handleChangeSourceIntent(Landroid/content/Intent;)V

    .line 1483
    const/4 v1, 0x1

    .line 1485
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isBrowserSearch()Z
    .registers 3

    .prologue
    .line 713
    iget-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isInRealAppSearch()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 739
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 740
    .local v2, y:I
    iget-object v3, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 741
    .local v0, slop:I
    neg-int v3, v0

    if-lt v1, v3, :cond_28

    neg-int v3, v0

    if-lt v2, v3, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_28

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_2a

    :cond_28
    const/4 v3, 0x1

    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private launchGlobalSearchIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const-string v4, "intent_component_name_key"

    .line 1376
    const-string v3, "intent_component_name_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, intentComponent:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 1378
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1379
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1380
    const-string v3, "intent_component_name_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1395
    .end local v0           #componentName:Landroid/content/ComponentName;
    .local v2, packageName:Ljava/lang/String;
    :goto_1a
    const/high16 v3, 0x1000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1396
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setBrowserApplicationId(Landroid/content/Intent;)V

    .line 1398
    invoke-direct {p0, p1, v2}, Landroid/app/SearchDialog;->startActivityInPackage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1399
    return-void

    .line 1390
    .end local v2           #packageName:Ljava/lang/String;
    :cond_26
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #packageName:Ljava/lang/String;
    goto :goto_1a
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const-string v4, "SearchDialog"

    .line 1340
    if-nez p1, :cond_5

    .line 1369
    :cond_4
    :goto_4
    return-void

    .line 1343
    :cond_5
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->handleSpecialIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1346
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :try_start_23
    iget-boolean v1, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-eqz v1, :cond_46

    .line 1352
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->launchGlobalSearchIntent(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2a} :catch_2b

    goto :goto_4

    .line 1366
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 1367
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1356
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_46
    :try_start_46
    const-string v1, "SearchDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting (as ourselves) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1362
    invoke-direct {p0}, Landroid/app/SearchDialog;->isInRealAppSearch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1363
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_72} :catch_2b

    goto :goto_4
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    .line 1114
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-nez v5, :cond_9

    move v5, v6

    .line 1172
    :goto_8
    return v5

    .line 1117
    :cond_9
    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-nez v5, :cond_f

    move v5, v6

    .line 1118
    goto :goto_8

    .line 1120
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9b

    .line 1126
    const/16 v5, 0x42

    if-eq p2, v5, :cond_1d

    const/16 v5, 0x54

    if-ne p2, v5, :cond_28

    .line 1127
    :cond_1d
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1128
    .local v3, position:I
    invoke-virtual {p0, v3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    move-result v5

    goto :goto_8

    .line 1132
    .end local v3           #position:I
    :cond_28
    if-eq p2, v7, :cond_2e

    const/16 v5, 0x16

    if-ne p2, v5, :cond_4f

    .line 1136
    :cond_2e
    if-ne p2, v7, :cond_47

    move v4, v6

    .line 1138
    .local v4, selPoint:I
    :goto_31
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v4}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1139
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    .line 1140
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->clearListSelection()V

    .line 1141
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible()V

    .line 1143
    const/4 v5, 0x1

    goto :goto_8

    .line 1136
    .end local v4           #selPoint:I
    :cond_47
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->length()I

    move-result v5

    move v4, v5

    goto :goto_31

    .line 1147
    :cond_4f
    const/16 v5, 0x13

    if-ne p2, v5, :cond_60

    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v5

    if-nez v5, :cond_60

    .line 1149
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    move v5, v6

    .line 1151
    goto :goto_8

    .line 1155
    :cond_60
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v5, p2}, Landroid/server/search/SearchableInfo;->findActionKey(I)Landroid/server/search/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1156
    .local v0, actionKey:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_74

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 1160
    :cond_74
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/app/SearchDialog$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1161
    .restart local v3       #position:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_9b

    .line 1162
    iget-object v5, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v5}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1163
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 1164
    invoke-static {v2, v0}, Landroid/app/SearchDialog;->getActionKeyMessage(Landroid/database/Cursor;Landroid/server/search/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9b

    .line 1166
    invoke-virtual {p0, v3, p2, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_8

    .end local v0           #actionKey:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    .end local v1           #actionMsg:Ljava/lang/String;
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #position:I
    :cond_9b
    move v5, v6

    .line 1172
    goto/16 :goto_8
.end method

.method private popPreviousComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1541
    iget-object v1, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 1548
    .end local p0
    :goto_6
    return-object v1

    .line 1544
    .restart local p0
    :cond_7
    iget-object v1, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1545
    .local v0, size:I
    if-nez v0, :cond_11

    move-object v1, v2

    .line 1546
    goto :goto_6

    .line 1548
    :cond_11
    iget-object v1, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/ComponentName;

    move-object v1, p0

    goto :goto_6
.end method

.method private pushPreviousComponent(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "componentName"

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    .line 1531
    :cond_b
    iget-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    return-void
.end method

.method private reportInAppClickToGlobalSearch(Landroid/database/Cursor;Landroid/content/Intent;)V
    .registers 13
    .parameter "c"
    .parameter "intent"

    .prologue
    const-string v9, "suggest_shortcut_id"

    const-string v8, "suggest_intent_query"

    const-string v7, "suggest_icon_2"

    const-string v6, "suggest_icon_1"

    const-string v5, "suggest_format"

    .line 1256
    invoke-direct {p0}, Landroid/app/SearchDialog;->getClickReportingUri()Landroid/net/Uri;

    move-result-object v2

    .line 1257
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1258
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "query"

    iget-object v4, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1260
    .local v1, source:Landroid/content/ComponentName;
    const-string v3, "component"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v3, "suggest_intent_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v3, "suggest_intent_data"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v3, "suggest_intent_component"

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v3, "suggest_icon_1"

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_icon_1"

    invoke-static {p1, v6}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/SearchDialog;->wrapIconForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v3, "suggest_icon_2"

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_icon_2"

    invoke-static {p1, v7}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/SearchDialog;->wrapIconForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v3, "suggest_format"

    const-string v3, "suggest_format"

    invoke-static {p1, v5}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v3, "suggest_text_1"

    const-string v4, "suggest_text_1"

    invoke-static {p1, v4}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string v3, "suggest_text_2"

    const-string v4, "suggest_text_2"

    invoke-static {p1, v4}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v3, "suggest_intent_query"

    const-string v3, "suggest_intent_query"

    invoke-static {p1, v8}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v3, "suggest_shortcut_id"

    const-string v3, "suggest_shortcut_id"

    invoke-static {p1, v9}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v3, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1293
    return-void
.end method

.method private restoreUserQuery()V
    .registers 2

    .prologue
    .line 1899
    iget-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    .line 1900
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 1870
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1871
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_9

    .line 1892
    :goto_8
    return-void

    .line 1874
    :cond_9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1876
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2, v0}, Landroid/app/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1877
    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1b

    .line 1881
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1885
    :cond_1b
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_8

    .line 1889
    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_1f
    const-string v2, "SearchDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad suggestion position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-direct {p0}, Landroid/app/SearchDialog;->restoreUserQuery()V

    goto :goto_8
.end method

.method private setBrowserApplicationId(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1407
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1408
    .local v0, data:Landroid/net/Uri;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    .line 1409
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1411
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    .end local v1           #scheme:Ljava/lang/String;
    :cond_29
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1907
    if-eqz p1, :cond_11

    .line 1908
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1910
    :cond_11
    return-void
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 1916
    if-nez p1, :cond_4

    .line 1917
    const-string p1, ""

    .line 1919
    :cond_4
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 1920
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1921
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSelection(I)V

    .line 1922
    return-void
.end method

.method private show(Landroid/content/ComponentName;Landroid/os/Bundle;Z)Z
    .registers 12
    .parameter "componentName"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 345
    iget-object v4, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 349
    .local v2, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v2, p1, p3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    .line 353
    if-nez p3, :cond_1f

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-nez v4, :cond_1f

    .line 354
    const/4 p3, 0x1

    .line 355
    invoke-virtual {v2, p1, p3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    .line 359
    :cond_1f
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-nez v4, :cond_2c

    .line 360
    const-string v4, "SearchDialog"

    const-string v5, "No global search provider."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 391
    :goto_2b
    return v4

    .line 364
    :cond_2c
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 365
    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 368
    if-nez p3, :cond_3a

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->isDefaultSearchable(Landroid/server/search/SearchableInfo;)Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_3a
    move v4, v7

    :goto_3b
    iput-boolean v4, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    .line 369
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/search/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    .line 372
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_66

    .line 378
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 379
    .local v1, context:Landroid/content/Context;
    instance-of v4, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v4, :cond_63

    .line 380
    move-object v0, v1

    check-cast v0, Landroid/view/ContextThemeWrapper;

    move-object v3, v0

    .line 381
    .local v3, wrapper:Landroid/view/ContextThemeWrapper;
    if-eqz p3, :cond_6d

    .line 382
    const v4, 0x1030087

    invoke-virtual {v3, v4}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 387
    .end local v3           #wrapper:Landroid/view/ContextThemeWrapper;
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    .line 389
    .end local v1           #context:Landroid/content/Context;
    :cond_66
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    move v4, v7

    .line 391
    goto :goto_2b

    :cond_6b
    move v4, v6

    .line 368
    goto :goto_3b

    .line 384
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #wrapper:Landroid/view/ContextThemeWrapper;
    :cond_6d
    const v4, 0x1030086

    invoke-virtual {v3, v4}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto :goto_63
.end method

.method private startActivityInPackage(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1429
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    .line 1430
    .local v1, uid:I
    if-gez v1, :cond_2b

    .line 1431
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package UID not found "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    .line 1442
    .end local v1           #uid:I
    :catch_23
    move-exception v0

    move-object v8, v0

    .line 1443
    .local v8, ex:Landroid/os/RemoteException;
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1433
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1434
    .local v3, resolvedType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1435
    .local v4, resultTo:Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 1436
    .local v5, resultWho:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1437
    .local v6, requestCode:I
    const/4 v7, 0x0

    .line 1438
    .local v7, onlyIfNeeded:Z
    const-string v0, "SearchDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting (uid "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ") "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v9

    .line 1441
    .local v9, result:I
    invoke-static {v9, p1}, Landroid/app/SearchDialog;->checkStartActivityResult(ILandroid/content/Intent;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_77} :catch_23

    .line 1445
    return-void
.end method

.method private toggleGlobalSearch()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, currentSearchText:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-nez v0, :cond_29

    .line 283
    iget-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    .line 284
    iget-object v0, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/SearchDialog;->mStoredAppSearchData:Landroid/os/Bundle;

    .line 293
    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v1, ""

    .line 295
    :cond_20
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 303
    :goto_28
    return v0

    .line 297
    :cond_29
    iget-object v0, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_38

    .line 300
    iget-object v3, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/SearchDialog;->mStoredAppSearchData:Landroid/os/Bundle;

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v0

    goto :goto_28

    :cond_38
    move v0, v5

    .line 303
    goto :goto_28
.end method

.method private updateQueryHint()V
    .registers 4

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, hint:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-eqz v2, :cond_19

    .line 673
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v2}, Landroid/server/search/SearchableInfo;->getHintId()I

    move-result v1

    .line 674
    .local v1, hintId:I
    if-eqz v1, :cond_19

    .line 675
    iget-object v2, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .end local v1           #hintId:I
    :cond_19
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 680
    .end local v0           #hint:Ljava/lang/String;
    :cond_1e
    return-void
.end method

.method private updateSearchAppIcon()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 614
    iget-boolean v4, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-nez v4, :cond_b

    invoke-direct {p0}, Landroid/app/SearchDialog;->isBrowserSearch()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 615
    :cond_b
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/16 v5, 0xc

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 639
    :goto_30
    return-void

    .line 622
    :cond_31
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 625
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_39
    iget-object v4, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 626
    .local v2, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_45} :catch_69

    move-result-object v1

    .line 632
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :goto_46
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    const/4 v5, 0x7

    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_30

    .line 628
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :catch_69
    move-exception v4

    move-object v0, v4

    .line 629
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 630
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    const-string v4, "SearchDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, using generic app icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 567
    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    .line 569
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 570
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setThreshold(I)V

    .line 572
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownDismissedOnCompletion(Z)V

    .line 574
    invoke-direct {p0}, Landroid/app/SearchDialog;->isInRealAppSearch()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 575
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownAlwaysVisible(Z)V

    .line 580
    :goto_25
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setForceIgnoreOutsideTouch(Z)V

    .line 584
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 585
    new-instance v0, Landroid/app/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    iget-object v4, p0, Landroid/app/SearchDialog;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    iget-boolean v5, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/server/search/SearchableInfo;Ljava/util/WeakHashMap;Z)V

    iput-object v0, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    .line 587
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 589
    :cond_4b
    return-void

    .line 577
    :cond_4c
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setDropDownAlwaysVisible(Z)V

    goto :goto_25
.end method

.method private updateSearchBadge()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 646
    const/16 v2, 0x8

    .line 647
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 648
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 651
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->useBadgeIcon()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 652
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v4}, Landroid/server/search/SearchableInfo;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 653
    const/4 v2, 0x0

    .line 661
    :cond_1e
    :goto_1e
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 662
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    return-void

    .line 655
    :cond_2e
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->useBadgeLabel()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 656
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v4}, Landroid/server/search/SearchableInfo;->getLabelId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private updateSearchButton()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, textLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 598
    .local v0, iconLabel:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSearchButtonText()I

    move-result v1

    .line 599
    .local v1, textId:I
    if-eqz v1, :cond_20

    .line 600
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 605
    :goto_15
    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 607
    return-void

    .line 602
    :cond_20
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_15
.end method

.method private updateUI()V
    .registers 4

    .prologue
    .line 531
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-eqz v1, :cond_4a

    .line 532
    iget-object v1, p0, Landroid/app/SearchDialog;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    .line 534
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    .line 535
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 536
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 537
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    .line 538
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateVoiceButton()V

    .line 545
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getInputType()I

    move-result v0

    .line 548
    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 551
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 552
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 553
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 556
    :cond_36
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    .line 557
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 558
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    .line 560
    .end local v0           #inputType:I
    :cond_4a
    return-void
.end method

.method private updateVoiceButton()V
    .registers 6

    .prologue
    .line 687
    const/16 v2, 0x8

    .line 688
    .local v2, visibility:I
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 691
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 695
    :cond_15
    :goto_15
    if-eqz v1, :cond_28

    .line 696
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 698
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_28

    .line 699
    const/4 v2, 0x0

    .line 703
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_28
    iget-object v3, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 704
    return-void

    .line 692
    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_2e
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 693
    iget-object v1, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_15
.end method

.method private updateWidgetState()V
    .registers 3

    .prologue
    .line 835
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$600(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    move v0, v1

    .line 836
    .local v0, enabled:Z
    :goto_a
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 837
    iget-object v1, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 838
    return-void

    .line 835
    .end local v0           #enabled:Z
    :cond_15
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method private wrapIconForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"
    .parameter "icon"

    .prologue
    .line 1320
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1323
    :cond_10
    const/4 v0, 0x0

    .line 1327
    :goto_11
    return-object v0

    .line 1324
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1f

    move-object v0, p2

    .line 1325
    goto :goto_11

    .line 1327
    :cond_1f
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method protected handleBackKey(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1828
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 1829
    invoke-direct {p0}, Landroid/app/SearchDialog;->backToPreviousComponent()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 1835
    :goto_11
    return v0

    .line 1832
    :cond_12
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    move v0, v1

    .line 1833
    goto :goto_11

    .line 1835
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hide()V
    .registers 6

    .prologue
    .line 1084
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1106
    :goto_6
    return-void

    .line 1088
    :cond_7
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1090
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_25

    .line 1091
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1095
    :cond_25
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v3}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1096
    iget-object v3, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v3}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Filter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1097
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_47

    .line 1098
    const v3, -0x21524111

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1099
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    .end local v0           #handler:Landroid/os/Handler;
    .end local v2           #message:Landroid/os/Message;
    :cond_47
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    goto :goto_6
.end method

.method protected launchQuerySearch()V
    .registers 3

    .prologue
    .line 1179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    .line 1180
    return-void
.end method

.method protected launchQuerySearch(ILjava/lang/String;)V
    .registers 12
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v2, 0x0

    .line 1191
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1192
    .local v4, query:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-eqz v0, :cond_1f

    const-string v0, "android.intent.action.WEB_SEARCH"

    move-object v1, v0

    .local v1, action:Ljava/lang/String;
    :goto_12
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move v6, p1

    move-object v7, p2

    .line 1193
    invoke-direct/range {v0 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1195
    .local v8, intent:Landroid/content/Intent;
    invoke-direct {p0, v8}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 1196
    return-void

    .line 1192
    .end local v1           #action:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1f
    const-string v0, "android.intent.action.SEARCH"

    move-object v1, v0

    goto :goto_12
.end method

.method protected launchSuggestion(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1205
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/SearchDialog;->launchSuggestion(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected launchSuggestion(IILjava/lang/String;)Z
    .registers 8
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v3, 0x0

    .line 1219
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    if-nez v2, :cond_7

    move v2, v3

    .line 1245
    :goto_6
    return v2

    .line 1222
    :cond_7
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1223
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_39

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1225
    invoke-direct {p0, v0, p2, p3}, Landroid/app/SearchDialog;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1228
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    if-eqz v2, :cond_27

    .line 1230
    iget-object v2, p0, Landroid/app/SearchDialog;->mSuggestionsAdapter:Landroid/app/SuggestionsAdapter;

    invoke-virtual {v2, v0, p1}, Landroid/app/SuggestionsAdapter;->callCursorOnClick(Landroid/database/Cursor;I)V

    .line 1241
    :cond_22
    :goto_22
    invoke-direct {p0, v1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 1243
    const/4 v2, 0x1

    goto :goto_6

    .line 1231
    :cond_27
    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1237
    invoke-direct {p0, v0, v1}, Landroid/app/SearchDialog;->reportInAppClickToGlobalSearch(Landroid/database/Cursor;Landroid/content/Intent;)V

    goto :goto_22

    .end local v1           #intent:Landroid/content/Intent;
    :cond_39
    move v2, v3

    .line 1245
    goto :goto_6
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 520
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchButton()V

    .line 521
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 522
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 523
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateQueryHint()V

    .line 525
    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x1000

    const/4 v3, -0x1

    .line 180
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v2, 0x1090052

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setContentView(I)V

    .line 184
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 185
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 191
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 192
    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 194
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 197
    const v2, 0x10201c8

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    .line 198
    const v2, 0x10201cb

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/app/SearchDialog$SearchAutoComplete;

    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    .line 200
    const v2, 0x102020c

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    .line 201
    const v2, 0x10201cc

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    .line 202
    const v2, 0x10201cd

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    .line 203
    const v2, 0x10201c7

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    .line 204
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v3, p0, Landroid/app/SearchDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v3, p0, Landroid/app/SearchDialog;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 210
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 212
    iget-object v2, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/app/SearchDialog;->mGoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Landroid/app/SearchDialog;->mGoButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/app/SearchDialog;->mVoiceButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/app/SearchDialog;->mButtonsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 217
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-static {v2, p0}, Landroid/app/SearchDialog$SearchAutoComplete;->access$000(Landroid/app/SearchDialog$SearchAutoComplete;Landroid/app/SearchDialog;)V

    .line 220
    iget-object v2, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 229
    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 234
    iget-object v2, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v2

    iput v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 237
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Landroid/app/SearchDialog;->launchSuggestion(I)Z

    .line 1844
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1854
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Landroid/app/SearchDialog;->rewriteQueryFromSuggestion(I)V

    .line 1856
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    if-nez v1, :cond_8

    move v1, v2

    .line 782
    :goto_7
    return v1

    .line 763
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/app/SearchDialog;->handleBackKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    .line 764
    goto :goto_7

    .line 767
    :cond_10
    const/16 v1, 0x54

    if-ne p1, v1, :cond_19

    .line 771
    invoke-direct {p0}, Landroid/app/SearchDialog;->toggleGlobalSearch()Z

    move-result v1

    goto :goto_7

    .line 776
    :cond_19
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/server/search/SearchableInfo;->findActionKey(I)Landroid/server/search/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 777
    .local v0, actionKey:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 778
    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    move v1, v3

    .line 779
    goto :goto_7

    :cond_30
    move v1, v2

    .line 782
    goto :goto_7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1863
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 489
    if-nez p1, :cond_3

    .line 512
    :cond_2
    :goto_2
    return-void

    .line 491
    :cond_3
    const-string v0, "comp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 492
    .local v3, launchComponent:Landroid/content/ComponentName;
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 493
    .local v4, appSearchData:Landroid/os/Bundle;
    const-string v0, "glob"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 494
    .local v5, globalSearch:Z
    const-string v0, "sComp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 496
    .local v8, storedComponentName:Landroid/content/ComponentName;
    const-string v0, "sData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 498
    .local v7, storedAppSearchData:Landroid/os/Bundle;
    const-string v0, "sPrev"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 500
    .local v6, previousComponents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const-string v0, "uQry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, userQuery:Ljava/lang/String;
    iput-object v8, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    .line 504
    iput-object v7, p0, Landroid/app/SearchDialog;->mStoredAppSearchData:Landroid/os/Bundle;

    .line 505
    iput-object v6, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    .line 508
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 476
    :goto_7
    return-object v1

    .line 465
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "comp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 469
    const-string v1, "data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    const-string v1, "glob"

    iget-boolean v2, p0, Landroid/app/SearchDialog;->mGlobalSearchMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    const-string v1, "sComp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    const-string v1, "sData"

    iget-object v2, p0, Landroid/app/SearchDialog;->mStoredAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 473
    const-string v1, "sPrev"

    iget-object v2, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 474
    const-string v1, "uQry"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 476
    goto :goto_7
.end method

.method public onStop()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 404
    invoke-direct {p0}, Landroid/app/SearchDialog;->closeSuggestionsAdapter()V

    .line 407
    iput-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 408
    iput-object v0, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 409
    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/server/search/SearchableInfo;

    .line 410
    iput-object v0, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    .line 411
    iput-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Landroid/app/SearchDialog;->mPreviousComponents:Ljava/util/ArrayList;

    .line 413
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 728
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 730
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    .line 731
    const/4 v0, 0x1

    .line 734
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public setListSelection(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setListSelection(I)V

    .line 1521
    return-void
.end method

.method public setWorking(Z)V
    .registers 5
    .parameter "working"

    .prologue
    const/4 v2, 0x0

    .line 422
    if-eqz p1, :cond_12

    .line 423
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    iget-object v1, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object p0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 431
    :goto_11
    return-void

    .line 427
    .restart local p0
    :cond_12
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object p0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_11
.end method

.method public show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z
    .registers 8
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "componentName"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v1, 0x0

    .line 248
    iput-object v1, p0, Landroid/app/SearchDialog;->mStoredComponentName:Landroid/content/ComponentName;

    .line 249
    iput-object v1, p0, Landroid/app/SearchDialog;->mStoredAppSearchData:Landroid/os/Bundle;

    .line 251
    invoke-direct/range {p0 .. p5}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 253
    .local v0, success:Z
    if-eqz v0, :cond_10

    .line 256
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/app/SearchDialog$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->showDropDownAfterLayout()V

    .line 258
    :cond_10
    return v0
.end method
